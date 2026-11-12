// Copyright 2021 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

import 'package:discoveryapis_generator/src/dart_comments.dart';
import 'package:discoveryapis_generator/src/utils.dart';
import 'package:test/test.dart';

void main() {
  group('comments', () {
    test('empty-comment', () {
      void expectUndocumented(Comment comment) {
        expect(comment.asDartDoc(0), equals(''));
        expect(comment.asDartDoc(2), equals(''));
      }

      expectUndocumented(Comment(null));
      expectUndocumented(Comment(''));
      expectUndocumented(Comment.empty);
    });

    test('escape-comment', () {
      final comment = Comment('/* foobar */');
      expect(comment.asDartDoc(0), equals('///  / *  foobar  * /\n'));
    });

    test('one-line-comment', () {
      void expectABC(Comment comment) {
        expect(comment.asDartDoc(0), equals('/// ABC\n'));
        expect(comment.asDartDoc(2), equals('  /// ABC\n'));
      }

      expectABC(Comment('ABC'));
      expectABC(Comment('ABC  '));
      expectABC(Comment('ABC \n '));
    });

    test('multi-line-comment', () {
      void expectABCdef(Comment comment) {
        expect(
          comment.asDartDoc(0),
          equals('''
/// ABC
/// def
'''),
        );
      }

      expectABCdef(Comment('ABC\ndef'));
      expectABCdef(Comment('ABC\ndef  '));
      expectABCdef(Comment('ABC \ndef \n  \n  '));
    });

    test('break-lines', () {
      final chars = ('A ' * ((80 - 7) ~/ 2)).trimRight();
      final charsShortened = chars.substring(0, chars.length - 4);
      var comment = Comment(chars);

      // [chars] fit on one line with indentation=0.
      expect(comment.asDartDoc(0), equals('/// $chars\n'));

      // Adding an indentation of 2 characters should make it a block comment.
      expect(
        comment.asDartDoc(2),
        equals('''
  /// $chars
'''),
      );

      comment = Comment('$chars\n\n$chars');

      // Adding an indentation of 8 characters should make it a block comment
      // which has multiple lines.
      // Multiple independend lines should be treated equally.
      expect(
        comment.asDartDoc(8),
        equals('''
        /// $charsShortened
        /// A A
        ///
        /// $charsShortened
        /// A A
'''),
      );
    });

    group('line-terminators', () {
      const terminators = {
        'CR': '\r',
        'CRLF': '\r\n',
        'LF': '\n',
        'LS (U+2028)': '\u2028',
        'PS (U+2029)': '\u2029',
      };

      for (final entry in terminators.entries) {
        final label = entry.key;
        final sep = entry.value;

        test('$label short comment (<=80 chars)', () {
          final comment = Comment('First${sep}void injected() {}');
          expect(
            comment.asDartDoc(0),
            equals('/// First\n/// void injected() {}\n'),
          );
          expect(
            comment.asDartDoc(2),
            equals('  /// First\n  /// void injected() {}\n'),
          );
        });

        test('$label long wrapped comment (>80 chars)', () {
          final longPrefix = List.filled(18, 'word').join(' ');
          final comment = Comment('$longPrefix${sep}void injected() {}');

          for (final indent in [0, 4]) {
            final output = comment.asDartDoc(indent);
            final prefix = '${' ' * indent}///';
            expect(output, isNot(contains('\r')));
            expect(output, isNot(contains('\u2028')));
            expect(output, isNot(contains('\u2029')));

            final lines = output.trimRight().split('\n');
            expect(lines.length, greaterThanOrEqualTo(3));
            for (final line in lines) {
              expect(line, startsWith(prefix));
            }
            expect(lines.last, equals('$prefix void injected() {}'));
          }
        });

        test('$label in Comment.header and DartFormatter safety', () {
          final inputs = [
            'Hello${sep}void injected() {}$sep//',
            '${List.filled(18, 'word').join(' ')}${sep}void injected() {}$sep//',
            'See [link](https://example.com)${sep}void injected() {}',
            '/* block${sep}void injected() {} */',
          ];

          for (final raw in inputs) {
            for (final comment in [Comment(raw), Comment.header(raw, true)]) {
              final doc = comment.asDartDoc(0);
              expect(doc, isNot(contains('\r')));
              expect(doc, isNot(contains('\u2028')));
              expect(doc, isNot(contains('\u2029')));

              final source = '${doc}class Foo {}\n';
              final formatted = formatSource(source);
              final lines = formatted.trimRight().split('\n');
              expect(lines.last, equals('class Foo {}'));
              for (final docLine in lines.take(lines.length - 1)) {
                expect(docLine, startsWith('///'));
              }
            }
          }
        });
      }
    });
  });

  group('header', () {
    for (var entry in {
      'Bob is nice. Bob is kind.': '''
Bob is nice.

Bob is kind.''',
      'Bob is nice (e.g. Kritis implementations). Bob is kind.': '''
Bob is nice (e.g. Kritis implementations).

Bob is kind.''',
      'Bob is nice. Bob is kind (e.g. Kritis implementations).': '''
Bob is nice.

Bob is kind (e.g. Kritis implementations).''',
      '[this] is not': r'\[this\] is not',
      '`skip/within/[ticks]`': '`skip/within/[ticks]`',
      '[this](http://is.a/link)': r'[this](http://is.a/link)',
      'see [Verifying attestations] (https://cloud.google.com/kms/docs/attest-key)':
          'see [Verifying attestations](https://cloud.google.com/kms/docs/attest-key)',
      '[this is](https://a.com/link). This https://example.com/[this_is_not]/':
          r'''
[this is](https://a.com/link).

This https://example.com/\[this_is_not\]/''',
      r'uploading [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/queueref).':
          r'uploading [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/queueref).',
    }.entries) {
      test('`${entry.key}`', () {
        final commentRaw = Comment.header(entry.key, true).rawComment;
        expect(commentRaw, entry.value);
      });
    }
  });

  group('markdown escape skips already escaped characters', () {
    for (var input in const {
      r'[': r'\[',
      r'\]': r'\]',
      r'\\`': r'\\\`',
      r'productPolicy\[\]': r'productPolicy\[\]',
    }.entries) {
      test('`${input.key}`', () {
        expect(markdownEscape(input.key), input.value);
      });
    }
  });

  group('url split', () {
    for (var input in const {
      'this should split': ['this', 'should', 'split'],
      'this [should not](https://example.com) split': [
        'this',
        '[should not](https://example.com)',
        'split',
      ],
      'Note that you must complete the [Search Console verification process](https://support.google.com/webmasters/answer/9008080) for the site before you can access the full report.': [
        'Note', 'that', 'you', 'must', 'complete', 'the', // line
        '[Search Console verification process](https://support.google.com/webmasters/answer/9008080)',
        'for',
        'the',
        'site',
        'before',
        'you',
        'can',
        'access',
        'the',
        'full',
        'report.',
      ],
    }.entries) {
      test('`${input.key}`', () {
        expect(urlSplit(input.key), input.value);
      });
    }
  });
  group('{@code replacement}', () {
    for (var entry in {
      '{@code Foo}': '`Foo`',
      '{@code Foo_Bar}': '`Foo_Bar`',
      '{@code Foo1}': '`Foo1`',
      '{@code GoogleAdsService.SearchGoogleAdsRequest}':
          '`GoogleAdsService.SearchGoogleAdsRequest`',
      '{@code foo bar}': '`foo bar`',
    }.entries) {
      test(entry.key, () {
        expect(Comment(entry.key).rawComment, entry.value);
      });
    }
  });
}
