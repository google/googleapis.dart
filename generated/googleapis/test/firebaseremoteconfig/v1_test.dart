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

import 'package:googleapis/firebaseremoteconfig/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterExperimentDescription = 0;
api.ExperimentDescription buildExperimentDescription() {
  final o = api.ExperimentDescription();
  buildCounterExperimentDescription++;
  if (buildCounterExperimentDescription < 3) {
    o.experimentId = 'foo';
    o.experimentStartTime = 'foo';
    o.timeToLiveMillis = 'foo';
    o.triggerEvent = 'foo';
    o.triggerTimeoutMillis = 'foo';
    o.variantId = 'foo';
  }
  buildCounterExperimentDescription--;
  return o;
}

void checkExperimentDescription(api.ExperimentDescription o) {
  buildCounterExperimentDescription++;
  if (buildCounterExperimentDescription < 3) {
    unittest.expect(
      o.experimentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.experimentStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeToLiveMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerEvent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerTimeoutMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variantId!,
      unittest.equals('foo'),
    );
  }
  buildCounterExperimentDescription--;
}

core.Map<core.String, core.String> buildUnnamed0() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed0(core.Map<core.String, core.String> o) {
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

core.int buildCounterFetchRemoteConfigRequest = 0;
api.FetchRemoteConfigRequest buildFetchRemoteConfigRequest() {
  final o = api.FetchRemoteConfigRequest();
  buildCounterFetchRemoteConfigRequest++;
  if (buildCounterFetchRemoteConfigRequest < 3) {
    o.analyticsUserProperties = buildUnnamed0();
    o.appBuild = 'foo';
    o.appId = 'foo';
    o.appInstanceId = 'foo';
    o.appInstanceIdToken = 'foo';
    o.appVersion = 'foo';
    o.countryCode = 'foo';
    o.languageCode = 'foo';
    o.packageName = 'foo';
    o.platformVersion = 'foo';
    o.sdkVersion = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterFetchRemoteConfigRequest--;
  return o;
}

void checkFetchRemoteConfigRequest(api.FetchRemoteConfigRequest o) {
  buildCounterFetchRemoteConfigRequest++;
  if (buildCounterFetchRemoteConfigRequest < 3) {
    checkUnnamed0(o.analyticsUserProperties!);
    unittest.expect(
      o.appBuild!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appInstanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appInstanceIdToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platformVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sdkVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchRemoteConfigRequest--;
}

core.Map<core.String, core.String> buildUnnamed1() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed1(core.Map<core.String, core.String> o) {
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

core.List<api.ExperimentDescription> buildUnnamed2() => [
      buildExperimentDescription(),
      buildExperimentDescription(),
    ];

void checkUnnamed2(core.List<api.ExperimentDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExperimentDescription(o[0]);
  checkExperimentDescription(o[1]);
}

core.Map<core.String, api.PersonalizationMetadata> buildUnnamed3() => {
      'x': buildPersonalizationMetadata(),
      'y': buildPersonalizationMetadata(),
    };

void checkUnnamed3(core.Map<core.String, api.PersonalizationMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonalizationMetadata(o['x']!);
  checkPersonalizationMetadata(o['y']!);
}

core.int buildCounterFetchRemoteConfigResponse = 0;
api.FetchRemoteConfigResponse buildFetchRemoteConfigResponse() {
  final o = api.FetchRemoteConfigResponse();
  buildCounterFetchRemoteConfigResponse++;
  if (buildCounterFetchRemoteConfigResponse < 3) {
    o.appName = 'foo';
    o.entries = buildUnnamed1();
    o.experimentDescriptions = buildUnnamed2();
    o.personalizationMetadata = buildUnnamed3();
    o.state = 'foo';
    o.templateVersion = 'foo';
  }
  buildCounterFetchRemoteConfigResponse--;
  return o;
}

void checkFetchRemoteConfigResponse(api.FetchRemoteConfigResponse o) {
  buildCounterFetchRemoteConfigResponse++;
  if (buildCounterFetchRemoteConfigResponse < 3) {
    unittest.expect(
      o.appName!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.entries!);
    checkUnnamed2(o.experimentDescriptions!);
    checkUnnamed3(o.personalizationMetadata!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.templateVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterFetchRemoteConfigResponse--;
}

core.List<api.Version> buildUnnamed4() => [
      buildVersion(),
      buildVersion(),
    ];

void checkUnnamed4(core.List<api.Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVersion(o[0]);
  checkVersion(o[1]);
}

core.int buildCounterListVersionsResponse = 0;
api.ListVersionsResponse buildListVersionsResponse() {
  final o = api.ListVersionsResponse();
  buildCounterListVersionsResponse++;
  if (buildCounterListVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.versions = buildUnnamed4();
  }
  buildCounterListVersionsResponse--;
  return o;
}

void checkListVersionsResponse(api.ListVersionsResponse o) {
  buildCounterListVersionsResponse++;
  if (buildCounterListVersionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.versions!);
  }
  buildCounterListVersionsResponse--;
}

core.int buildCounterPersonalizationMetadata = 0;
api.PersonalizationMetadata buildPersonalizationMetadata() {
  final o = api.PersonalizationMetadata();
  buildCounterPersonalizationMetadata++;
  if (buildCounterPersonalizationMetadata < 3) {
    o.armIndex = 42;
    o.choiceId = 'foo';
    o.group = 'foo';
    o.personalizationId = 'foo';
  }
  buildCounterPersonalizationMetadata--;
  return o;
}

void checkPersonalizationMetadata(api.PersonalizationMetadata o) {
  buildCounterPersonalizationMetadata++;
  if (buildCounterPersonalizationMetadata < 3) {
    unittest.expect(
      o.armIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.choiceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.group!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.personalizationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPersonalizationMetadata--;
}

core.int buildCounterPersonalizationValue = 0;
api.PersonalizationValue buildPersonalizationValue() {
  final o = api.PersonalizationValue();
  buildCounterPersonalizationValue++;
  if (buildCounterPersonalizationValue < 3) {
    o.personalizationId = 'foo';
  }
  buildCounterPersonalizationValue--;
  return o;
}

void checkPersonalizationValue(api.PersonalizationValue o) {
  buildCounterPersonalizationValue++;
  if (buildCounterPersonalizationValue < 3) {
    unittest.expect(
      o.personalizationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPersonalizationValue--;
}

core.List<api.RemoteConfigCondition> buildUnnamed5() => [
      buildRemoteConfigCondition(),
      buildRemoteConfigCondition(),
    ];

void checkUnnamed5(core.List<api.RemoteConfigCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemoteConfigCondition(o[0]);
  checkRemoteConfigCondition(o[1]);
}

core.Map<core.String, api.RemoteConfigParameterGroup> buildUnnamed6() => {
      'x': buildRemoteConfigParameterGroup(),
      'y': buildRemoteConfigParameterGroup(),
    };

void checkUnnamed6(core.Map<core.String, api.RemoteConfigParameterGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemoteConfigParameterGroup(o['x']!);
  checkRemoteConfigParameterGroup(o['y']!);
}

core.Map<core.String, api.RemoteConfigParameter> buildUnnamed7() => {
      'x': buildRemoteConfigParameter(),
      'y': buildRemoteConfigParameter(),
    };

void checkUnnamed7(core.Map<core.String, api.RemoteConfigParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemoteConfigParameter(o['x']!);
  checkRemoteConfigParameter(o['y']!);
}

core.int buildCounterRemoteConfig = 0;
api.RemoteConfig buildRemoteConfig() {
  final o = api.RemoteConfig();
  buildCounterRemoteConfig++;
  if (buildCounterRemoteConfig < 3) {
    o.conditions = buildUnnamed5();
    o.parameterGroups = buildUnnamed6();
    o.parameters = buildUnnamed7();
    o.version = buildVersion();
  }
  buildCounterRemoteConfig--;
  return o;
}

void checkRemoteConfig(api.RemoteConfig o) {
  buildCounterRemoteConfig++;
  if (buildCounterRemoteConfig < 3) {
    checkUnnamed5(o.conditions!);
    checkUnnamed6(o.parameterGroups!);
    checkUnnamed7(o.parameters!);
    checkVersion(o.version!);
  }
  buildCounterRemoteConfig--;
}

core.int buildCounterRemoteConfigCondition = 0;
api.RemoteConfigCondition buildRemoteConfigCondition() {
  final o = api.RemoteConfigCondition();
  buildCounterRemoteConfigCondition++;
  if (buildCounterRemoteConfigCondition < 3) {
    o.expression = 'foo';
    o.name = 'foo';
    o.tagColor = 'foo';
  }
  buildCounterRemoteConfigCondition--;
  return o;
}

void checkRemoteConfigCondition(api.RemoteConfigCondition o) {
  buildCounterRemoteConfigCondition++;
  if (buildCounterRemoteConfigCondition < 3) {
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tagColor!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoteConfigCondition--;
}

core.Map<core.String, api.RemoteConfigParameterValue> buildUnnamed8() => {
      'x': buildRemoteConfigParameterValue(),
      'y': buildRemoteConfigParameterValue(),
    };

void checkUnnamed8(core.Map<core.String, api.RemoteConfigParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemoteConfigParameterValue(o['x']!);
  checkRemoteConfigParameterValue(o['y']!);
}

core.int buildCounterRemoteConfigParameter = 0;
api.RemoteConfigParameter buildRemoteConfigParameter() {
  final o = api.RemoteConfigParameter();
  buildCounterRemoteConfigParameter++;
  if (buildCounterRemoteConfigParameter < 3) {
    o.conditionalValues = buildUnnamed8();
    o.defaultValue = buildRemoteConfigParameterValue();
    o.description = 'foo';
    o.valueType = 'foo';
  }
  buildCounterRemoteConfigParameter--;
  return o;
}

void checkRemoteConfigParameter(api.RemoteConfigParameter o) {
  buildCounterRemoteConfigParameter++;
  if (buildCounterRemoteConfigParameter < 3) {
    checkUnnamed8(o.conditionalValues!);
    checkRemoteConfigParameterValue(o.defaultValue!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoteConfigParameter--;
}

core.Map<core.String, api.RemoteConfigParameter> buildUnnamed9() => {
      'x': buildRemoteConfigParameter(),
      'y': buildRemoteConfigParameter(),
    };

void checkUnnamed9(core.Map<core.String, api.RemoteConfigParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemoteConfigParameter(o['x']!);
  checkRemoteConfigParameter(o['y']!);
}

core.int buildCounterRemoteConfigParameterGroup = 0;
api.RemoteConfigParameterGroup buildRemoteConfigParameterGroup() {
  final o = api.RemoteConfigParameterGroup();
  buildCounterRemoteConfigParameterGroup++;
  if (buildCounterRemoteConfigParameterGroup < 3) {
    o.description = 'foo';
    o.parameters = buildUnnamed9();
  }
  buildCounterRemoteConfigParameterGroup--;
  return o;
}

void checkRemoteConfigParameterGroup(api.RemoteConfigParameterGroup o) {
  buildCounterRemoteConfigParameterGroup++;
  if (buildCounterRemoteConfigParameterGroup < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.parameters!);
  }
  buildCounterRemoteConfigParameterGroup--;
}

core.int buildCounterRemoteConfigParameterValue = 0;
api.RemoteConfigParameterValue buildRemoteConfigParameterValue() {
  final o = api.RemoteConfigParameterValue();
  buildCounterRemoteConfigParameterValue++;
  if (buildCounterRemoteConfigParameterValue < 3) {
    o.personalizationValue = buildPersonalizationValue();
    o.useInAppDefault = true;
    o.value = 'foo';
  }
  buildCounterRemoteConfigParameterValue--;
  return o;
}

void checkRemoteConfigParameterValue(api.RemoteConfigParameterValue o) {
  buildCounterRemoteConfigParameterValue++;
  if (buildCounterRemoteConfigParameterValue < 3) {
    checkPersonalizationValue(o.personalizationValue!);
    unittest.expect(o.useInAppDefault!, unittest.isTrue);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoteConfigParameterValue--;
}

core.int buildCounterRemoteConfigUser = 0;
api.RemoteConfigUser buildRemoteConfigUser() {
  final o = api.RemoteConfigUser();
  buildCounterRemoteConfigUser++;
  if (buildCounterRemoteConfigUser < 3) {
    o.email = 'foo';
    o.imageUrl = 'foo';
    o.name = 'foo';
  }
  buildCounterRemoteConfigUser--;
  return o;
}

void checkRemoteConfigUser(api.RemoteConfigUser o) {
  buildCounterRemoteConfigUser++;
  if (buildCounterRemoteConfigUser < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoteConfigUser--;
}

core.int buildCounterRollbackRemoteConfigRequest = 0;
api.RollbackRemoteConfigRequest buildRollbackRemoteConfigRequest() {
  final o = api.RollbackRemoteConfigRequest();
  buildCounterRollbackRemoteConfigRequest++;
  if (buildCounterRollbackRemoteConfigRequest < 3) {
    o.versionNumber = 'foo';
  }
  buildCounterRollbackRemoteConfigRequest--;
  return o;
}

void checkRollbackRemoteConfigRequest(api.RollbackRemoteConfigRequest o) {
  buildCounterRollbackRemoteConfigRequest++;
  if (buildCounterRollbackRemoteConfigRequest < 3) {
    unittest.expect(
      o.versionNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterRollbackRemoteConfigRequest--;
}

core.int buildCounterStreamFetchInvalidationsRequest = 0;
api.StreamFetchInvalidationsRequest buildStreamFetchInvalidationsRequest() {
  final o = api.StreamFetchInvalidationsRequest();
  buildCounterStreamFetchInvalidationsRequest++;
  if (buildCounterStreamFetchInvalidationsRequest < 3) {
    o.lastKnownVersionNumber = 'foo';
  }
  buildCounterStreamFetchInvalidationsRequest--;
  return o;
}

void checkStreamFetchInvalidationsRequest(
    api.StreamFetchInvalidationsRequest o) {
  buildCounterStreamFetchInvalidationsRequest++;
  if (buildCounterStreamFetchInvalidationsRequest < 3) {
    unittest.expect(
      o.lastKnownVersionNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamFetchInvalidationsRequest--;
}

core.int buildCounterStreamFetchInvalidationsResponse = 0;
api.StreamFetchInvalidationsResponse buildStreamFetchInvalidationsResponse() {
  final o = api.StreamFetchInvalidationsResponse();
  buildCounterStreamFetchInvalidationsResponse++;
  if (buildCounterStreamFetchInvalidationsResponse < 3) {
    o.latestTemplateVersionNumber = 'foo';
  }
  buildCounterStreamFetchInvalidationsResponse--;
  return o;
}

void checkStreamFetchInvalidationsResponse(
    api.StreamFetchInvalidationsResponse o) {
  buildCounterStreamFetchInvalidationsResponse++;
  if (buildCounterStreamFetchInvalidationsResponse < 3) {
    unittest.expect(
      o.latestTemplateVersionNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamFetchInvalidationsResponse--;
}

core.int buildCounterVersion = 0;
api.Version buildVersion() {
  final o = api.Version();
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    o.description = 'foo';
    o.isLegacy = true;
    o.rollbackSource = 'foo';
    o.updateOrigin = 'foo';
    o.updateTime = 'foo';
    o.updateType = 'foo';
    o.updateUser = buildRemoteConfigUser();
    o.versionNumber = 'foo';
  }
  buildCounterVersion--;
  return o;
}

void checkVersion(api.Version o) {
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isLegacy!, unittest.isTrue);
    unittest.expect(
      o.rollbackSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateOrigin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateType!,
      unittest.equals('foo'),
    );
    checkRemoteConfigUser(o.updateUser!);
    unittest.expect(
      o.versionNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterVersion--;
}

void main() {
  unittest.group('obj-schema-ExperimentDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExperimentDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExperimentDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExperimentDescription(od);
    });
  });

  unittest.group('obj-schema-FetchRemoteConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchRemoteConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchRemoteConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchRemoteConfigRequest(od);
    });
  });

  unittest.group('obj-schema-FetchRemoteConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchRemoteConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchRemoteConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchRemoteConfigResponse(od);
    });
  });

  unittest.group('obj-schema-ListVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-PersonalizationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersonalizationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersonalizationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersonalizationMetadata(od);
    });
  });

  unittest.group('obj-schema-PersonalizationValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersonalizationValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersonalizationValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersonalizationValue(od);
    });
  });

  unittest.group('obj-schema-RemoteConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoteConfig(od);
    });
  });

  unittest.group('obj-schema-RemoteConfigCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteConfigCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteConfigCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoteConfigCondition(od);
    });
  });

  unittest.group('obj-schema-RemoteConfigParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteConfigParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteConfigParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoteConfigParameter(od);
    });
  });

  unittest.group('obj-schema-RemoteConfigParameterGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteConfigParameterGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteConfigParameterGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoteConfigParameterGroup(od);
    });
  });

  unittest.group('obj-schema-RemoteConfigParameterValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteConfigParameterValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteConfigParameterValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoteConfigParameterValue(od);
    });
  });

  unittest.group('obj-schema-RemoteConfigUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteConfigUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteConfigUser.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoteConfigUser(od);
    });
  });

  unittest.group('obj-schema-RollbackRemoteConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackRemoteConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackRemoteConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRollbackRemoteConfigRequest(od);
    });
  });

  unittest.group('obj-schema-StreamFetchInvalidationsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamFetchInvalidationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamFetchInvalidationsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamFetchInvalidationsRequest(od);
    });
  });

  unittest.group('obj-schema-StreamFetchInvalidationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamFetchInvalidationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamFetchInvalidationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamFetchInvalidationsResponse(od);
    });
  });

  unittest.group('obj-schema-Version', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Version.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVersion(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getRemoteConfig', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRemoteConfigApi(mock).projects;
      final arg_project = 'foo';
      final arg_versionNumber = 'foo';
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
          unittest.equals('v1/'),
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
          queryMap['versionNumber']!.first,
          unittest.equals(arg_versionNumber),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRemoteConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getRemoteConfig(arg_project,
          versionNumber: arg_versionNumber, $fields: arg_$fields);
      checkRemoteConfig(response as api.RemoteConfig);
    });

    unittest.test('method--updateRemoteConfig', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRemoteConfigApi(mock).projects;
      final arg_request = buildRemoteConfig();
      final arg_project = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoteConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoteConfig(obj);

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
          unittest.equals('v1/'),
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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRemoteConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateRemoteConfig(arg_request, arg_project,
          validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkRemoteConfig(response as api.RemoteConfig);
    });
  });

  unittest.group('resource-ProjectsNamespacesResource', () {
    unittest.test('method--fetch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRemoteConfigApi(mock).projects.namespaces;
      final arg_request = buildFetchRemoteConfigRequest();
      final arg_project = 'foo';
      final arg_namespace = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FetchRemoteConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchRemoteConfigRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/namespaces/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/namespaces/'),
        );
        pathOffset += 12;
        index = path.indexOf(':fetch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_namespace'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals(':fetch'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildFetchRemoteConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetch(arg_request, arg_project, arg_namespace,
          $fields: arg_$fields);
      checkFetchRemoteConfigResponse(response as api.FetchRemoteConfigResponse);
    });

    unittest.test('method--streamFetchInvalidations', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRemoteConfigApi(mock).projects.namespaces;
      final arg_request = buildStreamFetchInvalidationsRequest();
      final arg_project = 'foo';
      final arg_namespace = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StreamFetchInvalidationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStreamFetchInvalidationsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/namespaces/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_project'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/namespaces/'),
        );
        pathOffset += 12;
        index = path.indexOf(':streamFetchInvalidations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_namespace'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals(':streamFetchInvalidations'),
        );
        pathOffset += 25;

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
        final resp =
            convert.json.encode(buildStreamFetchInvalidationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.streamFetchInvalidations(
          arg_request, arg_project, arg_namespace,
          $fields: arg_$fields);
      checkStreamFetchInvalidationsResponse(
          response as api.StreamFetchInvalidationsResponse);
    });
  });

  unittest.group('resource-ProjectsRemoteConfigResource', () {
    unittest.test('method--listVersions', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRemoteConfigApi(mock).projects.remoteConfig;
      final arg_project = 'foo';
      final arg_endTime = 'foo';
      final arg_endVersionNumber = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
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
          unittest.equals('v1/'),
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
          queryMap['endTime']!.first,
          unittest.equals(arg_endTime),
        );
        unittest.expect(
          queryMap['endVersionNumber']!.first,
          unittest.equals(arg_endVersionNumber),
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
          queryMap['startTime']!.first,
          unittest.equals(arg_startTime),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listVersions(arg_project,
          endTime: arg_endTime,
          endVersionNumber: arg_endVersionNumber,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          startTime: arg_startTime,
          $fields: arg_$fields);
      checkListVersionsResponse(response as api.ListVersionsResponse);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRemoteConfigApi(mock).projects.remoteConfig;
      final arg_request = buildRollbackRemoteConfigRequest();
      final arg_project = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RollbackRemoteConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRollbackRemoteConfigRequest(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildRemoteConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.rollback(arg_request, arg_project, $fields: arg_$fields);
      checkRemoteConfig(response as api.RemoteConfig);
    });
  });
}
