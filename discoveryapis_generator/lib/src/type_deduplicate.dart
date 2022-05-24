import 'dart:async';
import 'dart:collection';
import 'dart:convert' as convert;

import 'package:collection/collection.dart';

import 'dart_schema_types.dart';
import 'generated_googleapis/discovery/v1.dart';
import 'unused_logic.dart';

const sharedLibraryName = 'shared.dart';

final _packageZoneKey = Object();
final _libraryZoneKey = Object();

final _expando = Expando<String>();

String _schemaUniqueId(JsonSchema schema) => convert.jsonEncode(
      schema.toJson()
        ..remove('id')
        ..remove('description'),
    );

bool generatedDuplicateLibraries() {
  final zoneValue = Zone.current[_libraryZoneKey] as _LibraryZoneData?;
  if (zoneValue == null) {
    return false;
  }

  return zoneValue.usedItems.isNotEmpty;
}

extension ObjectTypeExtention on ObjectType {
  void tagForDeduplicating(JsonSchema schema) {
    _expando[this] = _schemaUniqueId(schema);
  }

  String? tryTypeDef() {
    final packageValue = Zone.current[_packageZoneKey] as _PackageZoneData?;
    if (packageValue == null) {
      return null;
    }

    // If we're within a package, this should never be null!
    final libraryValue = Zone.current[_libraryZoneKey] as _LibraryZoneData;

    final schema = _expando[this]!;
    final duplicateItem = packageValue.candidates[schema];

    if (duplicateItem == null) {
      return null;
    }

    libraryValue.addUsedItem(schema);

    final initialCovertCallCount = imports.convert.callCount;
    final initialDefinition = classDefinitionCore(duplicateItem.outputName,
        includeDescription: false);

    final convertUsed = imports.convert.callCount > initialCovertCallCount;
    if (convertUsed) {
      imports.convert.callCount = initialCovertCallCount;
    }
    duplicateItem.usedDartConvert =
        duplicateItem.usedDartConvert ?? false || convertUsed;

    duplicateItem.populateDefinition(initialDefinition);

    return '${comment.asDartDoc(0)}'
        'typedef $className = ${duplicateItem.outputName};';
  }
}

T libraryDeduplicateLogic<T>(T Function() action) {
  final data = _LibraryZoneData();
  final result = runZoned(action, zoneValues: {_libraryZoneKey: data});

  final packageValue = Zone.current[_packageZoneKey] as _PackageZoneData?;
  if (packageValue != null) {
    packageValue.usedItems
        .addAll(data.usedItems.map((e) => packageValue.candidates[e]!));
  }

  return result;
}

mixin DedupeMixin {
  List<RestDescription> get descriptions;

  List<_DuplicateItem> wrapPackageDeduplicateLogic(void Function() action) {
    final dupes = <String, Set<_Replacement>>{};

    for (var api in descriptions) {
      api.pruneUnused();
      for (var schema in api.schemas!.values) {
        if (schema.decedentSchema.any((element) => element.complex)) {
          // TODO: support deduping types that refer to other types
          continue;
        }

        final content = _schemaUniqueId(schema);

        final innerMap = dupes.putIfAbsent(content, SplayTreeSet.new);

        final entry = _Replacement(api.id!, schema.id!);

        if (!innerMap.add(entry)) {
          print('Should not add the same entry twice: $entry');
        }
      }
    }

    final candidates = <String, _DuplicateItem>{};

    for (var dupe in dupes.entries) {
      if (dupe.value.length < 2) {
        continue;
      }

      final allKeys = dupe.value.map((e) => e.classname).toSet();
      final shortestKey = _bestName(allKeys);

      candidates.putIfAbsent(
        dupe.key,
        () => _DuplicateItem(
          desiredClassName: shortestKey,
          replacements: dupe.value,
        ),
      );
    }

    // Now populate the names of the classes

    // Group the classes by name
    final groupByDesiredName =
        candidates.values.groupListsBy((element) => element.desiredClassName);

    for (var entry in groupByDesiredName.entries) {
      final list = entry.value;
      if (list.length == 1) {
        list.single.outputName = '\$${entry.key}';
      } else {
        list.sort();
        for (var i = 0; i < list.length; i++) {
          list[i].outputName = '\$${entry.key}${i.toString().padLeft(2, '0')}';
        }
      }
    }

    final data = _PackageZoneData(candidates);
    runZoned(action, zoneValues: {_packageZoneKey: data});

    return data.usedItems.toList()..sort();
  }
}

