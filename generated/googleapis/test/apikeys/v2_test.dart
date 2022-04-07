// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/apikeys/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.Object?> buildUnnamed0() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed0(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed1() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed1(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed0();
    o.name = 'foo';
    o.response = buildUnnamed1();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed0(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed2() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed2(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed3() => [
      buildUnnamed2(),
      buildUnnamed2(),
    ];

void checkUnnamed3(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2(o[0]);
  checkUnnamed2(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed3(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterV2AndroidApplication = 0;
api.V2AndroidApplication buildV2AndroidApplication() {
  final o = api.V2AndroidApplication();
  buildCounterV2AndroidApplication++;
  if (buildCounterV2AndroidApplication < 3) {
    o.packageName = 'foo';
    o.sha1Fingerprint = 'foo';
  }
  buildCounterV2AndroidApplication--;
  return o;
}

void checkV2AndroidApplication(api.V2AndroidApplication o) {
  buildCounterV2AndroidApplication++;
  if (buildCounterV2AndroidApplication < 3) {
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha1Fingerprint!,
      unittest.equals('foo'),
    );
  }
  buildCounterV2AndroidApplication--;
}

core.List<api.V2AndroidApplication> buildUnnamed4() => [
      buildV2AndroidApplication(),
      buildV2AndroidApplication(),
    ];

void checkUnnamed4(core.List<api.V2AndroidApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV2AndroidApplication(o[0]);
  checkV2AndroidApplication(o[1]);
}

core.int buildCounterV2AndroidKeyRestrictions = 0;
api.V2AndroidKeyRestrictions buildV2AndroidKeyRestrictions() {
  final o = api.V2AndroidKeyRestrictions();
  buildCounterV2AndroidKeyRestrictions++;
  if (buildCounterV2AndroidKeyRestrictions < 3) {
    o.allowedApplications = buildUnnamed4();
  }
  buildCounterV2AndroidKeyRestrictions--;
  return o;
}

void checkV2AndroidKeyRestrictions(api.V2AndroidKeyRestrictions o) {
  buildCounterV2AndroidKeyRestrictions++;
  if (buildCounterV2AndroidKeyRestrictions < 3) {
    checkUnnamed4(o.allowedApplications!);
  }
  buildCounterV2AndroidKeyRestrictions--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterV2ApiTarget = 0;
api.V2ApiTarget buildV2ApiTarget() {
  final o = api.V2ApiTarget();
  buildCounterV2ApiTarget++;
  if (buildCounterV2ApiTarget < 3) {
    o.methods = buildUnnamed5();
    o.service = 'foo';
  }
  buildCounterV2ApiTarget--;
  return o;
}

void checkV2ApiTarget(api.V2ApiTarget o) {
  buildCounterV2ApiTarget++;
  if (buildCounterV2ApiTarget < 3) {
    checkUnnamed5(o.methods!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterV2ApiTarget--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterV2BrowserKeyRestrictions = 0;
api.V2BrowserKeyRestrictions buildV2BrowserKeyRestrictions() {
  final o = api.V2BrowserKeyRestrictions();
  buildCounterV2BrowserKeyRestrictions++;
  if (buildCounterV2BrowserKeyRestrictions < 3) {
    o.allowedReferrers = buildUnnamed6();
  }
  buildCounterV2BrowserKeyRestrictions--;
  return o;
}

void checkV2BrowserKeyRestrictions(api.V2BrowserKeyRestrictions o) {
  buildCounterV2BrowserKeyRestrictions++;
  if (buildCounterV2BrowserKeyRestrictions < 3) {
    checkUnnamed6(o.allowedReferrers!);
  }
  buildCounterV2BrowserKeyRestrictions--;
}

core.int buildCounterV2GetKeyStringResponse = 0;
api.V2GetKeyStringResponse buildV2GetKeyStringResponse() {
  final o = api.V2GetKeyStringResponse();
  buildCounterV2GetKeyStringResponse++;
  if (buildCounterV2GetKeyStringResponse < 3) {
    o.keyString = 'foo';
  }
  buildCounterV2GetKeyStringResponse--;
  return o;
}

void checkV2GetKeyStringResponse(api.V2GetKeyStringResponse o) {
  buildCounterV2GetKeyStringResponse++;
  if (buildCounterV2GetKeyStringResponse < 3) {
    unittest.expect(
      o.keyString!,
      unittest.equals('foo'),
    );
  }
  buildCounterV2GetKeyStringResponse--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterV2IosKeyRestrictions = 0;
api.V2IosKeyRestrictions buildV2IosKeyRestrictions() {
  final o = api.V2IosKeyRestrictions();
  buildCounterV2IosKeyRestrictions++;
  if (buildCounterV2IosKeyRestrictions < 3) {
    o.allowedBundleIds = buildUnnamed7();
  }
  buildCounterV2IosKeyRestrictions--;
  return o;
}

void checkV2IosKeyRestrictions(api.V2IosKeyRestrictions o) {
  buildCounterV2IosKeyRestrictions++;
  if (buildCounterV2IosKeyRestrictions < 3) {
    checkUnnamed7(o.allowedBundleIds!);
  }
  buildCounterV2IosKeyRestrictions--;
}

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterV2Key = 0;
api.V2Key buildV2Key() {
  final o = api.V2Key();
  buildCounterV2Key++;
  if (buildCounterV2Key < 3) {
    o.annotations = buildUnnamed8();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.keyString = 'foo';
    o.name = 'foo';
    o.restrictions = buildV2Restrictions();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterV2Key--;
  return o;
}

void checkV2Key(api.V2Key o) {
  buildCounterV2Key++;
  if (buildCounterV2Key < 3) {
    checkUnnamed8(o.annotations!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyString!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkV2Restrictions(o.restrictions!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterV2Key--;
}

core.List<api.V2Key> buildUnnamed9() => [
      buildV2Key(),
      buildV2Key(),
    ];

void checkUnnamed9(core.List<api.V2Key> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV2Key(o[0]);
  checkV2Key(o[1]);
}

core.int buildCounterV2ListKeysResponse = 0;
api.V2ListKeysResponse buildV2ListKeysResponse() {
  final o = api.V2ListKeysResponse();
  buildCounterV2ListKeysResponse++;
  if (buildCounterV2ListKeysResponse < 3) {
    o.keys = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterV2ListKeysResponse--;
  return o;
}

void checkV2ListKeysResponse(api.V2ListKeysResponse o) {
  buildCounterV2ListKeysResponse++;
  if (buildCounterV2ListKeysResponse < 3) {
    checkUnnamed9(o.keys!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterV2ListKeysResponse--;
}

core.int buildCounterV2LookupKeyResponse = 0;
api.V2LookupKeyResponse buildV2LookupKeyResponse() {
  final o = api.V2LookupKeyResponse();
  buildCounterV2LookupKeyResponse++;
  if (buildCounterV2LookupKeyResponse < 3) {
    o.name = 'foo';
    o.parent = 'foo';
  }
  buildCounterV2LookupKeyResponse--;
  return o;
}

void checkV2LookupKeyResponse(api.V2LookupKeyResponse o) {
  buildCounterV2LookupKeyResponse++;
  if (buildCounterV2LookupKeyResponse < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
  }
  buildCounterV2LookupKeyResponse--;
}

core.List<api.V2ApiTarget> buildUnnamed10() => [
      buildV2ApiTarget(),
      buildV2ApiTarget(),
    ];

void checkUnnamed10(core.List<api.V2ApiTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkV2ApiTarget(o[0]);
  checkV2ApiTarget(o[1]);
}

core.int buildCounterV2Restrictions = 0;
api.V2Restrictions buildV2Restrictions() {
  final o = api.V2Restrictions();
  buildCounterV2Restrictions++;
  if (buildCounterV2Restrictions < 3) {
    o.androidKeyRestrictions = buildV2AndroidKeyRestrictions();
    o.apiTargets = buildUnnamed10();
    o.browserKeyRestrictions = buildV2BrowserKeyRestrictions();
    o.iosKeyRestrictions = buildV2IosKeyRestrictions();
    o.serverKeyRestrictions = buildV2ServerKeyRestrictions();
  }
  buildCounterV2Restrictions--;
  return o;
}

void checkV2Restrictions(api.V2Restrictions o) {
  buildCounterV2Restrictions++;
  if (buildCounterV2Restrictions < 3) {
    checkV2AndroidKeyRestrictions(o.androidKeyRestrictions!);
    checkUnnamed10(o.apiTargets!);
    checkV2BrowserKeyRestrictions(o.browserKeyRestrictions!);
    checkV2IosKeyRestrictions(o.iosKeyRestrictions!);
    checkV2ServerKeyRestrictions(o.serverKeyRestrictions!);
  }
  buildCounterV2Restrictions--;
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterV2ServerKeyRestrictions = 0;
api.V2ServerKeyRestrictions buildV2ServerKeyRestrictions() {
  final o = api.V2ServerKeyRestrictions();
  buildCounterV2ServerKeyRestrictions++;
  if (buildCounterV2ServerKeyRestrictions < 3) {
    o.allowedIps = buildUnnamed11();
  }
  buildCounterV2ServerKeyRestrictions--;
  return o;
}

void checkV2ServerKeyRestrictions(api.V2ServerKeyRestrictions o) {
  buildCounterV2ServerKeyRestrictions++;
  if (buildCounterV2ServerKeyRestrictions < 3) {
    checkUnnamed11(o.allowedIps!);
  }
  buildCounterV2ServerKeyRestrictions--;
}

core.int buildCounterV2UndeleteKeyRequest = 0;
api.V2UndeleteKeyRequest buildV2UndeleteKeyRequest() {
  final o = api.V2UndeleteKeyRequest();
  buildCounterV2UndeleteKeyRequest++;
  if (buildCounterV2UndeleteKeyRequest < 3) {}
  buildCounterV2UndeleteKeyRequest--;
  return o;
}

void checkV2UndeleteKeyRequest(api.V2UndeleteKeyRequest o) {
  buildCounterV2UndeleteKeyRequest++;
  if (buildCounterV2UndeleteKeyRequest < 3) {}
  buildCounterV2UndeleteKeyRequest--;
}

void main() {
  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-V2AndroidApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2AndroidApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V2AndroidApplication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV2AndroidApplication(od);
    });
  });

  unittest.group('obj-schema-V2AndroidKeyRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2AndroidKeyRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V2AndroidKeyRestrictions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV2AndroidKeyRestrictions(od);
    });
  });

  unittest.group('obj-schema-V2ApiTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2ApiTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V2ApiTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV2ApiTarget(od);
    });
  });

  unittest.group('obj-schema-V2BrowserKeyRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2BrowserKeyRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V2BrowserKeyRestrictions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV2BrowserKeyRestrictions(od);
    });
  });

  unittest.group('obj-schema-V2GetKeyStringResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2GetKeyStringResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V2GetKeyStringResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV2GetKeyStringResponse(od);
    });
  });

  unittest.group('obj-schema-V2IosKeyRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2IosKeyRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V2IosKeyRestrictions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV2IosKeyRestrictions(od);
    });
  });

  unittest.group('obj-schema-V2Key', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2Key();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.V2Key.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkV2Key(od);
    });
  });

  unittest.group('obj-schema-V2ListKeysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2ListKeysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V2ListKeysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV2ListKeysResponse(od);
    });
  });

  unittest.group('obj-schema-V2LookupKeyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2LookupKeyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V2LookupKeyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV2LookupKeyResponse(od);
    });
  });

  unittest.group('obj-schema-V2Restrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2Restrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V2Restrictions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV2Restrictions(od);
    });
  });

  unittest.group('obj-schema-V2ServerKeyRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2ServerKeyRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V2ServerKeyRestrictions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV2ServerKeyRestrictions(od);
    });
  });

  unittest.group('obj-schema-V2UndeleteKeyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildV2UndeleteKeyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.V2UndeleteKeyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkV2UndeleteKeyRequest(od);
    });
  });

  unittest.group('resource-KeysResource', () {
    unittest.test('method--lookupKey', () async {
      final mock = HttpServerMock();
      final res = api.ApiKeysServiceApi(mock).keys;
      final arg_keyString = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v2/keys:lookupKey'),
        );
        pathOffset += 17;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['keyString']!.first,
          unittest.equals(arg_keyString),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildV2LookupKeyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.lookupKey(keyString: arg_keyString, $fields: arg_$fields);
      checkV2LookupKeyResponse(response as api.V2LookupKeyResponse);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ApiKeysServiceApi(mock).operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsKeysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ApiKeysServiceApi(mock).projects.locations.keys;
      final arg_request = buildV2Key();
      final arg_parent = 'foo';
      final arg_keyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.V2Key.fromJson(json as core.Map<core.String, core.dynamic>);
        checkV2Key(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['keyId']!.first,
          unittest.equals(arg_keyId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          keyId: arg_keyId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ApiKeysServiceApi(mock).projects.locations.keys;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, etag: arg_etag, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ApiKeysServiceApi(mock).projects.locations.keys;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildV2Key());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkV2Key(response as api.V2Key);
    });

    unittest.test('method--getKeyString', () async {
      final mock = HttpServerMock();
      final res = api.ApiKeysServiceApi(mock).projects.locations.keys;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildV2GetKeyStringResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getKeyString(arg_name, $fields: arg_$fields);
      checkV2GetKeyStringResponse(response as api.V2GetKeyStringResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ApiKeysServiceApi(mock).projects.locations.keys;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildV2ListKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkV2ListKeysResponse(response as api.V2ListKeysResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ApiKeysServiceApi(mock).projects.locations.keys;
      final arg_request = buildV2Key();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.V2Key.fromJson(json as core.Map<core.String, core.dynamic>);
        checkV2Key(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.ApiKeysServiceApi(mock).projects.locations.keys;
      final arg_request = buildV2UndeleteKeyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.V2UndeleteKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkV2UndeleteKeyRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
