// ignore_for_file: lines_longer_than_80_chars
import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:googleapis_auth/src/crypto/rsa.dart';
import 'package:googleapis_auth/src/crypto/rsa_sign.dart';
import 'package:test/test.dart';

import 'wycheproof_data.dart';

// Pads base64 to multiple of 4
String _padBase64(String value) =>
    value.padRight(value.length + (4 - value.length % 4) % 4, '=');

void main() {
  group('Wycheproof RSA PKCS1 v1.5', () {
    const rsaVectors = [
      'rsa_signature_2048_sha256_test.json',
      'rsa_signature_3072_sha256_test.json',
      'rsa_signature_4096_sha256_test.json',
    ];

    for (final vectorFile in rsaVectors) {
      final jsonStr = utf8.decode(
        base64.decode(wycheproofVectorsBase64[vectorFile]!),
      );
      final vectorMap = jsonDecode(jsonStr) as Map<String, dynamic>;
      final testGroups = vectorMap['testGroups'] as Iterable;

      for (final g in testGroups) {
        final testGroup = g as Map<String, dynamic>;

        final jwk = testGroup['keyJwk'] as Map<String, dynamic>;
        final e = _base64UrlToBigInt(jwk['e'] as String);
        final n = _base64UrlToBigInt(jwk['n'] as String);

        final pubKey = RSAPublicKey(n, e);
        final verifier = RS256Verifier(pubKey);

        final tests = testGroup['tests'] as Iterable;
        for (final tDynamic in tests) {
          final t = tDynamic as Map<String, dynamic>;
          final tcId = t['tcId'];
          final result =
              t['result'] as String; // 'valid', 'acceptable', 'invalid'
          final msg = (t['msg'] as String).replaceAll(RegExp(r'\s+'), '');
          final sig = (t['sig'] as String).replaceAll(RegExp(r'\s+'), '');
          final comment = t['comment'] as String?;

          test('$vectorFile - tcId $tcId ($result)', () {
            final msgBytes = _hexDecode(msg);
            final sigBytes = _hexDecode(sig);

            final isValid = verifier.verify(msgBytes, sigBytes);

            if (result == 'valid') {
              expect(isValid, isTrue, reason: comment);

              final s = bytes2BigInt(sigBytes);
              final m = s.modPow(e, n);
              final recoveredBlock = integer2Bytes(
                m,
                (pubKey.bitLength + 7) ~/ 8,
              );

              final digest = sha256.convert(msgBytes).bytes;
              final modulusLen = (pubKey.bitLength + 7) ~/ 8;
              final expectedBlock = Uint8List(modulusLen);
              final prefix = [
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
              final padLength =
                  expectedBlock.length - prefix.length - digest.length - 3;
              expectedBlock[0] = 0x00;
              expectedBlock[1] = 0x01;
              expectedBlock.fillRange(2, 2 + padLength, 0xFF);
              expectedBlock[2 + padLength] = 0x00;
              var offset = 2 + padLength + 1;
              expectedBlock.setAll(offset, prefix);
              offset += prefix.length;
              expectedBlock.setAll(offset, digest);

              expect(
                recoveredBlock,
                expectedBlock,
                reason:
                    'Recovered PKCS#1 v1.5 block byte-for-byte identical to block constructed by RS256Signer construction logic.',
              );
            } else if (result == 'invalid') {
              expect(isValid, isFalse, reason: comment);
            } else if (result == 'acceptable') {
              // Depending on strictness, acceptable might be true or false.
              // Our implementation is strict and expects the NULL ASN.1 parameter,
              // thus tests like "Missing NULL in the ASN encoding" will be false.
              // We just require it to not crash.
              expect(isValid, anyOf(isTrue, isFalse));
            }
          });
        }
      }
    }
  });

  group('Wycheproof JSON Web Signature', () {
    const vectorFile = 'json_web_signature_test.json';
    final jsonStr = utf8.decode(
      base64.decode(wycheproofVectorsBase64[vectorFile]!),
    );
    final vectorMap = jsonDecode(jsonStr) as Map<String, dynamic>;
    final testGroups = vectorMap['testGroups'] as Iterable;

    for (final g in testGroups) {
      final testGroup = g as Map<String, dynamic>;
      final key = testGroup['key'] as Map<String, dynamic>?;
      if (key == null) continue;
      final jwk = key['jwk'] as Map<String, dynamic>?;
      if (jwk == null || jwk['kty'] != 'RSA') continue;

      final e = _base64UrlToBigInt(jwk['e'] as String);
      final n = _base64UrlToBigInt(jwk['n'] as String);

      final pubKey = RSAPublicKey(n, e);
      final verifier = RS256Verifier(pubKey);

      final tests = testGroup['tests'] as Iterable;
      for (final tDynamic in tests) {
        final t = tDynamic as Map<String, dynamic>;
        final jwsStr = t['jws'] as String;
        final tcId = t['tcId'];
        final result =
            t['result'] as String; // 'valid', 'acceptable', 'invalid'
        final comment = t['comment'] as String?;

        test('$vectorFile - tcId $tcId ($result)', () {
          bool isValid = false;

          final parts = jwsStr.split('.');
          if (parts.length == 3) {
            final hdrStrB64 = parts[0];
            final payloadStrB64 = parts[1];
            final sigStrB64 = parts[2];

            try {
              final headerJson = utf8.decode(
                base64Url.decode(_padBase64(hdrStrB64)),
              );
              final header = jsonDecode(headerJson) as Map<String, dynamic>;

              if (header['alg'] == 'RS256') {
                bool badCrit = false;
                if (header.containsKey('crit')) {
                  final crit = header['crit'] as List;
                  for (final c in crit) {
                    if (c != 'b64') {
                      badCrit = true;
                    }
                  }
                }

                if (!badCrit) {
                  final msgBytes = utf8.encode('$hdrStrB64.$payloadStrB64');
                  final sigBytes = base64Url.decode(_padBase64(sigStrB64));
                  isValid = verifier.verify(msgBytes, sigBytes);
                }
              }
            } catch (_) {
              // malformed base64url or json
              isValid = false;
            }
          }

          if (result == 'valid' || result == 'acceptable') {
            expect(isValid, isTrue, reason: comment);
          } else {
            expect(isValid, isFalse, reason: comment);
          }
        });
      }
    }
  });
}

List<int> _hexDecode(String hex) {
  final result = <int>[];
  for (var i = 0; i < hex.length; i += 2) {
    result.add(int.parse(hex.substring(i, i + 2), radix: 16));
  }
  return result;
}

BigInt _base64UrlToBigInt(String b64t) {
  final bytes = base64Url.decode(_padBase64(b64t));
  return bytes2BigInt(bytes);
}

BigInt bytes2BigInt(List<int> bytes) {
  var number = BigInt.zero;
  for (var i = 0; i < bytes.length; i++) {
    number = (number << 8) | BigInt.from(bytes[i]);
  }
  return number;
}

Uint8List integer2Bytes(BigInt integer, int intendedLength) {
  final bytes = Uint8List(intendedLength);
  var v = integer;
  for (var i = bytes.length - 1; i >= 0; i--) {
    bytes[i] = (v & BigInt.from(0xff)).toInt();
    v >>= 8;
  }
  return bytes;
}
