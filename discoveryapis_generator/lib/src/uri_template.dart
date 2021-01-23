// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library discoveryapis_generator.uri_template;

import 'dart_api_library.dart';
import 'namer.dart';
import 'utils.dart';

/// Generates code for expanding a URI template.
abstract class Part {
  final DartApiImports imports;
  final String templateVar;

  Part(this.imports, this.templateVar);

  /// Generates a dart expression by expanding this part using [variable] as
  /// the contests of a template variable.
  String stringExpression(Identifier variable);
}

/// Represents a URI Template literal.
class StringPart extends Part {
  final String staticString;

  StringPart(DartApiImports imports, this.staticString) : super(imports, null);

  @override
  String stringExpression(Identifier variable) =>
      "'${escapeString(staticString)}'";
}

/// Represents a URI Template variable expression of the form {var}
class VariableExpression extends Part {
  VariableExpression(DartApiImports imports, String templateVar)
      : super(imports, templateVar);

  @override
  String stringExpression(Identifier variable) =>
      "${imports.commons}.Escaper.ecapeVariable('\$$variable')";
}

/// Represents a URI Template variable expression of the form {/var*}
class PathVariableExpression extends Part {
  PathVariableExpression(DartApiImports imports, String templateVar)
      : super(imports, templateVar);

  @override
  String stringExpression(Identifier variable) =>
      "'/' + ($variable).map((item) => "
      "${imports.commons}.Escaper.ecapePathComponent(item)).join('/')";
}

/// Represents a URI Template variable expression of the form {+var}
class ReservedExpansionExpression extends Part {
  ReservedExpansionExpression(DartApiImports imports, String templateVar)
      : super(imports, templateVar);

  @override
  String stringExpression(Identifier variable) =>
      "${imports.commons}.Escaper.ecapeVariableReserved('\$$variable')";
}

/// Represents a URI Template as defined in RFC 6570.
///
/// This class supports only a very limited subset of RFC 6570, namely
/// the following expression types: {var}, {/var*} and {+var}.
///
/// See: http://tools.ietf.org/html/rfc6570
class UriTemplate {
  final List<Part> parts;

  UriTemplate(this.parts);

  /// Generates a dart expression by expanding this [UriTemplate] using
  /// [identifiers].
  ///
  /// The key in [identifiers] are template variable names and the values are
  /// the dart [Identifier]s which contain the dart value.
  String stringExpression(Map<String, Identifier> identifiers) =>
      parts.map((Part part) {
        if (part.templateVar == null) {
          return part.stringExpression(null);
        }
        final identifier = identifiers[part.templateVar];
        if (identifier == null) {
          throw ArgumentError(
              'Could not find entry ${part.templateVar} in identifier map.');
        }
        return part.stringExpression(identifier);
      }).join(' + ');

  static UriTemplate parse(DartApiImports imports, String pattern) {
    final parts = <Part>[];

    var offset = 0;
    while (offset < pattern.length) {
      final open = pattern.indexOf('{', offset);
      // If we have no more URI template expressions, we append the remaining
      // string as a literal and we're done.
      if (open < 0) {
        final rest = pattern.substring(offset);
        parts.add(StringPart(imports, rest));
        break;
      }

      // We append the static string prefix as a literal (if necessary).
      if (open > offset) {
        final stringPrefix = pattern.substring(offset, open);
        parts.add(StringPart(imports, stringPrefix));
      }

      final close = pattern.indexOf('}', open);
      if (close < 0) {
        throw ArgumentError('Invalid URI template pattern, '
            "expected closing brace: '$pattern'");
      }

      // We extract the URI template expression and generate an expression
      // object for it.
      final templateExpression = pattern.substring(open + 1, close);
      if (templateExpression.startsWith('/') &&
          templateExpression.endsWith('*')) {
        final variable =
            templateExpression.substring(1, templateExpression.length - 1);
        _ensureValidVariable(variable);
        parts.add(PathVariableExpression(imports, variable));
      } else if (templateExpression.startsWith('+')) {
        final variable = templateExpression.substring(1);
        _ensureValidVariable(variable);
        parts.add(ReservedExpansionExpression(imports, variable));
      } else {
        final variable = templateExpression;
        _ensureValidVariable(variable);
        parts.add(VariableExpression(imports, variable));
      }
      offset = close + 1;
    }
    return UriTemplate(parts);
  }

  static void _ensureValidVariable(String name) {
    final codeUnites = name.codeUnits;
    for (var i = 0; i < codeUnites.length; i++) {
      final char = codeUnites[i];
      final isLetter =
          (65 <= char && char <= 90) || (97 <= char && char <= 122);
      final isNumber = 48 <= char && char <= 57;
      final isUnderscore = char == 0x5F;
      if (i == 0 && !isLetter) {
        throw ArgumentError('Variables can only begin with an upper or '
            'lowercase letter: "$name".');
      }
      if (!isLetter && !isNumber && !isUnderscore) {
        throw ArgumentError('Variables can only consist of uppercase '
            'letters, lowercase letters, underscores and '
            'numbers: "$name".');
      }
    }
  }
}
