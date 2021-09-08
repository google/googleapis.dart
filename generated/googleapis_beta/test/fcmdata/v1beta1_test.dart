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

import 'package:googleapis_beta/fcmdata/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleFirebaseFcmDataV1beta1AndroidDeliveryData = 0;
api.GoogleFirebaseFcmDataV1beta1AndroidDeliveryData
    buildGoogleFirebaseFcmDataV1beta1AndroidDeliveryData() {
  final o = api.GoogleFirebaseFcmDataV1beta1AndroidDeliveryData();
  buildCounterGoogleFirebaseFcmDataV1beta1AndroidDeliveryData++;
  if (buildCounterGoogleFirebaseFcmDataV1beta1AndroidDeliveryData < 3) {
    o.analyticsLabel = 'foo';
    o.appId = 'foo';
    o.data = buildGoogleFirebaseFcmDataV1beta1Data();
    o.date = buildGoogleTypeDate();
  }
  buildCounterGoogleFirebaseFcmDataV1beta1AndroidDeliveryData--;
  return o;
}

void checkGoogleFirebaseFcmDataV1beta1AndroidDeliveryData(
    api.GoogleFirebaseFcmDataV1beta1AndroidDeliveryData o) {
  buildCounterGoogleFirebaseFcmDataV1beta1AndroidDeliveryData++;
  if (buildCounterGoogleFirebaseFcmDataV1beta1AndroidDeliveryData < 3) {
    unittest.expect(
      o.analyticsLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseFcmDataV1beta1Data(o.data!);
    checkGoogleTypeDate(o.date!);
  }
  buildCounterGoogleFirebaseFcmDataV1beta1AndroidDeliveryData--;
}

core.int buildCounterGoogleFirebaseFcmDataV1beta1Data = 0;
api.GoogleFirebaseFcmDataV1beta1Data buildGoogleFirebaseFcmDataV1beta1Data() {
  final o = api.GoogleFirebaseFcmDataV1beta1Data();
  buildCounterGoogleFirebaseFcmDataV1beta1Data++;
  if (buildCounterGoogleFirebaseFcmDataV1beta1Data < 3) {
    o.countMessagesAccepted = 'foo';
    o.deliveryPerformancePercents =
        buildGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents();
    o.messageInsightPercents =
        buildGoogleFirebaseFcmDataV1beta1MessageInsightPercents();
    o.messageOutcomePercents =
        buildGoogleFirebaseFcmDataV1beta1MessageOutcomePercents();
  }
  buildCounterGoogleFirebaseFcmDataV1beta1Data--;
  return o;
}

void checkGoogleFirebaseFcmDataV1beta1Data(
    api.GoogleFirebaseFcmDataV1beta1Data o) {
  buildCounterGoogleFirebaseFcmDataV1beta1Data++;
  if (buildCounterGoogleFirebaseFcmDataV1beta1Data < 3) {
    unittest.expect(
      o.countMessagesAccepted!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents(
        o.deliveryPerformancePercents!);
    checkGoogleFirebaseFcmDataV1beta1MessageInsightPercents(
        o.messageInsightPercents!);
    checkGoogleFirebaseFcmDataV1beta1MessageOutcomePercents(
        o.messageOutcomePercents!);
  }
  buildCounterGoogleFirebaseFcmDataV1beta1Data--;
}

core.int buildCounterGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents =
    0;
api.GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents
    buildGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents() {
  final o = api.GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents();
  buildCounterGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents++;
  if (buildCounterGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents < 3) {
    o.delayedDeviceDoze = 42.0;
    o.delayedDeviceOffline = 42.0;
    o.delayedMessageThrottled = 42.0;
    o.delayedUserStopped = 42.0;
    o.deliveredNoDelay = 42.0;
  }
  buildCounterGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents--;
  return o;
}

void checkGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents(
    api.GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents o) {
  buildCounterGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents++;
  if (buildCounterGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents < 3) {
    unittest.expect(
      o.delayedDeviceDoze!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.delayedDeviceOffline!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.delayedMessageThrottled!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.delayedUserStopped!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.deliveredNoDelay!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents--;
}

core.List<api.GoogleFirebaseFcmDataV1beta1AndroidDeliveryData>
    buildUnnamed8408() => [
          buildGoogleFirebaseFcmDataV1beta1AndroidDeliveryData(),
          buildGoogleFirebaseFcmDataV1beta1AndroidDeliveryData(),
        ];

void checkUnnamed8408(
    core.List<api.GoogleFirebaseFcmDataV1beta1AndroidDeliveryData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseFcmDataV1beta1AndroidDeliveryData(o[0]);
  checkGoogleFirebaseFcmDataV1beta1AndroidDeliveryData(o[1]);
}

core.int
    buildCounterGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse = 0;
api.GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse
    buildGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse() {
  final o = api.GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse();
  buildCounterGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse++;
  if (buildCounterGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse <
      3) {
    o.androidDeliveryData = buildUnnamed8408();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse--;
  return o;
}

void checkGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse(
    api.GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse o) {
  buildCounterGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse++;
  if (buildCounterGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse <
      3) {
    checkUnnamed8408(o.androidDeliveryData!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse--;
}

core.int buildCounterGoogleFirebaseFcmDataV1beta1MessageInsightPercents = 0;
api.GoogleFirebaseFcmDataV1beta1MessageInsightPercents
    buildGoogleFirebaseFcmDataV1beta1MessageInsightPercents() {
  final o = api.GoogleFirebaseFcmDataV1beta1MessageInsightPercents();
  buildCounterGoogleFirebaseFcmDataV1beta1MessageInsightPercents++;
  if (buildCounterGoogleFirebaseFcmDataV1beta1MessageInsightPercents < 3) {
    o.priorityLowered = 42.0;
  }
  buildCounterGoogleFirebaseFcmDataV1beta1MessageInsightPercents--;
  return o;
}

void checkGoogleFirebaseFcmDataV1beta1MessageInsightPercents(
    api.GoogleFirebaseFcmDataV1beta1MessageInsightPercents o) {
  buildCounterGoogleFirebaseFcmDataV1beta1MessageInsightPercents++;
  if (buildCounterGoogleFirebaseFcmDataV1beta1MessageInsightPercents < 3) {
    unittest.expect(
      o.priorityLowered!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleFirebaseFcmDataV1beta1MessageInsightPercents--;
}

core.int buildCounterGoogleFirebaseFcmDataV1beta1MessageOutcomePercents = 0;
api.GoogleFirebaseFcmDataV1beta1MessageOutcomePercents
    buildGoogleFirebaseFcmDataV1beta1MessageOutcomePercents() {
  final o = api.GoogleFirebaseFcmDataV1beta1MessageOutcomePercents();
  buildCounterGoogleFirebaseFcmDataV1beta1MessageOutcomePercents++;
  if (buildCounterGoogleFirebaseFcmDataV1beta1MessageOutcomePercents < 3) {
    o.delivered = 42.0;
    o.droppedAppForceStopped = 42.0;
    o.droppedDeviceInactive = 42.0;
    o.droppedTooManyPendingMessages = 42.0;
    o.pending = 42.0;
  }
  buildCounterGoogleFirebaseFcmDataV1beta1MessageOutcomePercents--;
  return o;
}

void checkGoogleFirebaseFcmDataV1beta1MessageOutcomePercents(
    api.GoogleFirebaseFcmDataV1beta1MessageOutcomePercents o) {
  buildCounterGoogleFirebaseFcmDataV1beta1MessageOutcomePercents++;
  if (buildCounterGoogleFirebaseFcmDataV1beta1MessageOutcomePercents < 3) {
    unittest.expect(
      o.delivered!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.droppedAppForceStopped!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.droppedDeviceInactive!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.droppedTooManyPendingMessages!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.pending!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleFirebaseFcmDataV1beta1MessageOutcomePercents--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDate--;
}

void main() {
  unittest.group('obj-schema-GoogleFirebaseFcmDataV1beta1AndroidDeliveryData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseFcmDataV1beta1AndroidDeliveryData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseFcmDataV1beta1AndroidDeliveryData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseFcmDataV1beta1AndroidDeliveryData(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseFcmDataV1beta1Data', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseFcmDataV1beta1Data();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseFcmDataV1beta1Data.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseFcmDataV1beta1Data(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseFcmDataV1beta1MessageInsightPercents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseFcmDataV1beta1MessageInsightPercents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseFcmDataV1beta1MessageInsightPercents.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseFcmDataV1beta1MessageInsightPercents(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseFcmDataV1beta1MessageOutcomePercents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseFcmDataV1beta1MessageOutcomePercents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseFcmDataV1beta1MessageOutcomePercents.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseFcmDataV1beta1MessageOutcomePercents(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('resource-ProjectsAndroidAppsDeliveryDataResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FcmdataApi(mock).projects.androidApps.deliveryData;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse(response
          as api.GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse);
    });
  });
}
