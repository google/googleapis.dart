import 'dart:async';
import 'dart:collection';
import 'dart:convert' as convert;

import 'dart_schema_types.dart';
import 'generated_googleapis/discovery/v1.dart';

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

    final schema = _expando[this];
    final duplicateItem = packageValue.candidates[schema];

    if (duplicateItem == null) {
      return null;
    }

    libraryValue.addUsedItem(duplicateItem);

    final initialCovertCallCount = imports.convert.callCount;
    final initialDefinition = classDefinitionCore(
      duplicateItem.className,
      includeDescription: false,
    );

    final convertUsed = imports.convert.callCount > initialCovertCallCount;
    if (convertUsed) {
      imports.convert.callCount = initialCovertCallCount;
    }
    duplicateItem.usedDartConvert = convertUsed;

    duplicateItem.populateDefinition(initialDefinition);

    return '${comment.asDartDoc(0)}'
        'typedef $className = ${duplicateItem.className};';
  }
}

T libraryDeduplicateLogic<T>(T Function() action) {
  final data = _LibraryZoneData();
  final result = runZoned(action, zoneValues: {_libraryZoneKey: data});

  final packageValue = Zone.current[_packageZoneKey] as _PackageZoneData?;
  if (packageValue != null) {
    packageValue.usedItems.addAll(data.usedItems);
  }

  return result;
}

mixin DedupeMixin {
  List<RestDescription> get descriptions;

  Set<_DuplicateItem> wrapPackageDeduplicateLogic(void Function() action) {
    final dupes = <String, Set<MapEntry<String, String>>>{};

    for (var api in descriptions) {
      for (var schemaEntry in api.schemas!.entries) {
        final schema = schemaEntry.value;
        if (schema.decedentSchema.any((element) => element.complex)) {
          // TODO: support deduping types that refer to other types
          continue;
        }

        final content = _schemaUniqueId(schema);

        final innerMap = dupes.putIfAbsent(content, () => {});

        innerMap.add(MapEntry(api.id!, schema.id!));
      }
    }

    final candidates = <String, _DuplicateItem>{};

    for (var dupe in dupes.entries) {
      if (dupe.value.length < 2) {
        // Rule of 3 – only de-duplicate classes that show up 3x (or more)
        continue;
      }

      final allKeys = dupe.value.map((e) => e.value).toSet();
      final shortestKey = _bestName(allKeys);

      if (!candidates.containsKey(dupe.key)) {
        // Need to add it! – but! We need to avoid non-exact duplicates
        var className = '\$$shortestKey';
        var count = 0;
        while (candidates.values
            .any((element) => element.className == className)) {
          count++;
          final countVal = count.toString().padLeft(2, '0');
          className = '\$$shortestKey$countVal';
        }

        candidates.putIfAbsent(
          dupe.key,
          () => _DuplicateItem(
            className: className,
          ),
        );
      }
    }

    final data = _PackageZoneData(candidates);
    runZoned(action, zoneValues: {_packageZoneKey: data});

    return data.usedItems;
  }
}

class _LibraryZoneData {
  void addUsedItem(_DuplicateItem item) {
    if (_usedItems
        .where((element) => element.className == item.className)
        .isEmpty) {
      _usedItems.add(item);
    }
  }

  final _usedItems = <_DuplicateItem>[];

  Iterable<_DuplicateItem> get usedItems => _usedItems;
}

class _PackageZoneData {
  final Map<String, _DuplicateItem> candidates;
  final usedItems = SplayTreeSet<_DuplicateItem>();

  _PackageZoneData(this.candidates);
}

class _DuplicateItem implements Comparable<_DuplicateItem> {
  final String className;
  bool? usedDartConvert;

  String? _definition;

  String get definition => _definition!;

  _DuplicateItem({
    required this.className,
    this.usedDartConvert,
    String? definition,
  }) : _definition = definition;

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
  String toString() => className;

  @override
  int compareTo(_DuplicateItem other) => className.compareTo(other.className);
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
  var subShortest = shortestKey;
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
