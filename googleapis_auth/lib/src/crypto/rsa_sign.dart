// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:typed_data';

import 'package:crypto/crypto.dart';

import 'rsa.dart';

/// Used for signing messages with a private RSA key.
///
/// The implemented algorithm can be seen in
/// RFC 3447, Section 9.2 EMSA-PKCS1-v1_5.
final class RS256Signer {
  // DigestInfo :== SEQUENCE {
  //     digestAlgorithm AlgorithmIdentifier,
  //     digest OCTET STRING
  // }
  //
  // Where AlgorithmIdentifier is for the NIST sha-256 OID
  //   (2 16 840 1 101 3 4 2 1)
  // See a reference for the encoding here:
  // http://msdn.microsoft.com/en-us/library/bb540809%28v=vs.85%29.aspx
  // ASN1:
  // SEQUENCE (length: 0x1f + 2 for sequence + length) [0x30, 0x31]
  //   SEQUENCE (length: 0x0d + 2 for sequence + length) [0x30, 0x0d]
  //     OID 2.16.840.1.101.3.4.2.1
  //       [0x06, 0x09, 0x60, 0x86, 0x48, 0x01, 0x65, 0x03, 0x04, 0x02, 0x01]
  //     NULL [0x05, 0x00]
  //   OCTET STRING (length: 0x20 + 2 for octet string + length) [0x04, 0x20]
  static const _rsaSha256DigestInfoPrefix = [
    0x30,
    0x31,
    0x30,
    0x0d,
    0x06,
    0x09,
    0x60,
    0x86,
    0x48,
    0x01,
    0x65,
    0x03,
    0x04,
    0x02,
    0x01,
    0x05,
    0x00,
    0x04,
    0x20,
  ];

  final RSAPrivateKey _rsaKey;

  RS256Signer(this._rsaKey);

  Uint8List sign(List<int> bytes) {
    final digest = sha256.convert(bytes).bytes;
    final modulusLen = (_rsaKey.bitLength + 7) ~/ 8;

    final block = Uint8List(modulusLen);
    final padLength =
        block.length - _rsaSha256DigestInfoPrefix.length - digest.length - 3;
    block[0] = 0x00;
    block[1] = 0x01;
    block.fillRange(2, 2 + padLength, 0xFF);
    block[2 + padLength] = 0x00;

    var offset = 2 + padLength + 1;
    block.setAll(offset, _rsaSha256DigestInfoPrefix);
    offset += _rsaSha256DigestInfoPrefix.length;
    block.setAll(offset, digest);

    return RSAAlgorithm.rawSign(_rsaKey, block, modulusLen);
  }
}
