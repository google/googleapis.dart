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

import 'package:googleapis/securitycenter/v1beta2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.Object?> buildUnnamed0() => {
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

void checkUnnamed0(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterConfig = 0;
api.Config buildConfig() {
  final o = api.Config();
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    o.moduleEnablementState = 'foo';
    o.value = buildUnnamed0();
  }
  buildCounterConfig--;
  return o;
}

void checkConfig(api.Config o) {
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    unittest.expect(o.moduleEnablementState!, unittest.equals('foo'));
    checkUnnamed0(o.value!);
  }
  buildCounterConfig--;
}

core.Map<core.String, api.Config> buildUnnamed1() => {
  'x': buildConfig(),
  'y': buildConfig(),
};

void checkUnnamed1(core.Map<core.String, api.Config> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfig(o['x']!);
  checkConfig(o['y']!);
}

core.int buildCounterContainerThreatDetectionSettings = 0;
api.ContainerThreatDetectionSettings buildContainerThreatDetectionSettings() {
  final o = api.ContainerThreatDetectionSettings();
  buildCounterContainerThreatDetectionSettings++;
  if (buildCounterContainerThreatDetectionSettings < 3) {
    o.modules = buildUnnamed1();
    o.name = 'foo';
    o.serviceAccount = 'foo';
    o.serviceEnablementState = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterContainerThreatDetectionSettings--;
  return o;
}

void checkContainerThreatDetectionSettings(
  api.ContainerThreatDetectionSettings o,
) {
  buildCounterContainerThreatDetectionSettings++;
  if (buildCounterContainerThreatDetectionSettings < 3) {
    checkUnnamed1(o.modules!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.serviceEnablementState!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterContainerThreatDetectionSettings--;
}

core.int buildCounterDetails = 0;
api.Details buildDetails() {
  final o = api.Details();
  buildCounterDetails++;
  if (buildCounterDetails < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
    o.type = 'foo';
  }
  buildCounterDetails--;
  return o;
}

void checkDetails(api.Details o) {
  buildCounterDetails++;
  if (buildCounterDetails < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterDetails--;
}

core.Map<core.String, api.Config> buildUnnamed2() => {
  'x': buildConfig(),
  'y': buildConfig(),
};

void checkUnnamed2(core.Map<core.String, api.Config> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfig(o['x']!);
  checkConfig(o['y']!);
}

core.int buildCounterEventThreatDetectionSettings = 0;
api.EventThreatDetectionSettings buildEventThreatDetectionSettings() {
  final o = api.EventThreatDetectionSettings();
  buildCounterEventThreatDetectionSettings++;
  if (buildCounterEventThreatDetectionSettings < 3) {
    o.modules = buildUnnamed2();
    o.name = 'foo';
    o.serviceEnablementState = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterEventThreatDetectionSettings--;
  return o;
}

void checkEventThreatDetectionSettings(api.EventThreatDetectionSettings o) {
  buildCounterEventThreatDetectionSettings++;
  if (buildCounterEventThreatDetectionSettings < 3) {
    checkUnnamed2(o.modules!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.serviceEnablementState!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterEventThreatDetectionSettings--;
}

core.Map<core.String, api.Config> buildUnnamed3() => {
  'x': buildConfig(),
  'y': buildConfig(),
};

void checkUnnamed3(core.Map<core.String, api.Config> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfig(o['x']!);
  checkConfig(o['y']!);
}

core.int buildCounterRapidVulnerabilityDetectionSettings = 0;
api.RapidVulnerabilityDetectionSettings
buildRapidVulnerabilityDetectionSettings() {
  final o = api.RapidVulnerabilityDetectionSettings();
  buildCounterRapidVulnerabilityDetectionSettings++;
  if (buildCounterRapidVulnerabilityDetectionSettings < 3) {
    o.modules = buildUnnamed3();
    o.name = 'foo';
    o.serviceEnablementState = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRapidVulnerabilityDetectionSettings--;
  return o;
}

void checkRapidVulnerabilityDetectionSettings(
  api.RapidVulnerabilityDetectionSettings o,
) {
  buildCounterRapidVulnerabilityDetectionSettings++;
  if (buildCounterRapidVulnerabilityDetectionSettings < 3) {
    checkUnnamed3(o.modules!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.serviceEnablementState!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterRapidVulnerabilityDetectionSettings--;
}

core.int buildCounterSecurityCenterSettings = 0;
api.SecurityCenterSettings buildSecurityCenterSettings() {
  final o = api.SecurityCenterSettings();
  buildCounterSecurityCenterSettings++;
  if (buildCounterSecurityCenterSettings < 3) {
    o.logSinkProject = 'foo';
    o.name = 'foo';
    o.onboardingTime = 'foo';
    o.orgServiceAccount = 'foo';
  }
  buildCounterSecurityCenterSettings--;
  return o;
}

void checkSecurityCenterSettings(api.SecurityCenterSettings o) {
  buildCounterSecurityCenterSettings++;
  if (buildCounterSecurityCenterSettings < 3) {
    unittest.expect(o.logSinkProject!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.onboardingTime!, unittest.equals('foo'));
    unittest.expect(o.orgServiceAccount!, unittest.equals('foo'));
  }
  buildCounterSecurityCenterSettings--;
}

core.Map<core.String, api.Config> buildUnnamed4() => {
  'x': buildConfig(),
  'y': buildConfig(),
};

void checkUnnamed4(core.Map<core.String, api.Config> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfig(o['x']!);
  checkConfig(o['y']!);
}

core.int buildCounterSecurityHealthAnalyticsSettings = 0;
api.SecurityHealthAnalyticsSettings buildSecurityHealthAnalyticsSettings() {
  final o = api.SecurityHealthAnalyticsSettings();
  buildCounterSecurityHealthAnalyticsSettings++;
  if (buildCounterSecurityHealthAnalyticsSettings < 3) {
    o.modules = buildUnnamed4();
    o.name = 'foo';
    o.serviceAccount = 'foo';
    o.serviceEnablementState = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSecurityHealthAnalyticsSettings--;
  return o;
}

void checkSecurityHealthAnalyticsSettings(
  api.SecurityHealthAnalyticsSettings o,
) {
  buildCounterSecurityHealthAnalyticsSettings++;
  if (buildCounterSecurityHealthAnalyticsSettings < 3) {
    checkUnnamed4(o.modules!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.serviceEnablementState!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSecurityHealthAnalyticsSettings--;
}

core.int buildCounterSubscription = 0;
api.Subscription buildSubscription() {
  final o = api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.details = buildDetails();
    o.name = 'foo';
    o.tier = 'foo';
  }
  buildCounterSubscription--;
  return o;
}

void checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    checkDetails(o.details!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.tier!, unittest.equals('foo'));
  }
  buildCounterSubscription--;
}

core.Map<core.String, api.Config> buildUnnamed5() => {
  'x': buildConfig(),
  'y': buildConfig(),
};

void checkUnnamed5(core.Map<core.String, api.Config> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfig(o['x']!);
  checkConfig(o['y']!);
}

core.int buildCounterVirtualMachineThreatDetectionSettings = 0;
api.VirtualMachineThreatDetectionSettings
buildVirtualMachineThreatDetectionSettings() {
  final o = api.VirtualMachineThreatDetectionSettings();
  buildCounterVirtualMachineThreatDetectionSettings++;
  if (buildCounterVirtualMachineThreatDetectionSettings < 3) {
    o.modules = buildUnnamed5();
    o.name = 'foo';
    o.serviceAccount = 'foo';
    o.serviceEnablementState = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterVirtualMachineThreatDetectionSettings--;
  return o;
}

void checkVirtualMachineThreatDetectionSettings(
  api.VirtualMachineThreatDetectionSettings o,
) {
  buildCounterVirtualMachineThreatDetectionSettings++;
  if (buildCounterVirtualMachineThreatDetectionSettings < 3) {
    checkUnnamed5(o.modules!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.serviceEnablementState!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterVirtualMachineThreatDetectionSettings--;
}

core.Map<core.String, api.Config> buildUnnamed6() => {
  'x': buildConfig(),
  'y': buildConfig(),
};

void checkUnnamed6(core.Map<core.String, api.Config> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfig(o['x']!);
  checkConfig(o['y']!);
}

core.int buildCounterWebSecurityScannerSettings = 0;
api.WebSecurityScannerSettings buildWebSecurityScannerSettings() {
  final o = api.WebSecurityScannerSettings();
  buildCounterWebSecurityScannerSettings++;
  if (buildCounterWebSecurityScannerSettings < 3) {
    o.modules = buildUnnamed6();
    o.name = 'foo';
    o.serviceEnablementState = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterWebSecurityScannerSettings--;
  return o;
}

void checkWebSecurityScannerSettings(api.WebSecurityScannerSettings o) {
  buildCounterWebSecurityScannerSettings++;
  if (buildCounterWebSecurityScannerSettings < 3) {
    checkUnnamed6(o.modules!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.serviceEnablementState!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterWebSecurityScannerSettings--;
}

void main() {
  unittest.group('obj-schema-Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Config.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConfig(od);
    });
  });

  unittest.group('obj-schema-ContainerThreatDetectionSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerThreatDetectionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerThreatDetectionSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContainerThreatDetectionSettings(od);
    });
  });

  unittest.group('obj-schema-Details', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Details.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDetails(od);
    });
  });

  unittest.group('obj-schema-EventThreatDetectionSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventThreatDetectionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventThreatDetectionSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventThreatDetectionSettings(od);
    });
  });

  unittest.group('obj-schema-RapidVulnerabilityDetectionSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRapidVulnerabilityDetectionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RapidVulnerabilityDetectionSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRapidVulnerabilityDetectionSettings(od);
    });
  });

  unittest.group('obj-schema-SecurityCenterSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityCenterSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityCenterSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityCenterSettings(od);
    });
  });

  unittest.group('obj-schema-SecurityHealthAnalyticsSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityHealthAnalyticsSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityHealthAnalyticsSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityHealthAnalyticsSettings(od);
    });
  });

  unittest.group('obj-schema-Subscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Subscription.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubscription(od);
    });
  });

  unittest.group('obj-schema-VirtualMachineThreatDetectionSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualMachineThreatDetectionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VirtualMachineThreatDetectionSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVirtualMachineThreatDetectionSettings(od);
    });
  });

  unittest.group('obj-schema-WebSecurityScannerSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebSecurityScannerSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebSecurityScannerSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWebSecurityScannerSettings(od);
    });
  });

  unittest.group('resource-FoldersResource', () {
    unittest.test('method--getContainerThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders;
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
            buildContainerThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getContainerThreatDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkContainerThreatDetectionSettings(
        response as api.ContainerThreatDetectionSettings,
      );
    });

    unittest.test('method--getEventThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders;
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
          final resp = convert.json.encode(buildEventThreatDetectionSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getEventThreatDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkEventThreatDetectionSettings(
        response as api.EventThreatDetectionSettings,
      );
    });

    unittest.test('method--getRapidVulnerabilityDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders;
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
            buildRapidVulnerabilityDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getRapidVulnerabilityDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkRapidVulnerabilityDetectionSettings(
        response as api.RapidVulnerabilityDetectionSettings,
      );
    });

    unittest.test('method--getSecurityCenterSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders;
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
          final resp = convert.json.encode(buildSecurityCenterSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSecurityCenterSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkSecurityCenterSettings(response as api.SecurityCenterSettings);
    });

    unittest.test('method--getSecurityHealthAnalyticsSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders;
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
            buildSecurityHealthAnalyticsSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSecurityHealthAnalyticsSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkSecurityHealthAnalyticsSettings(
        response as api.SecurityHealthAnalyticsSettings,
      );
    });

    unittest.test('method--getVirtualMachineThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders;
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
            buildVirtualMachineThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getVirtualMachineThreatDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkVirtualMachineThreatDetectionSettings(
        response as api.VirtualMachineThreatDetectionSettings,
      );
    });

    unittest.test('method--getWebSecurityScannerSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders;
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
          final resp = convert.json.encode(buildWebSecurityScannerSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getWebSecurityScannerSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkWebSecurityScannerSettings(
        response as api.WebSecurityScannerSettings,
      );
    });

    unittest.test('method--updateContainerThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders;
      final arg_request = buildContainerThreatDetectionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ContainerThreatDetectionSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkContainerThreatDetectionSettings(obj);

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
          final resp = convert.json.encode(
            buildContainerThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateContainerThreatDetectionSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkContainerThreatDetectionSettings(
        response as api.ContainerThreatDetectionSettings,
      );
    });

    unittest.test('method--updateEventThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders;
      final arg_request = buildEventThreatDetectionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventThreatDetectionSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventThreatDetectionSettings(obj);

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
          final resp = convert.json.encode(buildEventThreatDetectionSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateEventThreatDetectionSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkEventThreatDetectionSettings(
        response as api.EventThreatDetectionSettings,
      );
    });

    unittest.test('method--updateRapidVulnerabilityDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders;
      final arg_request = buildRapidVulnerabilityDetectionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RapidVulnerabilityDetectionSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRapidVulnerabilityDetectionSettings(obj);

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
          final resp = convert.json.encode(
            buildRapidVulnerabilityDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateRapidVulnerabilityDetectionSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkRapidVulnerabilityDetectionSettings(
        response as api.RapidVulnerabilityDetectionSettings,
      );
    });

    unittest.test('method--updateSecurityHealthAnalyticsSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders;
      final arg_request = buildSecurityHealthAnalyticsSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityHealthAnalyticsSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityHealthAnalyticsSettings(obj);

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
          final resp = convert.json.encode(
            buildSecurityHealthAnalyticsSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateSecurityHealthAnalyticsSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkSecurityHealthAnalyticsSettings(
        response as api.SecurityHealthAnalyticsSettings,
      );
    });

    unittest.test(
      'method--updateVirtualMachineThreatDetectionSettings',
      () async {
        final mock = HttpServerMock();
        final res = api.SecurityCommandCenterApi(mock).folders;
        final arg_request = buildVirtualMachineThreatDetectionSettings();
        final arg_name = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.VirtualMachineThreatDetectionSettings.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkVirtualMachineThreatDetectionSettings(obj);

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
            final resp = convert.json.encode(
              buildVirtualMachineThreatDetectionSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.updateVirtualMachineThreatDetectionSettings(
          arg_request,
          arg_name,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkVirtualMachineThreatDetectionSettings(
          response as api.VirtualMachineThreatDetectionSettings,
        );
      },
    );

    unittest.test('method--updateWebSecurityScannerSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).folders;
      final arg_request = buildWebSecurityScannerSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WebSecurityScannerSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWebSecurityScannerSettings(obj);

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
          final resp = convert.json.encode(buildWebSecurityScannerSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateWebSecurityScannerSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkWebSecurityScannerSettings(
        response as api.WebSecurityScannerSettings,
      );
    });
  });

  unittest.group('resource-FoldersContainerThreatDetectionSettingsResource', () {
    unittest.test('method--calculate', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.containerThreatDetectionSettings;
      final arg_name = 'foo';
      final arg_showEligibleModulesOnly = true;
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
            queryMap['showEligibleModulesOnly']!.first,
            unittest.equals('$arg_showEligibleModulesOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildContainerThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculate(
        arg_name,
        showEligibleModulesOnly: arg_showEligibleModulesOnly,
        $fields: arg_$fields,
      );
      checkContainerThreatDetectionSettings(
        response as api.ContainerThreatDetectionSettings,
      );
    });
  });

  unittest.group('resource-FoldersEventThreatDetectionSettingsResource', () {
    unittest.test('method--calculate', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.eventThreatDetectionSettings;
      final arg_name = 'foo';
      final arg_showEligibleModulesOnly = true;
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
            queryMap['showEligibleModulesOnly']!.first,
            unittest.equals('$arg_showEligibleModulesOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEventThreatDetectionSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculate(
        arg_name,
        showEligibleModulesOnly: arg_showEligibleModulesOnly,
        $fields: arg_$fields,
      );
      checkEventThreatDetectionSettings(
        response as api.EventThreatDetectionSettings,
      );
    });
  });

  unittest.group(
    'resource-FoldersRapidVulnerabilityDetectionSettingsResource',
    () {
      unittest.test('method--calculate', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).folders.rapidVulnerabilityDetectionSettings;
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
              buildRapidVulnerabilityDetectionSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.calculate(arg_name, $fields: arg_$fields);
        checkRapidVulnerabilityDetectionSettings(
          response as api.RapidVulnerabilityDetectionSettings,
        );
      });
    },
  );

  unittest.group('resource-FoldersSecurityHealthAnalyticsSettingsResource', () {
    unittest.test('method--calculate', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).folders.securityHealthAnalyticsSettings;
      final arg_name = 'foo';
      final arg_showEligibleModulesOnly = true;
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
            queryMap['showEligibleModulesOnly']!.first,
            unittest.equals('$arg_showEligibleModulesOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSecurityHealthAnalyticsSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculate(
        arg_name,
        showEligibleModulesOnly: arg_showEligibleModulesOnly,
        $fields: arg_$fields,
      );
      checkSecurityHealthAnalyticsSettings(
        response as api.SecurityHealthAnalyticsSettings,
      );
    });
  });

  unittest.group(
    'resource-FoldersVirtualMachineThreatDetectionSettingsResource',
    () {
      unittest.test('method--calculate', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).folders.virtualMachineThreatDetectionSettings;
        final arg_name = 'foo';
        final arg_showEligibleModulesOnly = true;
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
              queryMap['showEligibleModulesOnly']!.first,
              unittest.equals('$arg_showEligibleModulesOnly'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildVirtualMachineThreatDetectionSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.calculate(
          arg_name,
          showEligibleModulesOnly: arg_showEligibleModulesOnly,
          $fields: arg_$fields,
        );
        checkVirtualMachineThreatDetectionSettings(
          response as api.VirtualMachineThreatDetectionSettings,
        );
      });
    },
  );

  unittest.group('resource-FoldersWebSecurityScannerSettingsResource', () {
    unittest.test('method--calculate', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).folders.webSecurityScannerSettings;
      final arg_name = 'foo';
      final arg_showEligibleModulesOnly = true;
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
            queryMap['showEligibleModulesOnly']!.first,
            unittest.equals('$arg_showEligibleModulesOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWebSecurityScannerSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculate(
        arg_name,
        showEligibleModulesOnly: arg_showEligibleModulesOnly,
        $fields: arg_$fields,
      );
      checkWebSecurityScannerSettings(
        response as api.WebSecurityScannerSettings,
      );
    });
  });

  unittest.group('resource-OrganizationsResource', () {
    unittest.test('method--getContainerThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
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
            buildContainerThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getContainerThreatDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkContainerThreatDetectionSettings(
        response as api.ContainerThreatDetectionSettings,
      );
    });

    unittest.test('method--getEventThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
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
          final resp = convert.json.encode(buildEventThreatDetectionSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getEventThreatDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkEventThreatDetectionSettings(
        response as api.EventThreatDetectionSettings,
      );
    });

    unittest.test('method--getRapidVulnerabilityDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
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
            buildRapidVulnerabilityDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getRapidVulnerabilityDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkRapidVulnerabilityDetectionSettings(
        response as api.RapidVulnerabilityDetectionSettings,
      );
    });

    unittest.test('method--getSecurityCenterSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
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
          final resp = convert.json.encode(buildSecurityCenterSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSecurityCenterSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkSecurityCenterSettings(response as api.SecurityCenterSettings);
    });

    unittest.test('method--getSecurityHealthAnalyticsSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
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
            buildSecurityHealthAnalyticsSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSecurityHealthAnalyticsSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkSecurityHealthAnalyticsSettings(
        response as api.SecurityHealthAnalyticsSettings,
      );
    });

    unittest.test('method--getSubscription', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
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
          final resp = convert.json.encode(buildSubscription());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSubscription(
        arg_name,
        $fields: arg_$fields,
      );
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--getVirtualMachineThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
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
            buildVirtualMachineThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getVirtualMachineThreatDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkVirtualMachineThreatDetectionSettings(
        response as api.VirtualMachineThreatDetectionSettings,
      );
    });

    unittest.test('method--getWebSecurityScannerSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
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
          final resp = convert.json.encode(buildWebSecurityScannerSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getWebSecurityScannerSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkWebSecurityScannerSettings(
        response as api.WebSecurityScannerSettings,
      );
    });

    unittest.test('method--updateContainerThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
      final arg_request = buildContainerThreatDetectionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ContainerThreatDetectionSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkContainerThreatDetectionSettings(obj);

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
          final resp = convert.json.encode(
            buildContainerThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateContainerThreatDetectionSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkContainerThreatDetectionSettings(
        response as api.ContainerThreatDetectionSettings,
      );
    });

    unittest.test('method--updateEventThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
      final arg_request = buildEventThreatDetectionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventThreatDetectionSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventThreatDetectionSettings(obj);

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
          final resp = convert.json.encode(buildEventThreatDetectionSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateEventThreatDetectionSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkEventThreatDetectionSettings(
        response as api.EventThreatDetectionSettings,
      );
    });

    unittest.test('method--updateRapidVulnerabilityDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
      final arg_request = buildRapidVulnerabilityDetectionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RapidVulnerabilityDetectionSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRapidVulnerabilityDetectionSettings(obj);

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
          final resp = convert.json.encode(
            buildRapidVulnerabilityDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateRapidVulnerabilityDetectionSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkRapidVulnerabilityDetectionSettings(
        response as api.RapidVulnerabilityDetectionSettings,
      );
    });

    unittest.test('method--updateSecurityHealthAnalyticsSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
      final arg_request = buildSecurityHealthAnalyticsSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityHealthAnalyticsSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityHealthAnalyticsSettings(obj);

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
          final resp = convert.json.encode(
            buildSecurityHealthAnalyticsSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateSecurityHealthAnalyticsSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkSecurityHealthAnalyticsSettings(
        response as api.SecurityHealthAnalyticsSettings,
      );
    });

    unittest.test(
      'method--updateVirtualMachineThreatDetectionSettings',
      () async {
        final mock = HttpServerMock();
        final res = api.SecurityCommandCenterApi(mock).organizations;
        final arg_request = buildVirtualMachineThreatDetectionSettings();
        final arg_name = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.VirtualMachineThreatDetectionSettings.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkVirtualMachineThreatDetectionSettings(obj);

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
            final resp = convert.json.encode(
              buildVirtualMachineThreatDetectionSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.updateVirtualMachineThreatDetectionSettings(
          arg_request,
          arg_name,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkVirtualMachineThreatDetectionSettings(
          response as api.VirtualMachineThreatDetectionSettings,
        );
      },
    );

    unittest.test('method--updateWebSecurityScannerSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).organizations;
      final arg_request = buildWebSecurityScannerSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WebSecurityScannerSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWebSecurityScannerSettings(obj);

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
          final resp = convert.json.encode(buildWebSecurityScannerSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateWebSecurityScannerSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkWebSecurityScannerSettings(
        response as api.WebSecurityScannerSettings,
      );
    });
  });

  unittest.group(
    'resource-OrganizationsContainerThreatDetectionSettingsResource',
    () {
      unittest.test('method--calculate', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.containerThreatDetectionSettings;
        final arg_name = 'foo';
        final arg_showEligibleModulesOnly = true;
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
              queryMap['showEligibleModulesOnly']!.first,
              unittest.equals('$arg_showEligibleModulesOnly'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildContainerThreatDetectionSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.calculate(
          arg_name,
          showEligibleModulesOnly: arg_showEligibleModulesOnly,
          $fields: arg_$fields,
        );
        checkContainerThreatDetectionSettings(
          response as api.ContainerThreatDetectionSettings,
        );
      });
    },
  );

  unittest.group(
    'resource-OrganizationsEventThreatDetectionSettingsResource',
    () {
      unittest.test('method--calculate', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.eventThreatDetectionSettings;
        final arg_name = 'foo';
        final arg_showEligibleModulesOnly = true;
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
              queryMap['showEligibleModulesOnly']!.first,
              unittest.equals('$arg_showEligibleModulesOnly'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildEventThreatDetectionSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.calculate(
          arg_name,
          showEligibleModulesOnly: arg_showEligibleModulesOnly,
          $fields: arg_$fields,
        );
        checkEventThreatDetectionSettings(
          response as api.EventThreatDetectionSettings,
        );
      });
    },
  );

  unittest.group(
    'resource-OrganizationsRapidVulnerabilityDetectionSettingsResource',
    () {
      unittest.test('method--calculate', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.rapidVulnerabilityDetectionSettings;
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
              buildRapidVulnerabilityDetectionSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.calculate(arg_name, $fields: arg_$fields);
        checkRapidVulnerabilityDetectionSettings(
          response as api.RapidVulnerabilityDetectionSettings,
        );
      });
    },
  );

  unittest.group(
    'resource-OrganizationsSecurityHealthAnalyticsSettingsResource',
    () {
      unittest.test('method--calculate', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.securityHealthAnalyticsSettings;
        final arg_name = 'foo';
        final arg_showEligibleModulesOnly = true;
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
              queryMap['showEligibleModulesOnly']!.first,
              unittest.equals('$arg_showEligibleModulesOnly'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildSecurityHealthAnalyticsSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.calculate(
          arg_name,
          showEligibleModulesOnly: arg_showEligibleModulesOnly,
          $fields: arg_$fields,
        );
        checkSecurityHealthAnalyticsSettings(
          response as api.SecurityHealthAnalyticsSettings,
        );
      });
    },
  );

  unittest.group(
    'resource-OrganizationsVirtualMachineThreatDetectionSettingsResource',
    () {
      unittest.test('method--calculate', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).organizations.virtualMachineThreatDetectionSettings;
        final arg_name = 'foo';
        final arg_showEligibleModulesOnly = true;
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
              queryMap['showEligibleModulesOnly']!.first,
              unittest.equals('$arg_showEligibleModulesOnly'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildVirtualMachineThreatDetectionSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.calculate(
          arg_name,
          showEligibleModulesOnly: arg_showEligibleModulesOnly,
          $fields: arg_$fields,
        );
        checkVirtualMachineThreatDetectionSettings(
          response as api.VirtualMachineThreatDetectionSettings,
        );
      });
    },
  );

  unittest.group('resource-OrganizationsWebSecurityScannerSettingsResource', () {
    unittest.test('method--calculate', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).organizations.webSecurityScannerSettings;
      final arg_name = 'foo';
      final arg_showEligibleModulesOnly = true;
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
            queryMap['showEligibleModulesOnly']!.first,
            unittest.equals('$arg_showEligibleModulesOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWebSecurityScannerSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculate(
        arg_name,
        showEligibleModulesOnly: arg_showEligibleModulesOnly,
        $fields: arg_$fields,
      );
      checkWebSecurityScannerSettings(
        response as api.WebSecurityScannerSettings,
      );
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getContainerThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects;
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
            buildContainerThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getContainerThreatDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkContainerThreatDetectionSettings(
        response as api.ContainerThreatDetectionSettings,
      );
    });

    unittest.test('method--getEventThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects;
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
          final resp = convert.json.encode(buildEventThreatDetectionSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getEventThreatDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkEventThreatDetectionSettings(
        response as api.EventThreatDetectionSettings,
      );
    });

    unittest.test('method--getRapidVulnerabilityDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects;
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
            buildRapidVulnerabilityDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getRapidVulnerabilityDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkRapidVulnerabilityDetectionSettings(
        response as api.RapidVulnerabilityDetectionSettings,
      );
    });

    unittest.test('method--getSecurityCenterSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects;
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
          final resp = convert.json.encode(buildSecurityCenterSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSecurityCenterSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkSecurityCenterSettings(response as api.SecurityCenterSettings);
    });

    unittest.test('method--getSecurityHealthAnalyticsSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects;
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
            buildSecurityHealthAnalyticsSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSecurityHealthAnalyticsSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkSecurityHealthAnalyticsSettings(
        response as api.SecurityHealthAnalyticsSettings,
      );
    });

    unittest.test('method--getVirtualMachineThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects;
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
            buildVirtualMachineThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getVirtualMachineThreatDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkVirtualMachineThreatDetectionSettings(
        response as api.VirtualMachineThreatDetectionSettings,
      );
    });

    unittest.test('method--getWebSecurityScannerSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects;
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
          final resp = convert.json.encode(buildWebSecurityScannerSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getWebSecurityScannerSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkWebSecurityScannerSettings(
        response as api.WebSecurityScannerSettings,
      );
    });

    unittest.test('method--updateContainerThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects;
      final arg_request = buildContainerThreatDetectionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ContainerThreatDetectionSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkContainerThreatDetectionSettings(obj);

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
          final resp = convert.json.encode(
            buildContainerThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateContainerThreatDetectionSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkContainerThreatDetectionSettings(
        response as api.ContainerThreatDetectionSettings,
      );
    });

    unittest.test('method--updateEventThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects;
      final arg_request = buildEventThreatDetectionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventThreatDetectionSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventThreatDetectionSettings(obj);

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
          final resp = convert.json.encode(buildEventThreatDetectionSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateEventThreatDetectionSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkEventThreatDetectionSettings(
        response as api.EventThreatDetectionSettings,
      );
    });

    unittest.test('method--updateRapidVulnerabilityDetectionSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects;
      final arg_request = buildRapidVulnerabilityDetectionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RapidVulnerabilityDetectionSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRapidVulnerabilityDetectionSettings(obj);

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
          final resp = convert.json.encode(
            buildRapidVulnerabilityDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateRapidVulnerabilityDetectionSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkRapidVulnerabilityDetectionSettings(
        response as api.RapidVulnerabilityDetectionSettings,
      );
    });

    unittest.test('method--updateSecurityHealthAnalyticsSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects;
      final arg_request = buildSecurityHealthAnalyticsSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecurityHealthAnalyticsSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecurityHealthAnalyticsSettings(obj);

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
          final resp = convert.json.encode(
            buildSecurityHealthAnalyticsSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateSecurityHealthAnalyticsSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkSecurityHealthAnalyticsSettings(
        response as api.SecurityHealthAnalyticsSettings,
      );
    });

    unittest.test(
      'method--updateVirtualMachineThreatDetectionSettings',
      () async {
        final mock = HttpServerMock();
        final res = api.SecurityCommandCenterApi(mock).projects;
        final arg_request = buildVirtualMachineThreatDetectionSettings();
        final arg_name = 'foo';
        final arg_updateMask = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.VirtualMachineThreatDetectionSettings.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkVirtualMachineThreatDetectionSettings(obj);

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
            final resp = convert.json.encode(
              buildVirtualMachineThreatDetectionSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.updateVirtualMachineThreatDetectionSettings(
          arg_request,
          arg_name,
          updateMask: arg_updateMask,
          $fields: arg_$fields,
        );
        checkVirtualMachineThreatDetectionSettings(
          response as api.VirtualMachineThreatDetectionSettings,
        );
      },
    );

    unittest.test('method--updateWebSecurityScannerSettings', () async {
      final mock = HttpServerMock();
      final res = api.SecurityCommandCenterApi(mock).projects;
      final arg_request = buildWebSecurityScannerSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WebSecurityScannerSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWebSecurityScannerSettings(obj);

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
          final resp = convert.json.encode(buildWebSecurityScannerSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateWebSecurityScannerSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkWebSecurityScannerSettings(
        response as api.WebSecurityScannerSettings,
      );
    });
  });

  unittest.group('resource-ProjectsContainerThreatDetectionSettingsResource', () {
    unittest.test('method--calculate', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.containerThreatDetectionSettings;
      final arg_name = 'foo';
      final arg_showEligibleModulesOnly = true;
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
            queryMap['showEligibleModulesOnly']!.first,
            unittest.equals('$arg_showEligibleModulesOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildContainerThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculate(
        arg_name,
        showEligibleModulesOnly: arg_showEligibleModulesOnly,
        $fields: arg_$fields,
      );
      checkContainerThreatDetectionSettings(
        response as api.ContainerThreatDetectionSettings,
      );
    });
  });

  unittest.group('resource-ProjectsEventThreatDetectionSettingsResource', () {
    unittest.test('method--calculate', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.eventThreatDetectionSettings;
      final arg_name = 'foo';
      final arg_showEligibleModulesOnly = true;
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
            queryMap['showEligibleModulesOnly']!.first,
            unittest.equals('$arg_showEligibleModulesOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEventThreatDetectionSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculate(
        arg_name,
        showEligibleModulesOnly: arg_showEligibleModulesOnly,
        $fields: arg_$fields,
      );
      checkEventThreatDetectionSettings(
        response as api.EventThreatDetectionSettings,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsClustersResource', () {
    unittest.test('method--getContainerThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).projects.locations.clusters;
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
            buildContainerThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getContainerThreatDetectionSettings(
        arg_name,
        $fields: arg_$fields,
      );
      checkContainerThreatDetectionSettings(
        response as api.ContainerThreatDetectionSettings,
      );
    });

    unittest.test('method--updateContainerThreatDetectionSettings', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(mock).projects.locations.clusters;
      final arg_request = buildContainerThreatDetectionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ContainerThreatDetectionSettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkContainerThreatDetectionSettings(obj);

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
          final resp = convert.json.encode(
            buildContainerThreatDetectionSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateContainerThreatDetectionSettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkContainerThreatDetectionSettings(
        response as api.ContainerThreatDetectionSettings,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsClustersContainerThreatDetectionSettingsResource',
    () {
      unittest.test('method--calculate', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).projects.locations.clusters.containerThreatDetectionSettings;
        final arg_name = 'foo';
        final arg_showEligibleModulesOnly = true;
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
              queryMap['showEligibleModulesOnly']!.first,
              unittest.equals('$arg_showEligibleModulesOnly'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildContainerThreatDetectionSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.calculate(
          arg_name,
          showEligibleModulesOnly: arg_showEligibleModulesOnly,
          $fields: arg_$fields,
        );
        checkContainerThreatDetectionSettings(
          response as api.ContainerThreatDetectionSettings,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsRapidVulnerabilityDetectionSettingsResource',
    () {
      unittest.test('method--calculate', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).projects.rapidVulnerabilityDetectionSettings;
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
              buildRapidVulnerabilityDetectionSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.calculate(arg_name, $fields: arg_$fields);
        checkRapidVulnerabilityDetectionSettings(
          response as api.RapidVulnerabilityDetectionSettings,
        );
      });
    },
  );

  unittest.group('resource-ProjectsSecurityHealthAnalyticsSettingsResource', () {
    unittest.test('method--calculate', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.securityHealthAnalyticsSettings;
      final arg_name = 'foo';
      final arg_showEligibleModulesOnly = true;
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
            queryMap['showEligibleModulesOnly']!.first,
            unittest.equals('$arg_showEligibleModulesOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSecurityHealthAnalyticsSettings(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculate(
        arg_name,
        showEligibleModulesOnly: arg_showEligibleModulesOnly,
        $fields: arg_$fields,
      );
      checkSecurityHealthAnalyticsSettings(
        response as api.SecurityHealthAnalyticsSettings,
      );
    });
  });

  unittest.group(
    'resource-ProjectsVirtualMachineThreatDetectionSettingsResource',
    () {
      unittest.test('method--calculate', () async {
        final mock = HttpServerMock();
        final res =
            api.SecurityCommandCenterApi(
              mock,
            ).projects.virtualMachineThreatDetectionSettings;
        final arg_name = 'foo';
        final arg_showEligibleModulesOnly = true;
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
              queryMap['showEligibleModulesOnly']!.first,
              unittest.equals('$arg_showEligibleModulesOnly'),
            );
            unittest.expect(
              queryMap['fields']!.first,
              unittest.equals(arg_$fields),
            );

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildVirtualMachineThreatDetectionSettings(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.calculate(
          arg_name,
          showEligibleModulesOnly: arg_showEligibleModulesOnly,
          $fields: arg_$fields,
        );
        checkVirtualMachineThreatDetectionSettings(
          response as api.VirtualMachineThreatDetectionSettings,
        );
      });
    },
  );

  unittest.group('resource-ProjectsWebSecurityScannerSettingsResource', () {
    unittest.test('method--calculate', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityCommandCenterApi(
            mock,
          ).projects.webSecurityScannerSettings;
      final arg_name = 'foo';
      final arg_showEligibleModulesOnly = true;
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
            queryMap['showEligibleModulesOnly']!.first,
            unittest.equals('$arg_showEligibleModulesOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWebSecurityScannerSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.calculate(
        arg_name,
        showEligibleModulesOnly: arg_showEligibleModulesOnly,
        $fields: arg_$fields,
      );
      checkWebSecurityScannerSettings(
        response as api.WebSecurityScannerSettings,
      );
    });
  });
}
