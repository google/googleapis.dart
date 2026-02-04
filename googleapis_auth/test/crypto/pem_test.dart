// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: lines_longer_than_80_chars

import 'dart:convert';

import 'package:googleapis_auth/src/crypto/pem.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

void main() {
  group('pem', () {
    test('null', () {
      expect(() => keyFromString(''), throwsA(isArgumentError));
    });

    test('pem--key-from-string', () {
      final key = keyFromString(testPrivateKeyString);
      expect(
        key.p,
        equals(
          BigInt.parse(
            '170185878019789847607218833833962851295383479739128068911675681859184825725303329240997154492057125840628991571181411414164882361723231273391547091096391845233984484218520948165420605211532206383859989286454330226302062891556391372178426684136261758077913279309249468965000813860343415338472623037185763380093',
          ),
        ),
      );
      expect(
        key.q,
        equals(
          BigInt.parse(
            '136634937867625346722869734066327766542560453705266659651284573193680854438532412351608161985232086174999341126075829838477923122149398705411098928405144549034231120055200290950893136823181693383585861140730929930114638604738429489364496581584222788741142343940831827356789459450282075298628271623617861448279',
          ),
        ),
      );
      expect(
        key.n,
        equals(
          BigInt.parse(
            '23253336869181252005308127869627478511861722018560725538542603352356752658510633204810959681459083455055115233727694253121121138828979138624495569601457246561359553177524606534054439784597124760679930421448728375265700767584567585959695707287695356045087640902894887625471020788794811661755081070077086649519865067918501869783817745592796089436450623267438942174934673417424553992577792939276705103879103955476795626469391055763713456179432199172562526422301070938382514265029982800538033050279129668807032677927531973249309321914500317007151921938466293582589451642241740444272968677617027011566610435323463337709947',
          ),
        ),
      );
      expect(
        key.d,
        equals(
          BigInt.parse(
            '21186554940454261253047269959735660724480631477978821785517431853394668885438560354085051566279884512080977781045029208574826211785037495240030508751426142586201712610225510861978099522679761260199887167944008250970681053969661407950094604171122649803382413195502685962008111346880629170494825836648656453852203519401121722270587408277317819537925146228717860401265662699719826243356610955461998054615517371279631680512102389979478015385709644867750888484550190071229275090881149432467365050794063725847869274512118390103343213000471284707060203072264487986083004823016463235156640750689592865369834958756866148520449',
          ),
        ),
      );
      expect(key.e, equals(BigInt.from(65537)));
      expect(
        key.dmp1,
        equals(
          BigInt.parse(
            '8112374428701702609593842209702915108210293280208677346843383586799722226617751812699316578927727255231777006398991855865405686833748485558923861522271817820635175987589597358267451526325993144989526626651865780047418167954318425419006133348210655541684866328365584952723843668457708310075048817739114161457',
          ),
        ),
      );
      expect(
        key.dmq1,
        equals(
          BigInt.parse(
            '69064888333930830841944331910451194321610695483381427808232052980561601308959263072336597373770287299070802348040252301131546443496698520136006747353055884093824470361301555431744464097251017848208627523520965497274938325818544542688522182250340240209771921627903870254182590341478772425006618460954711021211',
          ),
        ),
      );
      expect(
        key.coeff,
        equals(
          BigInt.parse(
            '16726959063327324857338379758571748557044292252371297447561270320393087678399207080059961434627453370656491757664831584315003981946034135341817305303511530360890203726058358401094205679273808207987503167082629712433452873772120961093571912870024590300080209978748890272607981079166485164486378666155431958545',
          ),
        ),
      );
    });

    test('invalid-oid', () {
      // Construct a PEM with invalid OID in Encapsulated format.
      // Encapsulated := seq[int/version=0, seq[obj-id/wrong, null-obj], octet-string/PrivateKey]
      // Wrong OID: 1.2.840.113549.1.1.2 (MD2 with RSAEncryption) instead of 1.1.1
      // 1.2.840.113549.1.1.2 -> 2a 86 48 86 f7 0d 01 01 02
      final wrongOidBytes = [
        0x30, 0x0D, // Sequence (OID + NULL)
        0x06, 0x09, 0x2a, 0x86, 0x48, 0x86, 0xf7, 0x0d, 0x01, 0x01, 0x02, // OID
        0x05, 0x00, // Null
      ];

      // We need to wrap the private key in OctetString.
      // Existing key bytes:
      final keyBytes = base64Decode(
        testPrivateKeyString
            .replaceAll('-----BEGIN RSA PRIVATE KEY-----', '')
            .replaceAll('-----END RSA PRIVATE KEY-----', '')
            .replaceAll('\n', ''),
      );

      // Wrap in OctetString
      // OctetString tag 0x04. Length is long form.
      final octetHeader = <int>[0x04];
      if (keyBytes.length < 128) {
        octetHeader.add(keyBytes.length);
      } else {
        final lenBytes = <int>[];
        var l = keyBytes.length;
        while (l > 0) {
          lenBytes.insert(0, l & 0xFF);
          l >>= 8;
        }
        octetHeader.add(0x80 | lenBytes.length);
        octetHeader.addAll(lenBytes);
      }

      // Final Sequence: Version 0, WrongAlgo, OctetString(Key)
      // Version 0: 02 01 00
      final fullSeqContent = <int>[
        0x02,
        0x01,
        0x00,
        ...wrongOidBytes,
        ...octetHeader,
        ...keyBytes,
      ];

      final fullSeqHeader = <int>[0x30]; // Sequence
      // Length
      final fullLen = fullSeqContent.length;
      if (fullLen < 128) {
        fullSeqHeader.add(fullLen);
      } else {
        final lenBytes = <int>[];
        var l = fullLen;
        while (l > 0) {
          lenBytes.insert(0, l & 0xFF);
          l >>= 8;
        }
        fullSeqHeader.add(0x80 | lenBytes.length);
        fullSeqHeader.addAll(lenBytes);
      }

      final fullBytes = [...fullSeqHeader, ...fullSeqContent];
      final pem =
          '-----BEGIN RSA PRIVATE KEY-----\n${base64Encode(fullBytes)}\n-----END RSA PRIVATE KEY-----';

      expect(
        () => keyFromString(pem),
        _throwArgumentErrorWithMsg('Unexpected Algorithm Identifier OID'),
      );
    });

    test('small-key', () {
      // 512 bit key (mocked, simple ints that parse but have small n).
      // Seq(0, n, e, d, p, q, dmp1, dmq1, coeff)
      // n approx 2^511.
      final n = BigInt.two.pow(511);
      final e = BigInt.from(65537);
      // d, p, q etc can be 0 or 1 for parsing, avoiding complex math.
      // The bitLength check is on n.
      final d = BigInt.one;
      final p = BigInt.one;
      final q = BigInt.one;
      final dmp1 = BigInt.one;
      final dmq1 = BigInt.one;
      final coeff = BigInt.one;

      List<int> encodeBigInt(BigInt i) {
        if (i == BigInt.zero) return [0];
        final bytes = <int>[];
        var temp = i;
        while (temp > BigInt.zero) {
          bytes.insert(0, (temp & BigInt.from(0xFF)).toInt());
          temp >>= 8;
        }
        if ((bytes[0] & 0x80) != 0) {
          bytes.insert(0, 0);
        }
        return bytes;
      }

      List<int> ans1Int(BigInt i) {
        final b = encodeBigInt(i);
        return [
          0x02,
          b.length,
          ...b,
        ]; // Assuming length < 128 (512 bits is ~64 bytes)
      }

      final seqContent = <int>[
        ...ans1Int(BigInt.zero), // ver
        ...ans1Int(n),
        ...ans1Int(e),
        ...ans1Int(d),
        ...ans1Int(p),
        ...ans1Int(q),
        ...ans1Int(dmp1),
        ...ans1Int(dmq1),
        ...ans1Int(coeff),
      ];
      final seqLen = seqContent.length;
      final fullBytes = [0x30];
      if (seqLen < 128) {
        fullBytes.add(seqLen);
      } else {
        fullBytes.add(0x81); // 1 byte length
        fullBytes.add(seqLen);
      }
      fullBytes.addAll(seqContent);

      final pem =
          '''
-----BEGIN RSA PRIVATE KEY-----
${base64Encode(fullBytes)}
-----END RSA PRIVATE KEY-----''';

      expect(
        () => keyFromString(pem),
        _throwArgumentErrorWithMsg('Only 1024 or more bits are supported'),
      );
    });
  });
}

Matcher _throwArgumentErrorWithMsg(String msg) =>
    throwsA(isArgumentError.having((e) => e.message, 'message', contains(msg)));
