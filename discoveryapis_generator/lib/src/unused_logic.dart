import 'dart:collection';

import 'generated_googleapis/discovery/v1.dart';

extension RestDescriptionExtension on RestDescription {
  int pruneUnused() {
    final schemaReferencedByResource =
        SplayTreeSet<String>.of(_referencedTypes());

    final searchBacklog = Set.of(schemaReferencedByResource);

    while (searchBacklog.isNotEmpty) {
      final item = searchBacklog.last;
      searchBacklog.remove(item);
      final schema = schemas![item]!;

      for (var newItem in schema.referencedTypeIds()) {
        if (schemaReferencedByResource.add(newItem)) {
          searchBacklog.add(newItem);
        }
      }
    }

    final toRemove = SplayTreeSet.of(schemas!.keys)
      ..removeAll(schemaReferencedByResource);

    schemas!.removeWhere((key, value) => toRemove.contains(key));

    return toRemove.length;
  }

  Iterable<String> _referencedTypes() sync* {
    for (var method in _allMethods()) {
      yield* method.referencedTypeIds();
    }

    for (var param in parameters?.values ?? const <JsonSchema>[]) {
      yield* param.referencedTypeIds();
    }
  }

  Iterable<RestMethod> _allMethods() sync* {
    for (var method in methods?.values ?? const <RestMethod>[]) {
      yield method;
    }

    for (var resource in resources?.values ?? const <RestResource>[]) {
      yield* resource._allMethods();
    }
  }
}

extension on RestResource {
  Iterable<RestMethod> _allMethods() sync* {
    for (var method in methods?.values ?? const <RestMethod>[]) {
      yield method;
    }

    for (var resource in resources?.values ?? const <RestResource>[]) {
      yield* resource._allMethods();
    }
  }
}

extension on RestMethod {
  Iterable<String> referencedTypeIds() sync* {
    final parameters = this.parameters;

    if (parameters != null) {
      for (var param in parameters.values) {
        yield* param.referencedTypeIds();
      }
    }

    final request = this.request;
    if (request != null) {
      yield request.P_ref!;
    }

    final response = this.response;
    if (response != null) {
      yield response.P_ref!;
    }
  }
}

extension on JsonSchema {
  Iterable<String> referencedTypeIds() sync* {
    if (id != null) yield id!;
    if (P_ref != null) yield P_ref!;

    if (properties != null) {
      for (var param in properties!.values) {
        yield* param.referencedTypeIds();
      }
    }

    if (additionalProperties != null) {
      yield* additionalProperties!.referencedTypeIds();
    }

    if (items != null) {
      yield* items!.referencedTypeIds();
    }
  }
}
