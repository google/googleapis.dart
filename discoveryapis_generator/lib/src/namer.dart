// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library discoveryapis_generator.namer;

import 'utils.dart';

/// Represents an identifier that can be given a name.
class Identifier {
  String _name;
  bool _sealed = false;
  int _callCount = 0;

  /// The preferred name for this [Identifier].
  final String preferredName;

  /// Used for naming prefix imports which will not get a name.
  Identifier.noPrefix() : preferredName = null {
    sealWithName(null);
  }

  /// Constructs a new [Identifier] with the given [preferredName]. The
  /// identifier will be not sealed.
  Identifier(this.preferredName);

  bool get hasPrefix => preferredName != null;

  /// The allocated name for this [Identifier]. This will be [:null:] until
  /// [sealWithName] was called.
  String get name => _name;

  /// Seals this [Identifier] and gives it the name [name].
  void sealWithName(String name) {
    if (_sealed) {
      throw StateError('This Identifier(preferredName: $preferredName) '
          'has already been sealed.');
    }
    _name = name;
    _sealed = true;
  }

  /// Return the reference name with a `.` appended (e.g., `core.`). Calling
  /// this method will increment the call count; it is not idempotent.
  String ref() {
    _callCount++;
    return name == null ? '' : '$name.';
  }

  bool get wasCalled => _callCount > 0;

  /// Gets a string representation of this [Identifier]. This can only be called
  /// after the identifier has been given a name.
  @override
  String toString() {
    if (!_sealed) {
      throw StateError('This Identifier(preferredName: $preferredName) '
          'has not been sealed yet.');
    }
    return _name;
  }
}

/// Allocate [Identifier]s for a lexical scope.
class Scope {
  static final RegExp _startsWithDigit = RegExp('^[0-9]');
  static final RegExp _nonAscii = RegExp('[^a-zA-z0-9]');

  final Scope parentScope;
  final List<Scope> childScopes = <Scope>[];
  final List<Identifier> identifiers = <Identifier>[];

  Scope({Scope parent}) : parentScope = parent;

  /// Returns a valid identifier based on [preferredName] but different from all
  /// other names previously returned by this method.
  Identifier newIdentifier(String preferredName,
      {bool removeUnderscores = true, bool global = false}) {
    final identifier = Identifier(Scope.toValidIdentifier(preferredName,
        removeUnderscores: removeUnderscores, global: global));
    identifiers.add(identifier);
    return identifier;
  }

  /// Creates a new child [Scope].
  Scope newChildScope() {
    final child = Scope(parent: this);
    childScopes.add(child);
    return child;
  }

  /// Converts [preferredName] to a valid identifier.
  static String toValidIdentifier(String preferredName,
      {bool removeUnderscores = true, bool global = false}) {
    // Replace all abc_xyz with abcXyz.
    if (removeUnderscores) {
      preferredName =
          Scope.capitalizeAtChar(preferredName, '_', keepEnding: true);
    }

    preferredName = preferredName.replaceAll('-', '_').replaceAll('.', '_');
    preferredName = preferredName.replaceAll(_nonAscii, '_');

    if (preferredName.startsWith(_startsWithDigit)) {
      preferredName = 'D$preferredName';
    } else if (preferredName.startsWith('_')) {
      preferredName = 'P$preferredName';
    }

    if (keywords.contains(preferredName)) {
      preferredName = '${preferredName}_';
    }
    if (global) {
      preferredName = '\$$preferredName';
    }
    return preferredName;
  }

  static String toValidScopeName(String scope) {
    const googleAuthPrefix = 'https://www.googleapis.com/auth/';
    const httpsPrefix = 'https://';

    // Defined by openid-connect-core 1.0
    const openidScopes = {
      // https://openid.net/specs/openid-connect-core-1_0.html#AuthRequest
      'openid',
      // https://openid.net/specs/openid-connect-core-1_0.html#ScopeClaims
      'profile',
      'email',
      'address',
      'phone',
      // https://openid.net/specs/openid-connect-core-1_0.html#OfflineAccess
      'offline_access',
    };

    String name;
    if (scope.startsWith(googleAuthPrefix)) {
      name = scope.substring(googleAuthPrefix.length);
    } else if (scope.startsWith(httpsPrefix)) {
      name = scope.substring(httpsPrefix.length);
    } else if (openidScopes.contains(scope)) {
      name = scope;
    } else {
      throw ArgumentError('Scope $scope is not a recognized format.');
    }

    name = Scope.capitalizeAtChar(name, '.');
    name = Scope.capitalizeAtChar(name, '-');
    name = Scope.capitalizeAtChar(name, '_');
    name = Scope.capitalizeAtChar(name, '/');

    return toValidIdentifier('${name}Scope');
  }

  static String capitalizeAtChar(
    String name,
    String char, {
    bool keepEnding = false,
  }) {
    var index = -1;
    while ((index = name.indexOf(char, 1)) > 0) {
      if (index == (name.length - 1)) {
        if (!keepEnding) {
          // Drop [char] at the end of the string.
          name = name.substring(0, name.length - 1);
        } else {
          break;
        }
      } else {
        // Drop [char] and make the next character and uppercase.
        final a = name.substring(0, index);
        final b = name.substring(index + 1, index + 2);
        final c = name.substring(index + 2);
        name = '$a${b.toUpperCase()}$c';
      }
    }
    return name;
  }

  /// Converts the first letter of [name] to an uppercase letter.
  static String capitalize(String name) =>
      '${name.substring(0, 1).toUpperCase()}${name.substring(1)}';
}

