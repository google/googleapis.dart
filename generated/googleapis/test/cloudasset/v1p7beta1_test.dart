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

import 'package:googleapis/cloudasset/v1p7beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudAssetV1p7beta1BigQueryDestination = 0;
api.GoogleCloudAssetV1p7beta1BigQueryDestination
buildGoogleCloudAssetV1p7beta1BigQueryDestination() {
  final o = api.GoogleCloudAssetV1p7beta1BigQueryDestination();
  buildCounterGoogleCloudAssetV1p7beta1BigQueryDestination++;
  if (buildCounterGoogleCloudAssetV1p7beta1BigQueryDestination < 3) {
    o.dataset = 'foo';
    o.force = true;
    o.partitionSpec = buildGoogleCloudAssetV1p7beta1PartitionSpec();
    o.separateTablesPerAssetType = true;
    o.table = 'foo';
  }
  buildCounterGoogleCloudAssetV1p7beta1BigQueryDestination--;
  return o;
}

void checkGoogleCloudAssetV1p7beta1BigQueryDestination(
  api.GoogleCloudAssetV1p7beta1BigQueryDestination o,
) {
  buildCounterGoogleCloudAssetV1p7beta1BigQueryDestination++;
  if (buildCounterGoogleCloudAssetV1p7beta1BigQueryDestination < 3) {
    unittest.expect(o.dataset!, unittest.equals('foo'));
    unittest.expect(o.force!, unittest.isTrue);
    checkGoogleCloudAssetV1p7beta1PartitionSpec(o.partitionSpec!);
    unittest.expect(o.separateTablesPerAssetType!, unittest.isTrue);
    unittest.expect(o.table!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1p7beta1BigQueryDestination--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudAssetV1p7beta1ExportAssetsRequest = 0;
api.GoogleCloudAssetV1p7beta1ExportAssetsRequest
buildGoogleCloudAssetV1p7beta1ExportAssetsRequest() {
  final o = api.GoogleCloudAssetV1p7beta1ExportAssetsRequest();
  buildCounterGoogleCloudAssetV1p7beta1ExportAssetsRequest++;
  if (buildCounterGoogleCloudAssetV1p7beta1ExportAssetsRequest < 3) {
    o.assetTypes = buildUnnamed0();
    o.contentType = 'foo';
    o.outputConfig = buildGoogleCloudAssetV1p7beta1OutputConfig();
    o.readTime = 'foo';
    o.relationshipTypes = buildUnnamed1();
  }
  buildCounterGoogleCloudAssetV1p7beta1ExportAssetsRequest--;
  return o;
}

void checkGoogleCloudAssetV1p7beta1ExportAssetsRequest(
  api.GoogleCloudAssetV1p7beta1ExportAssetsRequest o,
) {
  buildCounterGoogleCloudAssetV1p7beta1ExportAssetsRequest++;
  if (buildCounterGoogleCloudAssetV1p7beta1ExportAssetsRequest < 3) {
    checkUnnamed0(o.assetTypes!);
    unittest.expect(o.contentType!, unittest.equals('foo'));
    checkGoogleCloudAssetV1p7beta1OutputConfig(o.outputConfig!);
    unittest.expect(o.readTime!, unittest.equals('foo'));
    checkUnnamed1(o.relationshipTypes!);
  }
  buildCounterGoogleCloudAssetV1p7beta1ExportAssetsRequest--;
}

core.int buildCounterGoogleCloudAssetV1p7beta1GcsDestination = 0;
api.GoogleCloudAssetV1p7beta1GcsDestination
buildGoogleCloudAssetV1p7beta1GcsDestination() {
  final o = api.GoogleCloudAssetV1p7beta1GcsDestination();
  buildCounterGoogleCloudAssetV1p7beta1GcsDestination++;
  if (buildCounterGoogleCloudAssetV1p7beta1GcsDestination < 3) {
    o.uri = 'foo';
    o.uriPrefix = 'foo';
  }
  buildCounterGoogleCloudAssetV1p7beta1GcsDestination--;
  return o;
}

void checkGoogleCloudAssetV1p7beta1GcsDestination(
  api.GoogleCloudAssetV1p7beta1GcsDestination o,
) {
  buildCounterGoogleCloudAssetV1p7beta1GcsDestination++;
  if (buildCounterGoogleCloudAssetV1p7beta1GcsDestination < 3) {
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.uriPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1p7beta1GcsDestination--;
}

core.int buildCounterGoogleCloudAssetV1p7beta1OutputConfig = 0;
api.GoogleCloudAssetV1p7beta1OutputConfig
buildGoogleCloudAssetV1p7beta1OutputConfig() {
  final o = api.GoogleCloudAssetV1p7beta1OutputConfig();
  buildCounterGoogleCloudAssetV1p7beta1OutputConfig++;
  if (buildCounterGoogleCloudAssetV1p7beta1OutputConfig < 3) {
    o.bigqueryDestination = buildGoogleCloudAssetV1p7beta1BigQueryDestination();
    o.gcsDestination = buildGoogleCloudAssetV1p7beta1GcsDestination();
  }
  buildCounterGoogleCloudAssetV1p7beta1OutputConfig--;
  return o;
}

void checkGoogleCloudAssetV1p7beta1OutputConfig(
  api.GoogleCloudAssetV1p7beta1OutputConfig o,
) {
  buildCounterGoogleCloudAssetV1p7beta1OutputConfig++;
  if (buildCounterGoogleCloudAssetV1p7beta1OutputConfig < 3) {
    checkGoogleCloudAssetV1p7beta1BigQueryDestination(o.bigqueryDestination!);
    checkGoogleCloudAssetV1p7beta1GcsDestination(o.gcsDestination!);
  }
  buildCounterGoogleCloudAssetV1p7beta1OutputConfig--;
}

core.int buildCounterGoogleCloudAssetV1p7beta1PartitionSpec = 0;
api.GoogleCloudAssetV1p7beta1PartitionSpec
buildGoogleCloudAssetV1p7beta1PartitionSpec() {
  final o = api.GoogleCloudAssetV1p7beta1PartitionSpec();
  buildCounterGoogleCloudAssetV1p7beta1PartitionSpec++;
  if (buildCounterGoogleCloudAssetV1p7beta1PartitionSpec < 3) {
    o.partitionKey = 'foo';
  }
  buildCounterGoogleCloudAssetV1p7beta1PartitionSpec--;
  return o;
}

void checkGoogleCloudAssetV1p7beta1PartitionSpec(
  api.GoogleCloudAssetV1p7beta1PartitionSpec o,
) {
  buildCounterGoogleCloudAssetV1p7beta1PartitionSpec++;
  if (buildCounterGoogleCloudAssetV1p7beta1PartitionSpec < 3) {
    unittest.expect(o.partitionKey!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudAssetV1p7beta1PartitionSpec--;
}

core.Map<core.String, core.Object?> buildUnnamed2() => {
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

void checkUnnamed2(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed3() => {
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

void checkUnnamed3(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed2();
    o.name = 'foo';
    o.response = buildUnnamed3();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed2(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed3(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed4() => {
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

void checkUnnamed4(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed5() => [
  buildUnnamed4(),
  buildUnnamed4(),
];

void checkUnnamed5(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4(o[0]);
  checkUnnamed4(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed5(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudAssetV1p7beta1BigQueryDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1p7beta1BigQueryDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1p7beta1BigQueryDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssetV1p7beta1BigQueryDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1p7beta1ExportAssetsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1p7beta1ExportAssetsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1p7beta1ExportAssetsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssetV1p7beta1ExportAssetsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1p7beta1GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1p7beta1GcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1p7beta1GcsDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssetV1p7beta1GcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1p7beta1OutputConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1p7beta1OutputConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1p7beta1OutputConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssetV1p7beta1OutputConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudAssetV1p7beta1PartitionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudAssetV1p7beta1PartitionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudAssetV1p7beta1PartitionSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudAssetV1p7beta1PartitionSpec(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).operations;
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
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('v1p7beta1/'),
          );
          pathOffset += 10;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-V1p7beta1Resource', () {
    unittest.test('method--exportAssets', () async {
      final mock = HttpServerMock();
      final res = api.CloudAssetApi(mock).v1p7beta1;
      final arg_request = buildGoogleCloudAssetV1p7beta1ExportAssetsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudAssetV1p7beta1ExportAssetsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudAssetV1p7beta1ExportAssetsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('v1p7beta1/'),
          );
          pathOffset += 10;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.exportAssets(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });
}
