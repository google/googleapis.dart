// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:discoveryapis_generator/src/dart_comments.dart';
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
        expect(comment.asDartDoc(0), equals('''
/// ABC
/// def
'''));
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
      expect(comment.asDartDoc(2), equals('''
  /// $chars
'''));

      comment = Comment('$chars\n\n$chars');

      // Adding an indentation of 8 characters should make it a block comment
      // which has multiple lines.
      // Multiple independend lines should be treated equally.
      expect(comment.asDartDoc(8), equals('''
        /// $charsShortened
        /// A A
        ///
        /// $charsShortened
        /// A A
'''));
    });
  });

  group('header', () {
    for (var entry in {
      'Bob is nice. Bob is kind.': '''
/// Bob is nice.
///
/// Bob is kind.
''',
      'Bob is nice (e.g. Kritis implementations). Bob is kind.': '''
/// Bob is nice (e.g. Kritis implementations).
///
/// Bob is kind.
''',
      'Bob is nice. Bob is kind (e.g. Kritis implementations).': '''
/// Bob is nice.
///
/// Bob is kind (e.g. Kritis implementations).
''',
    }.entries) {
      test(entry.key, () {
        expect(
          Comment.header(entry.key).asDartDoc(0),
          entry.value,
        );
      });
    }
  });
}
