// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:typed_data';

import 'package:googleapis_auth/src/crypto/asn1.dart';
import 'package:test/test.dart';

void main() {
  void expectArgumentError(List<int> bytes) {
    expect(
      () => ASN1Parser.parseObject(Uint8List.fromList(bytes)),
      throwsA(isArgumentError),
    );
  }

  void invalidLenTest(int tagBytes) {
    test('invalid-len', () {
      expectArgumentError([tagBytes]);
      expectArgumentError([tagBytes, 0x07]);
      expectArgumentError([tagBytes, 0x82]);
      expectArgumentError([tagBytes, 0x82, 1]);
      expectArgumentError([tagBytes, 0x01, 1, 2, 3, 4]);
    });
  }

  group('asn1-parser', () {
    group('sequence', () {
      test('empty', () {
        final sequenceBytes = [ASN1Parser.sequenceTag, 0];
        final sequence =
            ASN1Parser.parseObject(Uint8List.fromList(sequenceBytes))
                as ASN1Sequence;
        expect(sequence.objects, isEmpty);
      });

      test('one-element', () {
        final sequenceBytes = [
          ASN1Parser.sequenceTag,
          1,
          ASN1Parser.nullTag,
          0,
        ];
        final sequence =
            ASN1Parser.parseObject(Uint8List.fromList(sequenceBytes))
                as ASN1Sequence;
        expect(sequence.objects, hasLength(1));
        expect(sequence.objects[0], isA<ASN1Null>());
      });

      test('many-elements', () {
        final sequenceBytes = [
          ASN1Parser.sequenceTag,
          0x82,
          0x01,
          0x00,
          for (var i = 0; i < 128; i++) ...[ASN1Parser.nullTag, 0],
        ];

        final sequence =
            ASN1Parser.parseObject(Uint8List.fromList(sequenceBytes))
                as ASN1Sequence;
        expect(sequence.objects, hasLength(128));
        for (var i = 0; i < 128; i++) {
          expect(sequence.objects[i], isA<ASN1Null>());
        }
      });

      invalidLenTest(ASN1Parser.sequenceTag);
    });

    group('integer', () {
      test('small', () {
        for (var i = 0; i < 256; i++) {
          final integerBytes = [ASN1Parser.integerTag, 1, i];
          final integer =
              ASN1Parser.parseObject(Uint8List.fromList(integerBytes))
                  as ASN1Integer;
          expect(integer.integer, BigInt.from(i));
        }
      });

      test('multi-byte', () {
        final integerBytes = [ASN1Parser.integerTag, 3, 1, 2, 3];
        final integer = ASN1Parser.parseObject(
          Uint8List.fromList(integerBytes),
        );
        expect(integer, isA<ASN1Integer>());
        expect((integer as ASN1Integer).integer, BigInt.from(0x010203));
      });

      invalidLenTest(ASN1Parser.integerTag);
    });

    group('octet-string', () {
      test('small', () {
        final octetStringBytes = [ASN1Parser.octetStringTag, 3, 1, 2, 3];
        final octetString = ASN1Parser.parseObject(
          Uint8List.fromList(octetStringBytes),
        );
        expect(octetString, isA<ASN1OctetString>());
        expect((octetString as ASN1OctetString).bytes, equals([1, 2, 3]));
      });

      test('large', () {
        final octetStringBytes = [
          ASN1Parser.octetStringTag,
          0x82,
          0x01,
          0x00,
          for (var i = 0; i < 256; i++) i % 256,
        ];

        final octetString = ASN1Parser.parseObject(
          Uint8List.fromList(octetStringBytes),
        );
        expect(octetString, isA<ASN1OctetString>());
        final castedOctetString = octetString as ASN1OctetString;
        for (var i = 0; i < 256; i++) {
          expect(castedOctetString.bytes[i], equals(i % 256));
        }
      });

      invalidLenTest(ASN1Parser.octetStringTag);
    });

    group('oid', () {
      // NOTE: Currently the oid is parsed as normal bytes, so we don't validate
      // the oid structure.
      test('small', () {
        final objIdBytes = [ASN1Parser.objectIdTag, 3, 1, 2, 3];
        final objId = ASN1Parser.parseObject(Uint8List.fromList(objIdBytes));
        expect(objId, isA<ASN1ObjectIdentifier>());
        expect((objId as ASN1ObjectIdentifier).bytes, equals([1, 2, 3]));
      });

      test('large', () {
        final objIdBytes = [
          ASN1Parser.objectIdTag,
          0x82,
          0x01,
          0x00,
          for (var i = 0; i < 256; i++) i % 256,
        ];

        final objId = ASN1Parser.parseObject(Uint8List.fromList(objIdBytes));
        expect(objId, isA<ASN1ObjectIdentifier>());
        final castedObjId = objId as ASN1ObjectIdentifier;
        for (var i = 0; i < 256; i++) {
          expect(castedObjId.bytes[i], equals(i % 256));
        }
      });

      invalidLenTest(ASN1Parser.objectIdTag);
    });

    test('recursion-limit', () {
      List<int> buildNested(int depth) {
        if (depth == 0) return [ASN1Parser.nullTag, 0x00];
        final inner = buildNested(depth - 1);
        final len = inner.length;
        if (len < 128) {
          return [ASN1Parser.sequenceTag, len, ...inner];
        } else {
          // write length in long form.
          // for test simplicity, assuming strict < 128 doesn't help if we go
          // deep.
          // 130 levels * 2 bytes = 260 bytes.
          // 260 fits in 2 bytes length (0x82 0x01 0x04).
          final lenBytes = <int>[];
          var l = len;
          while (l > 0) {
            lenBytes.insert(0, l & 0xFF);
            l >>= 8;
          }
          return [
            ASN1Parser.sequenceTag,
            0x80 | lenBytes.length,
            ...lenBytes,
            ...inner,
          ];
        }
      }

      final deeplyNested = buildNested(130);
      expect(
        () => ASN1Parser.parseObject(Uint8List.fromList(deeplyNested)),
        throwsArgumentError,
      );

      final okNested = buildNested(100);
      expect(
        ASN1Parser.parseObject(Uint8List.fromList(okNested)),
        isA<ASN1Sequence>(),
      );
    });
  });

  test('null', () {
    final objId = ASN1Parser.parseObject(
      Uint8List.fromList([ASN1Parser.nullTag, 0x00]),
    );
    expect(objId, isA<ASN1Null>());

    expectArgumentError([ASN1Parser.nullTag]);
    expectArgumentError([ASN1Parser.nullTag, 0x01]);
  });
}
