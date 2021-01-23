// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:discoveryapis_generator/src/dart_api_library.dart';
import 'package:discoveryapis_generator/src/namer.dart';
import 'package:discoveryapis_generator/src/uri_template.dart';
import 'package:test/test.dart';

void main() {
  group('url-pattern', () {
    final namer = ApiLibraryNamer();
    final imports = DartApiImports.fromNamer(namer);
    namer.nameAllIdentifiers();

    Identifier id(String s) => Identifier(s)..sealWithName(s);

    test('string', () {
      final template = UriTemplate.parse(imports, 'abc');
      expect(template.parts, hasLength(1));
      expect(template.parts.first is StringPart, isTrue);
      expect(template.parts.first.templateVar, isNull);
      expect((template.parts.first as StringPart).staticString, 'abc');

      expect(template.stringExpression({}), "'abc'");
    });

    test('variable', () {
      final template = UriTemplate.parse(imports, '{My_var123}');
      expect(template.parts, hasLength(1));
      expect(template.parts.first is VariableExpression, isTrue);
      expect(template.parts.first.templateVar, equals('My_var123'));

      expect(() => template.stringExpression({}), throwsA(isArgumentError));
      expect(template.stringExpression({'My_var123': id('abc')}),
          equals("commons.Escaper.ecapeVariable('\$abc')"));
    });

    test('path-variable-expr', () {
      final template = UriTemplate.parse(imports, '{/myvar*}');
      expect(template.parts, hasLength(1));
      expect(template.parts.first is PathVariableExpression, isTrue);
      expect(template.parts.first.templateVar, equals('myvar'));

      expect(() => template.stringExpression({}), throwsA(isArgumentError));
      expect(
          template.stringExpression({'myvar': id('abc')}),
          equals("'/' + (abc).map((item) => "
              'commons.Escaper.ecapePathComponent(item))'
              ".join('/')"));
    });

    test('reserved-expansion-expr', () {
      final template = UriTemplate.parse(imports, '{+myvar}');
      expect(template.parts, hasLength(1));
      expect(template.parts.first is ReservedExpansionExpression, isTrue);
      expect(template.parts.first.templateVar, equals('myvar'));

      expect(() => template.stringExpression({}), throwsA(isArgumentError));
      expect(template.stringExpression({'myvar': id('abc')}),
          equals("commons.Escaper.ecapeVariableReserved('\$abc')"));
    });

    test('reserved-expansion-expr', () {
      final template = UriTemplate.parse(imports, '/a/{b}/{+c}{/d*}');
      expect(template.parts, hasLength(5));

      expect(template.parts[0] is StringPart, isTrue);
      expect(template.parts[0].templateVar, isNull);

      expect(template.parts[1] is VariableExpression, isTrue);
      expect(template.parts[1].templateVar, equals('b'));

      expect(template.parts[2] is StringPart, isTrue);
      expect(template.parts[2].templateVar, isNull);

      expect(template.parts[3] is ReservedExpansionExpression, isTrue);
      expect(template.parts[3].templateVar, equals('c'));

      expect(template.parts[4] is PathVariableExpression, isTrue);
      expect(template.parts[4].templateVar, equals('d'));
    });

    test('invalid-variablename', () {
      expect(() => UriTemplate.parse(imports, '{foobar'),
          throwsA(isArgumentError));
      expect(() => UriTemplate.parse(imports, '{1foobar}'),
          throwsA(isArgumentError));
      expect(
          () => UriTemplate.parse(imports, '{/abc}'), throwsA(isArgumentError));
      expect(() => UriTemplate.parse(imports, '{+abc*}'),
          throwsA(isArgumentError));
    });
  });
}
