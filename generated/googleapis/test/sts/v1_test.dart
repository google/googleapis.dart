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

import 'package:googleapis/sts/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed0();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed0(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIdentityStsV1AccessBoundaryRule> buildUnnamed1() => [
      buildGoogleIdentityStsV1AccessBoundaryRule(),
      buildGoogleIdentityStsV1AccessBoundaryRule(),
    ];

void checkUnnamed1(core.List<api.GoogleIdentityStsV1AccessBoundaryRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityStsV1AccessBoundaryRule(o[0]);
  checkGoogleIdentityStsV1AccessBoundaryRule(o[1]);
}

core.int buildCounterGoogleIdentityStsV1AccessBoundary = 0;
api.GoogleIdentityStsV1AccessBoundary buildGoogleIdentityStsV1AccessBoundary() {
  final o = api.GoogleIdentityStsV1AccessBoundary();
  buildCounterGoogleIdentityStsV1AccessBoundary++;
  if (buildCounterGoogleIdentityStsV1AccessBoundary < 3) {
    o.accessBoundaryRules = buildUnnamed1();
  }
  buildCounterGoogleIdentityStsV1AccessBoundary--;
  return o;
}

void checkGoogleIdentityStsV1AccessBoundary(
    api.GoogleIdentityStsV1AccessBoundary o) {
  buildCounterGoogleIdentityStsV1AccessBoundary++;
  if (buildCounterGoogleIdentityStsV1AccessBoundary < 3) {
    checkUnnamed1(o.accessBoundaryRules!);
  }
  buildCounterGoogleIdentityStsV1AccessBoundary--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterGoogleIdentityStsV1AccessBoundaryRule = 0;
api.GoogleIdentityStsV1AccessBoundaryRule
    buildGoogleIdentityStsV1AccessBoundaryRule() {
  final o = api.GoogleIdentityStsV1AccessBoundaryRule();
  buildCounterGoogleIdentityStsV1AccessBoundaryRule++;
  if (buildCounterGoogleIdentityStsV1AccessBoundaryRule < 3) {
    o.availabilityCondition = buildGoogleTypeExpr();
    o.availablePermissions = buildUnnamed2();
    o.availableResource = 'foo';
  }
  buildCounterGoogleIdentityStsV1AccessBoundaryRule--;
  return o;
}

void checkGoogleIdentityStsV1AccessBoundaryRule(
    api.GoogleIdentityStsV1AccessBoundaryRule o) {
  buildCounterGoogleIdentityStsV1AccessBoundaryRule++;
  if (buildCounterGoogleIdentityStsV1AccessBoundaryRule < 3) {
    checkGoogleTypeExpr(o.availabilityCondition!);
    checkUnnamed2(o.availablePermissions!);
    unittest.expect(
      o.availableResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityStsV1AccessBoundaryRule--;
}

core.int buildCounterGoogleIdentityStsV1ExchangeTokenRequest = 0;
api.GoogleIdentityStsV1ExchangeTokenRequest
    buildGoogleIdentityStsV1ExchangeTokenRequest() {
  final o = api.GoogleIdentityStsV1ExchangeTokenRequest();
  buildCounterGoogleIdentityStsV1ExchangeTokenRequest++;
  if (buildCounterGoogleIdentityStsV1ExchangeTokenRequest < 3) {
    o.audience = 'foo';
    o.grantType = 'foo';
    o.options = 'foo';
    o.requestedTokenType = 'foo';
    o.scope = 'foo';
    o.subjectToken = 'foo';
    o.subjectTokenType = 'foo';
  }
  buildCounterGoogleIdentityStsV1ExchangeTokenRequest--;
  return o;
}

void checkGoogleIdentityStsV1ExchangeTokenRequest(
    api.GoogleIdentityStsV1ExchangeTokenRequest o) {
  buildCounterGoogleIdentityStsV1ExchangeTokenRequest++;
  if (buildCounterGoogleIdentityStsV1ExchangeTokenRequest < 3) {
    unittest.expect(
      o.audience!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.grantType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.options!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedTokenType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectTokenType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityStsV1ExchangeTokenRequest--;
}

core.int buildCounterGoogleIdentityStsV1ExchangeTokenResponse = 0;
api.GoogleIdentityStsV1ExchangeTokenResponse
    buildGoogleIdentityStsV1ExchangeTokenResponse() {
  final o = api.GoogleIdentityStsV1ExchangeTokenResponse();
  buildCounterGoogleIdentityStsV1ExchangeTokenResponse++;
  if (buildCounterGoogleIdentityStsV1ExchangeTokenResponse < 3) {
    o.accessToken = 'foo';
    o.expiresIn = 42;
    o.issuedTokenType = 'foo';
    o.tokenType = 'foo';
  }
  buildCounterGoogleIdentityStsV1ExchangeTokenResponse--;
  return o;
}

void checkGoogleIdentityStsV1ExchangeTokenResponse(
    api.GoogleIdentityStsV1ExchangeTokenResponse o) {
  buildCounterGoogleIdentityStsV1ExchangeTokenResponse++;
  if (buildCounterGoogleIdentityStsV1ExchangeTokenResponse < 3) {
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiresIn!,
      unittest.equals(42),
    );
    unittest.expect(
      o.issuedTokenType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityStsV1ExchangeTokenResponse--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.int buildCounterGoogleIdentityStsV1Options = 0;
api.GoogleIdentityStsV1Options buildGoogleIdentityStsV1Options() {
  final o = api.GoogleIdentityStsV1Options();
  buildCounterGoogleIdentityStsV1Options++;
  if (buildCounterGoogleIdentityStsV1Options < 3) {
    o.accessBoundary = buildGoogleIdentityStsV1AccessBoundary();
    o.audiences = buildUnnamed3();
    o.userProject = 'foo';
  }
  buildCounterGoogleIdentityStsV1Options--;
  return o;
}

void checkGoogleIdentityStsV1Options(api.GoogleIdentityStsV1Options o) {
  buildCounterGoogleIdentityStsV1Options++;
  if (buildCounterGoogleIdentityStsV1Options < 3) {
    checkGoogleIdentityStsV1AccessBoundary(o.accessBoundary!);
    checkUnnamed3(o.audiences!);
    unittest.expect(
      o.userProject!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityStsV1Options--;
}

core.List<api.GoogleIdentityStsV1betaAccessBoundaryRule> buildUnnamed4() => [
      buildGoogleIdentityStsV1betaAccessBoundaryRule(),
      buildGoogleIdentityStsV1betaAccessBoundaryRule(),
    ];

void checkUnnamed4(core.List<api.GoogleIdentityStsV1betaAccessBoundaryRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIdentityStsV1betaAccessBoundaryRule(o[0]);
  checkGoogleIdentityStsV1betaAccessBoundaryRule(o[1]);
}

core.int buildCounterGoogleIdentityStsV1betaAccessBoundary = 0;
api.GoogleIdentityStsV1betaAccessBoundary
    buildGoogleIdentityStsV1betaAccessBoundary() {
  final o = api.GoogleIdentityStsV1betaAccessBoundary();
  buildCounterGoogleIdentityStsV1betaAccessBoundary++;
  if (buildCounterGoogleIdentityStsV1betaAccessBoundary < 3) {
    o.accessBoundaryRules = buildUnnamed4();
  }
  buildCounterGoogleIdentityStsV1betaAccessBoundary--;
  return o;
}

void checkGoogleIdentityStsV1betaAccessBoundary(
    api.GoogleIdentityStsV1betaAccessBoundary o) {
  buildCounterGoogleIdentityStsV1betaAccessBoundary++;
  if (buildCounterGoogleIdentityStsV1betaAccessBoundary < 3) {
    checkUnnamed4(o.accessBoundaryRules!);
  }
  buildCounterGoogleIdentityStsV1betaAccessBoundary--;
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

core.int buildCounterGoogleIdentityStsV1betaAccessBoundaryRule = 0;
api.GoogleIdentityStsV1betaAccessBoundaryRule
    buildGoogleIdentityStsV1betaAccessBoundaryRule() {
  final o = api.GoogleIdentityStsV1betaAccessBoundaryRule();
  buildCounterGoogleIdentityStsV1betaAccessBoundaryRule++;
  if (buildCounterGoogleIdentityStsV1betaAccessBoundaryRule < 3) {
    o.availabilityCondition = buildGoogleTypeExpr();
    o.availablePermissions = buildUnnamed5();
    o.availableResource = 'foo';
  }
  buildCounterGoogleIdentityStsV1betaAccessBoundaryRule--;
  return o;
}

void checkGoogleIdentityStsV1betaAccessBoundaryRule(
    api.GoogleIdentityStsV1betaAccessBoundaryRule o) {
  buildCounterGoogleIdentityStsV1betaAccessBoundaryRule++;
  if (buildCounterGoogleIdentityStsV1betaAccessBoundaryRule < 3) {
    checkGoogleTypeExpr(o.availabilityCondition!);
    checkUnnamed5(o.availablePermissions!);
    unittest.expect(
      o.availableResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityStsV1betaAccessBoundaryRule--;
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

core.int buildCounterGoogleIdentityStsV1betaOptions = 0;
api.GoogleIdentityStsV1betaOptions buildGoogleIdentityStsV1betaOptions() {
  final o = api.GoogleIdentityStsV1betaOptions();
  buildCounterGoogleIdentityStsV1betaOptions++;
  if (buildCounterGoogleIdentityStsV1betaOptions < 3) {
    o.accessBoundary = buildGoogleIdentityStsV1betaAccessBoundary();
    o.audiences = buildUnnamed6();
    o.userProject = 'foo';
  }
  buildCounterGoogleIdentityStsV1betaOptions--;
  return o;
}

void checkGoogleIdentityStsV1betaOptions(api.GoogleIdentityStsV1betaOptions o) {
  buildCounterGoogleIdentityStsV1betaOptions++;
  if (buildCounterGoogleIdentityStsV1betaOptions < 3) {
    checkGoogleIdentityStsV1betaAccessBoundary(o.accessBoundary!);
    checkUnnamed6(o.audiences!);
    unittest.expect(
      o.userProject!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIdentityStsV1betaOptions--;
}

core.int buildCounterGoogleTypeExpr = 0;
api.GoogleTypeExpr buildGoogleTypeExpr() {
  final o = api.GoogleTypeExpr();
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleTypeExpr--;
  return o;
}

void checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeExpr--;
}

void main() {
  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Binding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1AccessBoundary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1AccessBoundary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1AccessBoundary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityStsV1AccessBoundary(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1AccessBoundaryRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1AccessBoundaryRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1AccessBoundaryRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityStsV1AccessBoundaryRule(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1ExchangeTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1ExchangeTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1ExchangeTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityStsV1ExchangeTokenRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1ExchangeTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1ExchangeTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1ExchangeTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityStsV1ExchangeTokenResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1Options', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1Options();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1Options.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityStsV1Options(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1betaAccessBoundary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1betaAccessBoundary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1betaAccessBoundary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityStsV1betaAccessBoundary(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1betaAccessBoundaryRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1betaAccessBoundaryRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1betaAccessBoundaryRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityStsV1betaAccessBoundaryRule(od);
    });
  });

  unittest.group('obj-schema-GoogleIdentityStsV1betaOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIdentityStsV1betaOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIdentityStsV1betaOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIdentityStsV1betaOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeExpr.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--token', () async {
      final mock = HttpServerMock();
      final res = api.CloudSecurityTokenApi(mock).v1;
      final arg_request = buildGoogleIdentityStsV1ExchangeTokenRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIdentityStsV1ExchangeTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIdentityStsV1ExchangeTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1/token'),
        );
        pathOffset += 8;

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
        final resp = convert.json
            .encode(buildGoogleIdentityStsV1ExchangeTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.token(arg_request, $fields: arg_$fields);
      checkGoogleIdentityStsV1ExchangeTokenResponse(
          response as api.GoogleIdentityStsV1ExchangeTokenResponse);
    });
  });
}
