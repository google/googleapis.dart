// Copyright 2025 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/parametermanager/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.List<api.Location> buildUnnamed0() => [buildLocation(), buildLocation()];

void checkUnnamed0(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed0(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.ParameterVersion> buildUnnamed1() => [
  buildParameterVersion(),
  buildParameterVersion(),
];

void checkUnnamed1(core.List<api.ParameterVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterVersion(o[0]);
  checkParameterVersion(o[1]);
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListParameterVersionsResponse = 0;
api.ListParameterVersionsResponse buildListParameterVersionsResponse() {
  final o = api.ListParameterVersionsResponse();
  buildCounterListParameterVersionsResponse++;
  if (buildCounterListParameterVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.parameterVersions = buildUnnamed1();
    o.unreachable = buildUnnamed2();
  }
  buildCounterListParameterVersionsResponse--;
  return o;
}

void checkListParameterVersionsResponse(api.ListParameterVersionsResponse o) {
  buildCounterListParameterVersionsResponse++;
  if (buildCounterListParameterVersionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed1(o.parameterVersions!);
    checkUnnamed2(o.unreachable!);
  }
  buildCounterListParameterVersionsResponse--;
}

core.List<api.Parameter> buildUnnamed3() => [
  buildParameter(),
  buildParameter(),
];

void checkUnnamed3(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListParametersResponse = 0;
api.ListParametersResponse buildListParametersResponse() {
  final o = api.ListParametersResponse();
  buildCounterListParametersResponse++;
  if (buildCounterListParametersResponse < 3) {
    o.nextPageToken = 'foo';
    o.parameters = buildUnnamed3();
    o.unreachable = buildUnnamed4();
  }
  buildCounterListParametersResponse--;
  return o;
}

void checkListParametersResponse(api.ListParametersResponse o) {
  buildCounterListParametersResponse++;
  if (buildCounterListParametersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed3(o.parameters!);
    checkUnnamed4(o.unreachable!);
  }
  buildCounterListParametersResponse--;
}

core.List<api.TemplateVersion> buildUnnamed5() => [
  buildTemplateVersion(),
  buildTemplateVersion(),
];

void checkUnnamed5(core.List<api.TemplateVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTemplateVersion(o[0]);
  checkTemplateVersion(o[1]);
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListTemplateVersionsResponse = 0;
api.ListTemplateVersionsResponse buildListTemplateVersionsResponse() {
  final o = api.ListTemplateVersionsResponse();
  buildCounterListTemplateVersionsResponse++;
  if (buildCounterListTemplateVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.templateVersions = buildUnnamed5();
    o.unreachable = buildUnnamed6();
  }
  buildCounterListTemplateVersionsResponse--;
  return o;
}

void checkListTemplateVersionsResponse(api.ListTemplateVersionsResponse o) {
  buildCounterListTemplateVersionsResponse++;
  if (buildCounterListTemplateVersionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed5(o.templateVersions!);
    checkUnnamed6(o.unreachable!);
  }
  buildCounterListTemplateVersionsResponse--;
}

core.List<api.Template> buildUnnamed7() => [buildTemplate(), buildTemplate()];

void checkUnnamed7(core.List<api.Template> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTemplate(o[0]);
  checkTemplate(o[1]);
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListTemplatesResponse = 0;
api.ListTemplatesResponse buildListTemplatesResponse() {
  final o = api.ListTemplatesResponse();
  buildCounterListTemplatesResponse++;
  if (buildCounterListTemplatesResponse < 3) {
    o.nextPageToken = 'foo';
    o.templates = buildUnnamed7();
    o.unreachable = buildUnnamed8();
  }
  buildCounterListTemplatesResponse--;
  return o;
}

void checkListTemplatesResponse(api.ListTemplatesResponse o) {
  buildCounterListTemplatesResponse++;
  if (buildCounterListTemplatesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed7(o.templates!);
    checkUnnamed8(o.unreachable!);
  }
  buildCounterListTemplatesResponse--;
}

core.Map<core.String, core.String> buildUnnamed9() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed9(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed9();
    o.locationId = 'foo';
    o.metadata = buildUnnamed10();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed9(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed10(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed11() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed11(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterParameter = 0;
api.Parameter buildParameter() {
  final o = api.Parameter();
  buildCounterParameter++;
  if (buildCounterParameter < 3) {
    o.createTime = 'foo';
    o.format = 'foo';
    o.kmsKey = 'foo';
    o.labels = buildUnnamed11();
    o.name = 'foo';
    o.policyMember = buildResourcePolicyMember();
    o.updateTime = 'foo';
  }
  buildCounterParameter--;
  return o;
}

void checkParameter(api.Parameter o) {
  buildCounterParameter++;
  if (buildCounterParameter < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.format!, unittest.equals('foo'));
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
    checkUnnamed11(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkResourcePolicyMember(o.policyMember!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterParameter--;
}

core.int buildCounterParameterVersion = 0;
api.ParameterVersion buildParameterVersion() {
  final o = api.ParameterVersion();
  buildCounterParameterVersion++;
  if (buildCounterParameterVersion < 3) {
    o.createTime = 'foo';
    o.disabled = true;
    o.kmsKeyVersion = 'foo';
    o.name = 'foo';
    o.payload = buildParameterVersionPayload();
    o.updateTime = 'foo';
  }
  buildCounterParameterVersion--;
  return o;
}

void checkParameterVersion(api.ParameterVersion o) {
  buildCounterParameterVersion++;
  if (buildCounterParameterVersion < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.kmsKeyVersion!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkParameterVersionPayload(o.payload!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterParameterVersion--;
}

core.int buildCounterParameterVersionPayload = 0;
api.ParameterVersionPayload buildParameterVersionPayload() {
  final o = api.ParameterVersionPayload();
  buildCounterParameterVersionPayload++;
  if (buildCounterParameterVersionPayload < 3) {
    o.data = 'foo';
  }
  buildCounterParameterVersionPayload--;
  return o;
}

void checkParameterVersionPayload(api.ParameterVersionPayload o) {
  buildCounterParameterVersionPayload++;
  if (buildCounterParameterVersionPayload < 3) {
    unittest.expect(o.data!, unittest.equals('foo'));
  }
  buildCounterParameterVersionPayload--;
}

core.int buildCounterRenderParameterVersionResponse = 0;
api.RenderParameterVersionResponse buildRenderParameterVersionResponse() {
  final o = api.RenderParameterVersionResponse();
  buildCounterRenderParameterVersionResponse++;
  if (buildCounterRenderParameterVersionResponse < 3) {
    o.parameterVersion = 'foo';
    o.payload = buildParameterVersionPayload();
    o.renderedPayload = 'foo';
  }
  buildCounterRenderParameterVersionResponse--;
  return o;
}

void checkRenderParameterVersionResponse(api.RenderParameterVersionResponse o) {
  buildCounterRenderParameterVersionResponse++;
  if (buildCounterRenderParameterVersionResponse < 3) {
    unittest.expect(o.parameterVersion!, unittest.equals('foo'));
    checkParameterVersionPayload(o.payload!);
    unittest.expect(o.renderedPayload!, unittest.equals('foo'));
  }
  buildCounterRenderParameterVersionResponse--;
}

core.int buildCounterRenderTemplateVersionResponse = 0;
api.RenderTemplateVersionResponse buildRenderTemplateVersionResponse() {
  final o = api.RenderTemplateVersionResponse();
  buildCounterRenderTemplateVersionResponse++;
  if (buildCounterRenderTemplateVersionResponse < 3) {
    o.parameterVersion = 'foo';
    o.payload = buildTemplateVersionPayload();
    o.renderedPayload = 'foo';
    o.templateFormat = 'foo';
    o.templateVersion = 'foo';
  }
  buildCounterRenderTemplateVersionResponse--;
  return o;
}

void checkRenderTemplateVersionResponse(api.RenderTemplateVersionResponse o) {
  buildCounterRenderTemplateVersionResponse++;
  if (buildCounterRenderTemplateVersionResponse < 3) {
    unittest.expect(o.parameterVersion!, unittest.equals('foo'));
    checkTemplateVersionPayload(o.payload!);
    unittest.expect(o.renderedPayload!, unittest.equals('foo'));
    unittest.expect(o.templateFormat!, unittest.equals('foo'));
    unittest.expect(o.templateVersion!, unittest.equals('foo'));
  }
  buildCounterRenderTemplateVersionResponse--;
}

core.int buildCounterResourcePolicyMember = 0;
api.ResourcePolicyMember buildResourcePolicyMember() {
  final o = api.ResourcePolicyMember();
  buildCounterResourcePolicyMember++;
  if (buildCounterResourcePolicyMember < 3) {
    o.iamPolicyNamePrincipal = 'foo';
    o.iamPolicyUidPrincipal = 'foo';
  }
  buildCounterResourcePolicyMember--;
  return o;
}

void checkResourcePolicyMember(api.ResourcePolicyMember o) {
  buildCounterResourcePolicyMember++;
  if (buildCounterResourcePolicyMember < 3) {
    unittest.expect(o.iamPolicyNamePrincipal!, unittest.equals('foo'));
    unittest.expect(o.iamPolicyUidPrincipal!, unittest.equals('foo'));
  }
  buildCounterResourcePolicyMember--;
}

core.Map<core.String, core.String> buildUnnamed12() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed12(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTemplate = 0;
api.Template buildTemplate() {
  final o = api.Template();
  buildCounterTemplate++;
  if (buildCounterTemplate < 3) {
    o.createTime = 'foo';
    o.format = 'foo';
    o.labels = buildUnnamed12();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTemplate--;
  return o;
}

void checkTemplate(api.Template o) {
  buildCounterTemplate++;
  if (buildCounterTemplate < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.format!, unittest.equals('foo'));
    checkUnnamed12(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterTemplate--;
}

core.int buildCounterTemplateVersion = 0;
api.TemplateVersion buildTemplateVersion() {
  final o = api.TemplateVersion();
  buildCounterTemplateVersion++;
  if (buildCounterTemplateVersion < 3) {
    o.createTime = 'foo';
    o.disabled = true;
    o.name = 'foo';
    o.payload = buildTemplateVersionPayload();
    o.updateTime = 'foo';
  }
  buildCounterTemplateVersion--;
  return o;
}

void checkTemplateVersion(api.TemplateVersion o) {
  buildCounterTemplateVersion++;
  if (buildCounterTemplateVersion < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkTemplateVersionPayload(o.payload!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterTemplateVersion--;
}

core.int buildCounterTemplateVersionPayload = 0;
api.TemplateVersionPayload buildTemplateVersionPayload() {
  final o = api.TemplateVersionPayload();
  buildCounterTemplateVersionPayload++;
  if (buildCounterTemplateVersionPayload < 3) {
    o.data = 'foo';
  }
  buildCounterTemplateVersionPayload--;
  return o;
}

void checkTemplateVersionPayload(api.TemplateVersionPayload o) {
  buildCounterTemplateVersionPayload++;
  if (buildCounterTemplateVersionPayload < 3) {
    unittest.expect(o.data!, unittest.equals('foo'));
  }
  buildCounterTemplateVersionPayload--;
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListParameterVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListParameterVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListParameterVersionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListParameterVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListParametersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListParametersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListParametersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListParametersResponse(od);
    });
  });

  unittest.group('obj-schema-ListTemplateVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTemplateVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTemplateVersionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTemplateVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTemplatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTemplatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTemplatesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTemplatesResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Parameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Parameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParameter(od);
    });
  });

  unittest.group('obj-schema-ParameterVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameterVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParameterVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParameterVersion(od);
    });
  });

  unittest.group('obj-schema-ParameterVersionPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameterVersionPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParameterVersionPayload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParameterVersionPayload(od);
    });
  });

  unittest.group('obj-schema-RenderParameterVersionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenderParameterVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenderParameterVersionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRenderParameterVersionResponse(od);
    });
  });

  unittest.group('obj-schema-RenderTemplateVersionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenderTemplateVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenderTemplateVersionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRenderTemplateVersionResponse(od);
    });
  });

  unittest.group('obj-schema-ResourcePolicyMember', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourcePolicyMember();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourcePolicyMember.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourcePolicyMember(od);
    });
  });

  unittest.group('obj-schema-Template', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Template.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTemplate(od);
    });
  });

  unittest.group('obj-schema-TemplateVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTemplateVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TemplateVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTemplateVersion(od);
    });
  });

  unittest.group('obj-schema-TemplateVersionPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTemplateVersionPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TemplateVersionPayload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTemplateVersionPayload(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed13();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsParametersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(mock).projects.locations.parameters;
      final arg_request = buildParameter();
      final arg_parent = 'foo';
      final arg_parameterId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Parameter.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkParameter(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['parameterId']!.first,
            unittest.equals(arg_parameterId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildParameter());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        parameterId: arg_parameterId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkParameter(response as api.Parameter);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(mock).projects.locations.parameters;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(mock).projects.locations.parameters;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildParameter());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkParameter(response as api.Parameter);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(mock).projects.locations.parameters;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListParametersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListParametersResponse(response as api.ListParametersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(mock).projects.locations.parameters;
      final arg_request = buildParameter();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Parameter.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkParameter(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildParameter());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkParameter(response as api.Parameter);
    });
  });

  unittest.group('resource-ProjectsLocationsParametersVersionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(
        mock,
      ).projects.locations.parameters.versions;
      final arg_request = buildParameterVersion();
      final arg_parent = 'foo';
      final arg_parameterVersionId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ParameterVersion.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkParameterVersion(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['parameterVersionId']!.first,
            unittest.equals(arg_parameterVersionId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildParameterVersion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        parameterVersionId: arg_parameterVersionId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkParameterVersion(response as api.ParameterVersion);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(
        mock,
      ).projects.locations.parameters.versions;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(
        mock,
      ).projects.locations.parameters.versions;
      final arg_name = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildParameterVersion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkParameterVersion(response as api.ParameterVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(
        mock,
      ).projects.locations.parameters.versions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListParameterVersionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListParameterVersionsResponse(
        response as api.ListParameterVersionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(
        mock,
      ).projects.locations.parameters.versions;
      final arg_request = buildParameterVersion();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ParameterVersion.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkParameterVersion(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildParameterVersion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkParameterVersion(response as api.ParameterVersion);
    });

    unittest.test('method--render', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(
        mock,
      ).projects.locations.parameters.versions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildRenderParameterVersionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.render(arg_name, $fields: arg_$fields);
      checkRenderParameterVersionResponse(
        response as api.RenderParameterVersionResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(mock).projects.locations.templates;
      final arg_request = buildTemplate();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_templateId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Template.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTemplate(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['templateId']!.first,
            unittest.equals(arg_templateId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        templateId: arg_templateId,
        $fields: arg_$fields,
      );
      checkTemplate(response as api.Template);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(mock).projects.locations.templates;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(mock).projects.locations.templates;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTemplate(response as api.Template);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(mock).projects.locations.templates;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListTemplatesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListTemplatesResponse(response as api.ListTemplatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(mock).projects.locations.templates;
      final arg_request = buildTemplate();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Template.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTemplate(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkTemplate(response as api.Template);
    });
  });

  unittest.group('resource-ProjectsLocationsTemplatesVersionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(
        mock,
      ).projects.locations.templates.versions;
      final arg_request = buildTemplateVersion();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_templateVersionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TemplateVersion.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTemplateVersion(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['templateVersionId']!.first,
            unittest.equals(arg_templateVersionId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTemplateVersion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        templateVersionId: arg_templateVersionId,
        $fields: arg_$fields,
      );
      checkTemplateVersion(response as api.TemplateVersion);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(
        mock,
      ).projects.locations.templates.versions;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(
        mock,
      ).projects.locations.templates.versions;
      final arg_name = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTemplateVersion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkTemplateVersion(response as api.TemplateVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(
        mock,
      ).projects.locations.templates.versions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListTemplateVersionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListTemplateVersionsResponse(
        response as api.ListTemplateVersionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(
        mock,
      ).projects.locations.templates.versions;
      final arg_request = buildTemplateVersion();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TemplateVersion.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTemplateVersion(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTemplateVersion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkTemplateVersion(response as api.TemplateVersion);
    });

    unittest.test('method--render', () async {
      final mock = HttpServerMock();
      final res = api.ParameterManagerApi(
        mock,
      ).projects.locations.templates.versions;
      final arg_name = 'foo';
      final arg_parameterVersion = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['parameterVersion']!.first,
            unittest.equals(arg_parameterVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildRenderTemplateVersionResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.render(
        arg_name,
        parameterVersion: arg_parameterVersion,
        $fields: arg_$fields,
      );
      checkRenderTemplateVersionResponse(
        response as api.RenderTemplateVersionResponse,
      );
    });
  });
}
