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

import 'package:googleapis/datastore/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterGoogleDatastoreAdminV1beta1EntityFilter = 0;
api.GoogleDatastoreAdminV1beta1EntityFilter
buildGoogleDatastoreAdminV1beta1EntityFilter() {
  final o = api.GoogleDatastoreAdminV1beta1EntityFilter();
  buildCounterGoogleDatastoreAdminV1beta1EntityFilter++;
  if (buildCounterGoogleDatastoreAdminV1beta1EntityFilter < 3) {
    o.kinds = buildUnnamed0();
    o.namespaceIds = buildUnnamed1();
  }
  buildCounterGoogleDatastoreAdminV1beta1EntityFilter--;
  return o;
}

void checkGoogleDatastoreAdminV1beta1EntityFilter(
  api.GoogleDatastoreAdminV1beta1EntityFilter o,
) {
  buildCounterGoogleDatastoreAdminV1beta1EntityFilter++;
  if (buildCounterGoogleDatastoreAdminV1beta1EntityFilter < 3) {
    checkUnnamed0(o.kinds!);
    checkUnnamed1(o.namespaceIds!);
  }
  buildCounterGoogleDatastoreAdminV1beta1EntityFilter--;
}

core.Map<core.String, core.String> buildUnnamed2() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesRequest = 0;
api.GoogleDatastoreAdminV1beta1ExportEntitiesRequest
buildGoogleDatastoreAdminV1beta1ExportEntitiesRequest() {
  final o = api.GoogleDatastoreAdminV1beta1ExportEntitiesRequest();
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesRequest < 3) {
    o.entityFilter = buildGoogleDatastoreAdminV1beta1EntityFilter();
    o.labels = buildUnnamed2();
    o.outputUrlPrefix = 'foo';
  }
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesRequest--;
  return o;
}

void checkGoogleDatastoreAdminV1beta1ExportEntitiesRequest(
  api.GoogleDatastoreAdminV1beta1ExportEntitiesRequest o,
) {
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesRequest < 3) {
    checkGoogleDatastoreAdminV1beta1EntityFilter(o.entityFilter!);
    checkUnnamed2(o.labels!);
    unittest.expect(o.outputUrlPrefix!, unittest.equals('foo'));
  }
  buildCounterGoogleDatastoreAdminV1beta1ExportEntitiesRequest--;
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesRequest = 0;
api.GoogleDatastoreAdminV1beta1ImportEntitiesRequest
buildGoogleDatastoreAdminV1beta1ImportEntitiesRequest() {
  final o = api.GoogleDatastoreAdminV1beta1ImportEntitiesRequest();
  buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesRequest < 3) {
    o.entityFilter = buildGoogleDatastoreAdminV1beta1EntityFilter();
    o.inputUrl = 'foo';
    o.labels = buildUnnamed3();
  }
  buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesRequest--;
  return o;
}

void checkGoogleDatastoreAdminV1beta1ImportEntitiesRequest(
  api.GoogleDatastoreAdminV1beta1ImportEntitiesRequest o,
) {
  buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesRequest++;
  if (buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesRequest < 3) {
    checkGoogleDatastoreAdminV1beta1EntityFilter(o.entityFilter!);
    unittest.expect(o.inputUrl!, unittest.equals('foo'));
    checkUnnamed3(o.labels!);
  }
  buildCounterGoogleDatastoreAdminV1beta1ImportEntitiesRequest--;
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

core.Map<core.String, core.Object?> buildUnnamed5() => {
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

void checkUnnamed5(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed4();
    o.name = 'foo';
    o.response = buildUnnamed5();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed4(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed5(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed7() => [
  buildUnnamed6(),
  buildUnnamed6(),
];

void checkUnnamed7(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6(o[0]);
  checkUnnamed6(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed7(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

void main() {
  unittest.group('obj-schema-GoogleDatastoreAdminV1beta1EntityFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleDatastoreAdminV1beta1EntityFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleDatastoreAdminV1beta1EntityFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleDatastoreAdminV1beta1EntityFilter(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleDatastoreAdminV1beta1ExportEntitiesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleDatastoreAdminV1beta1ExportEntitiesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDatastoreAdminV1beta1ExportEntitiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDatastoreAdminV1beta1ExportEntitiesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleDatastoreAdminV1beta1ImportEntitiesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleDatastoreAdminV1beta1ImportEntitiesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleDatastoreAdminV1beta1ImportEntitiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleDatastoreAdminV1beta1ImportEntitiesRequest(od);
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

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects;
      final arg_request =
          buildGoogleDatastoreAdminV1beta1ExportEntitiesRequest();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleDatastoreAdminV1beta1ExportEntitiesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleDatastoreAdminV1beta1ExportEntitiesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 17),
            unittest.equals('v1beta1/projects/'),
          );
          pathOffset += 17;
          index = path.indexOf(':export', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals(':export'),
          );
          pathOffset += 7;

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
      final response = await res.export(
        arg_request,
        arg_projectId,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DatastoreApi(mock).projects;
      final arg_request =
          buildGoogleDatastoreAdminV1beta1ImportEntitiesRequest();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleDatastoreAdminV1beta1ImportEntitiesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleDatastoreAdminV1beta1ImportEntitiesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 17),
            unittest.equals('v1beta1/projects/'),
          );
          pathOffset += 17;
          index = path.indexOf(':import', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals(':import'),
          );
          pathOffset += 7;

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
      final response = await res.import(
        arg_request,
        arg_projectId,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });
  });
}