/// Names [Identifier]s and avoids name collisions by renaming.
///
/// For every named [Identifier], it's allocated name will be added to
/// [allocatedNames].
///
/// When allocating a new name, a name collides if either the name collides
/// with the [parentNamer] or if the name ia already in [allocatedNames].
///
/// When allocating a new name, the namer starts with the [Identifier]s
/// preferred name, and keeps appending _N where N is an integer until a name
/// does not collide.
class IdentifierNamer {
  final IdentifierNamer parentNamer;
  final Set<String> allocatedNames;

  /// If [parentNamer] is given, this namer will only allocated names which are
  ///   - not taken by [parentNamer]
  ///   - not in [allocatedNames]
  IdentifierNamer({this.parentNamer}) : allocatedNames = <String>{};

  /// Reserves all given [allocatedNames] by default.
  IdentifierNamer.fromNameSet(this.allocatedNames) : parentNamer = null;

  /// Gives [Identifier] a unique name amongst all previously named identifiers
  /// and amongst all identifiers of [parentNamer].
  void nameIdentifier(Identifier identifier) {
    final preferredName = identifier.preferredName;

    var i = 0;
    var currentName = preferredName;
    while (_contains(currentName)) {
      i++;
      currentName = '${preferredName}_$i';
    }
    identifier.sealWithName(currentName);
    allocatedNames.add(currentName);
  }

  bool _contains(String name) {
    if (allocatedNames.contains(name)) return true;
    if (parentNamer != null) {
      if (parentNamer._contains(name)) return true;
    }
    return false;
  }
}

/// Helper class for allocating unique names for generating an API library.
class ApiLibraryNamer {
  String apiClassSuffix;
  Scope _libraryScope;

  /// NOTE: Only exposed for testing.
  final Scope importScope = Scope();

  ApiLibraryNamer({this.apiClassSuffix = 'Api'}) {
    _libraryScope = importScope.newChildScope();
  }

  /// NOTE: Only exposed for testing.
  Scope get libraryScope => _libraryScope;

  String libraryName(String package, String api, String version) {
    package = Scope.toValidIdentifier(package, removeUnderscores: false);
    api = Scope.toValidIdentifier(api, removeUnderscores: false);
    version = Scope.toValidIdentifier(version, removeUnderscores: false);
    return '$package.$api.$version';
  }

  String clientLibraryName(String package, String api) {
    package = Scope.toValidIdentifier(package, removeUnderscores: false);
    api = Scope.toValidIdentifier(api, removeUnderscores: false);
    return '$package.$api.client';
  }

  Identifier noPrefix() => Identifier.noPrefix();

  Identifier import(String name) =>
      importScope.newIdentifier(name, removeUnderscores: false);

  Identifier apiClass(String name) =>
      _libraryScope.newIdentifier('${Scope.capitalize(name)}$apiClassSuffix');

  Identifier resourceClass(String name, {String parent}) {
    name = Scope.capitalize(name);

    if (parent != null && parent.isNotEmpty) {
      // The parent of a resource is either the api class or another resource!
      if (!parent.endsWith('Api')) {
        throw ArgumentError('The parent has to end with Api');
      }

      final parentIsApiClass = !parent.endsWith('ResourceApi');
      if (parentIsApiClass) {
        // We never prefix resource names with the api class name.
        parent = '';
      } else {
        parent = parent.substring(0, parent.length - 'ResourceApi'.length);
      }
      name = '$parent$name';
    }

    return _libraryScope.newIdentifier('${Scope.capitalize(name)}ResourceApi');
  }

  String schemaClassName(String name, {String parent}) {
    if (parent != null) {
      name = '$parent${Scope.capitalize(name)}';
    }
    return Scope.capitalize(name);
  }

  Identifier schemaClass(String name) =>
      _libraryScope.newIdentifier(Scope.capitalize(name));

  Scope newClassScope() => _libraryScope.newChildScope();

  void nameAllIdentifiers() {
    //
    // This method implements the following algorithm:
    // a) name all [Identifier]s in the library scope:
    //    => api class, schema classes, resource classes
    // b) name all [Identifier]s in the class scopes
    //    => fields and methods
    // c) name all [Identifier]s in the method parameter lists
    //    => positional parameters, optional parameters
    // d) name all [Identifier]s in the import scope
    //
    // This is implicitly done by
    // - naming all [Indentifier]s (**) in scope X
    // - naming all child scopes (**) of X
    // (**) (which are already ordered)
    //
    // The import scope is root of a scope tree which contains all [Identifier]s
    //
    // Collisions are handled in the a),b),c) phases by renaming if a name
    // was already taken by either the current scope or a parent scope.
    //
    // Collisions are handled in the d) phase by renaming if a name was already
    // taken by any of the other scopes
    // (which names get collected in [allAllocatedNames])
    //   => This makes sure we rather rename a import than a method parameter,
    //      but still try to name imports with preferred names if possible.
    //      [e.g. if a method parameter is named 'core' we will rename the
    //            import to: import 'dart:core' as core_1;

    final allAllocatedNames = <String>{};

    void nameScope(Scope scope, parentResolver) {
      final resolver = IdentifierNamer(parentNamer: parentResolver);
      scope.identifiers.forEach(resolver.nameIdentifier);
      // Order does not matter because child scopes are independent of each
      // other.
      for (var childScope in scope.childScopes) {
        nameScope(childScope, resolver);
      }

      allAllocatedNames.addAll(resolver.allocatedNames);
    }

    // Name library scope identifiers and down. the passed [IdentifierNamer] is
    // an empty root namer.
    nameScope(_libraryScope, IdentifierNamer());

    // Name all import identifiers. In case we have clashes with any of the
    // other names already assigned, we'll rename the prefixed imports.
    final resolver = IdentifierNamer.fromNameSet(allAllocatedNames);
    importScope.identifiers.forEach(resolver.nameIdentifier);
  }
}