class _LibraryZoneData {
  void addUsedItem(String schemaKey) {
    _usedItems.add(schemaKey);
  }

  final _usedItems = <String>{};

  Iterable<String> get usedItems => _usedItems;
}

class _PackageZoneData {
  final Map<String, _DuplicateItem> candidates;
  final usedItems = <_DuplicateItem>{};

  _PackageZoneData(this.candidates);
}

class _DuplicateItem implements Comparable<_DuplicateItem> {
  final String desiredClassName;
  final Set<_Replacement> replacements;

  late final String outputName;

  bool? usedDartConvert;

  String? _definition;

  String get definition => '''
/// Used by:
///
${replacements.map((e) => '/// - $e').join('\n')}
$_definition''';

  _DuplicateItem({
    required this.desiredClassName,
    required this.replacements,
  });

  void populateDefinition(String value) {
    _definition ??= value;
    if (_definition != value) {
      print('****\nexisting\n****');
      print(_definition);
      print('****\nnew\n****');
      print(value);
      throw UnimplementedError();
    }
  }

  @override
  String toString() => desiredClassName;

  @override
  int compareTo(_DuplicateItem other) {
    var value = desiredClassName.compareTo(other.desiredClassName);
    if (value == 0) {
      value = other.replacements.length.compareTo(replacements.length);
    }
    if (value == 0) {
      value = replacements.first.compareTo(other.replacements.first);
    }
    return value;
  }
}

class _Replacement implements Comparable<_Replacement> {
  final String library;
  final String classname;

  _Replacement(this.library, this.classname);

  @override
  bool operator ==(Object other) =>
      other is _Replacement &&
      library == other.library &&
      classname == other.classname;

  @override
  int get hashCode => Object.hash(library, classname);

  @override
  String toString() => '$library : $classname';

  @override
  int compareTo(_Replacement other) {
    var value = library.compareTo(other.library);
    if (value == 0) {
      value = classname.compareTo(other.classname);
    }
    return value;
  }
}

extension on JsonSchema {
  Iterable<JsonSchema> get childSchema sync* {
    if (additionalProperties != null) yield additionalProperties!;
    if (items != null) yield items!;
    if (properties != null) yield* properties!.values;
  }

  Iterable<JsonSchema> get decedentSchema sync* {
    for (var child in childSchema) {
      if (child.complex) yield child;
      yield* child.childSchema;
    }
  }

  // TODO: support de-duplicated types referring to each other!
  bool get complex => P_ref != null;
}

String _bestName(Set<String> allKeys) {
  if (allKeys.contains('Empty')) {
    return 'Empty';
  }

  final shortestKey = allKeys.reduce((a, b) => a.length < b.length ? a : b);

  if (allKeys.every((element) => element.endsWith(shortestKey))) {
    return shortestKey;
  }

  final indices = _upperIndices(shortestKey);
  var subShortest = 'Shared';
  for (var index in indices.reversed) {
    String lastNChars(String value) => value.substring(
        value.length - (shortestKey.length - index), value.length);

    final mergedKeys = allKeys.map(lastNChars).toSet();
    if (mergedKeys.length == 1) {
      subShortest = lastNChars(allKeys.first);
    } else {
      return subShortest;
    }
  }

  return subShortest;
}

final _upperCase = RegExp('[A-Z]');

List<int> _upperIndices(String input) {
  final output = <int>[];

  var index = 0;
  for (;;) {
    index = input.indexOf(_upperCase, index);
    if (index < 0) {
      return output;
    }
    output.add(index);
    index++;
  }
}
