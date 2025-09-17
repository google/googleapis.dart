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

import 'package:googleapis/firestore/v1beta2.dart' as api;
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

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleFirestoreAdminV1beta2ExportDocumentsRequest = 0;
api.GoogleFirestoreAdminV1beta2ExportDocumentsRequest
buildGoogleFirestoreAdminV1beta2ExportDocumentsRequest() {
  final o = api.GoogleFirestoreAdminV1beta2ExportDocumentsRequest();
  buildCounterGoogleFirestoreAdminV1beta2ExportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1beta2ExportDocumentsRequest < 3) {
    o.collectionIds = buildUnnamed0();
    o.outputUriPrefix = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1beta2ExportDocumentsRequest--;
  return o;
}

void checkGoogleFirestoreAdminV1beta2ExportDocumentsRequest(
  api.GoogleFirestoreAdminV1beta2ExportDocumentsRequest o,
) {
  buildCounterGoogleFirestoreAdminV1beta2ExportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1beta2ExportDocumentsRequest < 3) {
    checkUnnamed0(o.collectionIds!);
    unittest.expect(o.outputUriPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1beta2ExportDocumentsRequest--;
}

core.int buildCounterGoogleFirestoreAdminV1beta2Field = 0;
api.GoogleFirestoreAdminV1beta2Field buildGoogleFirestoreAdminV1beta2Field() {
  final o = api.GoogleFirestoreAdminV1beta2Field();
  buildCounterGoogleFirestoreAdminV1beta2Field++;
  if (buildCounterGoogleFirestoreAdminV1beta2Field < 3) {
    o.indexConfig = buildGoogleFirestoreAdminV1beta2IndexConfig();
    o.name = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1beta2Field--;
  return o;
}

void checkGoogleFirestoreAdminV1beta2Field(
  api.GoogleFirestoreAdminV1beta2Field o,
) {
  buildCounterGoogleFirestoreAdminV1beta2Field++;
  if (buildCounterGoogleFirestoreAdminV1beta2Field < 3) {
    checkGoogleFirestoreAdminV1beta2IndexConfig(o.indexConfig!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1beta2Field--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleFirestoreAdminV1beta2ImportDocumentsRequest = 0;
api.GoogleFirestoreAdminV1beta2ImportDocumentsRequest
buildGoogleFirestoreAdminV1beta2ImportDocumentsRequest() {
  final o = api.GoogleFirestoreAdminV1beta2ImportDocumentsRequest();
  buildCounterGoogleFirestoreAdminV1beta2ImportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1beta2ImportDocumentsRequest < 3) {
    o.collectionIds = buildUnnamed1();
    o.inputUriPrefix = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1beta2ImportDocumentsRequest--;
  return o;
}

void checkGoogleFirestoreAdminV1beta2ImportDocumentsRequest(
  api.GoogleFirestoreAdminV1beta2ImportDocumentsRequest o,
) {
  buildCounterGoogleFirestoreAdminV1beta2ImportDocumentsRequest++;
  if (buildCounterGoogleFirestoreAdminV1beta2ImportDocumentsRequest < 3) {
    checkUnnamed1(o.collectionIds!);
    unittest.expect(o.inputUriPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1beta2ImportDocumentsRequest--;
}

core.List<api.GoogleFirestoreAdminV1beta2IndexField> buildUnnamed2() => [
  buildGoogleFirestoreAdminV1beta2IndexField(),
  buildGoogleFirestoreAdminV1beta2IndexField(),
];

void checkUnnamed2(core.List<api.GoogleFirestoreAdminV1beta2IndexField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1beta2IndexField(o[0]);
  checkGoogleFirestoreAdminV1beta2IndexField(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1beta2Index = 0;
api.GoogleFirestoreAdminV1beta2Index buildGoogleFirestoreAdminV1beta2Index() {
  final o = api.GoogleFirestoreAdminV1beta2Index();
  buildCounterGoogleFirestoreAdminV1beta2Index++;
  if (buildCounterGoogleFirestoreAdminV1beta2Index < 3) {
    o.fields = buildUnnamed2();
    o.name = 'foo';
    o.queryScope = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1beta2Index--;
  return o;
}

void checkGoogleFirestoreAdminV1beta2Index(
  api.GoogleFirestoreAdminV1beta2Index o,
) {
  buildCounterGoogleFirestoreAdminV1beta2Index++;
  if (buildCounterGoogleFirestoreAdminV1beta2Index < 3) {
    checkUnnamed2(o.fields!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.queryScope!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1beta2Index--;
}

core.List<api.GoogleFirestoreAdminV1beta2Index> buildUnnamed3() => [
  buildGoogleFirestoreAdminV1beta2Index(),
  buildGoogleFirestoreAdminV1beta2Index(),
];

void checkUnnamed3(core.List<api.GoogleFirestoreAdminV1beta2Index> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1beta2Index(o[0]);
  checkGoogleFirestoreAdminV1beta2Index(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1beta2IndexConfig = 0;
api.GoogleFirestoreAdminV1beta2IndexConfig
buildGoogleFirestoreAdminV1beta2IndexConfig() {
  final o = api.GoogleFirestoreAdminV1beta2IndexConfig();
  buildCounterGoogleFirestoreAdminV1beta2IndexConfig++;
  if (buildCounterGoogleFirestoreAdminV1beta2IndexConfig < 3) {
    o.ancestorField = 'foo';
    o.indexes = buildUnnamed3();
    o.reverting = true;
    o.usesAncestorConfig = true;
  }
  buildCounterGoogleFirestoreAdminV1beta2IndexConfig--;
  return o;
}

void checkGoogleFirestoreAdminV1beta2IndexConfig(
  api.GoogleFirestoreAdminV1beta2IndexConfig o,
) {
  buildCounterGoogleFirestoreAdminV1beta2IndexConfig++;
  if (buildCounterGoogleFirestoreAdminV1beta2IndexConfig < 3) {
    unittest.expect(o.ancestorField!, unittest.equals('foo'));
    checkUnnamed3(o.indexes!);
    unittest.expect(o.reverting!, unittest.isTrue);
    unittest.expect(o.usesAncestorConfig!, unittest.isTrue);
  }
  buildCounterGoogleFirestoreAdminV1beta2IndexConfig--;
}

core.int buildCounterGoogleFirestoreAdminV1beta2IndexField = 0;
api.GoogleFirestoreAdminV1beta2IndexField
buildGoogleFirestoreAdminV1beta2IndexField() {
  final o = api.GoogleFirestoreAdminV1beta2IndexField();
  buildCounterGoogleFirestoreAdminV1beta2IndexField++;
  if (buildCounterGoogleFirestoreAdminV1beta2IndexField < 3) {
    o.arrayConfig = 'foo';
    o.fieldPath = 'foo';
    o.order = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1beta2IndexField--;
  return o;
}

void checkGoogleFirestoreAdminV1beta2IndexField(
  api.GoogleFirestoreAdminV1beta2IndexField o,
) {
  buildCounterGoogleFirestoreAdminV1beta2IndexField++;
  if (buildCounterGoogleFirestoreAdminV1beta2IndexField < 3) {
    unittest.expect(o.arrayConfig!, unittest.equals('foo'));
    unittest.expect(o.fieldPath!, unittest.equals('foo'));
    unittest.expect(o.order!, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1beta2IndexField--;
}

core.List<api.GoogleFirestoreAdminV1beta2Field> buildUnnamed4() => [
  buildGoogleFirestoreAdminV1beta2Field(),
  buildGoogleFirestoreAdminV1beta2Field(),
];

void checkUnnamed4(core.List<api.GoogleFirestoreAdminV1beta2Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1beta2Field(o[0]);
  checkGoogleFirestoreAdminV1beta2Field(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1beta2ListFieldsResponse = 0;
api.GoogleFirestoreAdminV1beta2ListFieldsResponse
buildGoogleFirestoreAdminV1beta2ListFieldsResponse() {
  final o = api.GoogleFirestoreAdminV1beta2ListFieldsResponse();
  buildCounterGoogleFirestoreAdminV1beta2ListFieldsResponse++;
  if (buildCounterGoogleFirestoreAdminV1beta2ListFieldsResponse < 3) {
    o.fields = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1beta2ListFieldsResponse--;
  return o;
}

void checkGoogleFirestoreAdminV1beta2ListFieldsResponse(
  api.GoogleFirestoreAdminV1beta2ListFieldsResponse o,
) {
  buildCounterGoogleFirestoreAdminV1beta2ListFieldsResponse++;
  if (buildCounterGoogleFirestoreAdminV1beta2ListFieldsResponse < 3) {
    checkUnnamed4(o.fields!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1beta2ListFieldsResponse--;
}

core.List<api.GoogleFirestoreAdminV1beta2Index> buildUnnamed5() => [
  buildGoogleFirestoreAdminV1beta2Index(),
  buildGoogleFirestoreAdminV1beta2Index(),
];

void checkUnnamed5(core.List<api.GoogleFirestoreAdminV1beta2Index> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirestoreAdminV1beta2Index(o[0]);
  checkGoogleFirestoreAdminV1beta2Index(o[1]);
}

core.int buildCounterGoogleFirestoreAdminV1beta2ListIndexesResponse = 0;
api.GoogleFirestoreAdminV1beta2ListIndexesResponse
buildGoogleFirestoreAdminV1beta2ListIndexesResponse() {
  final o = api.GoogleFirestoreAdminV1beta2ListIndexesResponse();
  buildCounterGoogleFirestoreAdminV1beta2ListIndexesResponse++;
  if (buildCounterGoogleFirestoreAdminV1beta2ListIndexesResponse < 3) {
    o.indexes = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirestoreAdminV1beta2ListIndexesResponse--;
  return o;
}

void checkGoogleFirestoreAdminV1beta2ListIndexesResponse(
  api.GoogleFirestoreAdminV1beta2ListIndexesResponse o,
) {
  buildCounterGoogleFirestoreAdminV1beta2ListIndexesResponse++;
  if (buildCounterGoogleFirestoreAdminV1beta2ListIndexesResponse < 3) {
    checkUnnamed5(o.indexes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleFirestoreAdminV1beta2ListIndexesResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed6() => {
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

void checkUnnamed6(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed7() => {
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

void checkUnnamed7(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed6();
    o.name = 'foo';
    o.response = buildUnnamed7();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed6(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed7(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed8() => {
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

void checkUnnamed8(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed9() => [
  buildUnnamed8(),
  buildUnnamed8(),
];

void checkUnnamed9(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8(o[0]);
  checkUnnamed8(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed9();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed9(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
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

  unittest.group(
    'obj-schema-GoogleFirestoreAdminV1beta2ExportDocumentsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirestoreAdminV1beta2ExportDocumentsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirestoreAdminV1beta2ExportDocumentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirestoreAdminV1beta2ExportDocumentsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleFirestoreAdminV1beta2Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1beta2Field();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1beta2Field.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirestoreAdminV1beta2Field(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleFirestoreAdminV1beta2ImportDocumentsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirestoreAdminV1beta2ImportDocumentsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleFirestoreAdminV1beta2ImportDocumentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirestoreAdminV1beta2ImportDocumentsRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleFirestoreAdminV1beta2Index', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1beta2Index();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1beta2Index.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirestoreAdminV1beta2Index(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1beta2IndexConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1beta2IndexConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1beta2IndexConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirestoreAdminV1beta2IndexConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirestoreAdminV1beta2IndexField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirestoreAdminV1beta2IndexField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirestoreAdminV1beta2IndexField.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleFirestoreAdminV1beta2IndexField(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleFirestoreAdminV1beta2ListFieldsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirestoreAdminV1beta2ListFieldsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleFirestoreAdminV1beta2ListFieldsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirestoreAdminV1beta2ListFieldsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleFirestoreAdminV1beta2ListIndexesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleFirestoreAdminV1beta2ListIndexesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleFirestoreAdminV1beta2ListIndexesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleFirestoreAdminV1beta2ListIndexesResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningOperation(od);
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

  unittest.group('resource-ProjectsDatabasesResource', () {
    unittest.test('method--exportDocuments', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases;
      final arg_request =
          buildGoogleFirestoreAdminV1beta2ExportDocumentsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleFirestoreAdminV1beta2ExportDocumentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirestoreAdminV1beta2ExportDocumentsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.exportDocuments(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--importDocuments', () async {
      final mock = HttpServerMock();
      final res = api.FirestoreApi(mock).projects.databases;
      final arg_request =
          buildGoogleFirestoreAdminV1beta2ImportDocumentsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleFirestoreAdminV1beta2ImportDocumentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirestoreAdminV1beta2ImportDocumentsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.importDocuments(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsDatabasesCollectionGroupsFieldsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.fields;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta2/'),
          );
          pathOffset += 8;
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
            buildGoogleFirestoreAdminV1beta2Field(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1beta2Field(
        response as api.GoogleFirestoreAdminV1beta2Field,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.fields;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta2/'),
          );
          pathOffset += 8;
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
            buildGoogleFirestoreAdminV1beta2ListFieldsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleFirestoreAdminV1beta2ListFieldsResponse(
        response as api.GoogleFirestoreAdminV1beta2ListFieldsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.fields;
      final arg_request = buildGoogleFirestoreAdminV1beta2Field();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleFirestoreAdminV1beta2Field.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirestoreAdminV1beta2Field(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta2/'),
          );
          pathOffset += 8;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });

  unittest.group('resource-ProjectsDatabasesCollectionGroupsIndexesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.indexes;
      final arg_request = buildGoogleFirestoreAdminV1beta2Index();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleFirestoreAdminV1beta2Index.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleFirestoreAdminV1beta2Index(obj);

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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.indexes;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta2/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.indexes;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta2/'),
          );
          pathOffset += 8;
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
            buildGoogleFirestoreAdminV1beta2Index(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirestoreAdminV1beta2Index(
        response as api.GoogleFirestoreAdminV1beta2Index,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.FirestoreApi(mock).projects.databases.collectionGroups.indexes;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta2/'),
          );
          pathOffset += 8;
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
            buildGoogleFirestoreAdminV1beta2ListIndexesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleFirestoreAdminV1beta2ListIndexesResponse(
        response as api.GoogleFirestoreAdminV1beta2ListIndexesResponse,
      );
    });
  });
}
