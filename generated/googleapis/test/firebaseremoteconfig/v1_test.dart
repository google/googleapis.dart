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

import 'package:googleapis/firebaseremoteconfig/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Condition> buildUnnamed0() => [
      buildCondition(),
      buildCondition(),
    ];

void checkUnnamed0(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.int buildCounterAndCondition = 0;
api.AndCondition buildAndCondition() {
  final o = api.AndCondition();
  buildCounterAndCondition++;
  if (buildCounterAndCondition < 3) {
    o.conditions = buildUnnamed0();
  }
  buildCounterAndCondition--;
  return o;
}

void checkAndCondition(api.AndCondition o) {
  buildCounterAndCondition++;
  if (buildCounterAndCondition < 3) {
    checkUnnamed0(o.conditions!);
  }
  buildCounterAndCondition--;
}

core.int buildCounterCondition = 0;
api.Condition buildCondition() {
  final o = api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.andCondition = buildAndCondition();
    o.orCondition = buildOrCondition();
    o.percent = buildPercentCondition();
  }
  buildCounterCondition--;
  return o;
}

void checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    checkAndCondition(o.andCondition!);
    checkOrCondition(o.orCondition!);
    checkPercentCondition(o.percent!);
  }
  buildCounterCondition--;
}

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

core.int buildCounterFetchRemoteConfigRequest = 0;
api.FetchRemoteConfigRequest buildFetchRemoteConfigRequest() {
  final o = api.FetchRemoteConfigRequest();
  buildCounterFetchRemoteConfigRequest++;
  if (buildCounterFetchRemoteConfigRequest < 3) {
    o.analyticsUserProperties = buildUnnamed1();
    o.appBuild = 'foo';
    o.appId = 'foo';
    o.appInstanceId = 'foo';
    o.appInstanceIdToken = 'foo';
    o.appVersion = 'foo';
    o.countryCode = 'foo';
    o.firstOpenTime = 'foo';
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
    checkUnnamed1(o.analyticsUserProperties!);
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
      o.firstOpenTime!,
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

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
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

core.List<api.ExperimentDescription> buildUnnamed3() => [
      buildExperimentDescription(),
      buildExperimentDescription(),
    ];

void checkUnnamed3(core.List<api.ExperimentDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExperimentDescription(o[0]);
  checkExperimentDescription(o[1]);
}

core.Map<core.String, api.PersonalizationMetadata> buildUnnamed4() => {
      'x': buildPersonalizationMetadata(),
      'y': buildPersonalizationMetadata(),
    };

void checkUnnamed4(core.Map<core.String, api.PersonalizationMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonalizationMetadata(o['x']!);
  checkPersonalizationMetadata(o['y']!);
}

core.List<api.RolloutMetadata> buildUnnamed5() => [
      buildRolloutMetadata(),
      buildRolloutMetadata(),
    ];

void checkUnnamed5(core.List<api.RolloutMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRolloutMetadata(o[0]);
  checkRolloutMetadata(o[1]);
}

core.int buildCounterFetchRemoteConfigResponse = 0;
api.FetchRemoteConfigResponse buildFetchRemoteConfigResponse() {
  final o = api.FetchRemoteConfigResponse();
  buildCounterFetchRemoteConfigResponse++;
  if (buildCounterFetchRemoteConfigResponse < 3) {
    o.appName = 'foo';
    o.entries = buildUnnamed2();
    o.experimentDescriptions = buildUnnamed3();
    o.personalizationMetadata = buildUnnamed4();
    o.rolloutMetadata = buildUnnamed5();
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
    checkUnnamed2(o.entries!);
    checkUnnamed3(o.experimentDescriptions!);
    checkUnnamed4(o.personalizationMetadata!);
    checkUnnamed5(o.rolloutMetadata!);
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

core.List<api.Version> buildUnnamed6() => [
      buildVersion(),
      buildVersion(),
    ];

void checkUnnamed6(core.List<api.Version> o) {
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
    o.versions = buildUnnamed6();
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
    checkUnnamed6(o.versions!);
  }
  buildCounterListVersionsResponse--;
}

core.int buildCounterMicroPercentRange = 0;
api.MicroPercentRange buildMicroPercentRange() {
  final o = api.MicroPercentRange();
  buildCounterMicroPercentRange++;
  if (buildCounterMicroPercentRange < 3) {
    o.microPercentLowerBound = 42;
    o.microPercentUpperBound = 42;
  }
  buildCounterMicroPercentRange--;
  return o;
}

void checkMicroPercentRange(api.MicroPercentRange o) {
  buildCounterMicroPercentRange++;
  if (buildCounterMicroPercentRange < 3) {
    unittest.expect(
      o.microPercentLowerBound!,
      unittest.equals(42),
    );
    unittest.expect(
      o.microPercentUpperBound!,
      unittest.equals(42),
    );
  }
  buildCounterMicroPercentRange--;
}

core.List<api.Condition> buildUnnamed7() => [
      buildCondition(),
      buildCondition(),
    ];

void checkUnnamed7(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

core.int buildCounterOrCondition = 0;
api.OrCondition buildOrCondition() {
  final o = api.OrCondition();
  buildCounterOrCondition++;
  if (buildCounterOrCondition < 3) {
    o.conditions = buildUnnamed7();
  }
  buildCounterOrCondition--;
  return o;
}

void checkOrCondition(api.OrCondition o) {
  buildCounterOrCondition++;
  if (buildCounterOrCondition < 3) {
    checkUnnamed7(o.conditions!);
  }
  buildCounterOrCondition--;
}

core.int buildCounterPercentCondition = 0;
api.PercentCondition buildPercentCondition() {
  final o = api.PercentCondition();
  buildCounterPercentCondition++;
  if (buildCounterPercentCondition < 3) {
    o.microPercent = 42;
    o.microPercentRange = buildMicroPercentRange();
    o.percentOperator = 'foo';
    o.seed = 'foo';
  }
  buildCounterPercentCondition--;
  return o;
}

void checkPercentCondition(api.PercentCondition o) {
  buildCounterPercentCondition++;
  if (buildCounterPercentCondition < 3) {
    unittest.expect(
      o.microPercent!,
      unittest.equals(42),
    );
    checkMicroPercentRange(o.microPercentRange!);
    unittest.expect(
      o.percentOperator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.seed!,
      unittest.equals('foo'),
    );
  }
  buildCounterPercentCondition--;
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

core.List<api.RemoteConfigCondition> buildUnnamed8() => [
      buildRemoteConfigCondition(),
      buildRemoteConfigCondition(),
    ];

void checkUnnamed8(core.List<api.RemoteConfigCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemoteConfigCondition(o[0]);
  checkRemoteConfigCondition(o[1]);
}

core.Map<core.String, api.RemoteConfigParameterGroup> buildUnnamed9() => {
      'x': buildRemoteConfigParameterGroup(),
      'y': buildRemoteConfigParameterGroup(),
    };

void checkUnnamed9(core.Map<core.String, api.RemoteConfigParameterGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemoteConfigParameterGroup(o['x']!);
  checkRemoteConfigParameterGroup(o['y']!);
}

core.Map<core.String, api.RemoteConfigParameter> buildUnnamed10() => {
      'x': buildRemoteConfigParameter(),
      'y': buildRemoteConfigParameter(),
    };

void checkUnnamed10(core.Map<core.String, api.RemoteConfigParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemoteConfigParameter(o['x']!);
  checkRemoteConfigParameter(o['y']!);
}

core.int buildCounterRemoteConfig = 0;
api.RemoteConfig buildRemoteConfig() {
  final o = api.RemoteConfig();
  buildCounterRemoteConfig++;
  if (buildCounterRemoteConfig < 3) {
    o.conditions = buildUnnamed8();
    o.parameterGroups = buildUnnamed9();
    o.parameters = buildUnnamed10();
    o.version = buildVersion();
  }
  buildCounterRemoteConfig--;
  return o;
}

void checkRemoteConfig(api.RemoteConfig o) {
  buildCounterRemoteConfig++;
  if (buildCounterRemoteConfig < 3) {
    checkUnnamed8(o.conditions!);
    checkUnnamed9(o.parameterGroups!);
    checkUnnamed10(o.parameters!);
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

core.Map<core.String, api.RemoteConfigParameterValue> buildUnnamed11() => {
      'x': buildRemoteConfigParameterValue(),
      'y': buildRemoteConfigParameterValue(),
    };

void checkUnnamed11(core.Map<core.String, api.RemoteConfigParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemoteConfigParameterValue(o['x']!);
  checkRemoteConfigParameterValue(o['y']!);
}

core.int buildCounterRemoteConfigParameter = 0;
api.RemoteConfigParameter buildRemoteConfigParameter() {
  final o = api.RemoteConfigParameter();
  buildCounterRemoteConfigParameter++;
  if (buildCounterRemoteConfigParameter < 3) {
    o.conditionalValues = buildUnnamed11();
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
    checkUnnamed11(o.conditionalValues!);
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

core.Map<core.String, api.RemoteConfigParameter> buildUnnamed12() => {
      'x': buildRemoteConfigParameter(),
      'y': buildRemoteConfigParameter(),
    };

void checkUnnamed12(core.Map<core.String, api.RemoteConfigParameter> o) {
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
    o.parameters = buildUnnamed12();
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
    checkUnnamed12(o.parameters!);
  }
  buildCounterRemoteConfigParameterGroup--;
}

core.int buildCounterRemoteConfigParameterValue = 0;
api.RemoteConfigParameterValue buildRemoteConfigParameterValue() {
  final o = api.RemoteConfigParameterValue();
  buildCounterRemoteConfigParameterValue++;
  if (buildCounterRemoteConfigParameterValue < 3) {
    o.personalizationValue = buildPersonalizationValue();
    o.rolloutValue = buildRolloutValue();
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
    checkRolloutValue(o.rolloutValue!);
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

api.Response buildResponse() {
  return {
    'a': {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    },
    'b': {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    },
  };
}

void checkResponse(api.Response o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['a']!) as core.Map;
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
  var casted2 = (o['b']!) as core.Map;
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

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterRolloutMetadata = 0;
api.RolloutMetadata buildRolloutMetadata() {
  final o = api.RolloutMetadata();
  buildCounterRolloutMetadata++;
  if (buildCounterRolloutMetadata < 3) {
    o.affectedParameterKeys = buildUnnamed13();
    o.rolloutId = 'foo';
    o.variantId = 'foo';
  }
  buildCounterRolloutMetadata--;
  return o;
}

void checkRolloutMetadata(api.RolloutMetadata o) {
  buildCounterRolloutMetadata++;
  if (buildCounterRolloutMetadata < 3) {
    checkUnnamed13(o.affectedParameterKeys!);
    unittest.expect(
      o.rolloutId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variantId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRolloutMetadata--;
}

core.int buildCounterRolloutValue = 0;
api.RolloutValue buildRolloutValue() {
  final o = api.RolloutValue();
  buildCounterRolloutValue++;
  if (buildCounterRolloutValue < 3) {
    o.percent = 42.0;
    o.rolloutId = 'foo';
    o.value = 'foo';
  }
  buildCounterRolloutValue--;
  return o;
}

void checkRolloutValue(api.RolloutValue o) {
  buildCounterRolloutValue++;
  if (buildCounterRolloutValue < 3) {
    unittest.expect(
      o.percent!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.rolloutId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterRolloutValue--;
}

core.List<api.ServerRemoteConfigCondition> buildUnnamed14() => [
      buildServerRemoteConfigCondition(),
      buildServerRemoteConfigCondition(),
    ];

void checkUnnamed14(core.List<api.ServerRemoteConfigCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServerRemoteConfigCondition(o[0]);
  checkServerRemoteConfigCondition(o[1]);
}

core.Map<core.String, api.ServerRemoteConfigParameter> buildUnnamed15() => {
      'x': buildServerRemoteConfigParameter(),
      'y': buildServerRemoteConfigParameter(),
    };

void checkUnnamed15(core.Map<core.String, api.ServerRemoteConfigParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServerRemoteConfigParameter(o['x']!);
  checkServerRemoteConfigParameter(o['y']!);
}

core.int buildCounterServerRemoteConfig = 0;
api.ServerRemoteConfig buildServerRemoteConfig() {
  final o = api.ServerRemoteConfig();
  buildCounterServerRemoteConfig++;
  if (buildCounterServerRemoteConfig < 3) {
    o.conditions = buildUnnamed14();
    o.parameters = buildUnnamed15();
    o.version = buildVersion();
  }
  buildCounterServerRemoteConfig--;
  return o;
}

void checkServerRemoteConfig(api.ServerRemoteConfig o) {
  buildCounterServerRemoteConfig++;
  if (buildCounterServerRemoteConfig < 3) {
    checkUnnamed14(o.conditions!);
    checkUnnamed15(o.parameters!);
    checkVersion(o.version!);
  }
  buildCounterServerRemoteConfig--;
}

core.int buildCounterServerRemoteConfigCondition = 0;
api.ServerRemoteConfigCondition buildServerRemoteConfigCondition() {
  final o = api.ServerRemoteConfigCondition();
  buildCounterServerRemoteConfigCondition++;
  if (buildCounterServerRemoteConfigCondition < 3) {
    o.condition = buildCondition();
    o.name = 'foo';
  }
  buildCounterServerRemoteConfigCondition--;
  return o;
}

void checkServerRemoteConfigCondition(api.ServerRemoteConfigCondition o) {
  buildCounterServerRemoteConfigCondition++;
  if (buildCounterServerRemoteConfigCondition < 3) {
    checkCondition(o.condition!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterServerRemoteConfigCondition--;
}

core.Map<core.String, api.ServerRemoteConfigParameterValue> buildUnnamed16() =>
    {
      'x': buildServerRemoteConfigParameterValue(),
      'y': buildServerRemoteConfigParameterValue(),
    };

void checkUnnamed16(
    core.Map<core.String, api.ServerRemoteConfigParameterValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServerRemoteConfigParameterValue(o['x']!);
  checkServerRemoteConfigParameterValue(o['y']!);
}

core.int buildCounterServerRemoteConfigParameter = 0;
api.ServerRemoteConfigParameter buildServerRemoteConfigParameter() {
  final o = api.ServerRemoteConfigParameter();
  buildCounterServerRemoteConfigParameter++;
  if (buildCounterServerRemoteConfigParameter < 3) {
    o.conditionalValues = buildUnnamed16();
    o.defaultValue = buildServerRemoteConfigParameterValue();
  }
  buildCounterServerRemoteConfigParameter--;
  return o;
}

void checkServerRemoteConfigParameter(api.ServerRemoteConfigParameter o) {
  buildCounterServerRemoteConfigParameter++;
  if (buildCounterServerRemoteConfigParameter < 3) {
    checkUnnamed16(o.conditionalValues!);
    checkServerRemoteConfigParameterValue(o.defaultValue!);
  }
  buildCounterServerRemoteConfigParameter--;
}

core.int buildCounterServerRemoteConfigParameterValue = 0;
api.ServerRemoteConfigParameterValue buildServerRemoteConfigParameterValue() {
  final o = api.ServerRemoteConfigParameterValue();
  buildCounterServerRemoteConfigParameterValue++;
  if (buildCounterServerRemoteConfigParameterValue < 3) {
    o.useInAppDefault = true;
    o.value = 'foo';
  }
  buildCounterServerRemoteConfigParameterValue--;
  return o;
}

void checkServerRemoteConfigParameterValue(
    api.ServerRemoteConfigParameterValue o) {
  buildCounterServerRemoteConfigParameterValue++;
  if (buildCounterServerRemoteConfigParameterValue < 3) {
    unittest.expect(o.useInAppDefault!, unittest.isTrue);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterServerRemoteConfigParameterValue--;
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
  unittest.group('obj-schema-AndCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndCondition(od);
    });
  });

  unittest.group('obj-schema-Condition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Condition.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCondition(od);
    });
  });

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

  unittest.group('obj-schema-MicroPercentRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMicroPercentRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MicroPercentRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMicroPercentRange(od);
    });
  });

  unittest.group('obj-schema-OrCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrCondition(od);
    });
  });

  unittest.group('obj-schema-PercentCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPercentCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PercentCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPercentCondition(od);
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

  unittest.group('obj-schema-Response', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = oJson as core.Map<core.String, core.dynamic>;
      checkResponse(od);
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

  unittest.group('obj-schema-RolloutMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRolloutMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RolloutMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRolloutMetadata(od);
    });
  });

  unittest.group('obj-schema-RolloutValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRolloutValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RolloutValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRolloutValue(od);
    });
  });

  unittest.group('obj-schema-ServerRemoteConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServerRemoteConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServerRemoteConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServerRemoteConfig(od);
    });
  });

  unittest.group('obj-schema-ServerRemoteConfigCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServerRemoteConfigCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServerRemoteConfigCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServerRemoteConfigCondition(od);
    });
  });

  unittest.group('obj-schema-ServerRemoteConfigParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServerRemoteConfigParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServerRemoteConfigParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServerRemoteConfigParameter(od);
    });
  });

  unittest.group('obj-schema-ServerRemoteConfigParameterValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServerRemoteConfigParameterValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServerRemoteConfigParameterValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServerRemoteConfigParameterValue(od);
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

    unittest.test('method--getServerRemoteConfig', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRemoteConfigApi(mock).projects.namespaces;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServerRemoteConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getServerRemoteConfig(arg_name, $fields: arg_$fields);
      checkServerRemoteConfig(response as api.ServerRemoteConfig);
    });
  });

  unittest.group('resource-ProjectsRemoteConfigResource', () {
    unittest.test('method--downloadDefaults', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseRemoteConfigApi(mock).projects.remoteConfig;
      final arg_project = 'foo';
      final arg_format = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          queryMap['format']!.first,
          unittest.equals(arg_format),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.downloadDefaults(arg_project,
          format: arg_format, $fields: arg_$fields);
      checkResponse(response as api.Response);
    });

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
