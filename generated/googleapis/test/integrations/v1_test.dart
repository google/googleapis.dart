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

import 'package:googleapis/integrations/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterCrmlogErrorCode = 0;
api.CrmlogErrorCode buildCrmlogErrorCode() {
  final o = api.CrmlogErrorCode();
  buildCounterCrmlogErrorCode++;
  if (buildCounterCrmlogErrorCode < 3) {
    o.commonErrorCode = 'foo';
  }
  buildCounterCrmlogErrorCode--;
  return o;
}

void checkCrmlogErrorCode(api.CrmlogErrorCode o) {
  buildCounterCrmlogErrorCode++;
  if (buildCounterCrmlogErrorCode < 3) {
    unittest.expect(
      o.commonErrorCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterCrmlogErrorCode--;
}

core.List<api.EnterpriseCrmEventbusProtoToken> buildUnnamed0() => [
      buildEnterpriseCrmEventbusProtoToken(),
      buildEnterpriseCrmEventbusProtoToken(),
    ];

void checkUnnamed0(core.List<api.EnterpriseCrmEventbusProtoToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoToken(o[0]);
  checkEnterpriseCrmEventbusProtoToken(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoAddress = 0;
api.EnterpriseCrmEventbusProtoAddress buildEnterpriseCrmEventbusProtoAddress() {
  final o = api.EnterpriseCrmEventbusProtoAddress();
  buildCounterEnterpriseCrmEventbusProtoAddress++;
  if (buildCounterEnterpriseCrmEventbusProtoAddress < 3) {
    o.email = 'foo';
    o.name = 'foo';
    o.tokens = buildUnnamed0();
  }
  buildCounterEnterpriseCrmEventbusProtoAddress--;
  return o;
}

void checkEnterpriseCrmEventbusProtoAddress(
    api.EnterpriseCrmEventbusProtoAddress o) {
  buildCounterEnterpriseCrmEventbusProtoAddress++;
  if (buildCounterEnterpriseCrmEventbusProtoAddress < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.tokens!);
  }
  buildCounterEnterpriseCrmEventbusProtoAddress--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterEnterpriseCrmEventbusProtoAttributes = 0;
api.EnterpriseCrmEventbusProtoAttributes
    buildEnterpriseCrmEventbusProtoAttributes() {
  final o = api.EnterpriseCrmEventbusProtoAttributes();
  buildCounterEnterpriseCrmEventbusProtoAttributes++;
  if (buildCounterEnterpriseCrmEventbusProtoAttributes < 3) {
    o.dataType = 'foo';
    o.defaultValue = buildEnterpriseCrmEventbusProtoValueType();
    o.isRequired = true;
    o.isSearchable = true;
    o.logSettings = buildEnterpriseCrmEventbusProtoLogSettings();
    o.masked = true;
    o.readOnly = true;
    o.searchable = 'foo';
    o.taskVisibility = buildUnnamed1();
  }
  buildCounterEnterpriseCrmEventbusProtoAttributes--;
  return o;
}

void checkEnterpriseCrmEventbusProtoAttributes(
    api.EnterpriseCrmEventbusProtoAttributes o) {
  buildCounterEnterpriseCrmEventbusProtoAttributes++;
  if (buildCounterEnterpriseCrmEventbusProtoAttributes < 3) {
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoValueType(o.defaultValue!);
    unittest.expect(o.isRequired!, unittest.isTrue);
    unittest.expect(o.isSearchable!, unittest.isTrue);
    checkEnterpriseCrmEventbusProtoLogSettings(o.logSettings!);
    unittest.expect(o.masked!, unittest.isTrue);
    unittest.expect(o.readOnly!, unittest.isTrue);
    unittest.expect(
      o.searchable!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.taskVisibility!);
  }
  buildCounterEnterpriseCrmEventbusProtoAttributes--;
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

core.int buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList = 0;
api.EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList
    buildEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList() {
  final o = api.EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList();
  buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList++;
  if (buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList < 3) {
    o.enumStrings = buildUnnamed2();
    o.filterType = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList--;
  return o;
}

void checkEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList(
    api.EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList o) {
  buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList++;
  if (buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList < 3) {
    checkUnnamed2(o.enumStrings!);
    unittest.expect(
      o.filterType!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList--;
}

core.int buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue =
    0;
api.EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue
    buildEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue() {
  final o = api.EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue();
  buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue++;
  if (buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue < 3) {
    o.absolute = 'foo';
    o.percentage = 42;
  }
  buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue--;
  return o;
}

void checkEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue(
    api.EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue o) {
  buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue++;
  if (buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue < 3) {
    unittest.expect(
      o.absolute!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.percentage!,
      unittest.equals(42),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue--;
}

core.List<core.bool> buildUnnamed3() => [
      true,
      true,
    ];

void checkUnnamed3(core.List<core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.isTrue);
  unittest.expect(o[1], unittest.isTrue);
}

core.int buildCounterEnterpriseCrmEventbusProtoBooleanParameterArray = 0;
api.EnterpriseCrmEventbusProtoBooleanParameterArray
    buildEnterpriseCrmEventbusProtoBooleanParameterArray() {
  final o = api.EnterpriseCrmEventbusProtoBooleanParameterArray();
  buildCounterEnterpriseCrmEventbusProtoBooleanParameterArray++;
  if (buildCounterEnterpriseCrmEventbusProtoBooleanParameterArray < 3) {
    o.booleanValues = buildUnnamed3();
  }
  buildCounterEnterpriseCrmEventbusProtoBooleanParameterArray--;
  return o;
}

void checkEnterpriseCrmEventbusProtoBooleanParameterArray(
    api.EnterpriseCrmEventbusProtoBooleanParameterArray o) {
  buildCounterEnterpriseCrmEventbusProtoBooleanParameterArray++;
  if (buildCounterEnterpriseCrmEventbusProtoBooleanParameterArray < 3) {
    checkUnnamed3(o.booleanValues!);
  }
  buildCounterEnterpriseCrmEventbusProtoBooleanParameterArray--;
}

core.int buildCounterEnterpriseCrmEventbusProtoBuganizerNotification = 0;
api.EnterpriseCrmEventbusProtoBuganizerNotification
    buildEnterpriseCrmEventbusProtoBuganizerNotification() {
  final o = api.EnterpriseCrmEventbusProtoBuganizerNotification();
  buildCounterEnterpriseCrmEventbusProtoBuganizerNotification++;
  if (buildCounterEnterpriseCrmEventbusProtoBuganizerNotification < 3) {
    o.assigneeEmailAddress = 'foo';
    o.componentId = 'foo';
    o.templateId = 'foo';
    o.title = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoBuganizerNotification--;
  return o;
}

void checkEnterpriseCrmEventbusProtoBuganizerNotification(
    api.EnterpriseCrmEventbusProtoBuganizerNotification o) {
  buildCounterEnterpriseCrmEventbusProtoBuganizerNotification++;
  if (buildCounterEnterpriseCrmEventbusProtoBuganizerNotification < 3) {
    unittest.expect(
      o.assigneeEmailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.componentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.templateId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoBuganizerNotification--;
}

core.int buildCounterEnterpriseCrmEventbusProtoCloudLoggingDetails = 0;
api.EnterpriseCrmEventbusProtoCloudLoggingDetails
    buildEnterpriseCrmEventbusProtoCloudLoggingDetails() {
  final o = api.EnterpriseCrmEventbusProtoCloudLoggingDetails();
  buildCounterEnterpriseCrmEventbusProtoCloudLoggingDetails++;
  if (buildCounterEnterpriseCrmEventbusProtoCloudLoggingDetails < 3) {
    o.cloudLoggingSeverity = 'foo';
    o.enableCloudLogging = true;
  }
  buildCounterEnterpriseCrmEventbusProtoCloudLoggingDetails--;
  return o;
}

void checkEnterpriseCrmEventbusProtoCloudLoggingDetails(
    api.EnterpriseCrmEventbusProtoCloudLoggingDetails o) {
  buildCounterEnterpriseCrmEventbusProtoCloudLoggingDetails++;
  if (buildCounterEnterpriseCrmEventbusProtoCloudLoggingDetails < 3) {
    unittest.expect(
      o.cloudLoggingSeverity!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableCloudLogging!, unittest.isTrue);
  }
  buildCounterEnterpriseCrmEventbusProtoCloudLoggingDetails--;
}

core.int buildCounterEnterpriseCrmEventbusProtoCloudSchedulerConfig = 0;
api.EnterpriseCrmEventbusProtoCloudSchedulerConfig
    buildEnterpriseCrmEventbusProtoCloudSchedulerConfig() {
  final o = api.EnterpriseCrmEventbusProtoCloudSchedulerConfig();
  buildCounterEnterpriseCrmEventbusProtoCloudSchedulerConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoCloudSchedulerConfig < 3) {
    o.cronTab = 'foo';
    o.errorMessage = 'foo';
    o.location = 'foo';
    o.serviceAccountEmail = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoCloudSchedulerConfig--;
  return o;
}

void checkEnterpriseCrmEventbusProtoCloudSchedulerConfig(
    api.EnterpriseCrmEventbusProtoCloudSchedulerConfig o) {
  buildCounterEnterpriseCrmEventbusProtoCloudSchedulerConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoCloudSchedulerConfig < 3) {
    unittest.expect(
      o.cronTab!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoCloudSchedulerConfig--;
}

core.List<api.EnterpriseCrmEventbusProtoCondition> buildUnnamed4() => [
      buildEnterpriseCrmEventbusProtoCondition(),
      buildEnterpriseCrmEventbusProtoCondition(),
    ];

void checkUnnamed4(core.List<api.EnterpriseCrmEventbusProtoCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoCondition(o[0]);
  checkEnterpriseCrmEventbusProtoCondition(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoCombinedCondition = 0;
api.EnterpriseCrmEventbusProtoCombinedCondition
    buildEnterpriseCrmEventbusProtoCombinedCondition() {
  final o = api.EnterpriseCrmEventbusProtoCombinedCondition();
  buildCounterEnterpriseCrmEventbusProtoCombinedCondition++;
  if (buildCounterEnterpriseCrmEventbusProtoCombinedCondition < 3) {
    o.conditions = buildUnnamed4();
  }
  buildCounterEnterpriseCrmEventbusProtoCombinedCondition--;
  return o;
}

void checkEnterpriseCrmEventbusProtoCombinedCondition(
    api.EnterpriseCrmEventbusProtoCombinedCondition o) {
  buildCounterEnterpriseCrmEventbusProtoCombinedCondition++;
  if (buildCounterEnterpriseCrmEventbusProtoCombinedCondition < 3) {
    checkUnnamed4(o.conditions!);
  }
  buildCounterEnterpriseCrmEventbusProtoCombinedCondition--;
}

core.int buildCounterEnterpriseCrmEventbusProtoCondition = 0;
api.EnterpriseCrmEventbusProtoCondition
    buildEnterpriseCrmEventbusProtoCondition() {
  final o = api.EnterpriseCrmEventbusProtoCondition();
  buildCounterEnterpriseCrmEventbusProtoCondition++;
  if (buildCounterEnterpriseCrmEventbusProtoCondition < 3) {
    o.eventPropertyKey = 'foo';
    o.operator = 'foo';
    o.value = buildEnterpriseCrmEventbusProtoValueType();
  }
  buildCounterEnterpriseCrmEventbusProtoCondition--;
  return o;
}

void checkEnterpriseCrmEventbusProtoCondition(
    api.EnterpriseCrmEventbusProtoCondition o) {
  buildCounterEnterpriseCrmEventbusProtoCondition++;
  if (buildCounterEnterpriseCrmEventbusProtoCondition < 3) {
    unittest.expect(
      o.eventPropertyKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoValueType(o.value!);
  }
  buildCounterEnterpriseCrmEventbusProtoCondition--;
}

core.int buildCounterEnterpriseCrmEventbusProtoConditionResult = 0;
api.EnterpriseCrmEventbusProtoConditionResult
    buildEnterpriseCrmEventbusProtoConditionResult() {
  final o = api.EnterpriseCrmEventbusProtoConditionResult();
  buildCounterEnterpriseCrmEventbusProtoConditionResult++;
  if (buildCounterEnterpriseCrmEventbusProtoConditionResult < 3) {
    o.currentTaskNumber = 'foo';
    o.nextTaskNumber = 'foo';
    o.result = true;
  }
  buildCounterEnterpriseCrmEventbusProtoConditionResult--;
  return o;
}

void checkEnterpriseCrmEventbusProtoConditionResult(
    api.EnterpriseCrmEventbusProtoConditionResult o) {
  buildCounterEnterpriseCrmEventbusProtoConditionResult++;
  if (buildCounterEnterpriseCrmEventbusProtoConditionResult < 3) {
    unittest.expect(
      o.currentTaskNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextTaskNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(o.result!, unittest.isTrue);
  }
  buildCounterEnterpriseCrmEventbusProtoConditionResult--;
}

core.List<api.EnterpriseCrmEventbusProtoFailurePolicy> buildUnnamed5() => [
      buildEnterpriseCrmEventbusProtoFailurePolicy(),
      buildEnterpriseCrmEventbusProtoFailurePolicy(),
    ];

void checkUnnamed5(core.List<api.EnterpriseCrmEventbusProtoFailurePolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoFailurePolicy(o[0]);
  checkEnterpriseCrmEventbusProtoFailurePolicy(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoConditionalFailurePolicies = 0;
api.EnterpriseCrmEventbusProtoConditionalFailurePolicies
    buildEnterpriseCrmEventbusProtoConditionalFailurePolicies() {
  final o = api.EnterpriseCrmEventbusProtoConditionalFailurePolicies();
  buildCounterEnterpriseCrmEventbusProtoConditionalFailurePolicies++;
  if (buildCounterEnterpriseCrmEventbusProtoConditionalFailurePolicies < 3) {
    o.defaultFailurePolicy = buildEnterpriseCrmEventbusProtoFailurePolicy();
    o.failurePolicies = buildUnnamed5();
  }
  buildCounterEnterpriseCrmEventbusProtoConditionalFailurePolicies--;
  return o;
}

void checkEnterpriseCrmEventbusProtoConditionalFailurePolicies(
    api.EnterpriseCrmEventbusProtoConditionalFailurePolicies o) {
  buildCounterEnterpriseCrmEventbusProtoConditionalFailurePolicies++;
  if (buildCounterEnterpriseCrmEventbusProtoConditionalFailurePolicies < 3) {
    checkEnterpriseCrmEventbusProtoFailurePolicy(o.defaultFailurePolicy!);
    checkUnnamed5(o.failurePolicies!);
  }
  buildCounterEnterpriseCrmEventbusProtoConditionalFailurePolicies--;
}

core.int buildCounterEnterpriseCrmEventbusProtoCoordinate = 0;
api.EnterpriseCrmEventbusProtoCoordinate
    buildEnterpriseCrmEventbusProtoCoordinate() {
  final o = api.EnterpriseCrmEventbusProtoCoordinate();
  buildCounterEnterpriseCrmEventbusProtoCoordinate++;
  if (buildCounterEnterpriseCrmEventbusProtoCoordinate < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterEnterpriseCrmEventbusProtoCoordinate--;
  return o;
}

void checkEnterpriseCrmEventbusProtoCoordinate(
    api.EnterpriseCrmEventbusProtoCoordinate o) {
  buildCounterEnterpriseCrmEventbusProtoCoordinate++;
  if (buildCounterEnterpriseCrmEventbusProtoCoordinate < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoCoordinate--;
}

core.int buildCounterEnterpriseCrmEventbusProtoCustomSuspensionRequest = 0;
api.EnterpriseCrmEventbusProtoCustomSuspensionRequest
    buildEnterpriseCrmEventbusProtoCustomSuspensionRequest() {
  final o = api.EnterpriseCrmEventbusProtoCustomSuspensionRequest();
  buildCounterEnterpriseCrmEventbusProtoCustomSuspensionRequest++;
  if (buildCounterEnterpriseCrmEventbusProtoCustomSuspensionRequest < 3) {
    o.postToQueueWithTriggerIdRequest =
        buildGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest();
    o.suspensionInfoEventParameterKey = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoCustomSuspensionRequest--;
  return o;
}

void checkEnterpriseCrmEventbusProtoCustomSuspensionRequest(
    api.EnterpriseCrmEventbusProtoCustomSuspensionRequest o) {
  buildCounterEnterpriseCrmEventbusProtoCustomSuspensionRequest++;
  if (buildCounterEnterpriseCrmEventbusProtoCustomSuspensionRequest < 3) {
    checkGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest(
        o.postToQueueWithTriggerIdRequest!);
    unittest.expect(
      o.suspensionInfoEventParameterKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoCustomSuspensionRequest--;
}

core.List<core.double> buildUnnamed6() => [
      42.0,
      42.0,
    ];

void checkUnnamed6(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterEnterpriseCrmEventbusProtoDoubleArray = 0;
api.EnterpriseCrmEventbusProtoDoubleArray
    buildEnterpriseCrmEventbusProtoDoubleArray() {
  final o = api.EnterpriseCrmEventbusProtoDoubleArray();
  buildCounterEnterpriseCrmEventbusProtoDoubleArray++;
  if (buildCounterEnterpriseCrmEventbusProtoDoubleArray < 3) {
    o.values = buildUnnamed6();
  }
  buildCounterEnterpriseCrmEventbusProtoDoubleArray--;
  return o;
}

void checkEnterpriseCrmEventbusProtoDoubleArray(
    api.EnterpriseCrmEventbusProtoDoubleArray o) {
  buildCounterEnterpriseCrmEventbusProtoDoubleArray++;
  if (buildCounterEnterpriseCrmEventbusProtoDoubleArray < 3) {
    checkUnnamed6(o.values!);
  }
  buildCounterEnterpriseCrmEventbusProtoDoubleArray--;
}

core.List<core.double> buildUnnamed7() => [
      42.0,
      42.0,
    ];

void checkUnnamed7(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterEnterpriseCrmEventbusProtoDoubleParameterArray = 0;
api.EnterpriseCrmEventbusProtoDoubleParameterArray
    buildEnterpriseCrmEventbusProtoDoubleParameterArray() {
  final o = api.EnterpriseCrmEventbusProtoDoubleParameterArray();
  buildCounterEnterpriseCrmEventbusProtoDoubleParameterArray++;
  if (buildCounterEnterpriseCrmEventbusProtoDoubleParameterArray < 3) {
    o.doubleValues = buildUnnamed7();
  }
  buildCounterEnterpriseCrmEventbusProtoDoubleParameterArray--;
  return o;
}

void checkEnterpriseCrmEventbusProtoDoubleParameterArray(
    api.EnterpriseCrmEventbusProtoDoubleParameterArray o) {
  buildCounterEnterpriseCrmEventbusProtoDoubleParameterArray++;
  if (buildCounterEnterpriseCrmEventbusProtoDoubleParameterArray < 3) {
    checkUnnamed7(o.doubleValues!);
  }
  buildCounterEnterpriseCrmEventbusProtoDoubleParameterArray--;
}

core.int buildCounterEnterpriseCrmEventbusProtoErrorDetail = 0;
api.EnterpriseCrmEventbusProtoErrorDetail
    buildEnterpriseCrmEventbusProtoErrorDetail() {
  final o = api.EnterpriseCrmEventbusProtoErrorDetail();
  buildCounterEnterpriseCrmEventbusProtoErrorDetail++;
  if (buildCounterEnterpriseCrmEventbusProtoErrorDetail < 3) {
    o.errorCode = buildCrmlogErrorCode();
    o.errorMessage = 'foo';
    o.severity = 'foo';
    o.taskNumber = 42;
  }
  buildCounterEnterpriseCrmEventbusProtoErrorDetail--;
  return o;
}

void checkEnterpriseCrmEventbusProtoErrorDetail(
    api.EnterpriseCrmEventbusProtoErrorDetail o) {
  buildCounterEnterpriseCrmEventbusProtoErrorDetail++;
  if (buildCounterEnterpriseCrmEventbusProtoErrorDetail < 3) {
    checkCrmlogErrorCode(o.errorCode!);
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskNumber!,
      unittest.equals(42),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoErrorDetail--;
}

core.List<api.EnterpriseCrmEventbusProtoPropertyEntry> buildUnnamed8() => [
      buildEnterpriseCrmEventbusProtoPropertyEntry(),
      buildEnterpriseCrmEventbusProtoPropertyEntry(),
    ];

void checkUnnamed8(core.List<api.EnterpriseCrmEventbusProtoPropertyEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoPropertyEntry(o[0]);
  checkEnterpriseCrmEventbusProtoPropertyEntry(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoEventBusProperties = 0;
api.EnterpriseCrmEventbusProtoEventBusProperties
    buildEnterpriseCrmEventbusProtoEventBusProperties() {
  final o = api.EnterpriseCrmEventbusProtoEventBusProperties();
  buildCounterEnterpriseCrmEventbusProtoEventBusProperties++;
  if (buildCounterEnterpriseCrmEventbusProtoEventBusProperties < 3) {
    o.properties = buildUnnamed8();
  }
  buildCounterEnterpriseCrmEventbusProtoEventBusProperties--;
  return o;
}

void checkEnterpriseCrmEventbusProtoEventBusProperties(
    api.EnterpriseCrmEventbusProtoEventBusProperties o) {
  buildCounterEnterpriseCrmEventbusProtoEventBusProperties++;
  if (buildCounterEnterpriseCrmEventbusProtoEventBusProperties < 3) {
    checkUnnamed8(o.properties!);
  }
  buildCounterEnterpriseCrmEventbusProtoEventBusProperties--;
}

core.List<api.EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats>
    buildUnnamed9() => [
          buildEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats(),
          buildEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats(),
        ];

void checkUnnamed9(
    core.List<
            api
            .EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats(o[0]);
  checkEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats(o[1]);
}

core.List<api.EnterpriseCrmEventbusProtoEventExecutionSnapshot>
    buildUnnamed10() => [
          buildEnterpriseCrmEventbusProtoEventExecutionSnapshot(),
          buildEnterpriseCrmEventbusProtoEventExecutionSnapshot(),
        ];

void checkUnnamed10(
    core.List<api.EnterpriseCrmEventbusProtoEventExecutionSnapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoEventExecutionSnapshot(o[0]);
  checkEnterpriseCrmEventbusProtoEventExecutionSnapshot(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoEventExecutionDetails = 0;
api.EnterpriseCrmEventbusProtoEventExecutionDetails
    buildEnterpriseCrmEventbusProtoEventExecutionDetails() {
  final o = api.EnterpriseCrmEventbusProtoEventExecutionDetails();
  buildCounterEnterpriseCrmEventbusProtoEventExecutionDetails++;
  if (buildCounterEnterpriseCrmEventbusProtoEventExecutionDetails < 3) {
    o.cancelReason = 'foo';
    o.eventAttemptStats = buildUnnamed9();
    o.eventExecutionSnapshot = buildUnnamed10();
    o.eventExecutionSnapshotsSize = 'foo';
    o.eventExecutionState = 'foo';
    o.eventRetriesFromBeginningCount = 42;
    o.logFilePath = 'foo';
    o.networkAddress = 'foo';
    o.nextExecutionTime = 'foo';
    o.ryeLockUnheldCount = 42;
  }
  buildCounterEnterpriseCrmEventbusProtoEventExecutionDetails--;
  return o;
}

void checkEnterpriseCrmEventbusProtoEventExecutionDetails(
    api.EnterpriseCrmEventbusProtoEventExecutionDetails o) {
  buildCounterEnterpriseCrmEventbusProtoEventExecutionDetails++;
  if (buildCounterEnterpriseCrmEventbusProtoEventExecutionDetails < 3) {
    unittest.expect(
      o.cancelReason!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.eventAttemptStats!);
    checkUnnamed10(o.eventExecutionSnapshot!);
    unittest.expect(
      o.eventExecutionSnapshotsSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventExecutionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventRetriesFromBeginningCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.logFilePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextExecutionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ryeLockUnheldCount!,
      unittest.equals(42),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoEventExecutionDetails--;
}

core.int
    buildCounterEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats =
    0;
api.EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats
    buildEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats() {
  final o =
      api.EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats();
  buildCounterEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats++;
  if (buildCounterEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats <
      3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats--;
  return o;
}

void checkEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats(
    api.EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats o) {
  buildCounterEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats++;
  if (buildCounterEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats <
      3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats--;
}

core.List<api.EnterpriseCrmEventbusProtoConditionResult> buildUnnamed11() => [
      buildEnterpriseCrmEventbusProtoConditionResult(),
      buildEnterpriseCrmEventbusProtoConditionResult(),
    ];

void checkUnnamed11(
    core.List<api.EnterpriseCrmEventbusProtoConditionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoConditionResult(o[0]);
  checkEnterpriseCrmEventbusProtoConditionResult(o[1]);
}

core.List<api.EnterpriseCrmEventbusProtoTaskExecutionDetails>
    buildUnnamed12() => [
          buildEnterpriseCrmEventbusProtoTaskExecutionDetails(),
          buildEnterpriseCrmEventbusProtoTaskExecutionDetails(),
        ];

void checkUnnamed12(
    core.List<api.EnterpriseCrmEventbusProtoTaskExecutionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoTaskExecutionDetails(o[0]);
  checkEnterpriseCrmEventbusProtoTaskExecutionDetails(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshot = 0;
api.EnterpriseCrmEventbusProtoEventExecutionSnapshot
    buildEnterpriseCrmEventbusProtoEventExecutionSnapshot() {
  final o = api.EnterpriseCrmEventbusProtoEventExecutionSnapshot();
  buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshot++;
  if (buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshot < 3) {
    o.checkpointTaskNumber = 'foo';
    o.clientId = 'foo';
    o.conditionResults = buildUnnamed11();
    o.diffParams = buildEnterpriseCrmEventbusProtoEventParameters();
    o.eventExecutionInfoId = 'foo';
    o.eventExecutionSnapshotId = 'foo';
    o.eventExecutionSnapshotMetadata =
        buildEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata();
    o.eventParams = buildEnterpriseCrmEventbusProtoEventParameters();
    o.exceedMaxSize = true;
    o.snapshotTime = 'foo';
    o.taskExecutionDetails = buildUnnamed12();
    o.taskName = 'foo';
    o.workflowName = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshot--;
  return o;
}

void checkEnterpriseCrmEventbusProtoEventExecutionSnapshot(
    api.EnterpriseCrmEventbusProtoEventExecutionSnapshot o) {
  buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshot++;
  if (buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshot < 3) {
    unittest.expect(
      o.checkpointTaskNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.conditionResults!);
    checkEnterpriseCrmEventbusProtoEventParameters(o.diffParams!);
    unittest.expect(
      o.eventExecutionInfoId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventExecutionSnapshotId!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata(
        o.eventExecutionSnapshotMetadata!);
    checkEnterpriseCrmEventbusProtoEventParameters(o.eventParams!);
    unittest.expect(o.exceedMaxSize!, unittest.isTrue);
    unittest.expect(
      o.snapshotTime!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.taskExecutionDetails!);
    unittest.expect(
      o.taskName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workflowName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshot--;
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

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int
    buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata =
    0;
api.EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata
    buildEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata() {
  final o = api
      .EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata();
  buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata++;
  if (buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata <
      3) {
    o.ancestorIterationNumbers = buildUnnamed13();
    o.ancestorTaskNumbers = buildUnnamed14();
    o.eventAttemptNum = 42;
    o.integrationName = 'foo';
    o.taskAttemptNum = 42;
    o.taskLabel = 'foo';
    o.taskName = 'foo';
    o.taskNumber = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata--;
  return o;
}

void checkEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata(
    api.EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata
        o) {
  buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata++;
  if (buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata <
      3) {
    checkUnnamed13(o.ancestorIterationNumbers!);
    checkUnnamed14(o.ancestorTaskNumbers!);
    unittest.expect(
      o.eventAttemptNum!,
      unittest.equals(42),
    );
    unittest.expect(
      o.integrationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskAttemptNum!,
      unittest.equals(42),
    );
    unittest.expect(
      o.taskLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata--;
}

core.List<api.EnterpriseCrmEventbusProtoParameterEntry> buildUnnamed15() => [
      buildEnterpriseCrmEventbusProtoParameterEntry(),
      buildEnterpriseCrmEventbusProtoParameterEntry(),
    ];

void checkUnnamed15(core.List<api.EnterpriseCrmEventbusProtoParameterEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoParameterEntry(o[0]);
  checkEnterpriseCrmEventbusProtoParameterEntry(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoEventParameters = 0;
api.EnterpriseCrmEventbusProtoEventParameters
    buildEnterpriseCrmEventbusProtoEventParameters() {
  final o = api.EnterpriseCrmEventbusProtoEventParameters();
  buildCounterEnterpriseCrmEventbusProtoEventParameters++;
  if (buildCounterEnterpriseCrmEventbusProtoEventParameters < 3) {
    o.parameters = buildUnnamed15();
  }
  buildCounterEnterpriseCrmEventbusProtoEventParameters--;
  return o;
}

void checkEnterpriseCrmEventbusProtoEventParameters(
    api.EnterpriseCrmEventbusProtoEventParameters o) {
  buildCounterEnterpriseCrmEventbusProtoEventParameters++;
  if (buildCounterEnterpriseCrmEventbusProtoEventParameters < 3) {
    checkUnnamed15(o.parameters!);
  }
  buildCounterEnterpriseCrmEventbusProtoEventParameters--;
}

core.int buildCounterEnterpriseCrmEventbusProtoExecutionTraceInfo = 0;
api.EnterpriseCrmEventbusProtoExecutionTraceInfo
    buildEnterpriseCrmEventbusProtoExecutionTraceInfo() {
  final o = api.EnterpriseCrmEventbusProtoExecutionTraceInfo();
  buildCounterEnterpriseCrmEventbusProtoExecutionTraceInfo++;
  if (buildCounterEnterpriseCrmEventbusProtoExecutionTraceInfo < 3) {
    o.parentEventExecutionInfoId = 'foo';
    o.traceId = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoExecutionTraceInfo--;
  return o;
}

void checkEnterpriseCrmEventbusProtoExecutionTraceInfo(
    api.EnterpriseCrmEventbusProtoExecutionTraceInfo o) {
  buildCounterEnterpriseCrmEventbusProtoExecutionTraceInfo++;
  if (buildCounterEnterpriseCrmEventbusProtoExecutionTraceInfo < 3) {
    unittest.expect(
      o.parentEventExecutionInfoId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.traceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoExecutionTraceInfo--;
}

core.int buildCounterEnterpriseCrmEventbusProtoFailurePolicy = 0;
api.EnterpriseCrmEventbusProtoFailurePolicy
    buildEnterpriseCrmEventbusProtoFailurePolicy() {
  final o = api.EnterpriseCrmEventbusProtoFailurePolicy();
  buildCounterEnterpriseCrmEventbusProtoFailurePolicy++;
  if (buildCounterEnterpriseCrmEventbusProtoFailurePolicy < 3) {
    o.intervalInSeconds = 'foo';
    o.maxNumRetries = 42;
    o.retryCondition = 'foo';
    o.retryStrategy = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoFailurePolicy--;
  return o;
}

void checkEnterpriseCrmEventbusProtoFailurePolicy(
    api.EnterpriseCrmEventbusProtoFailurePolicy o) {
  buildCounterEnterpriseCrmEventbusProtoFailurePolicy++;
  if (buildCounterEnterpriseCrmEventbusProtoFailurePolicy < 3) {
    unittest.expect(
      o.intervalInSeconds!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxNumRetries!,
      unittest.equals(42),
    );
    unittest.expect(
      o.retryCondition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.retryStrategy!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoFailurePolicy--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.int buildCounterEnterpriseCrmEventbusProtoIntArray = 0;
api.EnterpriseCrmEventbusProtoIntArray
    buildEnterpriseCrmEventbusProtoIntArray() {
  final o = api.EnterpriseCrmEventbusProtoIntArray();
  buildCounterEnterpriseCrmEventbusProtoIntArray++;
  if (buildCounterEnterpriseCrmEventbusProtoIntArray < 3) {
    o.values = buildUnnamed16();
  }
  buildCounterEnterpriseCrmEventbusProtoIntArray--;
  return o;
}

void checkEnterpriseCrmEventbusProtoIntArray(
    api.EnterpriseCrmEventbusProtoIntArray o) {
  buildCounterEnterpriseCrmEventbusProtoIntArray++;
  if (buildCounterEnterpriseCrmEventbusProtoIntArray < 3) {
    checkUnnamed16(o.values!);
  }
  buildCounterEnterpriseCrmEventbusProtoIntArray--;
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.int buildCounterEnterpriseCrmEventbusProtoIntParameterArray = 0;
api.EnterpriseCrmEventbusProtoIntParameterArray
    buildEnterpriseCrmEventbusProtoIntParameterArray() {
  final o = api.EnterpriseCrmEventbusProtoIntParameterArray();
  buildCounterEnterpriseCrmEventbusProtoIntParameterArray++;
  if (buildCounterEnterpriseCrmEventbusProtoIntParameterArray < 3) {
    o.intValues = buildUnnamed17();
  }
  buildCounterEnterpriseCrmEventbusProtoIntParameterArray--;
  return o;
}

void checkEnterpriseCrmEventbusProtoIntParameterArray(
    api.EnterpriseCrmEventbusProtoIntParameterArray o) {
  buildCounterEnterpriseCrmEventbusProtoIntParameterArray++;
  if (buildCounterEnterpriseCrmEventbusProtoIntParameterArray < 3) {
    checkUnnamed17(o.intValues!);
  }
  buildCounterEnterpriseCrmEventbusProtoIntParameterArray--;
}

core.int buildCounterEnterpriseCrmEventbusProtoLogSettings = 0;
api.EnterpriseCrmEventbusProtoLogSettings
    buildEnterpriseCrmEventbusProtoLogSettings() {
  final o = api.EnterpriseCrmEventbusProtoLogSettings();
  buildCounterEnterpriseCrmEventbusProtoLogSettings++;
  if (buildCounterEnterpriseCrmEventbusProtoLogSettings < 3) {
    o.logFieldName = 'foo';
    o.seedPeriod = 'foo';
    o.seedScope = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoLogSettings--;
  return o;
}

void checkEnterpriseCrmEventbusProtoLogSettings(
    api.EnterpriseCrmEventbusProtoLogSettings o) {
  buildCounterEnterpriseCrmEventbusProtoLogSettings++;
  if (buildCounterEnterpriseCrmEventbusProtoLogSettings < 3) {
    unittest.expect(
      o.logFieldName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.seedPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.seedScope!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoLogSettings--;
}

core.List<api.EnterpriseCrmEventbusProtoCombinedCondition> buildUnnamed18() => [
      buildEnterpriseCrmEventbusProtoCombinedCondition(),
      buildEnterpriseCrmEventbusProtoCombinedCondition(),
    ];

void checkUnnamed18(
    core.List<api.EnterpriseCrmEventbusProtoCombinedCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoCombinedCondition(o[0]);
  checkEnterpriseCrmEventbusProtoCombinedCondition(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoNextTask = 0;
api.EnterpriseCrmEventbusProtoNextTask
    buildEnterpriseCrmEventbusProtoNextTask() {
  final o = api.EnterpriseCrmEventbusProtoNextTask();
  buildCounterEnterpriseCrmEventbusProtoNextTask++;
  if (buildCounterEnterpriseCrmEventbusProtoNextTask < 3) {
    o.combinedConditions = buildUnnamed18();
    o.condition = 'foo';
    o.description = 'foo';
    o.label = 'foo';
    o.taskConfigId = 'foo';
    o.taskNumber = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoNextTask--;
  return o;
}

void checkEnterpriseCrmEventbusProtoNextTask(
    api.EnterpriseCrmEventbusProtoNextTask o) {
  buildCounterEnterpriseCrmEventbusProtoNextTask++;
  if (buildCounterEnterpriseCrmEventbusProtoNextTask < 3) {
    checkUnnamed18(o.combinedConditions!);
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskConfigId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoNextTask--;
}

core.int buildCounterEnterpriseCrmEventbusProtoNextTeardownTask = 0;
api.EnterpriseCrmEventbusProtoNextTeardownTask
    buildEnterpriseCrmEventbusProtoNextTeardownTask() {
  final o = api.EnterpriseCrmEventbusProtoNextTeardownTask();
  buildCounterEnterpriseCrmEventbusProtoNextTeardownTask++;
  if (buildCounterEnterpriseCrmEventbusProtoNextTeardownTask < 3) {
    o.name = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoNextTeardownTask--;
  return o;
}

void checkEnterpriseCrmEventbusProtoNextTeardownTask(
    api.EnterpriseCrmEventbusProtoNextTeardownTask o) {
  buildCounterEnterpriseCrmEventbusProtoNextTeardownTask++;
  if (buildCounterEnterpriseCrmEventbusProtoNextTeardownTask < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoNextTeardownTask--;
}

core.int buildCounterEnterpriseCrmEventbusProtoNodeIdentifier = 0;
api.EnterpriseCrmEventbusProtoNodeIdentifier
    buildEnterpriseCrmEventbusProtoNodeIdentifier() {
  final o = api.EnterpriseCrmEventbusProtoNodeIdentifier();
  buildCounterEnterpriseCrmEventbusProtoNodeIdentifier++;
  if (buildCounterEnterpriseCrmEventbusProtoNodeIdentifier < 3) {
    o.elementIdentifier = 'foo';
    o.elementType = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoNodeIdentifier--;
  return o;
}

void checkEnterpriseCrmEventbusProtoNodeIdentifier(
    api.EnterpriseCrmEventbusProtoNodeIdentifier o) {
  buildCounterEnterpriseCrmEventbusProtoNodeIdentifier++;
  if (buildCounterEnterpriseCrmEventbusProtoNodeIdentifier < 3) {
    unittest.expect(
      o.elementIdentifier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.elementType!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoNodeIdentifier--;
}

core.int buildCounterEnterpriseCrmEventbusProtoNotification = 0;
api.EnterpriseCrmEventbusProtoNotification
    buildEnterpriseCrmEventbusProtoNotification() {
  final o = api.EnterpriseCrmEventbusProtoNotification();
  buildCounterEnterpriseCrmEventbusProtoNotification++;
  if (buildCounterEnterpriseCrmEventbusProtoNotification < 3) {
    o.buganizerNotification =
        buildEnterpriseCrmEventbusProtoBuganizerNotification();
    o.emailAddress = buildEnterpriseCrmEventbusProtoAddress();
    o.escalatorQueue = 'foo';
    o.pubsubTopic = 'foo';
    o.request = buildEnterpriseCrmEventbusProtoCustomSuspensionRequest();
  }
  buildCounterEnterpriseCrmEventbusProtoNotification--;
  return o;
}

void checkEnterpriseCrmEventbusProtoNotification(
    api.EnterpriseCrmEventbusProtoNotification o) {
  buildCounterEnterpriseCrmEventbusProtoNotification++;
  if (buildCounterEnterpriseCrmEventbusProtoNotification < 3) {
    checkEnterpriseCrmEventbusProtoBuganizerNotification(
        o.buganizerNotification!);
    checkEnterpriseCrmEventbusProtoAddress(o.emailAddress!);
    unittest.expect(
      o.escalatorQueue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pubsubTopic!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoCustomSuspensionRequest(o.request!);
  }
  buildCounterEnterpriseCrmEventbusProtoNotification--;
}

core.int buildCounterEnterpriseCrmEventbusProtoParamSpecEntryConfig = 0;
api.EnterpriseCrmEventbusProtoParamSpecEntryConfig
    buildEnterpriseCrmEventbusProtoParamSpecEntryConfig() {
  final o = api.EnterpriseCrmEventbusProtoParamSpecEntryConfig();
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoParamSpecEntryConfig < 3) {
    o.descriptivePhrase = 'foo';
    o.helpText = 'foo';
    o.hideDefaultValue = true;
    o.inputDisplayOption = 'foo';
    o.isHidden = true;
    o.label = 'foo';
    o.parameterNameOption = 'foo';
    o.subSectionLabel = 'foo';
    o.uiPlaceholderText = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryConfig--;
  return o;
}

void checkEnterpriseCrmEventbusProtoParamSpecEntryConfig(
    api.EnterpriseCrmEventbusProtoParamSpecEntryConfig o) {
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoParamSpecEntryConfig < 3) {
    unittest.expect(
      o.descriptivePhrase!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.helpText!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hideDefaultValue!, unittest.isTrue);
    unittest.expect(
      o.inputDisplayOption!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isHidden!, unittest.isTrue);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parameterNameOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subSectionLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uiPlaceholderText!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryConfig--;
}

core.int buildCounterEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition =
    0;
api.EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition
    buildEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition() {
  final o = api.EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition();
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition++;
  if (buildCounterEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition < 3) {
    o.fullName = 'foo';
    o.path = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition--;
  return o;
}

void checkEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition(
    api.EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition o) {
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition++;
  if (buildCounterEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition < 3) {
    unittest.expect(
      o.fullName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition--;
}

core.int buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRule = 0;
api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRule
    buildEnterpriseCrmEventbusProtoParamSpecEntryValidationRule() {
  final o = api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRule();
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRule++;
  if (buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRule < 3) {
    o.doubleRange =
        buildEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange();
    o.intRange =
        buildEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange();
    o.stringRegex =
        buildEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex();
  }
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRule--;
  return o;
}

void checkEnterpriseCrmEventbusProtoParamSpecEntryValidationRule(
    api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRule o) {
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRule++;
  if (buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRule < 3) {
    checkEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange(
        o.doubleRange!);
    checkEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange(
        o.intRange!);
    checkEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex(
        o.stringRegex!);
  }
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRule--;
}

core.int
    buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange =
    0;
api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange
    buildEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange() {
  final o =
      api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange();
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange++;
  if (buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange <
      3) {
    o.max = 42.0;
    o.min = 42.0;
  }
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange--;
  return o;
}

void checkEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange(
    api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange o) {
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange++;
  if (buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange <
      3) {
    unittest.expect(
      o.max!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.min!,
      unittest.equals(42.0),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange--;
}

core.int
    buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange =
    0;
api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange
    buildEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange() {
  final o =
      api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange();
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange++;
  if (buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange <
      3) {
    o.max = 'foo';
    o.min = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange--;
  return o;
}

void checkEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange(
    api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange o) {
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange++;
  if (buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange <
      3) {
    unittest.expect(
      o.max!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.min!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange--;
}

core.int
    buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex =
    0;
api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex
    buildEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex() {
  final o =
      api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex();
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex++;
  if (buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex <
      3) {
    o.exclusive = true;
    o.regex = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex--;
  return o;
}

void checkEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex(
    api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex o) {
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex++;
  if (buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex <
      3) {
    unittest.expect(o.exclusive!, unittest.isTrue);
    unittest.expect(
      o.regex!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex--;
}

core.int buildCounterEnterpriseCrmEventbusProtoParameterEntry = 0;
api.EnterpriseCrmEventbusProtoParameterEntry
    buildEnterpriseCrmEventbusProtoParameterEntry() {
  final o = api.EnterpriseCrmEventbusProtoParameterEntry();
  buildCounterEnterpriseCrmEventbusProtoParameterEntry++;
  if (buildCounterEnterpriseCrmEventbusProtoParameterEntry < 3) {
    o.key = 'foo';
    o.masked = true;
    o.value = buildEnterpriseCrmEventbusProtoParameterValueType();
  }
  buildCounterEnterpriseCrmEventbusProtoParameterEntry--;
  return o;
}

void checkEnterpriseCrmEventbusProtoParameterEntry(
    api.EnterpriseCrmEventbusProtoParameterEntry o) {
  buildCounterEnterpriseCrmEventbusProtoParameterEntry++;
  if (buildCounterEnterpriseCrmEventbusProtoParameterEntry < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(o.masked!, unittest.isTrue);
    checkEnterpriseCrmEventbusProtoParameterValueType(o.value!);
  }
  buildCounterEnterpriseCrmEventbusProtoParameterEntry--;
}

core.Map<core.String, core.Object?> buildUnnamed19() => {
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

void checkUnnamed19(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterEnterpriseCrmEventbusProtoParameterValueType = 0;
api.EnterpriseCrmEventbusProtoParameterValueType
    buildEnterpriseCrmEventbusProtoParameterValueType() {
  final o = api.EnterpriseCrmEventbusProtoParameterValueType();
  buildCounterEnterpriseCrmEventbusProtoParameterValueType++;
  if (buildCounterEnterpriseCrmEventbusProtoParameterValueType < 3) {
    o.booleanArray = buildEnterpriseCrmEventbusProtoBooleanParameterArray();
    o.booleanValue = true;
    o.doubleArray = buildEnterpriseCrmEventbusProtoDoubleParameterArray();
    o.doubleValue = 42.0;
    o.intArray = buildEnterpriseCrmEventbusProtoIntParameterArray();
    o.intValue = 'foo';
    o.protoArray = buildEnterpriseCrmEventbusProtoProtoParameterArray();
    o.protoValue = buildUnnamed19();
    o.serializedObjectValue =
        buildEnterpriseCrmEventbusProtoSerializedObjectParameter();
    o.stringArray = buildEnterpriseCrmEventbusProtoStringParameterArray();
    o.stringValue = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoParameterValueType--;
  return o;
}

void checkEnterpriseCrmEventbusProtoParameterValueType(
    api.EnterpriseCrmEventbusProtoParameterValueType o) {
  buildCounterEnterpriseCrmEventbusProtoParameterValueType++;
  if (buildCounterEnterpriseCrmEventbusProtoParameterValueType < 3) {
    checkEnterpriseCrmEventbusProtoBooleanParameterArray(o.booleanArray!);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkEnterpriseCrmEventbusProtoDoubleParameterArray(o.doubleArray!);
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    checkEnterpriseCrmEventbusProtoIntParameterArray(o.intArray!);
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoProtoParameterArray(o.protoArray!);
    checkUnnamed19(o.protoValue!);
    checkEnterpriseCrmEventbusProtoSerializedObjectParameter(
        o.serializedObjectValue!);
    checkEnterpriseCrmEventbusProtoStringParameterArray(o.stringArray!);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoParameterValueType--;
}

core.int buildCounterEnterpriseCrmEventbusProtoPropertyEntry = 0;
api.EnterpriseCrmEventbusProtoPropertyEntry
    buildEnterpriseCrmEventbusProtoPropertyEntry() {
  final o = api.EnterpriseCrmEventbusProtoPropertyEntry();
  buildCounterEnterpriseCrmEventbusProtoPropertyEntry++;
  if (buildCounterEnterpriseCrmEventbusProtoPropertyEntry < 3) {
    o.key = 'foo';
    o.value = buildEnterpriseCrmEventbusProtoValueType();
  }
  buildCounterEnterpriseCrmEventbusProtoPropertyEntry--;
  return o;
}

void checkEnterpriseCrmEventbusProtoPropertyEntry(
    api.EnterpriseCrmEventbusProtoPropertyEntry o) {
  buildCounterEnterpriseCrmEventbusProtoPropertyEntry++;
  if (buildCounterEnterpriseCrmEventbusProtoPropertyEntry < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoValueType(o.value!);
  }
  buildCounterEnterpriseCrmEventbusProtoPropertyEntry--;
}

core.Map<core.String, core.Object?> buildUnnamed20() => {
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

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed21() => [
      buildUnnamed20(),
      buildUnnamed20(),
    ];

void checkUnnamed21(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed20(o[0]);
  checkUnnamed20(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoProtoParameterArray = 0;
api.EnterpriseCrmEventbusProtoProtoParameterArray
    buildEnterpriseCrmEventbusProtoProtoParameterArray() {
  final o = api.EnterpriseCrmEventbusProtoProtoParameterArray();
  buildCounterEnterpriseCrmEventbusProtoProtoParameterArray++;
  if (buildCounterEnterpriseCrmEventbusProtoProtoParameterArray < 3) {
    o.protoValues = buildUnnamed21();
  }
  buildCounterEnterpriseCrmEventbusProtoProtoParameterArray--;
  return o;
}

void checkEnterpriseCrmEventbusProtoProtoParameterArray(
    api.EnterpriseCrmEventbusProtoProtoParameterArray o) {
  buildCounterEnterpriseCrmEventbusProtoProtoParameterArray++;
  if (buildCounterEnterpriseCrmEventbusProtoProtoParameterArray < 3) {
    checkUnnamed21(o.protoValues!);
  }
  buildCounterEnterpriseCrmEventbusProtoProtoParameterArray--;
}

core.int buildCounterEnterpriseCrmEventbusProtoSerializedObjectParameter = 0;
api.EnterpriseCrmEventbusProtoSerializedObjectParameter
    buildEnterpriseCrmEventbusProtoSerializedObjectParameter() {
  final o = api.EnterpriseCrmEventbusProtoSerializedObjectParameter();
  buildCounterEnterpriseCrmEventbusProtoSerializedObjectParameter++;
  if (buildCounterEnterpriseCrmEventbusProtoSerializedObjectParameter < 3) {
    o.objectValue = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoSerializedObjectParameter--;
  return o;
}

void checkEnterpriseCrmEventbusProtoSerializedObjectParameter(
    api.EnterpriseCrmEventbusProtoSerializedObjectParameter o) {
  buildCounterEnterpriseCrmEventbusProtoSerializedObjectParameter++;
  if (buildCounterEnterpriseCrmEventbusProtoSerializedObjectParameter < 3) {
    unittest.expect(
      o.objectValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoSerializedObjectParameter--;
}

core.List<core.String> buildUnnamed22() => [
      'foo',
      'foo',
    ];

void checkUnnamed22(core.List<core.String> o) {
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

core.int buildCounterEnterpriseCrmEventbusProtoStringArray = 0;
api.EnterpriseCrmEventbusProtoStringArray
    buildEnterpriseCrmEventbusProtoStringArray() {
  final o = api.EnterpriseCrmEventbusProtoStringArray();
  buildCounterEnterpriseCrmEventbusProtoStringArray++;
  if (buildCounterEnterpriseCrmEventbusProtoStringArray < 3) {
    o.values = buildUnnamed22();
  }
  buildCounterEnterpriseCrmEventbusProtoStringArray--;
  return o;
}

void checkEnterpriseCrmEventbusProtoStringArray(
    api.EnterpriseCrmEventbusProtoStringArray o) {
  buildCounterEnterpriseCrmEventbusProtoStringArray++;
  if (buildCounterEnterpriseCrmEventbusProtoStringArray < 3) {
    checkUnnamed22(o.values!);
  }
  buildCounterEnterpriseCrmEventbusProtoStringArray--;
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

core.int buildCounterEnterpriseCrmEventbusProtoStringParameterArray = 0;
api.EnterpriseCrmEventbusProtoStringParameterArray
    buildEnterpriseCrmEventbusProtoStringParameterArray() {
  final o = api.EnterpriseCrmEventbusProtoStringParameterArray();
  buildCounterEnterpriseCrmEventbusProtoStringParameterArray++;
  if (buildCounterEnterpriseCrmEventbusProtoStringParameterArray < 3) {
    o.stringValues = buildUnnamed23();
  }
  buildCounterEnterpriseCrmEventbusProtoStringParameterArray--;
  return o;
}

void checkEnterpriseCrmEventbusProtoStringParameterArray(
    api.EnterpriseCrmEventbusProtoStringParameterArray o) {
  buildCounterEnterpriseCrmEventbusProtoStringParameterArray++;
  if (buildCounterEnterpriseCrmEventbusProtoStringParameterArray < 3) {
    checkUnnamed23(o.stringValues!);
  }
  buildCounterEnterpriseCrmEventbusProtoStringParameterArray--;
}

core.int buildCounterEnterpriseCrmEventbusProtoSuccessPolicy = 0;
api.EnterpriseCrmEventbusProtoSuccessPolicy
    buildEnterpriseCrmEventbusProtoSuccessPolicy() {
  final o = api.EnterpriseCrmEventbusProtoSuccessPolicy();
  buildCounterEnterpriseCrmEventbusProtoSuccessPolicy++;
  if (buildCounterEnterpriseCrmEventbusProtoSuccessPolicy < 3) {
    o.finalState = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoSuccessPolicy--;
  return o;
}

void checkEnterpriseCrmEventbusProtoSuccessPolicy(
    api.EnterpriseCrmEventbusProtoSuccessPolicy o) {
  buildCounterEnterpriseCrmEventbusProtoSuccessPolicy++;
  if (buildCounterEnterpriseCrmEventbusProtoSuccessPolicy < 3) {
    unittest.expect(
      o.finalState!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoSuccessPolicy--;
}

core.int buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissions = 0;
api.EnterpriseCrmEventbusProtoSuspensionAuthPermissions
    buildEnterpriseCrmEventbusProtoSuspensionAuthPermissions() {
  final o = api.EnterpriseCrmEventbusProtoSuspensionAuthPermissions();
  buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissions++;
  if (buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissions < 3) {
    o.gaiaIdentity =
        buildEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity();
    o.googleGroup =
        buildEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity();
    o.loasRole = 'foo';
    o.mdbGroup = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissions--;
  return o;
}

void checkEnterpriseCrmEventbusProtoSuspensionAuthPermissions(
    api.EnterpriseCrmEventbusProtoSuspensionAuthPermissions o) {
  buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissions++;
  if (buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissions < 3) {
    checkEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity(
        o.gaiaIdentity!);
    checkEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity(
        o.googleGroup!);
    unittest.expect(
      o.loasRole!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mdbGroup!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissions--;
}

core.int
    buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity =
    0;
api.EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity
    buildEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity() {
  final o =
      api.EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity();
  buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity++;
  if (buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity <
      3) {
    o.emailAddress = 'foo';
    o.gaiaId = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity--;
  return o;
}

void checkEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity(
    api.EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity o) {
  buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity++;
  if (buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity <
      3) {
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gaiaId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity--;
}

core.List<api.EnterpriseCrmEventbusProtoNotification> buildUnnamed24() => [
      buildEnterpriseCrmEventbusProtoNotification(),
      buildEnterpriseCrmEventbusProtoNotification(),
    ];

void checkUnnamed24(core.List<api.EnterpriseCrmEventbusProtoNotification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoNotification(o[0]);
  checkEnterpriseCrmEventbusProtoNotification(o[1]);
}

core.List<api.EnterpriseCrmEventbusProtoSuspensionAuthPermissions>
    buildUnnamed25() => [
          buildEnterpriseCrmEventbusProtoSuspensionAuthPermissions(),
          buildEnterpriseCrmEventbusProtoSuspensionAuthPermissions(),
        ];

void checkUnnamed25(
    core.List<api.EnterpriseCrmEventbusProtoSuspensionAuthPermissions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoSuspensionAuthPermissions(o[0]);
  checkEnterpriseCrmEventbusProtoSuspensionAuthPermissions(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoSuspensionConfig = 0;
api.EnterpriseCrmEventbusProtoSuspensionConfig
    buildEnterpriseCrmEventbusProtoSuspensionConfig() {
  final o = api.EnterpriseCrmEventbusProtoSuspensionConfig();
  buildCounterEnterpriseCrmEventbusProtoSuspensionConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoSuspensionConfig < 3) {
    o.customMessage = 'foo';
    o.notifications = buildUnnamed24();
    o.suspensionExpiration =
        buildEnterpriseCrmEventbusProtoSuspensionExpiration();
    o.whoMayResolve = buildUnnamed25();
  }
  buildCounterEnterpriseCrmEventbusProtoSuspensionConfig--;
  return o;
}

void checkEnterpriseCrmEventbusProtoSuspensionConfig(
    api.EnterpriseCrmEventbusProtoSuspensionConfig o) {
  buildCounterEnterpriseCrmEventbusProtoSuspensionConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoSuspensionConfig < 3) {
    unittest.expect(
      o.customMessage!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.notifications!);
    checkEnterpriseCrmEventbusProtoSuspensionExpiration(
        o.suspensionExpiration!);
    checkUnnamed25(o.whoMayResolve!);
  }
  buildCounterEnterpriseCrmEventbusProtoSuspensionConfig--;
}

core.int buildCounterEnterpriseCrmEventbusProtoSuspensionExpiration = 0;
api.EnterpriseCrmEventbusProtoSuspensionExpiration
    buildEnterpriseCrmEventbusProtoSuspensionExpiration() {
  final o = api.EnterpriseCrmEventbusProtoSuspensionExpiration();
  buildCounterEnterpriseCrmEventbusProtoSuspensionExpiration++;
  if (buildCounterEnterpriseCrmEventbusProtoSuspensionExpiration < 3) {
    o.expireAfterMs = 42;
    o.liftWhenExpired = true;
    o.remindAfterMs = 42;
  }
  buildCounterEnterpriseCrmEventbusProtoSuspensionExpiration--;
  return o;
}

void checkEnterpriseCrmEventbusProtoSuspensionExpiration(
    api.EnterpriseCrmEventbusProtoSuspensionExpiration o) {
  buildCounterEnterpriseCrmEventbusProtoSuspensionExpiration++;
  if (buildCounterEnterpriseCrmEventbusProtoSuspensionExpiration < 3) {
    unittest.expect(
      o.expireAfterMs!,
      unittest.equals(42),
    );
    unittest.expect(o.liftWhenExpired!, unittest.isTrue);
    unittest.expect(
      o.remindAfterMs!,
      unittest.equals(42),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoSuspensionExpiration--;
}

core.int buildCounterEnterpriseCrmEventbusProtoTaskAlertConfig = 0;
api.EnterpriseCrmEventbusProtoTaskAlertConfig
    buildEnterpriseCrmEventbusProtoTaskAlertConfig() {
  final o = api.EnterpriseCrmEventbusProtoTaskAlertConfig();
  buildCounterEnterpriseCrmEventbusProtoTaskAlertConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskAlertConfig < 3) {
    o.aggregationPeriod = 'foo';
    o.alertDisabled = true;
    o.alertName = 'foo';
    o.clientId = 'foo';
    o.durationThresholdMs = 'foo';
    o.errorEnumList =
        buildEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList();
    o.metricType = 'foo';
    o.numAggregationPeriods = 42;
    o.onlyFinalAttempt = true;
    o.playbookUrl = 'foo';
    o.thresholdType = 'foo';
    o.thresholdValue =
        buildEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue();
    o.warningEnumList =
        buildEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList();
  }
  buildCounterEnterpriseCrmEventbusProtoTaskAlertConfig--;
  return o;
}

void checkEnterpriseCrmEventbusProtoTaskAlertConfig(
    api.EnterpriseCrmEventbusProtoTaskAlertConfig o) {
  buildCounterEnterpriseCrmEventbusProtoTaskAlertConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskAlertConfig < 3) {
    unittest.expect(
      o.aggregationPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(o.alertDisabled!, unittest.isTrue);
    unittest.expect(
      o.alertName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.durationThresholdMs!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList(
        o.errorEnumList!);
    unittest.expect(
      o.metricType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numAggregationPeriods!,
      unittest.equals(42),
    );
    unittest.expect(o.onlyFinalAttempt!, unittest.isTrue);
    unittest.expect(
      o.playbookUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thresholdType!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue(
        o.thresholdValue!);
    checkEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList(
        o.warningEnumList!);
  }
  buildCounterEnterpriseCrmEventbusProtoTaskAlertConfig--;
}

core.List<api.EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats>
    buildUnnamed26() => [
          buildEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats(),
          buildEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats(),
        ];

void checkUnnamed26(
    core.List<
            api.EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats(o[0]);
  checkEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetails = 0;
api.EnterpriseCrmEventbusProtoTaskExecutionDetails
    buildEnterpriseCrmEventbusProtoTaskExecutionDetails() {
  final o = api.EnterpriseCrmEventbusProtoTaskExecutionDetails();
  buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetails++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetails < 3) {
    o.taskAttemptStats = buildUnnamed26();
    o.taskExecutionState = 'foo';
    o.taskNumber = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetails--;
  return o;
}

void checkEnterpriseCrmEventbusProtoTaskExecutionDetails(
    api.EnterpriseCrmEventbusProtoTaskExecutionDetails o) {
  buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetails++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetails < 3) {
    checkUnnamed26(o.taskAttemptStats!);
    unittest.expect(
      o.taskExecutionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetails--;
}

core.int
    buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats =
    0;
api.EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats
    buildEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats() {
  final o =
      api.EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats();
  buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats <
      3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats--;
  return o;
}

void checkEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats(
    api.EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats o) {
  buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats <
      3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats--;
}

core.List<api.EnterpriseCrmEventbusProtoTaskMetadataAdmin> buildUnnamed27() => [
      buildEnterpriseCrmEventbusProtoTaskMetadataAdmin(),
      buildEnterpriseCrmEventbusProtoTaskMetadataAdmin(),
    ];

void checkUnnamed27(
    core.List<api.EnterpriseCrmEventbusProtoTaskMetadataAdmin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoTaskMetadataAdmin(o[0]);
  checkEnterpriseCrmEventbusProtoTaskMetadataAdmin(o[1]);
}

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.int buildCounterEnterpriseCrmEventbusProtoTaskMetadata = 0;
api.EnterpriseCrmEventbusProtoTaskMetadata
    buildEnterpriseCrmEventbusProtoTaskMetadata() {
  final o = api.EnterpriseCrmEventbusProtoTaskMetadata();
  buildCounterEnterpriseCrmEventbusProtoTaskMetadata++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskMetadata < 3) {
    o.activeTaskName = 'foo';
    o.admins = buildUnnamed27();
    o.category = 'foo';
    o.codeSearchLink = 'foo';
    o.defaultJsonValidationOption = 'foo';
    o.defaultSpec = 'foo';
    o.description = 'foo';
    o.descriptiveName = 'foo';
    o.docMarkdown = 'foo';
    o.externalCategory = 'foo';
    o.externalCategorySequence = 42;
    o.externalDocHtml = 'foo';
    o.externalDocLink = 'foo';
    o.externalDocMarkdown = 'foo';
    o.g3DocLink = 'foo';
    o.iconLink = 'foo';
    o.isDeprecated = true;
    o.name = 'foo';
    o.standaloneExternalDocHtml = 'foo';
    o.status = 'foo';
    o.system = 'foo';
    o.tags = buildUnnamed28();
  }
  buildCounterEnterpriseCrmEventbusProtoTaskMetadata--;
  return o;
}

void checkEnterpriseCrmEventbusProtoTaskMetadata(
    api.EnterpriseCrmEventbusProtoTaskMetadata o) {
  buildCounterEnterpriseCrmEventbusProtoTaskMetadata++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskMetadata < 3) {
    unittest.expect(
      o.activeTaskName!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.admins!);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.codeSearchLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultJsonValidationOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultSpec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.descriptiveName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.docMarkdown!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalCategorySequence!,
      unittest.equals(42),
    );
    unittest.expect(
      o.externalDocHtml!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalDocLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalDocMarkdown!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.g3DocLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconLink!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDeprecated!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.standaloneExternalDocHtml!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.system!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.tags!);
  }
  buildCounterEnterpriseCrmEventbusProtoTaskMetadata--;
}

core.int buildCounterEnterpriseCrmEventbusProtoTaskMetadataAdmin = 0;
api.EnterpriseCrmEventbusProtoTaskMetadataAdmin
    buildEnterpriseCrmEventbusProtoTaskMetadataAdmin() {
  final o = api.EnterpriseCrmEventbusProtoTaskMetadataAdmin();
  buildCounterEnterpriseCrmEventbusProtoTaskMetadataAdmin++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskMetadataAdmin < 3) {
    o.googleGroupEmail = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoTaskMetadataAdmin--;
  return o;
}

void checkEnterpriseCrmEventbusProtoTaskMetadataAdmin(
    api.EnterpriseCrmEventbusProtoTaskMetadataAdmin o) {
  buildCounterEnterpriseCrmEventbusProtoTaskMetadataAdmin++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskMetadataAdmin < 3) {
    unittest.expect(
      o.googleGroupEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoTaskMetadataAdmin--;
}

core.List<api.EnterpriseCrmEventbusProtoTaskUiModuleConfig> buildUnnamed29() =>
    [
      buildEnterpriseCrmEventbusProtoTaskUiModuleConfig(),
      buildEnterpriseCrmEventbusProtoTaskUiModuleConfig(),
    ];

void checkUnnamed29(
    core.List<api.EnterpriseCrmEventbusProtoTaskUiModuleConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoTaskUiModuleConfig(o[0]);
  checkEnterpriseCrmEventbusProtoTaskUiModuleConfig(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoTaskUiConfig = 0;
api.EnterpriseCrmEventbusProtoTaskUiConfig
    buildEnterpriseCrmEventbusProtoTaskUiConfig() {
  final o = api.EnterpriseCrmEventbusProtoTaskUiConfig();
  buildCounterEnterpriseCrmEventbusProtoTaskUiConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskUiConfig < 3) {
    o.taskUiModuleConfigs = buildUnnamed29();
  }
  buildCounterEnterpriseCrmEventbusProtoTaskUiConfig--;
  return o;
}

void checkEnterpriseCrmEventbusProtoTaskUiConfig(
    api.EnterpriseCrmEventbusProtoTaskUiConfig o) {
  buildCounterEnterpriseCrmEventbusProtoTaskUiConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskUiConfig < 3) {
    checkUnnamed29(o.taskUiModuleConfigs!);
  }
  buildCounterEnterpriseCrmEventbusProtoTaskUiConfig--;
}

core.int buildCounterEnterpriseCrmEventbusProtoTaskUiModuleConfig = 0;
api.EnterpriseCrmEventbusProtoTaskUiModuleConfig
    buildEnterpriseCrmEventbusProtoTaskUiModuleConfig() {
  final o = api.EnterpriseCrmEventbusProtoTaskUiModuleConfig();
  buildCounterEnterpriseCrmEventbusProtoTaskUiModuleConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskUiModuleConfig < 3) {
    o.moduleId = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoTaskUiModuleConfig--;
  return o;
}

void checkEnterpriseCrmEventbusProtoTaskUiModuleConfig(
    api.EnterpriseCrmEventbusProtoTaskUiModuleConfig o) {
  buildCounterEnterpriseCrmEventbusProtoTaskUiModuleConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoTaskUiModuleConfig < 3) {
    unittest.expect(
      o.moduleId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoTaskUiModuleConfig--;
}

core.List<api.EnterpriseCrmEventbusProtoTeardownTaskConfig> buildUnnamed30() =>
    [
      buildEnterpriseCrmEventbusProtoTeardownTaskConfig(),
      buildEnterpriseCrmEventbusProtoTeardownTaskConfig(),
    ];

void checkUnnamed30(
    core.List<api.EnterpriseCrmEventbusProtoTeardownTaskConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoTeardownTaskConfig(o[0]);
  checkEnterpriseCrmEventbusProtoTeardownTaskConfig(o[1]);
}

core.int buildCounterEnterpriseCrmEventbusProtoTeardown = 0;
api.EnterpriseCrmEventbusProtoTeardown
    buildEnterpriseCrmEventbusProtoTeardown() {
  final o = api.EnterpriseCrmEventbusProtoTeardown();
  buildCounterEnterpriseCrmEventbusProtoTeardown++;
  if (buildCounterEnterpriseCrmEventbusProtoTeardown < 3) {
    o.teardownTaskConfigs = buildUnnamed30();
  }
  buildCounterEnterpriseCrmEventbusProtoTeardown--;
  return o;
}

void checkEnterpriseCrmEventbusProtoTeardown(
    api.EnterpriseCrmEventbusProtoTeardown o) {
  buildCounterEnterpriseCrmEventbusProtoTeardown++;
  if (buildCounterEnterpriseCrmEventbusProtoTeardown < 3) {
    checkUnnamed30(o.teardownTaskConfigs!);
  }
  buildCounterEnterpriseCrmEventbusProtoTeardown--;
}

core.int buildCounterEnterpriseCrmEventbusProtoTeardownTaskConfig = 0;
api.EnterpriseCrmEventbusProtoTeardownTaskConfig
    buildEnterpriseCrmEventbusProtoTeardownTaskConfig() {
  final o = api.EnterpriseCrmEventbusProtoTeardownTaskConfig();
  buildCounterEnterpriseCrmEventbusProtoTeardownTaskConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoTeardownTaskConfig < 3) {
    o.creatorEmail = 'foo';
    o.name = 'foo';
    o.nextTeardownTask = buildEnterpriseCrmEventbusProtoNextTeardownTask();
    o.parameters = buildEnterpriseCrmEventbusProtoEventParameters();
    o.properties = buildEnterpriseCrmEventbusProtoEventBusProperties();
    o.teardownTaskImplementationClassName = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoTeardownTaskConfig--;
  return o;
}

void checkEnterpriseCrmEventbusProtoTeardownTaskConfig(
    api.EnterpriseCrmEventbusProtoTeardownTaskConfig o) {
  buildCounterEnterpriseCrmEventbusProtoTeardownTaskConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoTeardownTaskConfig < 3) {
    unittest.expect(
      o.creatorEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoNextTeardownTask(o.nextTeardownTask!);
    checkEnterpriseCrmEventbusProtoEventParameters(o.parameters!);
    checkEnterpriseCrmEventbusProtoEventBusProperties(o.properties!);
    unittest.expect(
      o.teardownTaskImplementationClassName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoTeardownTaskConfig--;
}

core.int buildCounterEnterpriseCrmEventbusProtoToken = 0;
api.EnterpriseCrmEventbusProtoToken buildEnterpriseCrmEventbusProtoToken() {
  final o = api.EnterpriseCrmEventbusProtoToken();
  buildCounterEnterpriseCrmEventbusProtoToken++;
  if (buildCounterEnterpriseCrmEventbusProtoToken < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoToken--;
  return o;
}

void checkEnterpriseCrmEventbusProtoToken(
    api.EnterpriseCrmEventbusProtoToken o) {
  buildCounterEnterpriseCrmEventbusProtoToken++;
  if (buildCounterEnterpriseCrmEventbusProtoToken < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoToken--;
}

core.int buildCounterEnterpriseCrmEventbusProtoTriggerCriteria = 0;
api.EnterpriseCrmEventbusProtoTriggerCriteria
    buildEnterpriseCrmEventbusProtoTriggerCriteria() {
  final o = api.EnterpriseCrmEventbusProtoTriggerCriteria();
  buildCounterEnterpriseCrmEventbusProtoTriggerCriteria++;
  if (buildCounterEnterpriseCrmEventbusProtoTriggerCriteria < 3) {
    o.condition = 'foo';
    o.parameters = buildEnterpriseCrmEventbusProtoEventParameters();
    o.triggerCriteriaTaskImplementationClassName = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoTriggerCriteria--;
  return o;
}

void checkEnterpriseCrmEventbusProtoTriggerCriteria(
    api.EnterpriseCrmEventbusProtoTriggerCriteria o) {
  buildCounterEnterpriseCrmEventbusProtoTriggerCriteria++;
  if (buildCounterEnterpriseCrmEventbusProtoTriggerCriteria < 3) {
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoEventParameters(o.parameters!);
    unittest.expect(
      o.triggerCriteriaTaskImplementationClassName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoTriggerCriteria--;
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterEnterpriseCrmEventbusProtoValueType = 0;
api.EnterpriseCrmEventbusProtoValueType
    buildEnterpriseCrmEventbusProtoValueType() {
  final o = api.EnterpriseCrmEventbusProtoValueType();
  buildCounterEnterpriseCrmEventbusProtoValueType++;
  if (buildCounterEnterpriseCrmEventbusProtoValueType < 3) {
    o.booleanValue = true;
    o.doubleArray = buildEnterpriseCrmEventbusProtoDoubleArray();
    o.doubleValue = 42.0;
    o.intArray = buildEnterpriseCrmEventbusProtoIntArray();
    o.intValue = 'foo';
    o.protoValue = buildUnnamed31();
    o.stringArray = buildEnterpriseCrmEventbusProtoStringArray();
    o.stringValue = 'foo';
  }
  buildCounterEnterpriseCrmEventbusProtoValueType--;
  return o;
}

void checkEnterpriseCrmEventbusProtoValueType(
    api.EnterpriseCrmEventbusProtoValueType o) {
  buildCounterEnterpriseCrmEventbusProtoValueType++;
  if (buildCounterEnterpriseCrmEventbusProtoValueType < 3) {
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkEnterpriseCrmEventbusProtoDoubleArray(o.doubleArray!);
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    checkEnterpriseCrmEventbusProtoIntArray(o.intArray!);
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.protoValue!);
    checkEnterpriseCrmEventbusProtoStringArray(o.stringArray!);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusProtoValueType--;
}

core.int buildCounterEnterpriseCrmEventbusProtoWorkflowAlertConfig = 0;
api.EnterpriseCrmEventbusProtoWorkflowAlertConfig
    buildEnterpriseCrmEventbusProtoWorkflowAlertConfig() {
  final o = api.EnterpriseCrmEventbusProtoWorkflowAlertConfig();
  buildCounterEnterpriseCrmEventbusProtoWorkflowAlertConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoWorkflowAlertConfig < 3) {
    o.aggregationPeriod = 'foo';
    o.alertDisabled = true;
    o.alertName = 'foo';
    o.clientId = 'foo';
    o.durationThresholdMs = 'foo';
    o.errorEnumList =
        buildEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList();
    o.metricType = 'foo';
    o.numAggregationPeriods = 42;
    o.onlyFinalAttempt = true;
    o.playbookUrl = 'foo';
    o.thresholdType = 'foo';
    o.thresholdValue =
        buildEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue();
    o.warningEnumList =
        buildEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList();
  }
  buildCounterEnterpriseCrmEventbusProtoWorkflowAlertConfig--;
  return o;
}

void checkEnterpriseCrmEventbusProtoWorkflowAlertConfig(
    api.EnterpriseCrmEventbusProtoWorkflowAlertConfig o) {
  buildCounterEnterpriseCrmEventbusProtoWorkflowAlertConfig++;
  if (buildCounterEnterpriseCrmEventbusProtoWorkflowAlertConfig < 3) {
    unittest.expect(
      o.aggregationPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(o.alertDisabled!, unittest.isTrue);
    unittest.expect(
      o.alertName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.durationThresholdMs!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList(
        o.errorEnumList!);
    unittest.expect(
      o.metricType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numAggregationPeriods!,
      unittest.equals(42),
    );
    unittest.expect(o.onlyFinalAttempt!, unittest.isTrue);
    unittest.expect(
      o.playbookUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thresholdType!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue(
        o.thresholdValue!);
    checkEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList(
        o.warningEnumList!);
  }
  buildCounterEnterpriseCrmEventbusProtoWorkflowAlertConfig--;
}

core.int buildCounterEnterpriseCrmEventbusStats = 0;
api.EnterpriseCrmEventbusStats buildEnterpriseCrmEventbusStats() {
  final o = api.EnterpriseCrmEventbusStats();
  buildCounterEnterpriseCrmEventbusStats++;
  if (buildCounterEnterpriseCrmEventbusStats < 3) {
    o.dimensions = buildEnterpriseCrmEventbusStatsDimensions();
    o.durationInSeconds = 42.0;
    o.errorRate = 42.0;
    o.qps = 42.0;
    o.warningRate = 42.0;
  }
  buildCounterEnterpriseCrmEventbusStats--;
  return o;
}

void checkEnterpriseCrmEventbusStats(api.EnterpriseCrmEventbusStats o) {
  buildCounterEnterpriseCrmEventbusStats++;
  if (buildCounterEnterpriseCrmEventbusStats < 3) {
    checkEnterpriseCrmEventbusStatsDimensions(o.dimensions!);
    unittest.expect(
      o.durationInSeconds!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.errorRate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.qps!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.warningRate!,
      unittest.equals(42.0),
    );
  }
  buildCounterEnterpriseCrmEventbusStats--;
}

core.int buildCounterEnterpriseCrmEventbusStatsDimensions = 0;
api.EnterpriseCrmEventbusStatsDimensions
    buildEnterpriseCrmEventbusStatsDimensions() {
  final o = api.EnterpriseCrmEventbusStatsDimensions();
  buildCounterEnterpriseCrmEventbusStatsDimensions++;
  if (buildCounterEnterpriseCrmEventbusStatsDimensions < 3) {
    o.clientId = 'foo';
    o.enumFilterType = 'foo';
    o.errorEnumString = 'foo';
    o.retryAttempt = 'foo';
    o.taskName = 'foo';
    o.taskNumber = 'foo';
    o.triggerId = 'foo';
    o.warningEnumString = 'foo';
    o.workflowId = 'foo';
    o.workflowName = 'foo';
  }
  buildCounterEnterpriseCrmEventbusStatsDimensions--;
  return o;
}

void checkEnterpriseCrmEventbusStatsDimensions(
    api.EnterpriseCrmEventbusStatsDimensions o) {
  buildCounterEnterpriseCrmEventbusStatsDimensions++;
  if (buildCounterEnterpriseCrmEventbusStatsDimensions < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enumFilterType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorEnumString!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.retryAttempt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.warningEnumString!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workflowId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workflowName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmEventbusStatsDimensions--;
}

core.List<core.bool> buildUnnamed32() => [
      true,
      true,
    ];

void checkUnnamed32(core.List<core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.isTrue);
  unittest.expect(o[1], unittest.isTrue);
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray =
    0;
api.EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray
    buildEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray();
  buildCounterEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray <
      3) {
    o.booleanValues = buildUnnamed32();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray(
    api.EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray <
      3) {
    checkUnnamed32(o.booleanValues!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray--;
}

core.List<core.double> buildUnnamed33() => [
      42.0,
      42.0,
    ];

void checkUnnamed33(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray =
    0;
api.EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray
    buildEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray();
  buildCounterEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray < 3) {
    o.doubleValues = buildUnnamed33();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray(
    api.EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray < 3) {
    checkUnnamed33(o.doubleValues!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray--;
}

core.List<api.EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats>
    buildUnnamed34() => [
          buildEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats(),
          buildEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats(),
        ];

void checkUnnamed34(
    core.List<
            api
            .EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats(o[0]);
  checkEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats(o[1]);
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot>
    buildUnnamed35() => [
          buildEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot(),
          buildEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot(),
        ];

void checkUnnamed35(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot(o[1]);
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails =
    0;
api.EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails
    buildEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails();
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails <
      3) {
    o.cancelReason = 'foo';
    o.eventAttemptStats = buildUnnamed34();
    o.eventExecutionSnapshot = buildUnnamed35();
    o.eventExecutionSnapshotsSize = 'foo';
    o.eventExecutionState = 'foo';
    o.eventRetriesFromBeginningCount = 42;
    o.logFilePath = 'foo';
    o.networkAddress = 'foo';
    o.nextExecutionTime = 'foo';
    o.ryeLockUnheldCount = 42;
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails(
    api.EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails <
      3) {
    unittest.expect(
      o.cancelReason!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.eventAttemptStats!);
    checkUnnamed35(o.eventExecutionSnapshot!);
    unittest.expect(
      o.eventExecutionSnapshotsSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventExecutionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventRetriesFromBeginningCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.logFilePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextExecutionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ryeLockUnheldCount!,
      unittest.equals(42),
    );
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails--;
}

core.List<api.EnterpriseCrmEventbusProtoErrorDetail> buildUnnamed36() => [
      buildEnterpriseCrmEventbusProtoErrorDetail(),
      buildEnterpriseCrmEventbusProtoErrorDetail(),
    ];

void checkUnnamed36(core.List<api.EnterpriseCrmEventbusProtoErrorDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoErrorDetail(o[0]);
  checkEnterpriseCrmEventbusProtoErrorDetail(o[1]);
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo = 0;
api.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo
    buildEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo();
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo < 3) {
    o.clientId = 'foo';
    o.cloudLoggingDetails =
        buildEnterpriseCrmEventbusProtoCloudLoggingDetails();
    o.createTime = 'foo';
    o.errorCode = buildCrmlogErrorCode();
    o.errors = buildUnnamed36();
    o.eventExecutionDetails =
        buildEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails();
    o.eventExecutionInfoId = 'foo';
    o.executionTraceInfo = buildEnterpriseCrmEventbusProtoExecutionTraceInfo();
    o.integrationVersionUserLabel = 'foo';
    o.lastModifiedTime = 'foo';
    o.postMethod = 'foo';
    o.product = 'foo';
    o.replayInfo =
        buildEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo();
    o.requestId = 'foo';
    o.requestParams = buildEnterpriseCrmFrontendsEventbusProtoEventParameters();
    o.responseParams =
        buildEnterpriseCrmFrontendsEventbusProtoEventParameters();
    o.snapshotNumber = 'foo';
    o.tenant = 'foo';
    o.triggerId = 'foo';
    o.workflowId = 'foo';
    o.workflowName = 'foo';
    o.workflowRetryBackoffIntervalSeconds = 'foo';
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo(
    api.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoCloudLoggingDetails(o.cloudLoggingDetails!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkCrmlogErrorCode(o.errorCode!);
    checkUnnamed36(o.errors!);
    checkEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails(
        o.eventExecutionDetails!);
    unittest.expect(
      o.eventExecutionInfoId!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoExecutionTraceInfo(o.executionTraceInfo!);
    unittest.expect(
      o.integrationVersionUserLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.product!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo(
        o.replayInfo!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmFrontendsEventbusProtoEventParameters(o.requestParams!);
    checkEnterpriseCrmFrontendsEventbusProtoEventParameters(o.responseParams!);
    unittest.expect(
      o.snapshotNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tenant!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workflowId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workflowName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workflowRetryBackoffIntervalSeconds!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo--;
}

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.int
    buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo =
    0;
api.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo
    buildEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo() {
  final o =
      api.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo();
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo <
      3) {
    o.originalExecutionInfoId = 'foo';
    o.replayReason = 'foo';
    o.replayedExecutionInfoIds = buildUnnamed37();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo(
    api.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo <
      3) {
    unittest.expect(
      o.originalExecutionInfoId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replayReason!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.replayedExecutionInfoIds!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo--;
}

core.List<api.EnterpriseCrmEventbusProtoConditionResult> buildUnnamed38() => [
      buildEnterpriseCrmEventbusProtoConditionResult(),
      buildEnterpriseCrmEventbusProtoConditionResult(),
    ];

void checkUnnamed38(
    core.List<api.EnterpriseCrmEventbusProtoConditionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoConditionResult(o[0]);
  checkEnterpriseCrmEventbusProtoConditionResult(o[1]);
}

core.List<api.EnterpriseCrmEventbusProtoTaskExecutionDetails>
    buildUnnamed39() => [
          buildEnterpriseCrmEventbusProtoTaskExecutionDetails(),
          buildEnterpriseCrmEventbusProtoTaskExecutionDetails(),
        ];

void checkUnnamed39(
    core.List<api.EnterpriseCrmEventbusProtoTaskExecutionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoTaskExecutionDetails(o[0]);
  checkEnterpriseCrmEventbusProtoTaskExecutionDetails(o[1]);
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot =
    0;
api.EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot
    buildEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot();
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot <
      3) {
    o.checkpointTaskNumber = 'foo';
    o.conditionResults = buildUnnamed38();
    o.diffParams = buildEnterpriseCrmFrontendsEventbusProtoEventParameters();
    o.eventExecutionInfoId = 'foo';
    o.eventExecutionSnapshotId = 'foo';
    o.eventExecutionSnapshotMetadata =
        buildEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata();
    o.eventParams = buildEnterpriseCrmFrontendsEventbusProtoEventParameters();
    o.snapshotTime = 'foo';
    o.taskExecutionDetails = buildUnnamed39();
    o.taskName = 'foo';
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot(
    api.EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot <
      3) {
    unittest.expect(
      o.checkpointTaskNumber!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.conditionResults!);
    checkEnterpriseCrmFrontendsEventbusProtoEventParameters(o.diffParams!);
    unittest.expect(
      o.eventExecutionInfoId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventExecutionSnapshotId!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata(
        o.eventExecutionSnapshotMetadata!);
    checkEnterpriseCrmFrontendsEventbusProtoEventParameters(o.eventParams!);
    unittest.expect(
      o.snapshotTime!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.taskExecutionDetails!);
    unittest.expect(
      o.taskName!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot--;
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry>
    buildUnnamed40() => [
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
        ];

void checkUnnamed40(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[1]);
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoEventParameters = 0;
api.EnterpriseCrmFrontendsEventbusProtoEventParameters
    buildEnterpriseCrmFrontendsEventbusProtoEventParameters() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoEventParameters();
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventParameters++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoEventParameters < 3) {
    o.parameters = buildUnnamed40();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventParameters--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoEventParameters(
    api.EnterpriseCrmFrontendsEventbusProtoEventParameters o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventParameters++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoEventParameters < 3) {
    checkUnnamed40(o.parameters!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoEventParameters--;
}

core.List<core.String> buildUnnamed41() => [
      'foo',
      'foo',
    ];

void checkUnnamed41(core.List<core.String> o) {
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

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoIntParameterArray = 0;
api.EnterpriseCrmFrontendsEventbusProtoIntParameterArray
    buildEnterpriseCrmFrontendsEventbusProtoIntParameterArray() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoIntParameterArray();
  buildCounterEnterpriseCrmFrontendsEventbusProtoIntParameterArray++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoIntParameterArray < 3) {
    o.intValues = buildUnnamed41();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoIntParameterArray--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoIntParameterArray(
    api.EnterpriseCrmFrontendsEventbusProtoIntParameterArray o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoIntParameterArray++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoIntParameterArray < 3) {
    checkUnnamed41(o.intValues!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoIntParameterArray--;
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecEntry = 0;
api.EnterpriseCrmFrontendsEventbusProtoParamSpecEntry
    buildEnterpriseCrmFrontendsEventbusProtoParamSpecEntry() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoParamSpecEntry();
  buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecEntry++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecEntry < 3) {
    o.className = 'foo';
    o.collectionElementClassName = 'foo';
    o.config = buildEnterpriseCrmEventbusProtoParamSpecEntryConfig();
    o.dataType = 'foo';
    o.defaultValue =
        buildEnterpriseCrmFrontendsEventbusProtoParameterValueType();
    o.isDeprecated = true;
    o.isOutput = true;
    o.jsonSchema = 'foo';
    o.key = 'foo';
    o.protoDef = buildEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition();
    o.required = true;
    o.validationRule =
        buildEnterpriseCrmEventbusProtoParamSpecEntryValidationRule();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecEntry--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoParamSpecEntry(
    api.EnterpriseCrmFrontendsEventbusProtoParamSpecEntry o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecEntry++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecEntry < 3) {
    unittest.expect(
      o.className!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.collectionElementClassName!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoParamSpecEntryConfig(o.config!);
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmFrontendsEventbusProtoParameterValueType(o.defaultValue!);
    unittest.expect(o.isDeprecated!, unittest.isTrue);
    unittest.expect(o.isOutput!, unittest.isTrue);
    unittest.expect(
      o.jsonSchema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition(o.protoDef!);
    unittest.expect(o.required!, unittest.isTrue);
    checkEnterpriseCrmEventbusProtoParamSpecEntryValidationRule(
        o.validationRule!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecEntry--;
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoParamSpecEntry>
    buildUnnamed42() => [
          buildEnterpriseCrmFrontendsEventbusProtoParamSpecEntry(),
          buildEnterpriseCrmFrontendsEventbusProtoParamSpecEntry(),
        ];

void checkUnnamed42(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoParamSpecEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoParamSpecEntry(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoParamSpecEntry(o[1]);
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage = 0;
api.EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage
    buildEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage();
  buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage < 3) {
    o.parameters = buildUnnamed42();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage(
    api.EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage < 3) {
    checkUnnamed42(o.parameters!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage--;
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoParameterEntry = 0;
api.EnterpriseCrmFrontendsEventbusProtoParameterEntry
    buildEnterpriseCrmFrontendsEventbusProtoParameterEntry() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoParameterEntry();
  buildCounterEnterpriseCrmFrontendsEventbusProtoParameterEntry++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoParameterEntry < 3) {
    o.dataType = 'foo';
    o.key = 'foo';
    o.masked = true;
    o.value = buildEnterpriseCrmFrontendsEventbusProtoParameterValueType();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoParameterEntry--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(
    api.EnterpriseCrmFrontendsEventbusProtoParameterEntry o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoParameterEntry++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoParameterEntry < 3) {
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(o.masked!, unittest.isTrue);
    checkEnterpriseCrmFrontendsEventbusProtoParameterValueType(o.value!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoParameterEntry--;
}

core.Map<core.String, core.Object?> buildUnnamed43() => {
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

void checkUnnamed43(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoParameterValueType = 0;
api.EnterpriseCrmFrontendsEventbusProtoParameterValueType
    buildEnterpriseCrmFrontendsEventbusProtoParameterValueType() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoParameterValueType();
  buildCounterEnterpriseCrmFrontendsEventbusProtoParameterValueType++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoParameterValueType < 3) {
    o.booleanArray =
        buildEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray();
    o.booleanValue = true;
    o.doubleArray =
        buildEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray();
    o.doubleValue = 42.0;
    o.intArray = buildEnterpriseCrmFrontendsEventbusProtoIntParameterArray();
    o.intValue = 'foo';
    o.jsonValue = 'foo';
    o.protoArray =
        buildEnterpriseCrmFrontendsEventbusProtoProtoParameterArray();
    o.protoValue = buildUnnamed43();
    o.serializedObjectValue =
        buildEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter();
    o.stringArray =
        buildEnterpriseCrmFrontendsEventbusProtoStringParameterArray();
    o.stringValue = 'foo';
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoParameterValueType--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoParameterValueType(
    api.EnterpriseCrmFrontendsEventbusProtoParameterValueType o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoParameterValueType++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoParameterValueType < 3) {
    checkEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray(
        o.booleanArray!);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray(
        o.doubleArray!);
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    checkEnterpriseCrmFrontendsEventbusProtoIntParameterArray(o.intArray!);
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jsonValue!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmFrontendsEventbusProtoProtoParameterArray(o.protoArray!);
    checkUnnamed43(o.protoValue!);
    checkEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter(
        o.serializedObjectValue!);
    checkEnterpriseCrmFrontendsEventbusProtoStringParameterArray(
        o.stringArray!);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoParameterValueType--;
}

core.Map<core.String, core.Object?> buildUnnamed44() => {
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

void checkUnnamed44(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed45() => [
      buildUnnamed44(),
      buildUnnamed44(),
    ];

void checkUnnamed45(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed44(o[0]);
  checkUnnamed44(o[1]);
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoProtoParameterArray = 0;
api.EnterpriseCrmFrontendsEventbusProtoProtoParameterArray
    buildEnterpriseCrmFrontendsEventbusProtoProtoParameterArray() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoProtoParameterArray();
  buildCounterEnterpriseCrmFrontendsEventbusProtoProtoParameterArray++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoProtoParameterArray < 3) {
    o.protoValues = buildUnnamed45();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoProtoParameterArray--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoProtoParameterArray(
    api.EnterpriseCrmFrontendsEventbusProtoProtoParameterArray o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoProtoParameterArray++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoProtoParameterArray < 3) {
    checkUnnamed45(o.protoValues!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoProtoParameterArray--;
}

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
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

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoRollbackStrategy = 0;
api.EnterpriseCrmFrontendsEventbusProtoRollbackStrategy
    buildEnterpriseCrmFrontendsEventbusProtoRollbackStrategy() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoRollbackStrategy();
  buildCounterEnterpriseCrmFrontendsEventbusProtoRollbackStrategy++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoRollbackStrategy < 3) {
    o.parameters = buildEnterpriseCrmFrontendsEventbusProtoEventParameters();
    o.rollbackTaskImplementationClassName = 'foo';
    o.taskNumbersToRollback = buildUnnamed46();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoRollbackStrategy--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoRollbackStrategy(
    api.EnterpriseCrmFrontendsEventbusProtoRollbackStrategy o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoRollbackStrategy++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoRollbackStrategy < 3) {
    checkEnterpriseCrmFrontendsEventbusProtoEventParameters(o.parameters!);
    unittest.expect(
      o.rollbackTaskImplementationClassName!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.taskNumbersToRollback!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoRollbackStrategy--;
}

core.int
    buildCounterEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter =
    0;
api.EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter
    buildEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter();
  buildCounterEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter <
      3) {
    o.objectValue = 'foo';
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter(
    api.EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter <
      3) {
    unittest.expect(
      o.objectValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter--;
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoStringParameterArray =
    0;
api.EnterpriseCrmFrontendsEventbusProtoStringParameterArray
    buildEnterpriseCrmFrontendsEventbusProtoStringParameterArray() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoStringParameterArray();
  buildCounterEnterpriseCrmFrontendsEventbusProtoStringParameterArray++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoStringParameterArray < 3) {
    o.stringValues = buildUnnamed47();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoStringParameterArray--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoStringParameterArray(
    api.EnterpriseCrmFrontendsEventbusProtoStringParameterArray o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoStringParameterArray++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoStringParameterArray < 3) {
    checkUnnamed47(o.stringValues!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoStringParameterArray--;
}

core.List<api.EnterpriseCrmEventbusProtoTaskAlertConfig> buildUnnamed48() => [
      buildEnterpriseCrmEventbusProtoTaskAlertConfig(),
      buildEnterpriseCrmEventbusProtoTaskAlertConfig(),
    ];

void checkUnnamed48(
    core.List<api.EnterpriseCrmEventbusProtoTaskAlertConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoTaskAlertConfig(o[0]);
  checkEnterpriseCrmEventbusProtoTaskAlertConfig(o[1]);
}

core.List<api.EnterpriseCrmEventbusProtoNextTask> buildUnnamed49() => [
      buildEnterpriseCrmEventbusProtoNextTask(),
      buildEnterpriseCrmEventbusProtoNextTask(),
    ];

void checkUnnamed49(core.List<api.EnterpriseCrmEventbusProtoNextTask> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoNextTask(o[0]);
  checkEnterpriseCrmEventbusProtoNextTask(o[1]);
}

core.Map<core.String, api.EnterpriseCrmFrontendsEventbusProtoParameterEntry>
    buildUnnamed50() => {
          'x': buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
          'y': buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
        };

void checkUnnamed50(
    core.Map<core.String, api.EnterpriseCrmFrontendsEventbusProtoParameterEntry>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o['x']!);
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o['y']!);
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoTaskConfig = 0;
api.EnterpriseCrmFrontendsEventbusProtoTaskConfig
    buildEnterpriseCrmFrontendsEventbusProtoTaskConfig() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoTaskConfig();
  buildCounterEnterpriseCrmFrontendsEventbusProtoTaskConfig++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoTaskConfig < 3) {
    o.alertConfigs = buildUnnamed48();
    o.conditionalFailurePolicies =
        buildEnterpriseCrmEventbusProtoConditionalFailurePolicies();
    o.createTime = 'foo';
    o.creatorEmail = 'foo';
    o.description = 'foo';
    o.disableStrictTypeValidation = true;
    o.errorCatcherId = 'foo';
    o.externalTaskType = 'foo';
    o.failurePolicy = buildEnterpriseCrmEventbusProtoFailurePolicy();
    o.incomingEdgeCount = 42;
    o.jsonValidationOption = 'foo';
    o.label = 'foo';
    o.lastModifiedTime = 'foo';
    o.nextTasks = buildUnnamed49();
    o.nextTasksExecutionPolicy = 'foo';
    o.parameters = buildUnnamed50();
    o.position = buildEnterpriseCrmEventbusProtoCoordinate();
    o.precondition = 'foo';
    o.preconditionLabel = 'foo';
    o.rollbackStrategy =
        buildEnterpriseCrmFrontendsEventbusProtoRollbackStrategy();
    o.successPolicy = buildEnterpriseCrmEventbusProtoSuccessPolicy();
    o.synchronousCallFailurePolicy =
        buildEnterpriseCrmEventbusProtoFailurePolicy();
    o.taskEntity = buildEnterpriseCrmFrontendsEventbusProtoTaskEntity();
    o.taskExecutionStrategy = 'foo';
    o.taskName = 'foo';
    o.taskNumber = 'foo';
    o.taskSpec = 'foo';
    o.taskTemplateName = 'foo';
    o.taskType = 'foo';
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoTaskConfig--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoTaskConfig(
    api.EnterpriseCrmFrontendsEventbusProtoTaskConfig o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoTaskConfig++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoTaskConfig < 3) {
    checkUnnamed48(o.alertConfigs!);
    checkEnterpriseCrmEventbusProtoConditionalFailurePolicies(
        o.conditionalFailurePolicies!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creatorEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disableStrictTypeValidation!, unittest.isTrue);
    unittest.expect(
      o.errorCatcherId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalTaskType!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoFailurePolicy(o.failurePolicy!);
    unittest.expect(
      o.incomingEdgeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.jsonValidationOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifiedTime!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.nextTasks!);
    unittest.expect(
      o.nextTasksExecutionPolicy!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.parameters!);
    checkEnterpriseCrmEventbusProtoCoordinate(o.position!);
    unittest.expect(
      o.precondition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preconditionLabel!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmFrontendsEventbusProtoRollbackStrategy(
        o.rollbackStrategy!);
    checkEnterpriseCrmEventbusProtoSuccessPolicy(o.successPolicy!);
    checkEnterpriseCrmEventbusProtoFailurePolicy(
        o.synchronousCallFailurePolicy!);
    checkEnterpriseCrmFrontendsEventbusProtoTaskEntity(o.taskEntity!);
    unittest.expect(
      o.taskExecutionStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskSpec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskTemplateName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskType!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoTaskConfig--;
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoTaskEntity = 0;
api.EnterpriseCrmFrontendsEventbusProtoTaskEntity
    buildEnterpriseCrmFrontendsEventbusProtoTaskEntity() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoTaskEntity();
  buildCounterEnterpriseCrmFrontendsEventbusProtoTaskEntity++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoTaskEntity < 3) {
    o.disabledForVpcSc = true;
    o.metadata = buildEnterpriseCrmEventbusProtoTaskMetadata();
    o.paramSpecs = buildEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage();
    o.stats = buildEnterpriseCrmEventbusStats();
    o.taskType = 'foo';
    o.uiConfig = buildEnterpriseCrmEventbusProtoTaskUiConfig();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoTaskEntity--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoTaskEntity(
    api.EnterpriseCrmFrontendsEventbusProtoTaskEntity o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoTaskEntity++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoTaskEntity < 3) {
    unittest.expect(o.disabledForVpcSc!, unittest.isTrue);
    checkEnterpriseCrmEventbusProtoTaskMetadata(o.metadata!);
    checkEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage(o.paramSpecs!);
    checkEnterpriseCrmEventbusStats(o.stats!);
    unittest.expect(
      o.taskType!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoTaskUiConfig(o.uiConfig!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoTaskEntity--;
}

core.List<api.EnterpriseCrmEventbusProtoWorkflowAlertConfig> buildUnnamed51() =>
    [
      buildEnterpriseCrmEventbusProtoWorkflowAlertConfig(),
      buildEnterpriseCrmEventbusProtoWorkflowAlertConfig(),
    ];

void checkUnnamed51(
    core.List<api.EnterpriseCrmEventbusProtoWorkflowAlertConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoWorkflowAlertConfig(o[0]);
  checkEnterpriseCrmEventbusProtoWorkflowAlertConfig(o[1]);
}

core.List<core.String> buildUnnamed52() => [
      'foo',
      'foo',
    ];

void checkUnnamed52(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed53() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed53(core.Map<core.String, core.String> o) {
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

core.List<api.EnterpriseCrmEventbusProtoNextTask> buildUnnamed54() => [
      buildEnterpriseCrmEventbusProtoNextTask(),
      buildEnterpriseCrmEventbusProtoNextTask(),
    ];

void checkUnnamed54(core.List<api.EnterpriseCrmEventbusProtoNextTask> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmEventbusProtoNextTask(o[0]);
  checkEnterpriseCrmEventbusProtoNextTask(o[1]);
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfig = 0;
api.EnterpriseCrmFrontendsEventbusProtoTriggerConfig
    buildEnterpriseCrmFrontendsEventbusProtoTriggerConfig() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoTriggerConfig();
  buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfig++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfig < 3) {
    o.alertConfig = buildUnnamed51();
    o.cloudSchedulerConfig =
        buildEnterpriseCrmEventbusProtoCloudSchedulerConfig();
    o.description = 'foo';
    o.enabledClients = buildUnnamed52();
    o.errorCatcherId = 'foo';
    o.inputVariables =
        buildEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables();
    o.label = 'foo';
    o.nextTasksExecutionPolicy = 'foo';
    o.outputVariables =
        buildEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables();
    o.pauseWorkflowExecutions = true;
    o.position = buildEnterpriseCrmEventbusProtoCoordinate();
    o.properties = buildUnnamed53();
    o.startTasks = buildUnnamed54();
    o.triggerCriteria = buildEnterpriseCrmEventbusProtoTriggerCriteria();
    o.triggerId = 'foo';
    o.triggerName = 'foo';
    o.triggerNumber = 'foo';
    o.triggerType = 'foo';
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfig--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoTriggerConfig(
    api.EnterpriseCrmFrontendsEventbusProtoTriggerConfig o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfig++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfig < 3) {
    checkUnnamed51(o.alertConfig!);
    checkEnterpriseCrmEventbusProtoCloudSchedulerConfig(
        o.cloudSchedulerConfig!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.enabledClients!);
    unittest.expect(
      o.errorCatcherId!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables(
        o.inputVariables!);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextTasksExecutionPolicy!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables(
        o.outputVariables!);
    unittest.expect(o.pauseWorkflowExecutions!, unittest.isTrue);
    checkEnterpriseCrmEventbusProtoCoordinate(o.position!);
    checkUnnamed53(o.properties!);
    checkUnnamed54(o.startTasks!);
    checkEnterpriseCrmEventbusProtoTriggerCriteria(o.triggerCriteria!);
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerType!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfig--;
}

core.List<core.String> buildUnnamed55() => [
      'foo',
      'foo',
    ];

void checkUnnamed55(core.List<core.String> o) {
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

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables =
    0;
api.EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables
    buildEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables();
  buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables <
      3) {
    o.names = buildUnnamed55();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables(
    api.EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables <
      3) {
    checkUnnamed55(o.names!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables--;
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>
    buildUnnamed56() => [
          buildEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry(),
          buildEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry(),
        ];

void checkUnnamed56(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry(o[1]);
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry =
    0;
api.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry
    buildEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry();
  buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry <
      3) {
    o.attributes = buildEnterpriseCrmEventbusProtoAttributes();
    o.children = buildUnnamed56();
    o.containsLargeData = true;
    o.dataType = 'foo';
    o.defaultValue =
        buildEnterpriseCrmFrontendsEventbusProtoParameterValueType();
    o.description = 'foo';
    o.inOutType = 'foo';
    o.isTransient = true;
    o.jsonSchema = 'foo';
    o.key = 'foo';
    o.name = 'foo';
    o.producedBy = buildEnterpriseCrmEventbusProtoNodeIdentifier();
    o.producer = 'foo';
    o.protoDefName = 'foo';
    o.protoDefPath = 'foo';
    o.required = true;
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry(
    api.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry <
      3) {
    checkEnterpriseCrmEventbusProtoAttributes(o.attributes!);
    checkUnnamed56(o.children!);
    unittest.expect(o.containsLargeData!, unittest.isTrue);
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmFrontendsEventbusProtoParameterValueType(o.defaultValue!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inOutType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isTransient!, unittest.isTrue);
    unittest.expect(
      o.jsonSchema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoNodeIdentifier(o.producedBy!);
    unittest.expect(
      o.producer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protoDefName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protoDefPath!,
      unittest.equals('foo'),
    );
    unittest.expect(o.required!, unittest.isTrue);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry--;
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>
    buildUnnamed57() => [
          buildEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry(),
          buildEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry(),
        ];

void checkUnnamed57(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry(o[1]);
}

core.int buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameters = 0;
api.EnterpriseCrmFrontendsEventbusProtoWorkflowParameters
    buildEnterpriseCrmFrontendsEventbusProtoWorkflowParameters() {
  final o = api.EnterpriseCrmFrontendsEventbusProtoWorkflowParameters();
  buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameters++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameters < 3) {
    o.parameters = buildUnnamed57();
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameters--;
  return o;
}

void checkEnterpriseCrmFrontendsEventbusProtoWorkflowParameters(
    api.EnterpriseCrmFrontendsEventbusProtoWorkflowParameters o) {
  buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameters++;
  if (buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameters < 3) {
    checkUnnamed57(o.parameters!);
  }
  buildCounterEnterpriseCrmFrontendsEventbusProtoWorkflowParameters--;
}

core.List<api.GoogleCloudConnectorsV1ConfigVariable> buildUnnamed58() => [
      buildGoogleCloudConnectorsV1ConfigVariable(),
      buildGoogleCloudConnectorsV1ConfigVariable(),
    ];

void checkUnnamed58(core.List<api.GoogleCloudConnectorsV1ConfigVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudConnectorsV1ConfigVariable(o[0]);
  checkGoogleCloudConnectorsV1ConfigVariable(o[1]);
}

core.int buildCounterGoogleCloudConnectorsV1AuthConfig = 0;
api.GoogleCloudConnectorsV1AuthConfig buildGoogleCloudConnectorsV1AuthConfig() {
  final o = api.GoogleCloudConnectorsV1AuthConfig();
  buildCounterGoogleCloudConnectorsV1AuthConfig++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfig < 3) {
    o.additionalVariables = buildUnnamed58();
    o.authKey = 'foo';
    o.authType = 'foo';
    o.oauth2AuthCodeFlow =
        buildGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow();
    o.oauth2AuthCodeFlowGoogleManaged =
        buildGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged();
    o.oauth2ClientCredentials =
        buildGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials();
    o.oauth2JwtBearer = buildGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer();
    o.sshPublicKey = buildGoogleCloudConnectorsV1AuthConfigSshPublicKey();
    o.userPassword = buildGoogleCloudConnectorsV1AuthConfigUserPassword();
  }
  buildCounterGoogleCloudConnectorsV1AuthConfig--;
  return o;
}

void checkGoogleCloudConnectorsV1AuthConfig(
    api.GoogleCloudConnectorsV1AuthConfig o) {
  buildCounterGoogleCloudConnectorsV1AuthConfig++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfig < 3) {
    checkUnnamed58(o.additionalVariables!);
    unittest.expect(
      o.authKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow(
        o.oauth2AuthCodeFlow!);
    checkGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged(
        o.oauth2AuthCodeFlowGoogleManaged!);
    checkGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials(
        o.oauth2ClientCredentials!);
    checkGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer(o.oauth2JwtBearer!);
    checkGoogleCloudConnectorsV1AuthConfigSshPublicKey(o.sshPublicKey!);
    checkGoogleCloudConnectorsV1AuthConfigUserPassword(o.userPassword!);
  }
  buildCounterGoogleCloudConnectorsV1AuthConfig--;
}

core.List<core.String> buildUnnamed59() => [
      'foo',
      'foo',
    ];

void checkUnnamed59(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow = 0;
api.GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow
    buildGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow() {
  final o = api.GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow();
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow < 3) {
    o.authCode = 'foo';
    o.authUri = 'foo';
    o.clientId = 'foo';
    o.clientSecret = buildGoogleCloudConnectorsV1Secret();
    o.enablePkce = true;
    o.pkceVerifier = 'foo';
    o.redirectUri = 'foo';
    o.scopes = buildUnnamed59();
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow--;
  return o;
}

void checkGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow(
    api.GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow o) {
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow < 3) {
    unittest.expect(
      o.authCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1Secret(o.clientSecret!);
    unittest.expect(o.enablePkce!, unittest.isTrue);
    unittest.expect(
      o.pkceVerifier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.redirectUri!,
      unittest.equals('foo'),
    );
    checkUnnamed59(o.scopes!);
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow--;
}

core.List<core.String> buildUnnamed60() => [
      'foo',
      'foo',
    ];

void checkUnnamed60(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged =
    0;
api.GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged
    buildGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged() {
  final o =
      api.GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged();
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged <
      3) {
    o.authCode = 'foo';
    o.redirectUri = 'foo';
    o.scopes = buildUnnamed60();
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged--;
  return o;
}

void checkGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged(
    api.GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged o) {
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged <
      3) {
    unittest.expect(
      o.authCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.redirectUri!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.scopes!);
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged--;
}

core.int buildCounterGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials =
    0;
api.GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials
    buildGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials() {
  final o = api.GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials();
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials <
      3) {
    o.clientId = 'foo';
    o.clientSecret = buildGoogleCloudConnectorsV1Secret();
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials--;
  return o;
}

void checkGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials(
    api.GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials o) {
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials <
      3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1Secret(o.clientSecret!);
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials--;
}

core.int buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer = 0;
api.GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer
    buildGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer() {
  final o = api.GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer();
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer < 3) {
    o.clientKey = buildGoogleCloudConnectorsV1Secret();
    o.jwtClaims =
        buildGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims();
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer--;
  return o;
}

void checkGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer(
    api.GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer o) {
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer < 3) {
    checkGoogleCloudConnectorsV1Secret(o.clientKey!);
    checkGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims(
        o.jwtClaims!);
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer--;
}

core.int buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims =
    0;
api.GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims
    buildGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims() {
  final o = api.GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims();
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims <
      3) {
    o.audience = 'foo';
    o.issuer = 'foo';
    o.subject = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims--;
  return o;
}

void checkGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims(
    api.GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims o) {
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims <
      3) {
    unittest.expect(
      o.audience!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issuer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subject!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims--;
}

core.int buildCounterGoogleCloudConnectorsV1AuthConfigSshPublicKey = 0;
api.GoogleCloudConnectorsV1AuthConfigSshPublicKey
    buildGoogleCloudConnectorsV1AuthConfigSshPublicKey() {
  final o = api.GoogleCloudConnectorsV1AuthConfigSshPublicKey();
  buildCounterGoogleCloudConnectorsV1AuthConfigSshPublicKey++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigSshPublicKey < 3) {
    o.certType = 'foo';
    o.sshClientCert = buildGoogleCloudConnectorsV1Secret();
    o.sshClientCertPass = buildGoogleCloudConnectorsV1Secret();
    o.username = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigSshPublicKey--;
  return o;
}

void checkGoogleCloudConnectorsV1AuthConfigSshPublicKey(
    api.GoogleCloudConnectorsV1AuthConfigSshPublicKey o) {
  buildCounterGoogleCloudConnectorsV1AuthConfigSshPublicKey++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigSshPublicKey < 3) {
    unittest.expect(
      o.certType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1Secret(o.sshClientCert!);
    checkGoogleCloudConnectorsV1Secret(o.sshClientCertPass!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigSshPublicKey--;
}

core.int buildCounterGoogleCloudConnectorsV1AuthConfigUserPassword = 0;
api.GoogleCloudConnectorsV1AuthConfigUserPassword
    buildGoogleCloudConnectorsV1AuthConfigUserPassword() {
  final o = api.GoogleCloudConnectorsV1AuthConfigUserPassword();
  buildCounterGoogleCloudConnectorsV1AuthConfigUserPassword++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigUserPassword < 3) {
    o.password = buildGoogleCloudConnectorsV1Secret();
    o.username = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigUserPassword--;
  return o;
}

void checkGoogleCloudConnectorsV1AuthConfigUserPassword(
    api.GoogleCloudConnectorsV1AuthConfigUserPassword o) {
  buildCounterGoogleCloudConnectorsV1AuthConfigUserPassword++;
  if (buildCounterGoogleCloudConnectorsV1AuthConfigUserPassword < 3) {
    checkGoogleCloudConnectorsV1Secret(o.password!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1AuthConfigUserPassword--;
}

core.int buildCounterGoogleCloudConnectorsV1BillingConfig = 0;
api.GoogleCloudConnectorsV1BillingConfig
    buildGoogleCloudConnectorsV1BillingConfig() {
  final o = api.GoogleCloudConnectorsV1BillingConfig();
  buildCounterGoogleCloudConnectorsV1BillingConfig++;
  if (buildCounterGoogleCloudConnectorsV1BillingConfig < 3) {
    o.billingCategory = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1BillingConfig--;
  return o;
}

void checkGoogleCloudConnectorsV1BillingConfig(
    api.GoogleCloudConnectorsV1BillingConfig o) {
  buildCounterGoogleCloudConnectorsV1BillingConfig++;
  if (buildCounterGoogleCloudConnectorsV1BillingConfig < 3) {
    unittest.expect(
      o.billingCategory!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1BillingConfig--;
}

core.int buildCounterGoogleCloudConnectorsV1ConfigVariable = 0;
api.GoogleCloudConnectorsV1ConfigVariable
    buildGoogleCloudConnectorsV1ConfigVariable() {
  final o = api.GoogleCloudConnectorsV1ConfigVariable();
  buildCounterGoogleCloudConnectorsV1ConfigVariable++;
  if (buildCounterGoogleCloudConnectorsV1ConfigVariable < 3) {
    o.boolValue = true;
    o.encryptionKeyValue = buildGoogleCloudConnectorsV1EncryptionKey();
    o.intValue = 'foo';
    o.key = 'foo';
    o.secretValue = buildGoogleCloudConnectorsV1Secret();
    o.stringValue = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1ConfigVariable--;
  return o;
}

void checkGoogleCloudConnectorsV1ConfigVariable(
    api.GoogleCloudConnectorsV1ConfigVariable o) {
  buildCounterGoogleCloudConnectorsV1ConfigVariable++;
  if (buildCounterGoogleCloudConnectorsV1ConfigVariable < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    checkGoogleCloudConnectorsV1EncryptionKey(o.encryptionKeyValue!);
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1Secret(o.secretValue!);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1ConfigVariable--;
}

core.List<api.GoogleCloudConnectorsV1ConfigVariable> buildUnnamed61() => [
      buildGoogleCloudConnectorsV1ConfigVariable(),
      buildGoogleCloudConnectorsV1ConfigVariable(),
    ];

void checkUnnamed61(core.List<api.GoogleCloudConnectorsV1ConfigVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudConnectorsV1ConfigVariable(o[0]);
  checkGoogleCloudConnectorsV1ConfigVariable(o[1]);
}

core.List<api.GoogleCloudConnectorsV1DestinationConfig> buildUnnamed62() => [
      buildGoogleCloudConnectorsV1DestinationConfig(),
      buildGoogleCloudConnectorsV1DestinationConfig(),
    ];

void checkUnnamed62(core.List<api.GoogleCloudConnectorsV1DestinationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudConnectorsV1DestinationConfig(o[0]);
  checkGoogleCloudConnectorsV1DestinationConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed63() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed63(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudConnectorsV1Connection = 0;
api.GoogleCloudConnectorsV1Connection buildGoogleCloudConnectorsV1Connection() {
  final o = api.GoogleCloudConnectorsV1Connection();
  buildCounterGoogleCloudConnectorsV1Connection++;
  if (buildCounterGoogleCloudConnectorsV1Connection < 3) {
    o.asyncOperationsEnabled = true;
    o.authConfig = buildGoogleCloudConnectorsV1AuthConfig();
    o.authOverrideEnabled = true;
    o.billingConfig = buildGoogleCloudConnectorsV1BillingConfig();
    o.configVariables = buildUnnamed61();
    o.connectionRevision = 'foo';
    o.connectorVersion = 'foo';
    o.connectorVersionInfraConfig =
        buildGoogleCloudConnectorsV1ConnectorVersionInfraConfig();
    o.connectorVersionLaunchStage = 'foo';
    o.createTime = 'foo';
    o.description = 'foo';
    o.destinationConfigs = buildUnnamed62();
    o.envoyImageLocation = 'foo';
    o.eventingConfig = buildGoogleCloudConnectorsV1EventingConfig();
    o.eventingEnablementType = 'foo';
    o.eventingRuntimeData = buildGoogleCloudConnectorsV1EventingRuntimeData();
    o.host = 'foo';
    o.imageLocation = 'foo';
    o.isTrustedTester = true;
    o.labels = buildUnnamed63();
    o.lockConfig = buildGoogleCloudConnectorsV1LockConfig();
    o.logConfig = buildGoogleCloudConnectorsV1LogConfig();
    o.name = 'foo';
    o.nodeConfig = buildGoogleCloudConnectorsV1NodeConfig();
    o.serviceAccount = 'foo';
    o.serviceDirectory = 'foo';
    o.sslConfig = buildGoogleCloudConnectorsV1SslConfig();
    o.status = buildGoogleCloudConnectorsV1ConnectionStatus();
    o.subscriptionType = 'foo';
    o.suspended = true;
    o.tlsServiceDirectory = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1Connection--;
  return o;
}

void checkGoogleCloudConnectorsV1Connection(
    api.GoogleCloudConnectorsV1Connection o) {
  buildCounterGoogleCloudConnectorsV1Connection++;
  if (buildCounterGoogleCloudConnectorsV1Connection < 3) {
    unittest.expect(o.asyncOperationsEnabled!, unittest.isTrue);
    checkGoogleCloudConnectorsV1AuthConfig(o.authConfig!);
    unittest.expect(o.authOverrideEnabled!, unittest.isTrue);
    checkGoogleCloudConnectorsV1BillingConfig(o.billingConfig!);
    checkUnnamed61(o.configVariables!);
    unittest.expect(
      o.connectionRevision!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectorVersion!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1ConnectorVersionInfraConfig(
        o.connectorVersionInfraConfig!);
    unittest.expect(
      o.connectorVersionLaunchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.destinationConfigs!);
    unittest.expect(
      o.envoyImageLocation!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1EventingConfig(o.eventingConfig!);
    unittest.expect(
      o.eventingEnablementType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1EventingRuntimeData(o.eventingRuntimeData!);
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isTrustedTester!, unittest.isTrue);
    checkUnnamed63(o.labels!);
    checkGoogleCloudConnectorsV1LockConfig(o.lockConfig!);
    checkGoogleCloudConnectorsV1LogConfig(o.logConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1NodeConfig(o.nodeConfig!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceDirectory!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1SslConfig(o.sslConfig!);
    checkGoogleCloudConnectorsV1ConnectionStatus(o.status!);
    unittest.expect(
      o.subscriptionType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.suspended!, unittest.isTrue);
    unittest.expect(
      o.tlsServiceDirectory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1Connection--;
}

core.int buildCounterGoogleCloudConnectorsV1ConnectionStatus = 0;
api.GoogleCloudConnectorsV1ConnectionStatus
    buildGoogleCloudConnectorsV1ConnectionStatus() {
  final o = api.GoogleCloudConnectorsV1ConnectionStatus();
  buildCounterGoogleCloudConnectorsV1ConnectionStatus++;
  if (buildCounterGoogleCloudConnectorsV1ConnectionStatus < 3) {
    o.description = 'foo';
    o.state = 'foo';
    o.status = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1ConnectionStatus--;
  return o;
}

void checkGoogleCloudConnectorsV1ConnectionStatus(
    api.GoogleCloudConnectorsV1ConnectionStatus o) {
  buildCounterGoogleCloudConnectorsV1ConnectionStatus++;
  if (buildCounterGoogleCloudConnectorsV1ConnectionStatus < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1ConnectionStatus--;
}

core.int buildCounterGoogleCloudConnectorsV1ConnectorVersionInfraConfig = 0;
api.GoogleCloudConnectorsV1ConnectorVersionInfraConfig
    buildGoogleCloudConnectorsV1ConnectorVersionInfraConfig() {
  final o = api.GoogleCloudConnectorsV1ConnectorVersionInfraConfig();
  buildCounterGoogleCloudConnectorsV1ConnectorVersionInfraConfig++;
  if (buildCounterGoogleCloudConnectorsV1ConnectorVersionInfraConfig < 3) {
    o.connectionRatelimitWindowSeconds = 'foo';
    o.deploymentModel = 'foo';
    o.deploymentModelMigrationState = 'foo';
    o.hpaConfig = buildGoogleCloudConnectorsV1HPAConfig();
    o.internalclientRatelimitThreshold = 'foo';
    o.maxInstanceRequestConcurrency = 42;
    o.ratelimitThreshold = 'foo';
    o.resourceLimits = buildGoogleCloudConnectorsV1ResourceLimits();
    o.resourceRequests = buildGoogleCloudConnectorsV1ResourceRequests();
    o.sharedDeployment = 'foo';
    o.tlsMigrationState = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1ConnectorVersionInfraConfig--;
  return o;
}

void checkGoogleCloudConnectorsV1ConnectorVersionInfraConfig(
    api.GoogleCloudConnectorsV1ConnectorVersionInfraConfig o) {
  buildCounterGoogleCloudConnectorsV1ConnectorVersionInfraConfig++;
  if (buildCounterGoogleCloudConnectorsV1ConnectorVersionInfraConfig < 3) {
    unittest.expect(
      o.connectionRatelimitWindowSeconds!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deploymentModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deploymentModelMigrationState!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1HPAConfig(o.hpaConfig!);
    unittest.expect(
      o.internalclientRatelimitThreshold!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxInstanceRequestConcurrency!,
      unittest.equals(42),
    );
    unittest.expect(
      o.ratelimitThreshold!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1ResourceLimits(o.resourceLimits!);
    checkGoogleCloudConnectorsV1ResourceRequests(o.resourceRequests!);
    unittest.expect(
      o.sharedDeployment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tlsMigrationState!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1ConnectorVersionInfraConfig--;
}

core.int buildCounterGoogleCloudConnectorsV1Destination = 0;
api.GoogleCloudConnectorsV1Destination
    buildGoogleCloudConnectorsV1Destination() {
  final o = api.GoogleCloudConnectorsV1Destination();
  buildCounterGoogleCloudConnectorsV1Destination++;
  if (buildCounterGoogleCloudConnectorsV1Destination < 3) {
    o.host = 'foo';
    o.port = 42;
    o.serviceAttachment = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1Destination--;
  return o;
}

void checkGoogleCloudConnectorsV1Destination(
    api.GoogleCloudConnectorsV1Destination o) {
  buildCounterGoogleCloudConnectorsV1Destination++;
  if (buildCounterGoogleCloudConnectorsV1Destination < 3) {
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.serviceAttachment!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1Destination--;
}

core.List<api.GoogleCloudConnectorsV1Destination> buildUnnamed64() => [
      buildGoogleCloudConnectorsV1Destination(),
      buildGoogleCloudConnectorsV1Destination(),
    ];

void checkUnnamed64(core.List<api.GoogleCloudConnectorsV1Destination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudConnectorsV1Destination(o[0]);
  checkGoogleCloudConnectorsV1Destination(o[1]);
}

core.int buildCounterGoogleCloudConnectorsV1DestinationConfig = 0;
api.GoogleCloudConnectorsV1DestinationConfig
    buildGoogleCloudConnectorsV1DestinationConfig() {
  final o = api.GoogleCloudConnectorsV1DestinationConfig();
  buildCounterGoogleCloudConnectorsV1DestinationConfig++;
  if (buildCounterGoogleCloudConnectorsV1DestinationConfig < 3) {
    o.destinations = buildUnnamed64();
    o.key = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1DestinationConfig--;
  return o;
}

void checkGoogleCloudConnectorsV1DestinationConfig(
    api.GoogleCloudConnectorsV1DestinationConfig o) {
  buildCounterGoogleCloudConnectorsV1DestinationConfig++;
  if (buildCounterGoogleCloudConnectorsV1DestinationConfig < 3) {
    checkUnnamed64(o.destinations!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1DestinationConfig--;
}

core.int buildCounterGoogleCloudConnectorsV1EncryptionKey = 0;
api.GoogleCloudConnectorsV1EncryptionKey
    buildGoogleCloudConnectorsV1EncryptionKey() {
  final o = api.GoogleCloudConnectorsV1EncryptionKey();
  buildCounterGoogleCloudConnectorsV1EncryptionKey++;
  if (buildCounterGoogleCloudConnectorsV1EncryptionKey < 3) {
    o.kmsKeyName = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1EncryptionKey--;
  return o;
}

void checkGoogleCloudConnectorsV1EncryptionKey(
    api.GoogleCloudConnectorsV1EncryptionKey o) {
  buildCounterGoogleCloudConnectorsV1EncryptionKey++;
  if (buildCounterGoogleCloudConnectorsV1EncryptionKey < 3) {
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1EncryptionKey--;
}

core.List<api.GoogleCloudConnectorsV1ConfigVariable> buildUnnamed65() => [
      buildGoogleCloudConnectorsV1ConfigVariable(),
      buildGoogleCloudConnectorsV1ConfigVariable(),
    ];

void checkUnnamed65(core.List<api.GoogleCloudConnectorsV1ConfigVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudConnectorsV1ConfigVariable(o[0]);
  checkGoogleCloudConnectorsV1ConfigVariable(o[1]);
}

core.int buildCounterGoogleCloudConnectorsV1EventingConfig = 0;
api.GoogleCloudConnectorsV1EventingConfig
    buildGoogleCloudConnectorsV1EventingConfig() {
  final o = api.GoogleCloudConnectorsV1EventingConfig();
  buildCounterGoogleCloudConnectorsV1EventingConfig++;
  if (buildCounterGoogleCloudConnectorsV1EventingConfig < 3) {
    o.additionalVariables = buildUnnamed65();
    o.authConfig = buildGoogleCloudConnectorsV1AuthConfig();
    o.deadLetterConfig =
        buildGoogleCloudConnectorsV1EventingConfigDeadLetterConfig();
    o.enrichmentEnabled = true;
    o.eventsListenerIngressEndpoint = 'foo';
    o.listenerAuthConfig = buildGoogleCloudConnectorsV1AuthConfig();
    o.privateConnectivityEnabled = true;
    o.proxyDestinationConfig = buildGoogleCloudConnectorsV1DestinationConfig();
    o.registrationDestinationConfig =
        buildGoogleCloudConnectorsV1DestinationConfig();
  }
  buildCounterGoogleCloudConnectorsV1EventingConfig--;
  return o;
}

void checkGoogleCloudConnectorsV1EventingConfig(
    api.GoogleCloudConnectorsV1EventingConfig o) {
  buildCounterGoogleCloudConnectorsV1EventingConfig++;
  if (buildCounterGoogleCloudConnectorsV1EventingConfig < 3) {
    checkUnnamed65(o.additionalVariables!);
    checkGoogleCloudConnectorsV1AuthConfig(o.authConfig!);
    checkGoogleCloudConnectorsV1EventingConfigDeadLetterConfig(
        o.deadLetterConfig!);
    unittest.expect(o.enrichmentEnabled!, unittest.isTrue);
    unittest.expect(
      o.eventsListenerIngressEndpoint!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1AuthConfig(o.listenerAuthConfig!);
    unittest.expect(o.privateConnectivityEnabled!, unittest.isTrue);
    checkGoogleCloudConnectorsV1DestinationConfig(o.proxyDestinationConfig!);
    checkGoogleCloudConnectorsV1DestinationConfig(
        o.registrationDestinationConfig!);
  }
  buildCounterGoogleCloudConnectorsV1EventingConfig--;
}

core.int buildCounterGoogleCloudConnectorsV1EventingConfigDeadLetterConfig = 0;
api.GoogleCloudConnectorsV1EventingConfigDeadLetterConfig
    buildGoogleCloudConnectorsV1EventingConfigDeadLetterConfig() {
  final o = api.GoogleCloudConnectorsV1EventingConfigDeadLetterConfig();
  buildCounterGoogleCloudConnectorsV1EventingConfigDeadLetterConfig++;
  if (buildCounterGoogleCloudConnectorsV1EventingConfigDeadLetterConfig < 3) {
    o.projectId = 'foo';
    o.topic = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1EventingConfigDeadLetterConfig--;
  return o;
}

void checkGoogleCloudConnectorsV1EventingConfigDeadLetterConfig(
    api.GoogleCloudConnectorsV1EventingConfigDeadLetterConfig o) {
  buildCounterGoogleCloudConnectorsV1EventingConfigDeadLetterConfig++;
  if (buildCounterGoogleCloudConnectorsV1EventingConfigDeadLetterConfig < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1EventingConfigDeadLetterConfig--;
}

core.int buildCounterGoogleCloudConnectorsV1EventingRuntimeData = 0;
api.GoogleCloudConnectorsV1EventingRuntimeData
    buildGoogleCloudConnectorsV1EventingRuntimeData() {
  final o = api.GoogleCloudConnectorsV1EventingRuntimeData();
  buildCounterGoogleCloudConnectorsV1EventingRuntimeData++;
  if (buildCounterGoogleCloudConnectorsV1EventingRuntimeData < 3) {
    o.eventsListenerEndpoint = 'foo';
    o.eventsListenerPscSa = 'foo';
    o.status = buildGoogleCloudConnectorsV1EventingStatus();
    o.webhookData =
        buildGoogleCloudConnectorsV1EventingRuntimeDataWebhookData();
    o.webhookSubscriptions =
        buildGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions();
  }
  buildCounterGoogleCloudConnectorsV1EventingRuntimeData--;
  return o;
}

void checkGoogleCloudConnectorsV1EventingRuntimeData(
    api.GoogleCloudConnectorsV1EventingRuntimeData o) {
  buildCounterGoogleCloudConnectorsV1EventingRuntimeData++;
  if (buildCounterGoogleCloudConnectorsV1EventingRuntimeData < 3) {
    unittest.expect(
      o.eventsListenerEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventsListenerPscSa!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1EventingStatus(o.status!);
    checkGoogleCloudConnectorsV1EventingRuntimeDataWebhookData(o.webhookData!);
    checkGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions(
        o.webhookSubscriptions!);
  }
  buildCounterGoogleCloudConnectorsV1EventingRuntimeData--;
}

core.List<api.GoogleCloudConnectorsV1ConfigVariable> buildUnnamed66() => [
      buildGoogleCloudConnectorsV1ConfigVariable(),
      buildGoogleCloudConnectorsV1ConfigVariable(),
    ];

void checkUnnamed66(core.List<api.GoogleCloudConnectorsV1ConfigVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudConnectorsV1ConfigVariable(o[0]);
  checkGoogleCloudConnectorsV1ConfigVariable(o[1]);
}

core.int buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookData = 0;
api.GoogleCloudConnectorsV1EventingRuntimeDataWebhookData
    buildGoogleCloudConnectorsV1EventingRuntimeDataWebhookData() {
  final o = api.GoogleCloudConnectorsV1EventingRuntimeDataWebhookData();
  buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookData++;
  if (buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookData < 3) {
    o.additionalVariables = buildUnnamed66();
    o.createTime = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.nextRefreshTime = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookData--;
  return o;
}

void checkGoogleCloudConnectorsV1EventingRuntimeDataWebhookData(
    api.GoogleCloudConnectorsV1EventingRuntimeDataWebhookData o) {
  buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookData++;
  if (buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookData < 3) {
    checkUnnamed66(o.additionalVariables!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextRefreshTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookData--;
}

core.List<api.GoogleCloudConnectorsV1EventingRuntimeDataWebhookData>
    buildUnnamed67() => [
          buildGoogleCloudConnectorsV1EventingRuntimeDataWebhookData(),
          buildGoogleCloudConnectorsV1EventingRuntimeDataWebhookData(),
        ];

void checkUnnamed67(
    core.List<api.GoogleCloudConnectorsV1EventingRuntimeDataWebhookData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudConnectorsV1EventingRuntimeDataWebhookData(o[0]);
  checkGoogleCloudConnectorsV1EventingRuntimeDataWebhookData(o[1]);
}

core.int
    buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions =
    0;
api.GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions
    buildGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions() {
  final o =
      api.GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions();
  buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions++;
  if (buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions <
      3) {
    o.webhookData = buildUnnamed67();
  }
  buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions--;
  return o;
}

void checkGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions(
    api.GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions o) {
  buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions++;
  if (buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions <
      3) {
    checkUnnamed67(o.webhookData!);
  }
  buildCounterGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions--;
}

core.int buildCounterGoogleCloudConnectorsV1EventingStatus = 0;
api.GoogleCloudConnectorsV1EventingStatus
    buildGoogleCloudConnectorsV1EventingStatus() {
  final o = api.GoogleCloudConnectorsV1EventingStatus();
  buildCounterGoogleCloudConnectorsV1EventingStatus++;
  if (buildCounterGoogleCloudConnectorsV1EventingStatus < 3) {
    o.description = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1EventingStatus--;
  return o;
}

void checkGoogleCloudConnectorsV1EventingStatus(
    api.GoogleCloudConnectorsV1EventingStatus o) {
  buildCounterGoogleCloudConnectorsV1EventingStatus++;
  if (buildCounterGoogleCloudConnectorsV1EventingStatus < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1EventingStatus--;
}

core.int buildCounterGoogleCloudConnectorsV1HPAConfig = 0;
api.GoogleCloudConnectorsV1HPAConfig buildGoogleCloudConnectorsV1HPAConfig() {
  final o = api.GoogleCloudConnectorsV1HPAConfig();
  buildCounterGoogleCloudConnectorsV1HPAConfig++;
  if (buildCounterGoogleCloudConnectorsV1HPAConfig < 3) {
    o.cpuUtilizationThreshold = 'foo';
    o.memoryUtilizationThreshold = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1HPAConfig--;
  return o;
}

void checkGoogleCloudConnectorsV1HPAConfig(
    api.GoogleCloudConnectorsV1HPAConfig o) {
  buildCounterGoogleCloudConnectorsV1HPAConfig++;
  if (buildCounterGoogleCloudConnectorsV1HPAConfig < 3) {
    unittest.expect(
      o.cpuUtilizationThreshold!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryUtilizationThreshold!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1HPAConfig--;
}

core.int buildCounterGoogleCloudConnectorsV1LockConfig = 0;
api.GoogleCloudConnectorsV1LockConfig buildGoogleCloudConnectorsV1LockConfig() {
  final o = api.GoogleCloudConnectorsV1LockConfig();
  buildCounterGoogleCloudConnectorsV1LockConfig++;
  if (buildCounterGoogleCloudConnectorsV1LockConfig < 3) {
    o.locked = true;
    o.reason = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1LockConfig--;
  return o;
}

void checkGoogleCloudConnectorsV1LockConfig(
    api.GoogleCloudConnectorsV1LockConfig o) {
  buildCounterGoogleCloudConnectorsV1LockConfig++;
  if (buildCounterGoogleCloudConnectorsV1LockConfig < 3) {
    unittest.expect(o.locked!, unittest.isTrue);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1LockConfig--;
}

core.int buildCounterGoogleCloudConnectorsV1LogConfig = 0;
api.GoogleCloudConnectorsV1LogConfig buildGoogleCloudConnectorsV1LogConfig() {
  final o = api.GoogleCloudConnectorsV1LogConfig();
  buildCounterGoogleCloudConnectorsV1LogConfig++;
  if (buildCounterGoogleCloudConnectorsV1LogConfig < 3) {
    o.enabled = true;
    o.level = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1LogConfig--;
  return o;
}

void checkGoogleCloudConnectorsV1LogConfig(
    api.GoogleCloudConnectorsV1LogConfig o) {
  buildCounterGoogleCloudConnectorsV1LogConfig++;
  if (buildCounterGoogleCloudConnectorsV1LogConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.level!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1LogConfig--;
}

core.int buildCounterGoogleCloudConnectorsV1NodeConfig = 0;
api.GoogleCloudConnectorsV1NodeConfig buildGoogleCloudConnectorsV1NodeConfig() {
  final o = api.GoogleCloudConnectorsV1NodeConfig();
  buildCounterGoogleCloudConnectorsV1NodeConfig++;
  if (buildCounterGoogleCloudConnectorsV1NodeConfig < 3) {
    o.maxNodeCount = 42;
    o.minNodeCount = 42;
  }
  buildCounterGoogleCloudConnectorsV1NodeConfig--;
  return o;
}

void checkGoogleCloudConnectorsV1NodeConfig(
    api.GoogleCloudConnectorsV1NodeConfig o) {
  buildCounterGoogleCloudConnectorsV1NodeConfig++;
  if (buildCounterGoogleCloudConnectorsV1NodeConfig < 3) {
    unittest.expect(
      o.maxNodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minNodeCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudConnectorsV1NodeConfig--;
}

core.int buildCounterGoogleCloudConnectorsV1ResourceLimits = 0;
api.GoogleCloudConnectorsV1ResourceLimits
    buildGoogleCloudConnectorsV1ResourceLimits() {
  final o = api.GoogleCloudConnectorsV1ResourceLimits();
  buildCounterGoogleCloudConnectorsV1ResourceLimits++;
  if (buildCounterGoogleCloudConnectorsV1ResourceLimits < 3) {
    o.cpu = 'foo';
    o.memory = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1ResourceLimits--;
  return o;
}

void checkGoogleCloudConnectorsV1ResourceLimits(
    api.GoogleCloudConnectorsV1ResourceLimits o) {
  buildCounterGoogleCloudConnectorsV1ResourceLimits++;
  if (buildCounterGoogleCloudConnectorsV1ResourceLimits < 3) {
    unittest.expect(
      o.cpu!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memory!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1ResourceLimits--;
}

core.int buildCounterGoogleCloudConnectorsV1ResourceRequests = 0;
api.GoogleCloudConnectorsV1ResourceRequests
    buildGoogleCloudConnectorsV1ResourceRequests() {
  final o = api.GoogleCloudConnectorsV1ResourceRequests();
  buildCounterGoogleCloudConnectorsV1ResourceRequests++;
  if (buildCounterGoogleCloudConnectorsV1ResourceRequests < 3) {
    o.cpu = 'foo';
    o.memory = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1ResourceRequests--;
  return o;
}

void checkGoogleCloudConnectorsV1ResourceRequests(
    api.GoogleCloudConnectorsV1ResourceRequests o) {
  buildCounterGoogleCloudConnectorsV1ResourceRequests++;
  if (buildCounterGoogleCloudConnectorsV1ResourceRequests < 3) {
    unittest.expect(
      o.cpu!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memory!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1ResourceRequests--;
}

core.int buildCounterGoogleCloudConnectorsV1Secret = 0;
api.GoogleCloudConnectorsV1Secret buildGoogleCloudConnectorsV1Secret() {
  final o = api.GoogleCloudConnectorsV1Secret();
  buildCounterGoogleCloudConnectorsV1Secret++;
  if (buildCounterGoogleCloudConnectorsV1Secret < 3) {
    o.secretVersion = 'foo';
  }
  buildCounterGoogleCloudConnectorsV1Secret--;
  return o;
}

void checkGoogleCloudConnectorsV1Secret(api.GoogleCloudConnectorsV1Secret o) {
  buildCounterGoogleCloudConnectorsV1Secret++;
  if (buildCounterGoogleCloudConnectorsV1Secret < 3) {
    unittest.expect(
      o.secretVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudConnectorsV1Secret--;
}

core.List<api.GoogleCloudConnectorsV1ConfigVariable> buildUnnamed68() => [
      buildGoogleCloudConnectorsV1ConfigVariable(),
      buildGoogleCloudConnectorsV1ConfigVariable(),
    ];

void checkUnnamed68(core.List<api.GoogleCloudConnectorsV1ConfigVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudConnectorsV1ConfigVariable(o[0]);
  checkGoogleCloudConnectorsV1ConfigVariable(o[1]);
}

core.int buildCounterGoogleCloudConnectorsV1SslConfig = 0;
api.GoogleCloudConnectorsV1SslConfig buildGoogleCloudConnectorsV1SslConfig() {
  final o = api.GoogleCloudConnectorsV1SslConfig();
  buildCounterGoogleCloudConnectorsV1SslConfig++;
  if (buildCounterGoogleCloudConnectorsV1SslConfig < 3) {
    o.additionalVariables = buildUnnamed68();
    o.clientCertType = 'foo';
    o.clientCertificate = buildGoogleCloudConnectorsV1Secret();
    o.clientPrivateKey = buildGoogleCloudConnectorsV1Secret();
    o.clientPrivateKeyPass = buildGoogleCloudConnectorsV1Secret();
    o.privateServerCertificate = buildGoogleCloudConnectorsV1Secret();
    o.serverCertType = 'foo';
    o.trustModel = 'foo';
    o.type = 'foo';
    o.useSsl = true;
  }
  buildCounterGoogleCloudConnectorsV1SslConfig--;
  return o;
}

void checkGoogleCloudConnectorsV1SslConfig(
    api.GoogleCloudConnectorsV1SslConfig o) {
  buildCounterGoogleCloudConnectorsV1SslConfig++;
  if (buildCounterGoogleCloudConnectorsV1SslConfig < 3) {
    checkUnnamed68(o.additionalVariables!);
    unittest.expect(
      o.clientCertType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudConnectorsV1Secret(o.clientCertificate!);
    checkGoogleCloudConnectorsV1Secret(o.clientPrivateKey!);
    checkGoogleCloudConnectorsV1Secret(o.clientPrivateKeyPass!);
    checkGoogleCloudConnectorsV1Secret(o.privateServerCertificate!);
    unittest.expect(
      o.serverCertType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trustModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useSsl!, unittest.isTrue);
  }
  buildCounterGoogleCloudConnectorsV1SslConfig--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaAccessToken = 0;
api.GoogleCloudIntegrationsV1alphaAccessToken
    buildGoogleCloudIntegrationsV1alphaAccessToken() {
  final o = api.GoogleCloudIntegrationsV1alphaAccessToken();
  buildCounterGoogleCloudIntegrationsV1alphaAccessToken++;
  if (buildCounterGoogleCloudIntegrationsV1alphaAccessToken < 3) {
    o.accessToken = 'foo';
    o.accessTokenExpireTime = 'foo';
    o.refreshToken = 'foo';
    o.refreshTokenExpireTime = 'foo';
    o.tokenType = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaAccessToken--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaAccessToken(
    api.GoogleCloudIntegrationsV1alphaAccessToken o) {
  buildCounterGoogleCloudIntegrationsV1alphaAccessToken++;
  if (buildCounterGoogleCloudIntegrationsV1alphaAccessToken < 3) {
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.accessTokenExpireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshTokenExpireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaAccessToken--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaAssertion = 0;
api.GoogleCloudIntegrationsV1alphaAssertion
    buildGoogleCloudIntegrationsV1alphaAssertion() {
  final o = api.GoogleCloudIntegrationsV1alphaAssertion();
  buildCounterGoogleCloudIntegrationsV1alphaAssertion++;
  if (buildCounterGoogleCloudIntegrationsV1alphaAssertion < 3) {
    o.assertionStrategy = 'foo';
    o.condition = 'foo';
    o.parameter = buildGoogleCloudIntegrationsV1alphaEventParameter();
    o.retryCount = 42;
  }
  buildCounterGoogleCloudIntegrationsV1alphaAssertion--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaAssertion(
    api.GoogleCloudIntegrationsV1alphaAssertion o) {
  buildCounterGoogleCloudIntegrationsV1alphaAssertion++;
  if (buildCounterGoogleCloudIntegrationsV1alphaAssertion < 3) {
    unittest.expect(
      o.assertionStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaEventParameter(o.parameter!);
    unittest.expect(
      o.retryCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaAssertion--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaAssertionResult = 0;
api.GoogleCloudIntegrationsV1alphaAssertionResult
    buildGoogleCloudIntegrationsV1alphaAssertionResult() {
  final o = api.GoogleCloudIntegrationsV1alphaAssertionResult();
  buildCounterGoogleCloudIntegrationsV1alphaAssertionResult++;
  if (buildCounterGoogleCloudIntegrationsV1alphaAssertionResult < 3) {
    o.assertion = buildGoogleCloudIntegrationsV1alphaAssertion();
    o.failureMessage = 'foo';
    o.status = 'foo';
    o.taskName = 'foo';
    o.taskNumber = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaAssertionResult--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaAssertionResult(
    api.GoogleCloudIntegrationsV1alphaAssertionResult o) {
  buildCounterGoogleCloudIntegrationsV1alphaAssertionResult++;
  if (buildCounterGoogleCloudIntegrationsV1alphaAssertionResult < 3) {
    checkGoogleCloudIntegrationsV1alphaAssertion(o.assertion!);
    unittest.expect(
      o.failureMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaAssertionResult--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaAttemptStats = 0;
api.GoogleCloudIntegrationsV1alphaAttemptStats
    buildGoogleCloudIntegrationsV1alphaAttemptStats() {
  final o = api.GoogleCloudIntegrationsV1alphaAttemptStats();
  buildCounterGoogleCloudIntegrationsV1alphaAttemptStats++;
  if (buildCounterGoogleCloudIntegrationsV1alphaAttemptStats < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaAttemptStats--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaAttemptStats(
    api.GoogleCloudIntegrationsV1alphaAttemptStats o) {
  buildCounterGoogleCloudIntegrationsV1alphaAttemptStats++;
  if (buildCounterGoogleCloudIntegrationsV1alphaAttemptStats < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaAttemptStats--;
}

core.List<core.String> buildUnnamed69() => [
      'foo',
      'foo',
    ];

void checkUnnamed69(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudIntegrationsV1alphaAuthConfig = 0;
api.GoogleCloudIntegrationsV1alphaAuthConfig
    buildGoogleCloudIntegrationsV1alphaAuthConfig() {
  final o = api.GoogleCloudIntegrationsV1alphaAuthConfig();
  buildCounterGoogleCloudIntegrationsV1alphaAuthConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaAuthConfig < 3) {
    o.certificateId = 'foo';
    o.createTime = 'foo';
    o.creatorEmail = 'foo';
    o.credentialType = 'foo';
    o.decryptedCredential = buildGoogleCloudIntegrationsV1alphaCredential();
    o.description = 'foo';
    o.displayName = 'foo';
    o.encryptedCredential = 'foo';
    o.expiryNotificationDuration = buildUnnamed69();
    o.lastModifierEmail = 'foo';
    o.name = 'foo';
    o.overrideValidTime = 'foo';
    o.reason = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
    o.validTime = 'foo';
    o.visibility = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaAuthConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaAuthConfig(
    api.GoogleCloudIntegrationsV1alphaAuthConfig o) {
  buildCounterGoogleCloudIntegrationsV1alphaAuthConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaAuthConfig < 3) {
    unittest.expect(
      o.certificateId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creatorEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.credentialType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaCredential(o.decryptedCredential!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encryptedCredential!,
      unittest.equals('foo'),
    );
    checkUnnamed69(o.expiryNotificationDuration!);
    unittest.expect(
      o.lastModifierEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.overrideValidTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visibility!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaAuthConfig--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaAuthToken = 0;
api.GoogleCloudIntegrationsV1alphaAuthToken
    buildGoogleCloudIntegrationsV1alphaAuthToken() {
  final o = api.GoogleCloudIntegrationsV1alphaAuthToken();
  buildCounterGoogleCloudIntegrationsV1alphaAuthToken++;
  if (buildCounterGoogleCloudIntegrationsV1alphaAuthToken < 3) {
    o.token = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaAuthToken--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaAuthToken(
    api.GoogleCloudIntegrationsV1alphaAuthToken o) {
  buildCounterGoogleCloudIntegrationsV1alphaAuthToken++;
  if (buildCounterGoogleCloudIntegrationsV1alphaAuthToken < 3) {
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaAuthToken--;
}

core.List<core.bool> buildUnnamed70() => [
      true,
      true,
    ];

void checkUnnamed70(core.List<core.bool> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.isTrue);
  unittest.expect(o[1], unittest.isTrue);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaBooleanParameterArray = 0;
api.GoogleCloudIntegrationsV1alphaBooleanParameterArray
    buildGoogleCloudIntegrationsV1alphaBooleanParameterArray() {
  final o = api.GoogleCloudIntegrationsV1alphaBooleanParameterArray();
  buildCounterGoogleCloudIntegrationsV1alphaBooleanParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV1alphaBooleanParameterArray < 3) {
    o.booleanValues = buildUnnamed70();
  }
  buildCounterGoogleCloudIntegrationsV1alphaBooleanParameterArray--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaBooleanParameterArray(
    api.GoogleCloudIntegrationsV1alphaBooleanParameterArray o) {
  buildCounterGoogleCloudIntegrationsV1alphaBooleanParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV1alphaBooleanParameterArray < 3) {
    checkUnnamed70(o.booleanValues!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaBooleanParameterArray--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionRequest = 0;
api.GoogleCloudIntegrationsV1alphaCancelExecutionRequest
    buildGoogleCloudIntegrationsV1alphaCancelExecutionRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaCancelExecutionRequest();
  buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionRequest < 3) {
    o.cancelReason = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaCancelExecutionRequest(
    api.GoogleCloudIntegrationsV1alphaCancelExecutionRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionRequest < 3) {
    unittest.expect(
      o.cancelReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionRequest--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionResponse = 0;
api.GoogleCloudIntegrationsV1alphaCancelExecutionResponse
    buildGoogleCloudIntegrationsV1alphaCancelExecutionResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaCancelExecutionResponse();
  buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionResponse < 3) {
    o.isCanceled = true;
  }
  buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaCancelExecutionResponse(
    api.GoogleCloudIntegrationsV1alphaCancelExecutionResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionResponse < 3) {
    unittest.expect(o.isCanceled!, unittest.isTrue);
  }
  buildCounterGoogleCloudIntegrationsV1alphaCancelExecutionResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaCertificate = 0;
api.GoogleCloudIntegrationsV1alphaCertificate
    buildGoogleCloudIntegrationsV1alphaCertificate() {
  final o = api.GoogleCloudIntegrationsV1alphaCertificate();
  buildCounterGoogleCloudIntegrationsV1alphaCertificate++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCertificate < 3) {
    o.certificateStatus = 'foo';
    o.credentialId = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.rawCertificate = buildGoogleCloudIntegrationsV1alphaClientCertificate();
    o.requestorId = 'foo';
    o.validEndTime = 'foo';
    o.validStartTime = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaCertificate--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaCertificate(
    api.GoogleCloudIntegrationsV1alphaCertificate o) {
  buildCounterGoogleCloudIntegrationsV1alphaCertificate++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCertificate < 3) {
    unittest.expect(
      o.certificateStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.credentialId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaClientCertificate(o.rawCertificate!);
    unittest.expect(
      o.requestorId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validStartTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaCertificate--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaClientCertificate = 0;
api.GoogleCloudIntegrationsV1alphaClientCertificate
    buildGoogleCloudIntegrationsV1alphaClientCertificate() {
  final o = api.GoogleCloudIntegrationsV1alphaClientCertificate();
  buildCounterGoogleCloudIntegrationsV1alphaClientCertificate++;
  if (buildCounterGoogleCloudIntegrationsV1alphaClientCertificate < 3) {
    o.encryptedPrivateKey = 'foo';
    o.passphrase = 'foo';
    o.sslCertificate = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaClientCertificate--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaClientCertificate(
    api.GoogleCloudIntegrationsV1alphaClientCertificate o) {
  buildCounterGoogleCloudIntegrationsV1alphaClientCertificate++;
  if (buildCounterGoogleCloudIntegrationsV1alphaClientCertificate < 3) {
    unittest.expect(
      o.encryptedPrivateKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passphrase!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sslCertificate!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaClientCertificate--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaClientConfig = 0;
api.GoogleCloudIntegrationsV1alphaClientConfig
    buildGoogleCloudIntegrationsV1alphaClientConfig() {
  final o = api.GoogleCloudIntegrationsV1alphaClientConfig();
  buildCounterGoogleCloudIntegrationsV1alphaClientConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaClientConfig < 3) {
    o.billingType = 'foo';
    o.clientState = 'foo';
    o.cloudKmsConfig = buildGoogleCloudIntegrationsV1alphaCloudKmsConfig();
    o.createTime = 'foo';
    o.description = 'foo';
    o.enableInternalIp = true;
    o.enableVariableMasking = true;
    o.id = 'foo';
    o.isGmek = true;
    o.p4ServiceAccount = 'foo';
    o.projectId = 'foo';
    o.region = 'foo';
    o.runAsServiceAccount = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaClientConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaClientConfig(
    api.GoogleCloudIntegrationsV1alphaClientConfig o) {
  buildCounterGoogleCloudIntegrationsV1alphaClientConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaClientConfig < 3) {
    unittest.expect(
      o.billingType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientState!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaCloudKmsConfig(o.cloudKmsConfig!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableInternalIp!, unittest.isTrue);
    unittest.expect(o.enableVariableMasking!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isGmek!, unittest.isTrue);
    unittest.expect(
      o.p4ServiceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.runAsServiceAccount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaClientConfig--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaCloudKmsConfig = 0;
api.GoogleCloudIntegrationsV1alphaCloudKmsConfig
    buildGoogleCloudIntegrationsV1alphaCloudKmsConfig() {
  final o = api.GoogleCloudIntegrationsV1alphaCloudKmsConfig();
  buildCounterGoogleCloudIntegrationsV1alphaCloudKmsConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCloudKmsConfig < 3) {
    o.key = 'foo';
    o.keyVersion = 'foo';
    o.kmsLocation = 'foo';
    o.kmsProjectId = 'foo';
    o.kmsRing = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaCloudKmsConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaCloudKmsConfig(
    api.GoogleCloudIntegrationsV1alphaCloudKmsConfig o) {
  buildCounterGoogleCloudIntegrationsV1alphaCloudKmsConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCloudKmsConfig < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsProjectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsRing!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaCloudKmsConfig--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaCloudLoggingDetails = 0;
api.GoogleCloudIntegrationsV1alphaCloudLoggingDetails
    buildGoogleCloudIntegrationsV1alphaCloudLoggingDetails() {
  final o = api.GoogleCloudIntegrationsV1alphaCloudLoggingDetails();
  buildCounterGoogleCloudIntegrationsV1alphaCloudLoggingDetails++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCloudLoggingDetails < 3) {
    o.cloudLoggingSeverity = 'foo';
    o.enableCloudLogging = true;
  }
  buildCounterGoogleCloudIntegrationsV1alphaCloudLoggingDetails--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaCloudLoggingDetails(
    api.GoogleCloudIntegrationsV1alphaCloudLoggingDetails o) {
  buildCounterGoogleCloudIntegrationsV1alphaCloudLoggingDetails++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCloudLoggingDetails < 3) {
    unittest.expect(
      o.cloudLoggingSeverity!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableCloudLogging!, unittest.isTrue);
  }
  buildCounterGoogleCloudIntegrationsV1alphaCloudLoggingDetails--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaCloudSchedulerConfig = 0;
api.GoogleCloudIntegrationsV1alphaCloudSchedulerConfig
    buildGoogleCloudIntegrationsV1alphaCloudSchedulerConfig() {
  final o = api.GoogleCloudIntegrationsV1alphaCloudSchedulerConfig();
  buildCounterGoogleCloudIntegrationsV1alphaCloudSchedulerConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCloudSchedulerConfig < 3) {
    o.cronTab = 'foo';
    o.errorMessage = 'foo';
    o.location = 'foo';
    o.serviceAccountEmail = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaCloudSchedulerConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaCloudSchedulerConfig(
    api.GoogleCloudIntegrationsV1alphaCloudSchedulerConfig o) {
  buildCounterGoogleCloudIntegrationsV1alphaCloudSchedulerConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCloudSchedulerConfig < 3) {
    unittest.expect(
      o.cronTab!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaCloudSchedulerConfig--;
}

core.List<api.GoogleCloudIntegrationsV1alphaFailurePolicy> buildUnnamed71() => [
      buildGoogleCloudIntegrationsV1alphaFailurePolicy(),
      buildGoogleCloudIntegrationsV1alphaFailurePolicy(),
    ];

void checkUnnamed71(
    core.List<api.GoogleCloudIntegrationsV1alphaFailurePolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaFailurePolicy(o[0]);
  checkGoogleCloudIntegrationsV1alphaFailurePolicy(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaConditionalFailurePolicies =
    0;
api.GoogleCloudIntegrationsV1alphaConditionalFailurePolicies
    buildGoogleCloudIntegrationsV1alphaConditionalFailurePolicies() {
  final o = api.GoogleCloudIntegrationsV1alphaConditionalFailurePolicies();
  buildCounterGoogleCloudIntegrationsV1alphaConditionalFailurePolicies++;
  if (buildCounterGoogleCloudIntegrationsV1alphaConditionalFailurePolicies <
      3) {
    o.defaultFailurePolicy = buildGoogleCloudIntegrationsV1alphaFailurePolicy();
    o.failurePolicies = buildUnnamed71();
  }
  buildCounterGoogleCloudIntegrationsV1alphaConditionalFailurePolicies--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaConditionalFailurePolicies(
    api.GoogleCloudIntegrationsV1alphaConditionalFailurePolicies o) {
  buildCounterGoogleCloudIntegrationsV1alphaConditionalFailurePolicies++;
  if (buildCounterGoogleCloudIntegrationsV1alphaConditionalFailurePolicies <
      3) {
    checkGoogleCloudIntegrationsV1alphaFailurePolicy(o.defaultFailurePolicy!);
    checkUnnamed71(o.failurePolicies!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaConditionalFailurePolicies--;
}

core.List<core.String> buildUnnamed72() => [
      'foo',
      'foo',
    ];

void checkUnnamed72(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed73() => [
      'foo',
      'foo',
    ];

void checkUnnamed73(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata = 0;
api.GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata
    buildGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata() {
  final o = api.GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata();
  buildCounterGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata++;
  if (buildCounterGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata < 3) {
    o.actions = buildUnnamed72();
    o.entities = buildUnnamed73();
  }
  buildCounterGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata(
    api.GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata o) {
  buildCounterGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata++;
  if (buildCounterGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata < 3) {
    checkUnnamed72(o.actions!);
    checkUnnamed73(o.entities!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaCoordinate = 0;
api.GoogleCloudIntegrationsV1alphaCoordinate
    buildGoogleCloudIntegrationsV1alphaCoordinate() {
  final o = api.GoogleCloudIntegrationsV1alphaCoordinate();
  buildCounterGoogleCloudIntegrationsV1alphaCoordinate++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCoordinate < 3) {
    o.x = 42;
    o.y = 42;
  }
  buildCounterGoogleCloudIntegrationsV1alphaCoordinate--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaCoordinate(
    api.GoogleCloudIntegrationsV1alphaCoordinate o) {
  buildCounterGoogleCloudIntegrationsV1alphaCoordinate++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCoordinate < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaCoordinate--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest =
    0;
api.GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest
    buildGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest();
  buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest <
      3) {
    o.appsScriptProject = 'foo';
    o.authConfigId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest(
    api.GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest <
      3) {
    unittest.expect(
      o.appsScriptProject!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authConfigId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse =
    0;
api.GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse
    buildGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse();
  buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse <
      3) {
    o.projectId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse(
    api.GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse <
      3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest =
    0;
api.GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest
    buildGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest();
  buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest <
      3) {
    o.functionName = 'foo';
    o.functionRegion = 'foo';
    o.projectId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest(
    api.GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest <
      3) {
    unittest.expect(
      o.functionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.functionRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse =
    0;
api.GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse
    buildGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse();
  buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse <
      3) {
    o.triggerUrl = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse(
    api.GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse <
      3) {
    unittest.expect(
      o.triggerUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaCredential = 0;
api.GoogleCloudIntegrationsV1alphaCredential
    buildGoogleCloudIntegrationsV1alphaCredential() {
  final o = api.GoogleCloudIntegrationsV1alphaCredential();
  buildCounterGoogleCloudIntegrationsV1alphaCredential++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCredential < 3) {
    o.authToken = buildGoogleCloudIntegrationsV1alphaAuthToken();
    o.credentialType = 'foo';
    o.jwt = buildGoogleCloudIntegrationsV1alphaJwt();
    o.oauth2AuthorizationCode =
        buildGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode();
    o.oauth2ClientCredentials =
        buildGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials();
    o.oauth2ResourceOwnerCredentials =
        buildGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials();
    o.oidcToken = buildGoogleCloudIntegrationsV1alphaOidcToken();
    o.serviceAccountCredentials =
        buildGoogleCloudIntegrationsV1alphaServiceAccountCredentials();
    o.usernameAndPassword =
        buildGoogleCloudIntegrationsV1alphaUsernameAndPassword();
  }
  buildCounterGoogleCloudIntegrationsV1alphaCredential--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaCredential(
    api.GoogleCloudIntegrationsV1alphaCredential o) {
  buildCounterGoogleCloudIntegrationsV1alphaCredential++;
  if (buildCounterGoogleCloudIntegrationsV1alphaCredential < 3) {
    checkGoogleCloudIntegrationsV1alphaAuthToken(o.authToken!);
    unittest.expect(
      o.credentialType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaJwt(o.jwt!);
    checkGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode(
        o.oauth2AuthorizationCode!);
    checkGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials(
        o.oauth2ClientCredentials!);
    checkGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials(
        o.oauth2ResourceOwnerCredentials!);
    checkGoogleCloudIntegrationsV1alphaOidcToken(o.oidcToken!);
    checkGoogleCloudIntegrationsV1alphaServiceAccountCredentials(
        o.serviceAccountCredentials!);
    checkGoogleCloudIntegrationsV1alphaUsernameAndPassword(
        o.usernameAndPassword!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaCredential--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaDeprovisionClientRequest = 0;
api.GoogleCloudIntegrationsV1alphaDeprovisionClientRequest
    buildGoogleCloudIntegrationsV1alphaDeprovisionClientRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaDeprovisionClientRequest();
  buildCounterGoogleCloudIntegrationsV1alphaDeprovisionClientRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDeprovisionClientRequest < 3) {}
  buildCounterGoogleCloudIntegrationsV1alphaDeprovisionClientRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaDeprovisionClientRequest(
    api.GoogleCloudIntegrationsV1alphaDeprovisionClientRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaDeprovisionClientRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDeprovisionClientRequest < 3) {}
  buildCounterGoogleCloudIntegrationsV1alphaDeprovisionClientRequest--;
}

core.List<core.double> buildUnnamed74() => [
      42.0,
      42.0,
    ];

void checkUnnamed74(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterGoogleCloudIntegrationsV1alphaDoubleParameterArray = 0;
api.GoogleCloudIntegrationsV1alphaDoubleParameterArray
    buildGoogleCloudIntegrationsV1alphaDoubleParameterArray() {
  final o = api.GoogleCloudIntegrationsV1alphaDoubleParameterArray();
  buildCounterGoogleCloudIntegrationsV1alphaDoubleParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDoubleParameterArray < 3) {
    o.doubleValues = buildUnnamed74();
  }
  buildCounterGoogleCloudIntegrationsV1alphaDoubleParameterArray--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaDoubleParameterArray(
    api.GoogleCloudIntegrationsV1alphaDoubleParameterArray o) {
  buildCounterGoogleCloudIntegrationsV1alphaDoubleParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDoubleParameterArray < 3) {
    checkUnnamed74(o.doubleValues!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaDoubleParameterArray--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaDownloadExecutionResponse =
    0;
api.GoogleCloudIntegrationsV1alphaDownloadExecutionResponse
    buildGoogleCloudIntegrationsV1alphaDownloadExecutionResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaDownloadExecutionResponse();
  buildCounterGoogleCloudIntegrationsV1alphaDownloadExecutionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDownloadExecutionResponse < 3) {
    o.content = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaDownloadExecutionResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaDownloadExecutionResponse(
    api.GoogleCloudIntegrationsV1alphaDownloadExecutionResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaDownloadExecutionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDownloadExecutionResponse < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaDownloadExecutionResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaSerializedFile> buildUnnamed75() =>
    [
      buildGoogleCloudIntegrationsV1alphaSerializedFile(),
      buildGoogleCloudIntegrationsV1alphaSerializedFile(),
    ];

void checkUnnamed75(
    core.List<api.GoogleCloudIntegrationsV1alphaSerializedFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaSerializedFile(o[0]);
  checkGoogleCloudIntegrationsV1alphaSerializedFile(o[1]);
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse =
    0;
api.GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse
    buildGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse() {
  final o =
      api.GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse();
  buildCounterGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse <
      3) {
    o.content = 'foo';
    o.files = buildUnnamed75();
  }
  buildCounterGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse(
    api.GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse <
      3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed75(o.files!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaFile> buildUnnamed76() => [
      buildGoogleCloudIntegrationsV1alphaFile(),
      buildGoogleCloudIntegrationsV1alphaFile(),
    ];

void checkUnnamed76(core.List<api.GoogleCloudIntegrationsV1alphaFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaFile(o[0]);
  checkGoogleCloudIntegrationsV1alphaFile(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse =
    0;
api.GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse
    buildGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse();
  buildCounterGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse <
      3) {
    o.files = buildUnnamed76();
  }
  buildCounterGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse(
    api.GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse <
      3) {
    checkUnnamed76(o.files!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaDownloadTemplateResponse = 0;
api.GoogleCloudIntegrationsV1alphaDownloadTemplateResponse
    buildGoogleCloudIntegrationsV1alphaDownloadTemplateResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaDownloadTemplateResponse();
  buildCounterGoogleCloudIntegrationsV1alphaDownloadTemplateResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDownloadTemplateResponse < 3) {
    o.content = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaDownloadTemplateResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaDownloadTemplateResponse(
    api.GoogleCloudIntegrationsV1alphaDownloadTemplateResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaDownloadTemplateResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDownloadTemplateResponse < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaDownloadTemplateResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse = 0;
api.GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse
    buildGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse();
  buildCounterGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse < 3) {
    o.content = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse(
    api.GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse--;
}

core.List<core.String> buildUnnamed77() => [
      'foo',
      'foo',
    ];

void checkUnnamed77(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse =
    0;
api.GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse
    buildGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse() {
  final o = api
      .GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse();
  buildCounterGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse <
      3) {
    o.regions = buildUnnamed77();
  }
  buildCounterGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse(
    api.GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse
        o) {
  buildCounterGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse <
      3) {
    checkUnnamed77(o.regions!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaNextTask> buildUnnamed78() => [
      buildGoogleCloudIntegrationsV1alphaNextTask(),
      buildGoogleCloudIntegrationsV1alphaNextTask(),
    ];

void checkUnnamed78(core.List<api.GoogleCloudIntegrationsV1alphaNextTask> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaNextTask(o[0]);
  checkGoogleCloudIntegrationsV1alphaNextTask(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaErrorCatcherConfig = 0;
api.GoogleCloudIntegrationsV1alphaErrorCatcherConfig
    buildGoogleCloudIntegrationsV1alphaErrorCatcherConfig() {
  final o = api.GoogleCloudIntegrationsV1alphaErrorCatcherConfig();
  buildCounterGoogleCloudIntegrationsV1alphaErrorCatcherConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaErrorCatcherConfig < 3) {
    o.description = 'foo';
    o.errorCatcherId = 'foo';
    o.errorCatcherNumber = 'foo';
    o.label = 'foo';
    o.position = buildGoogleCloudIntegrationsV1alphaCoordinate();
    o.startErrorTasks = buildUnnamed78();
  }
  buildCounterGoogleCloudIntegrationsV1alphaErrorCatcherConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaErrorCatcherConfig(
    api.GoogleCloudIntegrationsV1alphaErrorCatcherConfig o) {
  buildCounterGoogleCloudIntegrationsV1alphaErrorCatcherConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaErrorCatcherConfig < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorCatcherId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorCatcherNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaCoordinate(o.position!);
    checkUnnamed78(o.startErrorTasks!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaErrorCatcherConfig--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaEventParameter = 0;
api.GoogleCloudIntegrationsV1alphaEventParameter
    buildGoogleCloudIntegrationsV1alphaEventParameter() {
  final o = api.GoogleCloudIntegrationsV1alphaEventParameter();
  buildCounterGoogleCloudIntegrationsV1alphaEventParameter++;
  if (buildCounterGoogleCloudIntegrationsV1alphaEventParameter < 3) {
    o.key = 'foo';
    o.masked = true;
    o.value = buildGoogleCloudIntegrationsV1alphaValueType();
  }
  buildCounterGoogleCloudIntegrationsV1alphaEventParameter--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaEventParameter(
    api.GoogleCloudIntegrationsV1alphaEventParameter o) {
  buildCounterGoogleCloudIntegrationsV1alphaEventParameter++;
  if (buildCounterGoogleCloudIntegrationsV1alphaEventParameter < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(o.masked!, unittest.isTrue);
    checkGoogleCloudIntegrationsV1alphaValueType(o.value!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaEventParameter--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaExecuteEventResponse = 0;
api.GoogleCloudIntegrationsV1alphaExecuteEventResponse
    buildGoogleCloudIntegrationsV1alphaExecuteEventResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaExecuteEventResponse();
  buildCounterGoogleCloudIntegrationsV1alphaExecuteEventResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecuteEventResponse < 3) {
    o.executionId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecuteEventResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaExecuteEventResponse(
    api.GoogleCloudIntegrationsV1alphaExecuteEventResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaExecuteEventResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecuteEventResponse < 3) {
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecuteEventResponse--;
}

core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType>
    buildUnnamed79() => {
          'x': buildGoogleCloudIntegrationsV1alphaValueType(),
          'y': buildGoogleCloudIntegrationsV1alphaValueType(),
        };

void checkUnnamed79(
    core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaValueType(o['x']!);
  checkGoogleCloudIntegrationsV1alphaValueType(o['y']!);
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry>
    buildUnnamed80() => [
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
        ];

void checkUnnamed80(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest =
    0;
api.GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest
    buildGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest();
  buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest <
      3) {
    o.doNotPropagateError = true;
    o.executionId = 'foo';
    o.inputParameters = buildUnnamed79();
    o.parameterEntries = buildUnnamed80();
    o.parameters = buildEnterpriseCrmFrontendsEventbusProtoEventParameters();
    o.requestId = 'foo';
    o.triggerId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest(
    api.GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest <
      3) {
    unittest.expect(o.doNotPropagateError!, unittest.isTrue);
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    checkUnnamed79(o.inputParameters!);
    checkUnnamed80(o.parameterEntries!);
    checkEnterpriseCrmFrontendsEventbusProtoEventParameters(o.parameters!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed81() => {
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

void checkUnnamed81(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry>
    buildUnnamed82() => [
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
        ];

void checkUnnamed82(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse =
    0;
api.GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse
    buildGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse();
  buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse <
      3) {
    o.eventParameters =
        buildEnterpriseCrmFrontendsEventbusProtoEventParameters();
    o.executionFailed = true;
    o.executionId = 'foo';
    o.outputParameters = buildUnnamed81();
    o.parameterEntries = buildUnnamed82();
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse(
    api.GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse <
      3) {
    checkEnterpriseCrmFrontendsEventbusProtoEventParameters(o.eventParameters!);
    unittest.expect(o.executionFailed!, unittest.isTrue);
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    checkUnnamed81(o.outputParameters!);
    checkUnnamed82(o.parameterEntries!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse--;
}

core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType>
    buildUnnamed83() => {
          'x': buildGoogleCloudIntegrationsV1alphaValueType(),
          'y': buildGoogleCloudIntegrationsV1alphaValueType(),
        };

void checkUnnamed83(
    core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaValueType(o['x']!);
  checkGoogleCloudIntegrationsV1alphaValueType(o['y']!);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest = 0;
api.GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest
    buildGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest();
  buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest < 3) {
    o.inputParameters = buildUnnamed83();
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest(
    api.GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest < 3) {
    checkUnnamed83(o.inputParameters!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest--;
}

core.List<api.GoogleCloudIntegrationsV1alphaAssertionResult> buildUnnamed84() =>
    [
      buildGoogleCloudIntegrationsV1alphaAssertionResult(),
      buildGoogleCloudIntegrationsV1alphaAssertionResult(),
    ];

void checkUnnamed84(
    core.List<api.GoogleCloudIntegrationsV1alphaAssertionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaAssertionResult(o[0]);
  checkGoogleCloudIntegrationsV1alphaAssertionResult(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed85() => {
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

void checkUnnamed85(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(
    casted13['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted13['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted13['string'],
    unittest.equals('foo'),
  );
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(
    casted14['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted14['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted14['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse = 0;
api.GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse
    buildGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse();
  buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse < 3) {
    o.assertionResults = buildUnnamed84();
    o.executionId = 'foo';
    o.outputParameters = buildUnnamed85();
    o.testExecutionState = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse(
    api.GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse < 3) {
    checkUnnamed84(o.assertionResults!);
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    checkUnnamed85(o.outputParameters!);
    unittest.expect(
      o.testExecutionState!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaExecution> buildUnnamed86() => [
      buildGoogleCloudIntegrationsV1alphaExecution(),
      buildGoogleCloudIntegrationsV1alphaExecution(),
    ];

void checkUnnamed86(core.List<api.GoogleCloudIntegrationsV1alphaExecution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaExecution(o[0]);
  checkGoogleCloudIntegrationsV1alphaExecution(o[1]);
}

core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType>
    buildUnnamed87() => {
          'x': buildGoogleCloudIntegrationsV1alphaValueType(),
          'y': buildGoogleCloudIntegrationsV1alphaValueType(),
        };

void checkUnnamed87(
    core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaValueType(o['x']!);
  checkGoogleCloudIntegrationsV1alphaValueType(o['y']!);
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry>
    buildUnnamed88() => [
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
        ];

void checkUnnamed88(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[1]);
}

core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType>
    buildUnnamed89() => {
          'x': buildGoogleCloudIntegrationsV1alphaValueType(),
          'y': buildGoogleCloudIntegrationsV1alphaValueType(),
        };

void checkUnnamed89(
    core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaValueType(o['x']!);
  checkGoogleCloudIntegrationsV1alphaValueType(o['y']!);
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry>
    buildUnnamed90() => [
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
        ];

void checkUnnamed90(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaExecution = 0;
api.GoogleCloudIntegrationsV1alphaExecution
    buildGoogleCloudIntegrationsV1alphaExecution() {
  final o = api.GoogleCloudIntegrationsV1alphaExecution();
  buildCounterGoogleCloudIntegrationsV1alphaExecution++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecution < 3) {
    o.cloudLoggingDetails =
        buildGoogleCloudIntegrationsV1alphaCloudLoggingDetails();
    o.createTime = 'foo';
    o.directSubExecutions = buildUnnamed86();
    o.eventExecutionDetails =
        buildEnterpriseCrmEventbusProtoEventExecutionDetails();
    o.executionDetails = buildGoogleCloudIntegrationsV1alphaExecutionDetails();
    o.executionMethod = 'foo';
    o.integrationVersionState = 'foo';
    o.name = 'foo';
    o.replayInfo = buildGoogleCloudIntegrationsV1alphaExecutionReplayInfo();
    o.requestParameters = buildUnnamed87();
    o.requestParams = buildUnnamed88();
    o.responseParameters = buildUnnamed89();
    o.responseParams = buildUnnamed90();
    o.snapshotNumber = 'foo';
    o.triggerId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecution--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaExecution(
    api.GoogleCloudIntegrationsV1alphaExecution o) {
  buildCounterGoogleCloudIntegrationsV1alphaExecution++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecution < 3) {
    checkGoogleCloudIntegrationsV1alphaCloudLoggingDetails(
        o.cloudLoggingDetails!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed86(o.directSubExecutions!);
    checkEnterpriseCrmEventbusProtoEventExecutionDetails(
        o.eventExecutionDetails!);
    checkGoogleCloudIntegrationsV1alphaExecutionDetails(o.executionDetails!);
    unittest.expect(
      o.executionMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.integrationVersionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaExecutionReplayInfo(o.replayInfo!);
    checkUnnamed87(o.requestParameters!);
    checkUnnamed88(o.requestParams!);
    checkUnnamed89(o.responseParameters!);
    checkUnnamed90(o.responseParams!);
    unittest.expect(
      o.snapshotNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecution--;
}

core.List<api.GoogleCloudIntegrationsV1alphaAttemptStats> buildUnnamed91() => [
      buildGoogleCloudIntegrationsV1alphaAttemptStats(),
      buildGoogleCloudIntegrationsV1alphaAttemptStats(),
    ];

void checkUnnamed91(
    core.List<api.GoogleCloudIntegrationsV1alphaAttemptStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaAttemptStats(o[0]);
  checkGoogleCloudIntegrationsV1alphaAttemptStats(o[1]);
}

core.List<api.GoogleCloudIntegrationsV1alphaExecutionSnapshot>
    buildUnnamed92() => [
          buildGoogleCloudIntegrationsV1alphaExecutionSnapshot(),
          buildGoogleCloudIntegrationsV1alphaExecutionSnapshot(),
        ];

void checkUnnamed92(
    core.List<api.GoogleCloudIntegrationsV1alphaExecutionSnapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaExecutionSnapshot(o[0]);
  checkGoogleCloudIntegrationsV1alphaExecutionSnapshot(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaExecutionDetails = 0;
api.GoogleCloudIntegrationsV1alphaExecutionDetails
    buildGoogleCloudIntegrationsV1alphaExecutionDetails() {
  final o = api.GoogleCloudIntegrationsV1alphaExecutionDetails();
  buildCounterGoogleCloudIntegrationsV1alphaExecutionDetails++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecutionDetails < 3) {
    o.attemptStats = buildUnnamed91();
    o.eventExecutionSnapshotsSize = 'foo';
    o.executionSnapshots = buildUnnamed92();
    o.state = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecutionDetails--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaExecutionDetails(
    api.GoogleCloudIntegrationsV1alphaExecutionDetails o) {
  buildCounterGoogleCloudIntegrationsV1alphaExecutionDetails++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecutionDetails < 3) {
    checkUnnamed91(o.attemptStats!);
    unittest.expect(
      o.eventExecutionSnapshotsSize!,
      unittest.equals('foo'),
    );
    checkUnnamed92(o.executionSnapshots!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecutionDetails--;
}

core.List<core.String> buildUnnamed93() => [
      'foo',
      'foo',
    ];

void checkUnnamed93(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudIntegrationsV1alphaExecutionReplayInfo = 0;
api.GoogleCloudIntegrationsV1alphaExecutionReplayInfo
    buildGoogleCloudIntegrationsV1alphaExecutionReplayInfo() {
  final o = api.GoogleCloudIntegrationsV1alphaExecutionReplayInfo();
  buildCounterGoogleCloudIntegrationsV1alphaExecutionReplayInfo++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecutionReplayInfo < 3) {
    o.originalExecutionInfoId = 'foo';
    o.replayReason = 'foo';
    o.replayedExecutionInfoIds = buildUnnamed93();
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecutionReplayInfo--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaExecutionReplayInfo(
    api.GoogleCloudIntegrationsV1alphaExecutionReplayInfo o) {
  buildCounterGoogleCloudIntegrationsV1alphaExecutionReplayInfo++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecutionReplayInfo < 3) {
    unittest.expect(
      o.originalExecutionInfoId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replayReason!,
      unittest.equals('foo'),
    );
    checkUnnamed93(o.replayedExecutionInfoIds!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecutionReplayInfo--;
}

core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType>
    buildUnnamed94() => {
          'x': buildGoogleCloudIntegrationsV1alphaValueType(),
          'y': buildGoogleCloudIntegrationsV1alphaValueType(),
        };

void checkUnnamed94(
    core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaValueType(o['x']!);
  checkGoogleCloudIntegrationsV1alphaValueType(o['y']!);
}

core.List<api.GoogleCloudIntegrationsV1alphaTaskExecutionDetails>
    buildUnnamed95() => [
          buildGoogleCloudIntegrationsV1alphaTaskExecutionDetails(),
          buildGoogleCloudIntegrationsV1alphaTaskExecutionDetails(),
        ];

void checkUnnamed95(
    core.List<api.GoogleCloudIntegrationsV1alphaTaskExecutionDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaTaskExecutionDetails(o[0]);
  checkGoogleCloudIntegrationsV1alphaTaskExecutionDetails(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshot = 0;
api.GoogleCloudIntegrationsV1alphaExecutionSnapshot
    buildGoogleCloudIntegrationsV1alphaExecutionSnapshot() {
  final o = api.GoogleCloudIntegrationsV1alphaExecutionSnapshot();
  buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshot++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshot < 3) {
    o.checkpointTaskNumber = 'foo';
    o.executionSnapshotMetadata =
        buildGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata();
    o.params = buildUnnamed94();
    o.taskExecutionDetails = buildUnnamed95();
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshot--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaExecutionSnapshot(
    api.GoogleCloudIntegrationsV1alphaExecutionSnapshot o) {
  buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshot++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshot < 3) {
    unittest.expect(
      o.checkpointTaskNumber!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata(
        o.executionSnapshotMetadata!);
    checkUnnamed94(o.params!);
    checkUnnamed95(o.taskExecutionDetails!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshot--;
}

core.List<core.String> buildUnnamed96() => [
      'foo',
      'foo',
    ];

void checkUnnamed96(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed97() => [
      'foo',
      'foo',
    ];

void checkUnnamed97(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata =
    0;
api.GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata
    buildGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata() {
  final o = api
      .GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata();
  buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata <
      3) {
    o.ancestorIterationNumbers = buildUnnamed96();
    o.ancestorTaskNumbers = buildUnnamed97();
    o.executionAttempt = 42;
    o.integrationName = 'foo';
    o.task = 'foo';
    o.taskAttempt = 42;
    o.taskLabel = 'foo';
    o.taskNumber = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata(
    api.GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata
        o) {
  buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata++;
  if (buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata <
      3) {
    checkUnnamed96(o.ancestorIterationNumbers!);
    checkUnnamed97(o.ancestorTaskNumbers!);
    unittest.expect(
      o.executionAttempt!,
      unittest.equals(42),
    );
    unittest.expect(
      o.integrationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.task!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskAttempt!,
      unittest.equals(42),
    );
    unittest.expect(
      o.taskLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaFailurePolicy = 0;
api.GoogleCloudIntegrationsV1alphaFailurePolicy
    buildGoogleCloudIntegrationsV1alphaFailurePolicy() {
  final o = api.GoogleCloudIntegrationsV1alphaFailurePolicy();
  buildCounterGoogleCloudIntegrationsV1alphaFailurePolicy++;
  if (buildCounterGoogleCloudIntegrationsV1alphaFailurePolicy < 3) {
    o.condition = 'foo';
    o.intervalTime = 'foo';
    o.maxRetries = 42;
    o.retryStrategy = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaFailurePolicy--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaFailurePolicy(
    api.GoogleCloudIntegrationsV1alphaFailurePolicy o) {
  buildCounterGoogleCloudIntegrationsV1alphaFailurePolicy++;
  if (buildCounterGoogleCloudIntegrationsV1alphaFailurePolicy < 3) {
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.intervalTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxRetries!,
      unittest.equals(42),
    );
    unittest.expect(
      o.retryStrategy!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaFailurePolicy--;
}

core.Map<core.String, core.Object?> buildUnnamed98() => {
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

void checkUnnamed98(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(
    casted15['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted15['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted15['string'],
    unittest.equals('foo'),
  );
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(
    casted16['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted16['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted16['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudIntegrationsV1alphaFile = 0;
api.GoogleCloudIntegrationsV1alphaFile
    buildGoogleCloudIntegrationsV1alphaFile() {
  final o = api.GoogleCloudIntegrationsV1alphaFile();
  buildCounterGoogleCloudIntegrationsV1alphaFile++;
  if (buildCounterGoogleCloudIntegrationsV1alphaFile < 3) {
    o.integrationConfig = buildUnnamed98();
    o.integrationVersion =
        buildGoogleCloudIntegrationsV1alphaIntegrationVersion();
    o.type = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaFile--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaFile(
    api.GoogleCloudIntegrationsV1alphaFile o) {
  buildCounterGoogleCloudIntegrationsV1alphaFile++;
  if (buildCounterGoogleCloudIntegrationsV1alphaFile < 3) {
    checkUnnamed98(o.integrationConfig!);
    checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
        o.integrationVersion!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaFile--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaGenerateTokenResponse = 0;
api.GoogleCloudIntegrationsV1alphaGenerateTokenResponse
    buildGoogleCloudIntegrationsV1alphaGenerateTokenResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaGenerateTokenResponse();
  buildCounterGoogleCloudIntegrationsV1alphaGenerateTokenResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaGenerateTokenResponse < 3) {
    o.message = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaGenerateTokenResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaGenerateTokenResponse(
    api.GoogleCloudIntegrationsV1alphaGenerateTokenResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaGenerateTokenResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaGenerateTokenResponse < 3) {
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaGenerateTokenResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaGetClientMetadataResponse =
    0;
api.GoogleCloudIntegrationsV1alphaGetClientMetadataResponse
    buildGoogleCloudIntegrationsV1alphaGetClientMetadataResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaGetClientMetadataResponse();
  buildCounterGoogleCloudIntegrationsV1alphaGetClientMetadataResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaGetClientMetadataResponse < 3) {
    o.properties = buildGoogleCloudIntegrationsV1alphaProjectProperties();
  }
  buildCounterGoogleCloudIntegrationsV1alphaGetClientMetadataResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaGetClientMetadataResponse(
    api.GoogleCloudIntegrationsV1alphaGetClientMetadataResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaGetClientMetadataResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaGetClientMetadataResponse < 3) {
    checkGoogleCloudIntegrationsV1alphaProjectProperties(o.properties!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaGetClientMetadataResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaGetClientResponse = 0;
api.GoogleCloudIntegrationsV1alphaGetClientResponse
    buildGoogleCloudIntegrationsV1alphaGetClientResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaGetClientResponse();
  buildCounterGoogleCloudIntegrationsV1alphaGetClientResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaGetClientResponse < 3) {
    o.client = buildGoogleCloudIntegrationsV1alphaClientConfig();
  }
  buildCounterGoogleCloudIntegrationsV1alphaGetClientResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaGetClientResponse(
    api.GoogleCloudIntegrationsV1alphaGetClientResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaGetClientResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaGetClientResponse < 3) {
    checkGoogleCloudIntegrationsV1alphaClientConfig(o.client!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaGetClientResponse--;
}

core.Map<core.String,
        api.GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails>
    buildUnnamed99() => {
          'x':
              buildGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails(),
          'y':
              buildGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails(),
        };

void checkUnnamed99(
    core.Map<
            core.String,
            api
            .GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails(
      o['x']!);
  checkGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails(
      o['y']!);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaImportTemplateRequest = 0;
api.GoogleCloudIntegrationsV1alphaImportTemplateRequest
    buildGoogleCloudIntegrationsV1alphaImportTemplateRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaImportTemplateRequest();
  buildCounterGoogleCloudIntegrationsV1alphaImportTemplateRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaImportTemplateRequest < 3) {
    o.integration = 'foo';
    o.integrationRegion = 'foo';
    o.subIntegrations = buildUnnamed99();
  }
  buildCounterGoogleCloudIntegrationsV1alphaImportTemplateRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaImportTemplateRequest(
    api.GoogleCloudIntegrationsV1alphaImportTemplateRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaImportTemplateRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaImportTemplateRequest < 3) {
    unittest.expect(
      o.integration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.integrationRegion!,
      unittest.equals('foo'),
    );
    checkUnnamed99(o.subIntegrations!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaImportTemplateRequest--;
}

core.List<api.GoogleCloudIntegrationsV1alphaIntegrationVersion>
    buildUnnamed100() => [
          buildGoogleCloudIntegrationsV1alphaIntegrationVersion(),
          buildGoogleCloudIntegrationsV1alphaIntegrationVersion(),
        ];

void checkUnnamed100(
    core.List<api.GoogleCloudIntegrationsV1alphaIntegrationVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaIntegrationVersion(o[0]);
  checkGoogleCloudIntegrationsV1alphaIntegrationVersion(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaImportTemplateResponse = 0;
api.GoogleCloudIntegrationsV1alphaImportTemplateResponse
    buildGoogleCloudIntegrationsV1alphaImportTemplateResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaImportTemplateResponse();
  buildCounterGoogleCloudIntegrationsV1alphaImportTemplateResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaImportTemplateResponse < 3) {
    o.integrationVersion =
        buildGoogleCloudIntegrationsV1alphaIntegrationVersion();
    o.subIntegrationVersions = buildUnnamed100();
  }
  buildCounterGoogleCloudIntegrationsV1alphaImportTemplateResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaImportTemplateResponse(
    api.GoogleCloudIntegrationsV1alphaImportTemplateResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaImportTemplateResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaImportTemplateResponse < 3) {
    checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
        o.integrationVersion!);
    checkUnnamed100(o.subIntegrationVersions!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaImportTemplateResponse--;
}

core.List<core.String> buildUnnamed101() => [
      'foo',
      'foo',
    ];

void checkUnnamed101(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudIntegrationsV1alphaIntParameterArray = 0;
api.GoogleCloudIntegrationsV1alphaIntParameterArray
    buildGoogleCloudIntegrationsV1alphaIntParameterArray() {
  final o = api.GoogleCloudIntegrationsV1alphaIntParameterArray();
  buildCounterGoogleCloudIntegrationsV1alphaIntParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntParameterArray < 3) {
    o.intValues = buildUnnamed101();
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntParameterArray--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaIntParameterArray(
    api.GoogleCloudIntegrationsV1alphaIntParameterArray o) {
  buildCounterGoogleCloudIntegrationsV1alphaIntParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntParameterArray < 3) {
    checkUnnamed101(o.intValues!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntParameterArray--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaIntegration = 0;
api.GoogleCloudIntegrationsV1alphaIntegration
    buildGoogleCloudIntegrationsV1alphaIntegration() {
  final o = api.GoogleCloudIntegrationsV1alphaIntegration();
  buildCounterGoogleCloudIntegrationsV1alphaIntegration++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegration < 3) {
    o.active = true;
    o.createTime = 'foo';
    o.creatorEmail = 'foo';
    o.description = 'foo';
    o.lastModifierEmail = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegration--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaIntegration(
    api.GoogleCloudIntegrationsV1alphaIntegration o) {
  buildCounterGoogleCloudIntegrationsV1alphaIntegration++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegration < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creatorEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifierEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegration--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfig = 0;
api.GoogleCloudIntegrationsV1alphaIntegrationAlertConfig
    buildGoogleCloudIntegrationsV1alphaIntegrationAlertConfig() {
  final o = api.GoogleCloudIntegrationsV1alphaIntegrationAlertConfig();
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfig < 3) {
    o.aggregationPeriod = 'foo';
    o.alertThreshold = 42;
    o.disableAlert = true;
    o.displayName = 'foo';
    o.durationThreshold = 'foo';
    o.metricType = 'foo';
    o.onlyFinalAttempt = true;
    o.thresholdType = 'foo';
    o.thresholdValue =
        buildGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue();
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaIntegrationAlertConfig(
    api.GoogleCloudIntegrationsV1alphaIntegrationAlertConfig o) {
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfig < 3) {
    unittest.expect(
      o.aggregationPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.alertThreshold!,
      unittest.equals(42),
    );
    unittest.expect(o.disableAlert!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.durationThreshold!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metricType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.onlyFinalAttempt!, unittest.isTrue);
    unittest.expect(
      o.thresholdType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue(
        o.thresholdValue!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfig--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue =
    0;
api.GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue
    buildGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue() {
  final o =
      api.GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue();
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue <
      3) {
    o.absolute = 'foo';
    o.percentage = 42;
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue(
    api.GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue o) {
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue <
      3) {
    unittest.expect(
      o.absolute!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.percentage!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaIntegrationConfigParameter =
    0;
api.GoogleCloudIntegrationsV1alphaIntegrationConfigParameter
    buildGoogleCloudIntegrationsV1alphaIntegrationConfigParameter() {
  final o = api.GoogleCloudIntegrationsV1alphaIntegrationConfigParameter();
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationConfigParameter++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegrationConfigParameter <
      3) {
    o.parameter = buildGoogleCloudIntegrationsV1alphaIntegrationParameter();
    o.value = buildGoogleCloudIntegrationsV1alphaValueType();
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationConfigParameter--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaIntegrationConfigParameter(
    api.GoogleCloudIntegrationsV1alphaIntegrationConfigParameter o) {
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationConfigParameter++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegrationConfigParameter <
      3) {
    checkGoogleCloudIntegrationsV1alphaIntegrationParameter(o.parameter!);
    checkGoogleCloudIntegrationsV1alphaValueType(o.value!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationConfigParameter--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaIntegrationParameter = 0;
api.GoogleCloudIntegrationsV1alphaIntegrationParameter
    buildGoogleCloudIntegrationsV1alphaIntegrationParameter() {
  final o = api.GoogleCloudIntegrationsV1alphaIntegrationParameter();
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationParameter++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegrationParameter < 3) {
    o.containsLargeData = true;
    o.dataType = 'foo';
    o.defaultValue = buildGoogleCloudIntegrationsV1alphaValueType();
    o.description = 'foo';
    o.displayName = 'foo';
    o.inputOutputType = 'foo';
    o.isTransient = true;
    o.jsonSchema = 'foo';
    o.key = 'foo';
    o.masked = true;
    o.producer = 'foo';
    o.searchable = true;
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationParameter--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaIntegrationParameter(
    api.GoogleCloudIntegrationsV1alphaIntegrationParameter o) {
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationParameter++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegrationParameter < 3) {
    unittest.expect(o.containsLargeData!, unittest.isTrue);
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaValueType(o.defaultValue!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputOutputType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isTransient!, unittest.isTrue);
    unittest.expect(
      o.jsonSchema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(o.masked!, unittest.isTrue);
    unittest.expect(
      o.producer!,
      unittest.equals('foo'),
    );
    unittest.expect(o.searchable!, unittest.isTrue);
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationParameter--;
}

core.List<api.GoogleCloudIntegrationsV1alphaErrorCatcherConfig>
    buildUnnamed102() => [
          buildGoogleCloudIntegrationsV1alphaErrorCatcherConfig(),
          buildGoogleCloudIntegrationsV1alphaErrorCatcherConfig(),
        ];

void checkUnnamed102(
    core.List<api.GoogleCloudIntegrationsV1alphaErrorCatcherConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaErrorCatcherConfig(o[0]);
  checkGoogleCloudIntegrationsV1alphaErrorCatcherConfig(o[1]);
}

core.List<api.GoogleCloudIntegrationsV1alphaIntegrationConfigParameter>
    buildUnnamed103() => [
          buildGoogleCloudIntegrationsV1alphaIntegrationConfigParameter(),
          buildGoogleCloudIntegrationsV1alphaIntegrationConfigParameter(),
        ];

void checkUnnamed103(
    core.List<api.GoogleCloudIntegrationsV1alphaIntegrationConfigParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaIntegrationConfigParameter(o[0]);
  checkGoogleCloudIntegrationsV1alphaIntegrationConfigParameter(o[1]);
}

core.List<api.GoogleCloudIntegrationsV1alphaIntegrationParameter>
    buildUnnamed104() => [
          buildGoogleCloudIntegrationsV1alphaIntegrationParameter(),
          buildGoogleCloudIntegrationsV1alphaIntegrationParameter(),
        ];

void checkUnnamed104(
    core.List<api.GoogleCloudIntegrationsV1alphaIntegrationParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaIntegrationParameter(o[0]);
  checkGoogleCloudIntegrationsV1alphaIntegrationParameter(o[1]);
}

core.List<api.GoogleCloudIntegrationsV1alphaTaskConfig> buildUnnamed105() => [
      buildGoogleCloudIntegrationsV1alphaTaskConfig(),
      buildGoogleCloudIntegrationsV1alphaTaskConfig(),
    ];

void checkUnnamed105(
    core.List<api.GoogleCloudIntegrationsV1alphaTaskConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaTaskConfig(o[0]);
  checkGoogleCloudIntegrationsV1alphaTaskConfig(o[1]);
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoTaskConfig>
    buildUnnamed106() => [
          buildEnterpriseCrmFrontendsEventbusProtoTaskConfig(),
          buildEnterpriseCrmFrontendsEventbusProtoTaskConfig(),
        ];

void checkUnnamed106(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoTaskConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoTaskConfig(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoTaskConfig(o[1]);
}

core.List<api.GoogleCloudIntegrationsV1alphaTriggerConfig> buildUnnamed107() =>
    [
      buildGoogleCloudIntegrationsV1alphaTriggerConfig(),
      buildGoogleCloudIntegrationsV1alphaTriggerConfig(),
    ];

void checkUnnamed107(
    core.List<api.GoogleCloudIntegrationsV1alphaTriggerConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaTriggerConfig(o[0]);
  checkGoogleCloudIntegrationsV1alphaTriggerConfig(o[1]);
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoTriggerConfig>
    buildUnnamed108() => [
          buildEnterpriseCrmFrontendsEventbusProtoTriggerConfig(),
          buildEnterpriseCrmFrontendsEventbusProtoTriggerConfig(),
        ];

void checkUnnamed108(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoTriggerConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoTriggerConfig(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoTriggerConfig(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersion = 0;
api.GoogleCloudIntegrationsV1alphaIntegrationVersion
    buildGoogleCloudIntegrationsV1alphaIntegrationVersion() {
  final o = api.GoogleCloudIntegrationsV1alphaIntegrationVersion();
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersion++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersion < 3) {
    o.cloudLoggingDetails =
        buildGoogleCloudIntegrationsV1alphaCloudLoggingDetails();
    o.createTime = 'foo';
    o.createdFromTemplate = 'foo';
    o.databasePersistencePolicy = 'foo';
    o.description = 'foo';
    o.enableVariableMasking = true;
    o.errorCatcherConfigs = buildUnnamed102();
    o.integrationConfigParameters = buildUnnamed103();
    o.integrationParameters = buildUnnamed104();
    o.integrationParametersInternal =
        buildEnterpriseCrmFrontendsEventbusProtoWorkflowParameters();
    o.lastModifierEmail = 'foo';
    o.lockHolder = 'foo';
    o.name = 'foo';
    o.origin = 'foo';
    o.parentTemplateId = 'foo';
    o.runAsServiceAccount = 'foo';
    o.snapshotNumber = 'foo';
    o.state = 'foo';
    o.status = 'foo';
    o.taskConfigs = buildUnnamed105();
    o.taskConfigsInternal = buildUnnamed106();
    o.teardown = buildEnterpriseCrmEventbusProtoTeardown();
    o.triggerConfigs = buildUnnamed107();
    o.triggerConfigsInternal = buildUnnamed108();
    o.updateTime = 'foo';
    o.userLabel = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersion--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
    api.GoogleCloudIntegrationsV1alphaIntegrationVersion o) {
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersion++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersion < 3) {
    checkGoogleCloudIntegrationsV1alphaCloudLoggingDetails(
        o.cloudLoggingDetails!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createdFromTemplate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databasePersistencePolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableVariableMasking!, unittest.isTrue);
    checkUnnamed102(o.errorCatcherConfigs!);
    checkUnnamed103(o.integrationConfigParameters!);
    checkUnnamed104(o.integrationParameters!);
    checkEnterpriseCrmFrontendsEventbusProtoWorkflowParameters(
        o.integrationParametersInternal!);
    unittest.expect(
      o.lastModifierEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lockHolder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.origin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentTemplateId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.runAsServiceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snapshotNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    checkUnnamed105(o.taskConfigs!);
    checkUnnamed106(o.taskConfigsInternal!);
    checkEnterpriseCrmEventbusProtoTeardown(o.teardown!);
    checkUnnamed107(o.triggerConfigs!);
    checkUnnamed108(o.triggerConfigsInternal!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersion--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate =
    0;
api.GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate
    buildGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate() {
  final o = api.GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate();
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate <
      3) {
    o.integrationVersion =
        buildGoogleCloudIntegrationsV1alphaIntegrationVersion();
    o.key = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate(
    api.GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate o) {
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate++;
  if (buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate <
      3) {
    checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
        o.integrationVersion!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaJwt = 0;
api.GoogleCloudIntegrationsV1alphaJwt buildGoogleCloudIntegrationsV1alphaJwt() {
  final o = api.GoogleCloudIntegrationsV1alphaJwt();
  buildCounterGoogleCloudIntegrationsV1alphaJwt++;
  if (buildCounterGoogleCloudIntegrationsV1alphaJwt < 3) {
    o.jwt = 'foo';
    o.jwtHeader = 'foo';
    o.jwtPayload = 'foo';
    o.secret = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaJwt--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaJwt(
    api.GoogleCloudIntegrationsV1alphaJwt o) {
  buildCounterGoogleCloudIntegrationsV1alphaJwt++;
  if (buildCounterGoogleCloudIntegrationsV1alphaJwt < 3) {
    unittest.expect(
      o.jwt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jwtHeader!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jwtPayload!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secret!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaJwt--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionRequest = 0;
api.GoogleCloudIntegrationsV1alphaLiftSuspensionRequest
    buildGoogleCloudIntegrationsV1alphaLiftSuspensionRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaLiftSuspensionRequest();
  buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionRequest < 3) {
    o.suspensionResult = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaLiftSuspensionRequest(
    api.GoogleCloudIntegrationsV1alphaLiftSuspensionRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionRequest < 3) {
    unittest.expect(
      o.suspensionResult!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionRequest--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionResponse = 0;
api.GoogleCloudIntegrationsV1alphaLiftSuspensionResponse
    buildGoogleCloudIntegrationsV1alphaLiftSuspensionResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaLiftSuspensionResponse();
  buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionResponse < 3) {
    o.eventExecutionInfoId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaLiftSuspensionResponse(
    api.GoogleCloudIntegrationsV1alphaLiftSuspensionResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionResponse < 3) {
    unittest.expect(
      o.eventExecutionInfoId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaLiftSuspensionResponse--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest = 0;
api.GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest
    buildGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest();
  buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest <
      3) {
    o.scriptId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest(
    api.GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest <
      3) {
    unittest.expect(
      o.scriptId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse = 0;
api.GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse
    buildGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse();
  buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse <
      3) {
    o.scriptId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse(
    api.GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse <
      3) {
    unittest.expect(
      o.scriptId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaAuthConfig> buildUnnamed109() => [
      buildGoogleCloudIntegrationsV1alphaAuthConfig(),
      buildGoogleCloudIntegrationsV1alphaAuthConfig(),
    ];

void checkUnnamed109(
    core.List<api.GoogleCloudIntegrationsV1alphaAuthConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaAuthConfig(o[0]);
  checkGoogleCloudIntegrationsV1alphaAuthConfig(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaListAuthConfigsResponse = 0;
api.GoogleCloudIntegrationsV1alphaListAuthConfigsResponse
    buildGoogleCloudIntegrationsV1alphaListAuthConfigsResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaListAuthConfigsResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListAuthConfigsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListAuthConfigsResponse < 3) {
    o.authConfigs = buildUnnamed109();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaListAuthConfigsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListAuthConfigsResponse(
    api.GoogleCloudIntegrationsV1alphaListAuthConfigsResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListAuthConfigsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListAuthConfigsResponse < 3) {
    checkUnnamed109(o.authConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaListAuthConfigsResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaCertificate> buildUnnamed110() => [
      buildGoogleCloudIntegrationsV1alphaCertificate(),
      buildGoogleCloudIntegrationsV1alphaCertificate(),
    ];

void checkUnnamed110(
    core.List<api.GoogleCloudIntegrationsV1alphaCertificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaCertificate(o[0]);
  checkGoogleCloudIntegrationsV1alphaCertificate(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaListCertificatesResponse = 0;
api.GoogleCloudIntegrationsV1alphaListCertificatesResponse
    buildGoogleCloudIntegrationsV1alphaListCertificatesResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaListCertificatesResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListCertificatesResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListCertificatesResponse < 3) {
    o.certificates = buildUnnamed110();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaListCertificatesResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListCertificatesResponse(
    api.GoogleCloudIntegrationsV1alphaListCertificatesResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListCertificatesResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListCertificatesResponse < 3) {
    checkUnnamed110(o.certificates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaListCertificatesResponse--;
}

core.List<api.GoogleCloudConnectorsV1Connection> buildUnnamed111() => [
      buildGoogleCloudConnectorsV1Connection(),
      buildGoogleCloudConnectorsV1Connection(),
    ];

void checkUnnamed111(core.List<api.GoogleCloudConnectorsV1Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudConnectorsV1Connection(o[0]);
  checkGoogleCloudConnectorsV1Connection(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaListConnectionsResponse = 0;
api.GoogleCloudIntegrationsV1alphaListConnectionsResponse
    buildGoogleCloudIntegrationsV1alphaListConnectionsResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaListConnectionsResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListConnectionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListConnectionsResponse < 3) {
    o.connections = buildUnnamed111();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaListConnectionsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListConnectionsResponse(
    api.GoogleCloudIntegrationsV1alphaListConnectionsResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListConnectionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListConnectionsResponse < 3) {
    checkUnnamed111(o.connections!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaListConnectionsResponse--;
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo>
    buildUnnamed112() => [
          buildEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo(),
          buildEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo(),
        ];

void checkUnnamed112(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo(o[1]);
}

core.List<api.GoogleCloudIntegrationsV1alphaExecution> buildUnnamed113() => [
      buildGoogleCloudIntegrationsV1alphaExecution(),
      buildGoogleCloudIntegrationsV1alphaExecution(),
    ];

void checkUnnamed113(core.List<api.GoogleCloudIntegrationsV1alphaExecution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaExecution(o[0]);
  checkGoogleCloudIntegrationsV1alphaExecution(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaListExecutionsResponse = 0;
api.GoogleCloudIntegrationsV1alphaListExecutionsResponse
    buildGoogleCloudIntegrationsV1alphaListExecutionsResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaListExecutionsResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListExecutionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListExecutionsResponse < 3) {
    o.executionInfos = buildUnnamed112();
    o.executions = buildUnnamed113();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaListExecutionsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListExecutionsResponse(
    api.GoogleCloudIntegrationsV1alphaListExecutionsResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListExecutionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListExecutionsResponse < 3) {
    checkUnnamed112(o.executionInfos!);
    checkUnnamed113(o.executions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaListExecutionsResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaIntegrationVersion>
    buildUnnamed114() => [
          buildGoogleCloudIntegrationsV1alphaIntegrationVersion(),
          buildGoogleCloudIntegrationsV1alphaIntegrationVersion(),
        ];

void checkUnnamed114(
    core.List<api.GoogleCloudIntegrationsV1alphaIntegrationVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaIntegrationVersion(o[0]);
  checkGoogleCloudIntegrationsV1alphaIntegrationVersion(o[1]);
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse =
    0;
api.GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse
    buildGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse <
      3) {
    o.integrationVersions = buildUnnamed114();
    o.nextPageToken = 'foo';
    o.noPermission = true;
  }
  buildCounterGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse(
    api.GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse <
      3) {
    checkUnnamed114(o.integrationVersions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(o.noPermission!, unittest.isTrue);
  }
  buildCounterGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaIntegration> buildUnnamed115() => [
      buildGoogleCloudIntegrationsV1alphaIntegration(),
      buildGoogleCloudIntegrationsV1alphaIntegration(),
    ];

void checkUnnamed115(
    core.List<api.GoogleCloudIntegrationsV1alphaIntegration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaIntegration(o[0]);
  checkGoogleCloudIntegrationsV1alphaIntegration(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaListIntegrationsResponse = 0;
api.GoogleCloudIntegrationsV1alphaListIntegrationsResponse
    buildGoogleCloudIntegrationsV1alphaListIntegrationsResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaListIntegrationsResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListIntegrationsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListIntegrationsResponse < 3) {
    o.integrations = buildUnnamed115();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaListIntegrationsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListIntegrationsResponse(
    api.GoogleCloudIntegrationsV1alphaListIntegrationsResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListIntegrationsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListIntegrationsResponse < 3) {
    checkUnnamed115(o.integrations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaListIntegrationsResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaRuntimeActionSchema>
    buildUnnamed116() => [
          buildGoogleCloudIntegrationsV1alphaRuntimeActionSchema(),
          buildGoogleCloudIntegrationsV1alphaRuntimeActionSchema(),
        ];

void checkUnnamed116(
    core.List<api.GoogleCloudIntegrationsV1alphaRuntimeActionSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaRuntimeActionSchema(o[0]);
  checkGoogleCloudIntegrationsV1alphaRuntimeActionSchema(o[1]);
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse =
    0;
api.GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse
    buildGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse() {
  final o =
      api.GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse <
      3) {
    o.nextPageToken = 'foo';
    o.runtimeActionSchemas = buildUnnamed116();
  }
  buildCounterGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse(
    api.GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed116(o.runtimeActionSchemas!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaRuntimeEntitySchema>
    buildUnnamed117() => [
          buildGoogleCloudIntegrationsV1alphaRuntimeEntitySchema(),
          buildGoogleCloudIntegrationsV1alphaRuntimeEntitySchema(),
        ];

void checkUnnamed117(
    core.List<api.GoogleCloudIntegrationsV1alphaRuntimeEntitySchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaRuntimeEntitySchema(o[0]);
  checkGoogleCloudIntegrationsV1alphaRuntimeEntitySchema(o[1]);
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse =
    0;
api.GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse
    buildGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse() {
  final o =
      api.GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse <
      3) {
    o.nextPageToken = 'foo';
    o.runtimeEntitySchemas = buildUnnamed117();
  }
  buildCounterGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse(
    api.GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed117(o.runtimeEntitySchemas!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaSfdcChannel> buildUnnamed118() => [
      buildGoogleCloudIntegrationsV1alphaSfdcChannel(),
      buildGoogleCloudIntegrationsV1alphaSfdcChannel(),
    ];

void checkUnnamed118(
    core.List<api.GoogleCloudIntegrationsV1alphaSfdcChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaSfdcChannel(o[0]);
  checkGoogleCloudIntegrationsV1alphaSfdcChannel(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse = 0;
api.GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse
    buildGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sfdcChannels = buildUnnamed118();
  }
  buildCounterGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse(
    api.GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed118(o.sfdcChannels!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaSfdcInstance> buildUnnamed119() => [
      buildGoogleCloudIntegrationsV1alphaSfdcInstance(),
      buildGoogleCloudIntegrationsV1alphaSfdcInstance(),
    ];

void checkUnnamed119(
    core.List<api.GoogleCloudIntegrationsV1alphaSfdcInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaSfdcInstance(o[0]);
  checkGoogleCloudIntegrationsV1alphaSfdcInstance(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse =
    0;
api.GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse
    buildGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sfdcInstances = buildUnnamed119();
  }
  buildCounterGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse(
    api.GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed119(o.sfdcInstances!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaSuspension> buildUnnamed120() => [
      buildGoogleCloudIntegrationsV1alphaSuspension(),
      buildGoogleCloudIntegrationsV1alphaSuspension(),
    ];

void checkUnnamed120(
    core.List<api.GoogleCloudIntegrationsV1alphaSuspension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaSuspension(o[0]);
  checkGoogleCloudIntegrationsV1alphaSuspension(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaListSuspensionsResponse = 0;
api.GoogleCloudIntegrationsV1alphaListSuspensionsResponse
    buildGoogleCloudIntegrationsV1alphaListSuspensionsResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaListSuspensionsResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListSuspensionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListSuspensionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.suspensions = buildUnnamed120();
  }
  buildCounterGoogleCloudIntegrationsV1alphaListSuspensionsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListSuspensionsResponse(
    api.GoogleCloudIntegrationsV1alphaListSuspensionsResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListSuspensionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListSuspensionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed120(o.suspensions!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaListSuspensionsResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaTemplate> buildUnnamed121() => [
      buildGoogleCloudIntegrationsV1alphaTemplate(),
      buildGoogleCloudIntegrationsV1alphaTemplate(),
    ];

void checkUnnamed121(core.List<api.GoogleCloudIntegrationsV1alphaTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaTemplate(o[0]);
  checkGoogleCloudIntegrationsV1alphaTemplate(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaListTemplatesResponse = 0;
api.GoogleCloudIntegrationsV1alphaListTemplatesResponse
    buildGoogleCloudIntegrationsV1alphaListTemplatesResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaListTemplatesResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListTemplatesResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListTemplatesResponse < 3) {
    o.nextPageToken = 'foo';
    o.templates = buildUnnamed121();
  }
  buildCounterGoogleCloudIntegrationsV1alphaListTemplatesResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListTemplatesResponse(
    api.GoogleCloudIntegrationsV1alphaListTemplatesResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListTemplatesResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListTemplatesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed121(o.templates!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaListTemplatesResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaExecution> buildUnnamed122() => [
      buildGoogleCloudIntegrationsV1alphaExecution(),
      buildGoogleCloudIntegrationsV1alphaExecution(),
    ];

void checkUnnamed122(core.List<api.GoogleCloudIntegrationsV1alphaExecution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaExecution(o[0]);
  checkGoogleCloudIntegrationsV1alphaExecution(o[1]);
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse =
    0;
api.GoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse
    buildGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse <
      3) {
    o.executions = buildUnnamed122();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse(
    api.GoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse <
      3) {
    checkUnnamed122(o.executions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaTestCase> buildUnnamed123() => [
      buildGoogleCloudIntegrationsV1alphaTestCase(),
      buildGoogleCloudIntegrationsV1alphaTestCase(),
    ];

void checkUnnamed123(core.List<api.GoogleCloudIntegrationsV1alphaTestCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaTestCase(o[0]);
  checkGoogleCloudIntegrationsV1alphaTestCase(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaListTestCasesResponse = 0;
api.GoogleCloudIntegrationsV1alphaListTestCasesResponse
    buildGoogleCloudIntegrationsV1alphaListTestCasesResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaListTestCasesResponse();
  buildCounterGoogleCloudIntegrationsV1alphaListTestCasesResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListTestCasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.testCases = buildUnnamed123();
  }
  buildCounterGoogleCloudIntegrationsV1alphaListTestCasesResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaListTestCasesResponse(
    api.GoogleCloudIntegrationsV1alphaListTestCasesResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaListTestCasesResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaListTestCasesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed123(o.testCases!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaListTestCasesResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaEventParameter> buildUnnamed124() =>
    [
      buildGoogleCloudIntegrationsV1alphaEventParameter(),
      buildGoogleCloudIntegrationsV1alphaEventParameter(),
    ];

void checkUnnamed124(
    core.List<api.GoogleCloudIntegrationsV1alphaEventParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaEventParameter(o[0]);
  checkGoogleCloudIntegrationsV1alphaEventParameter(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaMockConfig = 0;
api.GoogleCloudIntegrationsV1alphaMockConfig
    buildGoogleCloudIntegrationsV1alphaMockConfig() {
  final o = api.GoogleCloudIntegrationsV1alphaMockConfig();
  buildCounterGoogleCloudIntegrationsV1alphaMockConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaMockConfig < 3) {
    o.failedExecutions = 'foo';
    o.mockStrategy = 'foo';
    o.parameters = buildUnnamed124();
  }
  buildCounterGoogleCloudIntegrationsV1alphaMockConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaMockConfig(
    api.GoogleCloudIntegrationsV1alphaMockConfig o) {
  buildCounterGoogleCloudIntegrationsV1alphaMockConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaMockConfig < 3) {
    unittest.expect(
      o.failedExecutions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mockStrategy!,
      unittest.equals('foo'),
    );
    checkUnnamed124(o.parameters!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaMockConfig--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaNextTask = 0;
api.GoogleCloudIntegrationsV1alphaNextTask
    buildGoogleCloudIntegrationsV1alphaNextTask() {
  final o = api.GoogleCloudIntegrationsV1alphaNextTask();
  buildCounterGoogleCloudIntegrationsV1alphaNextTask++;
  if (buildCounterGoogleCloudIntegrationsV1alphaNextTask < 3) {
    o.condition = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.taskConfigId = 'foo';
    o.taskId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaNextTask--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaNextTask(
    api.GoogleCloudIntegrationsV1alphaNextTask o) {
  buildCounterGoogleCloudIntegrationsV1alphaNextTask++;
  if (buildCounterGoogleCloudIntegrationsV1alphaNextTask < 3) {
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskConfigId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaNextTask--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode = 0;
api.GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode
    buildGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode() {
  final o = api.GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode();
  buildCounterGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode++;
  if (buildCounterGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode < 3) {
    o.accessToken = buildGoogleCloudIntegrationsV1alphaAccessToken();
    o.applyReauthPolicy = true;
    o.authCode = 'foo';
    o.authEndpoint = 'foo';
    o.authParams = buildGoogleCloudIntegrationsV1alphaParameterMap();
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.requestType = 'foo';
    o.scope = 'foo';
    o.tokenEndpoint = 'foo';
    o.tokenParams = buildGoogleCloudIntegrationsV1alphaParameterMap();
  }
  buildCounterGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode(
    api.GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode o) {
  buildCounterGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode++;
  if (buildCounterGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode < 3) {
    checkGoogleCloudIntegrationsV1alphaAccessToken(o.accessToken!);
    unittest.expect(o.applyReauthPolicy!, unittest.isTrue);
    unittest.expect(
      o.authCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authEndpoint!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaParameterMap(o.authParams!);
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenEndpoint!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaParameterMap(o.tokenParams!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials = 0;
api.GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials
    buildGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials() {
  final o = api.GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials();
  buildCounterGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials++;
  if (buildCounterGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials < 3) {
    o.accessToken = buildGoogleCloudIntegrationsV1alphaAccessToken();
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.requestType = 'foo';
    o.scope = 'foo';
    o.tokenEndpoint = 'foo';
    o.tokenParams = buildGoogleCloudIntegrationsV1alphaParameterMap();
  }
  buildCounterGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials(
    api.GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials o) {
  buildCounterGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials++;
  if (buildCounterGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials < 3) {
    checkGoogleCloudIntegrationsV1alphaAccessToken(o.accessToken!);
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenEndpoint!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaParameterMap(o.tokenParams!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials =
    0;
api.GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials
    buildGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials() {
  final o = api.GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials();
  buildCounterGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials++;
  if (buildCounterGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials <
      3) {
    o.accessToken = buildGoogleCloudIntegrationsV1alphaAccessToken();
    o.clientId = 'foo';
    o.clientSecret = 'foo';
    o.password = 'foo';
    o.requestType = 'foo';
    o.scope = 'foo';
    o.tokenEndpoint = 'foo';
    o.tokenParams = buildGoogleCloudIntegrationsV1alphaParameterMap();
    o.username = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials(
    api.GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials o) {
  buildCounterGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials++;
  if (buildCounterGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials <
      3) {
    checkGoogleCloudIntegrationsV1alphaAccessToken(o.accessToken!);
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clientSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenEndpoint!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaParameterMap(o.tokenParams!);
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaOidcToken = 0;
api.GoogleCloudIntegrationsV1alphaOidcToken
    buildGoogleCloudIntegrationsV1alphaOidcToken() {
  final o = api.GoogleCloudIntegrationsV1alphaOidcToken();
  buildCounterGoogleCloudIntegrationsV1alphaOidcToken++;
  if (buildCounterGoogleCloudIntegrationsV1alphaOidcToken < 3) {
    o.audience = 'foo';
    o.serviceAccountEmail = 'foo';
    o.token = 'foo';
    o.tokenExpireTime = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaOidcToken--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaOidcToken(
    api.GoogleCloudIntegrationsV1alphaOidcToken o) {
  buildCounterGoogleCloudIntegrationsV1alphaOidcToken++;
  if (buildCounterGoogleCloudIntegrationsV1alphaOidcToken < 3) {
    unittest.expect(
      o.audience!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenExpireTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaOidcToken--;
}

core.List<api.GoogleCloudIntegrationsV1alphaParameterMapEntry>
    buildUnnamed125() => [
          buildGoogleCloudIntegrationsV1alphaParameterMapEntry(),
          buildGoogleCloudIntegrationsV1alphaParameterMapEntry(),
        ];

void checkUnnamed125(
    core.List<api.GoogleCloudIntegrationsV1alphaParameterMapEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaParameterMapEntry(o[0]);
  checkGoogleCloudIntegrationsV1alphaParameterMapEntry(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaParameterMap = 0;
api.GoogleCloudIntegrationsV1alphaParameterMap
    buildGoogleCloudIntegrationsV1alphaParameterMap() {
  final o = api.GoogleCloudIntegrationsV1alphaParameterMap();
  buildCounterGoogleCloudIntegrationsV1alphaParameterMap++;
  if (buildCounterGoogleCloudIntegrationsV1alphaParameterMap < 3) {
    o.entries = buildUnnamed125();
    o.keyType = 'foo';
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaParameterMap--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaParameterMap(
    api.GoogleCloudIntegrationsV1alphaParameterMap o) {
  buildCounterGoogleCloudIntegrationsV1alphaParameterMap++;
  if (buildCounterGoogleCloudIntegrationsV1alphaParameterMap < 3) {
    checkUnnamed125(o.entries!);
    unittest.expect(
      o.keyType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaParameterMap--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaParameterMapEntry = 0;
api.GoogleCloudIntegrationsV1alphaParameterMapEntry
    buildGoogleCloudIntegrationsV1alphaParameterMapEntry() {
  final o = api.GoogleCloudIntegrationsV1alphaParameterMapEntry();
  buildCounterGoogleCloudIntegrationsV1alphaParameterMapEntry++;
  if (buildCounterGoogleCloudIntegrationsV1alphaParameterMapEntry < 3) {
    o.key = buildGoogleCloudIntegrationsV1alphaParameterMapField();
    o.value = buildGoogleCloudIntegrationsV1alphaParameterMapField();
  }
  buildCounterGoogleCloudIntegrationsV1alphaParameterMapEntry--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaParameterMapEntry(
    api.GoogleCloudIntegrationsV1alphaParameterMapEntry o) {
  buildCounterGoogleCloudIntegrationsV1alphaParameterMapEntry++;
  if (buildCounterGoogleCloudIntegrationsV1alphaParameterMapEntry < 3) {
    checkGoogleCloudIntegrationsV1alphaParameterMapField(o.key!);
    checkGoogleCloudIntegrationsV1alphaParameterMapField(o.value!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaParameterMapEntry--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaParameterMapField = 0;
api.GoogleCloudIntegrationsV1alphaParameterMapField
    buildGoogleCloudIntegrationsV1alphaParameterMapField() {
  final o = api.GoogleCloudIntegrationsV1alphaParameterMapField();
  buildCounterGoogleCloudIntegrationsV1alphaParameterMapField++;
  if (buildCounterGoogleCloudIntegrationsV1alphaParameterMapField < 3) {
    o.literalValue = buildGoogleCloudIntegrationsV1alphaValueType();
    o.referenceKey = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaParameterMapField--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaParameterMapField(
    api.GoogleCloudIntegrationsV1alphaParameterMapField o) {
  buildCounterGoogleCloudIntegrationsV1alphaParameterMapField++;
  if (buildCounterGoogleCloudIntegrationsV1alphaParameterMapField < 3) {
    checkGoogleCloudIntegrationsV1alphaValueType(o.literalValue!);
    unittest.expect(
      o.referenceKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaParameterMapField--;
}

core.List<core.String> buildUnnamed126() => [
      'foo',
      'foo',
    ];

void checkUnnamed126(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudIntegrationsV1alphaProjectProperties = 0;
api.GoogleCloudIntegrationsV1alphaProjectProperties
    buildGoogleCloudIntegrationsV1alphaProjectProperties() {
  final o = api.GoogleCloudIntegrationsV1alphaProjectProperties();
  buildCounterGoogleCloudIntegrationsV1alphaProjectProperties++;
  if (buildCounterGoogleCloudIntegrationsV1alphaProjectProperties < 3) {
    o.billingType = 'foo';
    o.ipEnablementState = 'foo';
    o.provisionedRegions = buildUnnamed126();
  }
  buildCounterGoogleCloudIntegrationsV1alphaProjectProperties--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaProjectProperties(
    api.GoogleCloudIntegrationsV1alphaProjectProperties o) {
  buildCounterGoogleCloudIntegrationsV1alphaProjectProperties++;
  if (buildCounterGoogleCloudIntegrationsV1alphaProjectProperties < 3) {
    unittest.expect(
      o.billingType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipEnablementState!,
      unittest.equals('foo'),
    );
    checkUnnamed126(o.provisionedRegions!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaProjectProperties--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaProvisionClientRequest = 0;
api.GoogleCloudIntegrationsV1alphaProvisionClientRequest
    buildGoogleCloudIntegrationsV1alphaProvisionClientRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaProvisionClientRequest();
  buildCounterGoogleCloudIntegrationsV1alphaProvisionClientRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaProvisionClientRequest < 3) {
    o.cloudKmsConfig = buildGoogleCloudIntegrationsV1alphaCloudKmsConfig();
    o.createSampleWorkflows = true;
    o.provisionGmek = true;
    o.runAsServiceAccount = 'foo';
    o.skipCpProvision = true;
  }
  buildCounterGoogleCloudIntegrationsV1alphaProvisionClientRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaProvisionClientRequest(
    api.GoogleCloudIntegrationsV1alphaProvisionClientRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaProvisionClientRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaProvisionClientRequest < 3) {
    checkGoogleCloudIntegrationsV1alphaCloudKmsConfig(o.cloudKmsConfig!);
    unittest.expect(o.createSampleWorkflows!, unittest.isTrue);
    unittest.expect(o.provisionGmek!, unittest.isTrue);
    unittest.expect(
      o.runAsServiceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(o.skipCpProvision!, unittest.isTrue);
  }
  buildCounterGoogleCloudIntegrationsV1alphaProvisionClientRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed127() => {
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

void checkUnnamed127(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o['x']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(
    casted17['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted17['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted17['string'],
    unittest.equals('foo'),
  );
  var casted18 = (o['y']!) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(
    casted18['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted18['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted18['string'],
    unittest.equals('foo'),
  );
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest =
    0;
api.GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest
    buildGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest() {
  final o =
      api.GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest();
  buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest <
      3) {
    o.configParameters = buildUnnamed127();
  }
  buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest(
    api.GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest <
      3) {
    checkUnnamed127(o.configParameters!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse =
    0;
api.GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse
    buildGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse() {
  final o =
      api.GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse();
  buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse <
      3) {}
  buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse(
    api.GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse <
      3) {}
  buildCounterGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest = 0;
api.GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest
    buildGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest();
  buildCounterGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest <
      3) {
    o.runAsServiceAccount = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest(
    api.GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest <
      3) {
    unittest.expect(
      o.runAsServiceAccount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionRequest = 0;
api.GoogleCloudIntegrationsV1alphaReplayExecutionRequest
    buildGoogleCloudIntegrationsV1alphaReplayExecutionRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaReplayExecutionRequest();
  buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionRequest < 3) {
    o.replayReason = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaReplayExecutionRequest(
    api.GoogleCloudIntegrationsV1alphaReplayExecutionRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionRequest < 3) {
    unittest.expect(
      o.replayReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed128() => {
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

void checkUnnamed128(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o['x']!) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(
    casted19['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted19['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted19['string'],
    unittest.equals('foo'),
  );
  var casted20 = (o['y']!) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(
    casted20['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted20['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted20['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionResponse = 0;
api.GoogleCloudIntegrationsV1alphaReplayExecutionResponse
    buildGoogleCloudIntegrationsV1alphaReplayExecutionResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaReplayExecutionResponse();
  buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionResponse < 3) {
    o.executionId = 'foo';
    o.outputParameters = buildUnnamed128();
    o.replayedExecutionId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaReplayExecutionResponse(
    api.GoogleCloudIntegrationsV1alphaReplayExecutionResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionResponse < 3) {
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    checkUnnamed128(o.outputParameters!);
    unittest.expect(
      o.replayedExecutionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaReplayExecutionResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionRequest = 0;
api.GoogleCloudIntegrationsV1alphaResolveSuspensionRequest
    buildGoogleCloudIntegrationsV1alphaResolveSuspensionRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaResolveSuspensionRequest();
  buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionRequest < 3) {
    o.suspension = buildGoogleCloudIntegrationsV1alphaSuspension();
  }
  buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaResolveSuspensionRequest(
    api.GoogleCloudIntegrationsV1alphaResolveSuspensionRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionRequest < 3) {
    checkGoogleCloudIntegrationsV1alphaSuspension(o.suspension!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionRequest--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionResponse =
    0;
api.GoogleCloudIntegrationsV1alphaResolveSuspensionResponse
    buildGoogleCloudIntegrationsV1alphaResolveSuspensionResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaResolveSuspensionResponse();
  buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionResponse <
      3) {}
  buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaResolveSuspensionResponse(
    api.GoogleCloudIntegrationsV1alphaResolveSuspensionResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionResponse <
      3) {}
  buildCounterGoogleCloudIntegrationsV1alphaResolveSuspensionResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaRuntimeActionSchema = 0;
api.GoogleCloudIntegrationsV1alphaRuntimeActionSchema
    buildGoogleCloudIntegrationsV1alphaRuntimeActionSchema() {
  final o = api.GoogleCloudIntegrationsV1alphaRuntimeActionSchema();
  buildCounterGoogleCloudIntegrationsV1alphaRuntimeActionSchema++;
  if (buildCounterGoogleCloudIntegrationsV1alphaRuntimeActionSchema < 3) {
    o.action = 'foo';
    o.inputSchema = 'foo';
    o.outputSchema = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaRuntimeActionSchema--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaRuntimeActionSchema(
    api.GoogleCloudIntegrationsV1alphaRuntimeActionSchema o) {
  buildCounterGoogleCloudIntegrationsV1alphaRuntimeActionSchema++;
  if (buildCounterGoogleCloudIntegrationsV1alphaRuntimeActionSchema < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputSchema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputSchema!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaRuntimeActionSchema--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaRuntimeEntitySchema = 0;
api.GoogleCloudIntegrationsV1alphaRuntimeEntitySchema
    buildGoogleCloudIntegrationsV1alphaRuntimeEntitySchema() {
  final o = api.GoogleCloudIntegrationsV1alphaRuntimeEntitySchema();
  buildCounterGoogleCloudIntegrationsV1alphaRuntimeEntitySchema++;
  if (buildCounterGoogleCloudIntegrationsV1alphaRuntimeEntitySchema < 3) {
    o.arrayFieldSchema = 'foo';
    o.entity = 'foo';
    o.fieldSchema = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaRuntimeEntitySchema--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaRuntimeEntitySchema(
    api.GoogleCloudIntegrationsV1alphaRuntimeEntitySchema o) {
  buildCounterGoogleCloudIntegrationsV1alphaRuntimeEntitySchema++;
  if (buildCounterGoogleCloudIntegrationsV1alphaRuntimeEntitySchema < 3) {
    unittest.expect(
      o.arrayFieldSchema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldSchema!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaRuntimeEntitySchema--;
}

core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType>
    buildUnnamed129() => {
          'x': buildGoogleCloudIntegrationsV1alphaValueType(),
          'y': buildGoogleCloudIntegrationsV1alphaValueType(),
        };

void checkUnnamed129(
    core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaValueType(o['x']!);
  checkGoogleCloudIntegrationsV1alphaValueType(o['y']!);
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry>
    buildUnnamed130() => [
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
        ];

void checkUnnamed130(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest =
    0;
api.GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest
    buildGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest();
  buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest <
      3) {
    o.inputParameters = buildUnnamed129();
    o.parameterEntries = buildUnnamed130();
    o.parameters = buildEnterpriseCrmEventbusProtoEventParameters();
    o.requestId = 'foo';
    o.scheduleTime = 'foo';
    o.triggerId = 'foo';
    o.userGeneratedExecutionId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest(
    api.GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest <
      3) {
    checkUnnamed129(o.inputParameters!);
    checkUnnamed130(o.parameterEntries!);
    checkEnterpriseCrmEventbusProtoEventParameters(o.parameters!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduleTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userGeneratedExecutionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest--;
}

core.List<core.String> buildUnnamed131() => [
      'foo',
      'foo',
    ];

void checkUnnamed131(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse = 0;
api.GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse
    buildGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse();
  buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse <
      3) {
    o.executionInfoIds = buildUnnamed131();
  }
  buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse(
    api.GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse <
      3) {
    checkUnnamed131(o.executionInfoIds!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaTemplate> buildUnnamed132() => [
      buildGoogleCloudIntegrationsV1alphaTemplate(),
      buildGoogleCloudIntegrationsV1alphaTemplate(),
    ];

void checkUnnamed132(core.List<api.GoogleCloudIntegrationsV1alphaTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaTemplate(o[0]);
  checkGoogleCloudIntegrationsV1alphaTemplate(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaSearchTemplatesResponse = 0;
api.GoogleCloudIntegrationsV1alphaSearchTemplatesResponse
    buildGoogleCloudIntegrationsV1alphaSearchTemplatesResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaSearchTemplatesResponse();
  buildCounterGoogleCloudIntegrationsV1alphaSearchTemplatesResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSearchTemplatesResponse < 3) {
    o.nextPageToken = 'foo';
    o.templates = buildUnnamed132();
  }
  buildCounterGoogleCloudIntegrationsV1alphaSearchTemplatesResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaSearchTemplatesResponse(
    api.GoogleCloudIntegrationsV1alphaSearchTemplatesResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaSearchTemplatesResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSearchTemplatesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed132(o.templates!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaSearchTemplatesResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaSerializedFile = 0;
api.GoogleCloudIntegrationsV1alphaSerializedFile
    buildGoogleCloudIntegrationsV1alphaSerializedFile() {
  final o = api.GoogleCloudIntegrationsV1alphaSerializedFile();
  buildCounterGoogleCloudIntegrationsV1alphaSerializedFile++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSerializedFile < 3) {
    o.content = 'foo';
    o.file = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaSerializedFile--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaSerializedFile(
    api.GoogleCloudIntegrationsV1alphaSerializedFile o) {
  buildCounterGoogleCloudIntegrationsV1alphaSerializedFile++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSerializedFile < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.file!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaSerializedFile--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaServiceAccountCredentials =
    0;
api.GoogleCloudIntegrationsV1alphaServiceAccountCredentials
    buildGoogleCloudIntegrationsV1alphaServiceAccountCredentials() {
  final o = api.GoogleCloudIntegrationsV1alphaServiceAccountCredentials();
  buildCounterGoogleCloudIntegrationsV1alphaServiceAccountCredentials++;
  if (buildCounterGoogleCloudIntegrationsV1alphaServiceAccountCredentials < 3) {
    o.scope = 'foo';
    o.serviceAccount = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaServiceAccountCredentials--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaServiceAccountCredentials(
    api.GoogleCloudIntegrationsV1alphaServiceAccountCredentials o) {
  buildCounterGoogleCloudIntegrationsV1alphaServiceAccountCredentials++;
  if (buildCounterGoogleCloudIntegrationsV1alphaServiceAccountCredentials < 3) {
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaServiceAccountCredentials--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaSfdcChannel = 0;
api.GoogleCloudIntegrationsV1alphaSfdcChannel
    buildGoogleCloudIntegrationsV1alphaSfdcChannel() {
  final o = api.GoogleCloudIntegrationsV1alphaSfdcChannel();
  buildCounterGoogleCloudIntegrationsV1alphaSfdcChannel++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSfdcChannel < 3) {
    o.channelTopic = 'foo';
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.isActive = true;
    o.lastReplayId = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaSfdcChannel--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaSfdcChannel(
    api.GoogleCloudIntegrationsV1alphaSfdcChannel o) {
  buildCounterGoogleCloudIntegrationsV1alphaSfdcChannel++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSfdcChannel < 3) {
    unittest.expect(
      o.channelTopic!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isActive!, unittest.isTrue);
    unittest.expect(
      o.lastReplayId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaSfdcChannel--;
}

core.List<core.String> buildUnnamed133() => [
      'foo',
      'foo',
    ];

void checkUnnamed133(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudIntegrationsV1alphaSfdcInstance = 0;
api.GoogleCloudIntegrationsV1alphaSfdcInstance
    buildGoogleCloudIntegrationsV1alphaSfdcInstance() {
  final o = api.GoogleCloudIntegrationsV1alphaSfdcInstance();
  buildCounterGoogleCloudIntegrationsV1alphaSfdcInstance++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSfdcInstance < 3) {
    o.authConfigId = buildUnnamed133();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.serviceAuthority = 'foo';
    o.sfdcOrgId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaSfdcInstance--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaSfdcInstance(
    api.GoogleCloudIntegrationsV1alphaSfdcInstance o) {
  buildCounterGoogleCloudIntegrationsV1alphaSfdcInstance++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSfdcInstance < 3) {
    checkUnnamed133(o.authConfigId!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAuthority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sfdcOrgId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaSfdcInstance--;
}

core.List<core.String> buildUnnamed134() => [
      'foo',
      'foo',
    ];

void checkUnnamed134(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudIntegrationsV1alphaShareTemplateRequest = 0;
api.GoogleCloudIntegrationsV1alphaShareTemplateRequest
    buildGoogleCloudIntegrationsV1alphaShareTemplateRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaShareTemplateRequest();
  buildCounterGoogleCloudIntegrationsV1alphaShareTemplateRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaShareTemplateRequest < 3) {
    o.resourceNames = buildUnnamed134();
  }
  buildCounterGoogleCloudIntegrationsV1alphaShareTemplateRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaShareTemplateRequest(
    api.GoogleCloudIntegrationsV1alphaShareTemplateRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaShareTemplateRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaShareTemplateRequest < 3) {
    checkUnnamed134(o.resourceNames!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaShareTemplateRequest--;
}

core.List<core.String> buildUnnamed135() => [
      'foo',
      'foo',
    ];

void checkUnnamed135(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudIntegrationsV1alphaStringParameterArray = 0;
api.GoogleCloudIntegrationsV1alphaStringParameterArray
    buildGoogleCloudIntegrationsV1alphaStringParameterArray() {
  final o = api.GoogleCloudIntegrationsV1alphaStringParameterArray();
  buildCounterGoogleCloudIntegrationsV1alphaStringParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV1alphaStringParameterArray < 3) {
    o.stringValues = buildUnnamed135();
  }
  buildCounterGoogleCloudIntegrationsV1alphaStringParameterArray--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaStringParameterArray(
    api.GoogleCloudIntegrationsV1alphaStringParameterArray o) {
  buildCounterGoogleCloudIntegrationsV1alphaStringParameterArray++;
  if (buildCounterGoogleCloudIntegrationsV1alphaStringParameterArray < 3) {
    checkUnnamed135(o.stringValues!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaStringParameterArray--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaSuccessPolicy = 0;
api.GoogleCloudIntegrationsV1alphaSuccessPolicy
    buildGoogleCloudIntegrationsV1alphaSuccessPolicy() {
  final o = api.GoogleCloudIntegrationsV1alphaSuccessPolicy();
  buildCounterGoogleCloudIntegrationsV1alphaSuccessPolicy++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSuccessPolicy < 3) {
    o.finalState = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaSuccessPolicy--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaSuccessPolicy(
    api.GoogleCloudIntegrationsV1alphaSuccessPolicy o) {
  buildCounterGoogleCloudIntegrationsV1alphaSuccessPolicy++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSuccessPolicy < 3) {
    unittest.expect(
      o.finalState!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaSuccessPolicy--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaSuspension = 0;
api.GoogleCloudIntegrationsV1alphaSuspension
    buildGoogleCloudIntegrationsV1alphaSuspension() {
  final o = api.GoogleCloudIntegrationsV1alphaSuspension();
  buildCounterGoogleCloudIntegrationsV1alphaSuspension++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSuspension < 3) {
    o.approvalConfig =
        buildGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig();
    o.audit = buildGoogleCloudIntegrationsV1alphaSuspensionAudit();
    o.createTime = 'foo';
    o.eventExecutionInfoId = 'foo';
    o.integration = 'foo';
    o.lastModifyTime = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.suspensionConfig = buildEnterpriseCrmEventbusProtoSuspensionConfig();
    o.taskId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaSuspension--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaSuspension(
    api.GoogleCloudIntegrationsV1alphaSuspension o) {
  buildCounterGoogleCloudIntegrationsV1alphaSuspension++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSuspension < 3) {
    checkGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig(
        o.approvalConfig!);
    checkGoogleCloudIntegrationsV1alphaSuspensionAudit(o.audit!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventExecutionInfoId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.integration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifyTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkEnterpriseCrmEventbusProtoSuspensionConfig(o.suspensionConfig!);
    unittest.expect(
      o.taskId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaSuspension--;
}

core.List<core.String> buildUnnamed136() => [
      'foo',
      'foo',
    ];

void checkUnnamed136(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig = 0;
api.GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig
    buildGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig() {
  final o = api.GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig();
  buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig < 3) {
    o.customMessage = 'foo';
    o.emailAddresses = buildUnnamed136();
    o.expiration =
        buildGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration();
  }
  buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig(
    api.GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig o) {
  buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig < 3) {
    unittest.expect(
      o.customMessage!,
      unittest.equals('foo'),
    );
    checkUnnamed136(o.emailAddresses!);
    checkGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration(
        o.expiration!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration = 0;
api.GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration
    buildGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration() {
  final o = api.GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration();
  buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration <
      3) {
    o.expireTime = 'foo';
    o.liftWhenExpired = true;
    o.remindTime = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration(
    api.GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration o) {
  buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration <
      3) {
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.liftWhenExpired!, unittest.isTrue);
    unittest.expect(
      o.remindTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaSuspensionAudit = 0;
api.GoogleCloudIntegrationsV1alphaSuspensionAudit
    buildGoogleCloudIntegrationsV1alphaSuspensionAudit() {
  final o = api.GoogleCloudIntegrationsV1alphaSuspensionAudit();
  buildCounterGoogleCloudIntegrationsV1alphaSuspensionAudit++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSuspensionAudit < 3) {
    o.resolveTime = 'foo';
    o.resolver = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaSuspensionAudit--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaSuspensionAudit(
    api.GoogleCloudIntegrationsV1alphaSuspensionAudit o) {
  buildCounterGoogleCloudIntegrationsV1alphaSuspensionAudit++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSuspensionAudit < 3) {
    unittest.expect(
      o.resolveTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resolver!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaSuspensionAudit--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest = 0;
api.GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest
    buildGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest();
  buildCounterGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest < 3) {
    o.cloudKmsConfig = buildGoogleCloudIntegrationsV1alphaCloudKmsConfig();
  }
  buildCounterGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest(
    api.GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest < 3) {
    checkGoogleCloudIntegrationsV1alphaCloudKmsConfig(o.cloudKmsConfig!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest = 0;
api.GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest
    buildGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest();
  buildCounterGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest <
      3) {
    o.enableVariableMasking = true;
  }
  buildCounterGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest(
    api.GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest <
      3) {
    unittest.expect(o.enableVariableMasking!, unittest.isTrue);
  }
  buildCounterGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest = 0;
api.GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest
    buildGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest();
  buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest < 3) {}
  buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest(
    api.GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest < 3) {}
  buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse = 0;
api.GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse
    buildGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse();
  buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse < 3) {
    o.integrationVersion =
        buildGoogleCloudIntegrationsV1alphaIntegrationVersion();
  }
  buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse(
    api.GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse < 3) {
    checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
        o.integrationVersion!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest =
    0;
api.GoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest
    buildGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest();
  buildCounterGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest <
      3) {}
  buildCounterGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest(
    api.GoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest <
      3) {}
  buildCounterGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest--;
}

core.List<api.GoogleCloudIntegrationsV1alphaNextTask> buildUnnamed137() => [
      buildGoogleCloudIntegrationsV1alphaNextTask(),
      buildGoogleCloudIntegrationsV1alphaNextTask(),
    ];

void checkUnnamed137(core.List<api.GoogleCloudIntegrationsV1alphaNextTask> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaNextTask(o[0]);
  checkGoogleCloudIntegrationsV1alphaNextTask(o[1]);
}

core.Map<core.String, api.GoogleCloudIntegrationsV1alphaEventParameter>
    buildUnnamed138() => {
          'x': buildGoogleCloudIntegrationsV1alphaEventParameter(),
          'y': buildGoogleCloudIntegrationsV1alphaEventParameter(),
        };

void checkUnnamed138(
    core.Map<core.String, api.GoogleCloudIntegrationsV1alphaEventParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaEventParameter(o['x']!);
  checkGoogleCloudIntegrationsV1alphaEventParameter(o['y']!);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaTaskConfig = 0;
api.GoogleCloudIntegrationsV1alphaTaskConfig
    buildGoogleCloudIntegrationsV1alphaTaskConfig() {
  final o = api.GoogleCloudIntegrationsV1alphaTaskConfig();
  buildCounterGoogleCloudIntegrationsV1alphaTaskConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTaskConfig < 3) {
    o.conditionalFailurePolicies =
        buildGoogleCloudIntegrationsV1alphaConditionalFailurePolicies();
    o.description = 'foo';
    o.displayName = 'foo';
    o.errorCatcherId = 'foo';
    o.externalTaskType = 'foo';
    o.failurePolicy = buildGoogleCloudIntegrationsV1alphaFailurePolicy();
    o.jsonValidationOption = 'foo';
    o.nextTasks = buildUnnamed137();
    o.nextTasksExecutionPolicy = 'foo';
    o.parameters = buildUnnamed138();
    o.position = buildGoogleCloudIntegrationsV1alphaCoordinate();
    o.successPolicy = buildGoogleCloudIntegrationsV1alphaSuccessPolicy();
    o.synchronousCallFailurePolicy =
        buildGoogleCloudIntegrationsV1alphaFailurePolicy();
    o.task = 'foo';
    o.taskExecutionStrategy = 'foo';
    o.taskId = 'foo';
    o.taskTemplate = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaTaskConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTaskConfig(
    api.GoogleCloudIntegrationsV1alphaTaskConfig o) {
  buildCounterGoogleCloudIntegrationsV1alphaTaskConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTaskConfig < 3) {
    checkGoogleCloudIntegrationsV1alphaConditionalFailurePolicies(
        o.conditionalFailurePolicies!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorCatcherId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalTaskType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaFailurePolicy(o.failurePolicy!);
    unittest.expect(
      o.jsonValidationOption!,
      unittest.equals('foo'),
    );
    checkUnnamed137(o.nextTasks!);
    unittest.expect(
      o.nextTasksExecutionPolicy!,
      unittest.equals('foo'),
    );
    checkUnnamed138(o.parameters!);
    checkGoogleCloudIntegrationsV1alphaCoordinate(o.position!);
    checkGoogleCloudIntegrationsV1alphaSuccessPolicy(o.successPolicy!);
    checkGoogleCloudIntegrationsV1alphaFailurePolicy(
        o.synchronousCallFailurePolicy!);
    unittest.expect(
      o.task!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskExecutionStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskTemplate!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaTaskConfig--;
}

core.List<api.GoogleCloudIntegrationsV1alphaAttemptStats> buildUnnamed139() => [
      buildGoogleCloudIntegrationsV1alphaAttemptStats(),
      buildGoogleCloudIntegrationsV1alphaAttemptStats(),
    ];

void checkUnnamed139(
    core.List<api.GoogleCloudIntegrationsV1alphaAttemptStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaAttemptStats(o[0]);
  checkGoogleCloudIntegrationsV1alphaAttemptStats(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaTaskExecutionDetails = 0;
api.GoogleCloudIntegrationsV1alphaTaskExecutionDetails
    buildGoogleCloudIntegrationsV1alphaTaskExecutionDetails() {
  final o = api.GoogleCloudIntegrationsV1alphaTaskExecutionDetails();
  buildCounterGoogleCloudIntegrationsV1alphaTaskExecutionDetails++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTaskExecutionDetails < 3) {
    o.taskAttemptStats = buildUnnamed139();
    o.taskExecutionState = 'foo';
    o.taskNumber = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaTaskExecutionDetails--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTaskExecutionDetails(
    api.GoogleCloudIntegrationsV1alphaTaskExecutionDetails o) {
  buildCounterGoogleCloudIntegrationsV1alphaTaskExecutionDetails++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTaskExecutionDetails < 3) {
    checkUnnamed139(o.taskAttemptStats!);
    unittest.expect(
      o.taskExecutionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaTaskExecutionDetails--;
}

core.List<core.String> buildUnnamed140() => [
      'foo',
      'foo',
    ];

void checkUnnamed140(core.List<core.String> o) {
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

core.List<api.GoogleCloudIntegrationsV1alphaTemplateComponent>
    buildUnnamed141() => [
          buildGoogleCloudIntegrationsV1alphaTemplateComponent(),
          buildGoogleCloudIntegrationsV1alphaTemplateComponent(),
        ];

void checkUnnamed141(
    core.List<api.GoogleCloudIntegrationsV1alphaTemplateComponent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaTemplateComponent(o[0]);
  checkGoogleCloudIntegrationsV1alphaTemplateComponent(o[1]);
}

core.List<core.String> buildUnnamed142() => [
      'foo',
      'foo',
    ];

void checkUnnamed142(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed143() => [
      'foo',
      'foo',
    ];

void checkUnnamed143(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudIntegrationsV1alphaTemplate = 0;
api.GoogleCloudIntegrationsV1alphaTemplate
    buildGoogleCloudIntegrationsV1alphaTemplate() {
  final o = api.GoogleCloudIntegrationsV1alphaTemplate();
  buildCounterGoogleCloudIntegrationsV1alphaTemplate++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTemplate < 3) {
    o.author = 'foo';
    o.categories = buildUnnamed140();
    o.components = buildUnnamed141();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.docLink = 'foo';
    o.lastUsedTime = 'foo';
    o.name = 'foo';
    o.sharedWith = buildUnnamed142();
    o.tags = buildUnnamed143();
    o.templateBundle = buildGoogleCloudIntegrationsV1alphaTemplateBundle();
    o.updateTime = 'foo';
    o.usageCount = 'foo';
    o.usageInfo = 'foo';
    o.visibility = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaTemplate--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTemplate(
    api.GoogleCloudIntegrationsV1alphaTemplate o) {
  buildCounterGoogleCloudIntegrationsV1alphaTemplate++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTemplate < 3) {
    unittest.expect(
      o.author!,
      unittest.equals('foo'),
    );
    checkUnnamed140(o.categories!);
    checkUnnamed141(o.components!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.docLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUsedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed142(o.sharedWith!);
    checkUnnamed143(o.tags!);
    checkGoogleCloudIntegrationsV1alphaTemplateBundle(o.templateBundle!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.usageCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.usageInfo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visibility!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaTemplate--;
}

core.List<api.GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate>
    buildUnnamed144() => [
          buildGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate(),
          buildGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate(),
        ];

void checkUnnamed144(
    core.List<api.GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate(o[0]);
  checkGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaTemplateBundle = 0;
api.GoogleCloudIntegrationsV1alphaTemplateBundle
    buildGoogleCloudIntegrationsV1alphaTemplateBundle() {
  final o = api.GoogleCloudIntegrationsV1alphaTemplateBundle();
  buildCounterGoogleCloudIntegrationsV1alphaTemplateBundle++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTemplateBundle < 3) {
    o.integrationVersionTemplate =
        buildGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate();
    o.subIntegrationVersionTemplates = buildUnnamed144();
  }
  buildCounterGoogleCloudIntegrationsV1alphaTemplateBundle--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTemplateBundle(
    api.GoogleCloudIntegrationsV1alphaTemplateBundle o) {
  buildCounterGoogleCloudIntegrationsV1alphaTemplateBundle++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTemplateBundle < 3) {
    checkGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate(
        o.integrationVersionTemplate!);
    checkUnnamed144(o.subIntegrationVersionTemplates!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaTemplateBundle--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaTemplateComponent = 0;
api.GoogleCloudIntegrationsV1alphaTemplateComponent
    buildGoogleCloudIntegrationsV1alphaTemplateComponent() {
  final o = api.GoogleCloudIntegrationsV1alphaTemplateComponent();
  buildCounterGoogleCloudIntegrationsV1alphaTemplateComponent++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTemplateComponent < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaTemplateComponent--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTemplateComponent(
    api.GoogleCloudIntegrationsV1alphaTemplateComponent o) {
  buildCounterGoogleCloudIntegrationsV1alphaTemplateComponent++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTemplateComponent < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaTemplateComponent--;
}

core.List<api.GoogleCloudIntegrationsV1alphaIntegrationParameter>
    buildUnnamed145() => [
          buildGoogleCloudIntegrationsV1alphaIntegrationParameter(),
          buildGoogleCloudIntegrationsV1alphaIntegrationParameter(),
        ];

void checkUnnamed145(
    core.List<api.GoogleCloudIntegrationsV1alphaIntegrationParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaIntegrationParameter(o[0]);
  checkGoogleCloudIntegrationsV1alphaIntegrationParameter(o[1]);
}

core.List<api.GoogleCloudIntegrationsV1alphaTestTaskConfig> buildUnnamed146() =>
    [
      buildGoogleCloudIntegrationsV1alphaTestTaskConfig(),
      buildGoogleCloudIntegrationsV1alphaTestTaskConfig(),
    ];

void checkUnnamed146(
    core.List<api.GoogleCloudIntegrationsV1alphaTestTaskConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaTestTaskConfig(o[0]);
  checkGoogleCloudIntegrationsV1alphaTestTaskConfig(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaTestCase = 0;
api.GoogleCloudIntegrationsV1alphaTestCase
    buildGoogleCloudIntegrationsV1alphaTestCase() {
  final o = api.GoogleCloudIntegrationsV1alphaTestCase();
  buildCounterGoogleCloudIntegrationsV1alphaTestCase++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTestCase < 3) {
    o.createTime = 'foo';
    o.creatorEmail = 'foo';
    o.databasePersistencePolicy = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.lastModifierEmail = 'foo';
    o.lockHolderEmail = 'foo';
    o.name = 'foo';
    o.testInputParameters = buildUnnamed145();
    o.testTaskConfigs = buildUnnamed146();
    o.triggerConfig = buildGoogleCloudIntegrationsV1alphaTriggerConfig();
    o.triggerId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaTestCase--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTestCase(
    api.GoogleCloudIntegrationsV1alphaTestCase o) {
  buildCounterGoogleCloudIntegrationsV1alphaTestCase++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTestCase < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creatorEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databasePersistencePolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastModifierEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lockHolderEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed145(o.testInputParameters!);
    checkUnnamed146(o.testTaskConfigs!);
    checkGoogleCloudIntegrationsV1alphaTriggerConfig(o.triggerConfig!);
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaTestCase--;
}

core.Map<core.String, core.Object?> buildUnnamed147() => {
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

void checkUnnamed147(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']!) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(
    casted21['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted21['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted21['string'],
    unittest.equals('foo'),
  );
  var casted22 = (o['y']!) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(
    casted22['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted22['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted22['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType>
    buildUnnamed148() => {
          'x': buildGoogleCloudIntegrationsV1alphaValueType(),
          'y': buildGoogleCloudIntegrationsV1alphaValueType(),
        };

void checkUnnamed148(
    core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaValueType(o['x']!);
  checkGoogleCloudIntegrationsV1alphaValueType(o['y']!);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsRequest = 0;
api.GoogleCloudIntegrationsV1alphaTestIntegrationsRequest
    buildGoogleCloudIntegrationsV1alphaTestIntegrationsRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaTestIntegrationsRequest();
  buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsRequest < 3) {
    o.clientId = 'foo';
    o.configParameters = buildUnnamed147();
    o.deadlineSecondsTime = 'foo';
    o.inputParameters = buildUnnamed148();
    o.integrationVersion =
        buildGoogleCloudIntegrationsV1alphaIntegrationVersion();
    o.parameters = buildEnterpriseCrmFrontendsEventbusProtoEventParameters();
    o.testMode = true;
    o.triggerId = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTestIntegrationsRequest(
    api.GoogleCloudIntegrationsV1alphaTestIntegrationsRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsRequest < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    checkUnnamed147(o.configParameters!);
    unittest.expect(
      o.deadlineSecondsTime!,
      unittest.equals('foo'),
    );
    checkUnnamed148(o.inputParameters!);
    checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
        o.integrationVersion!);
    checkEnterpriseCrmFrontendsEventbusProtoEventParameters(o.parameters!);
    unittest.expect(o.testMode!, unittest.isTrue);
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsRequest--;
}

core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry>
    buildUnnamed149() => [
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
          buildEnterpriseCrmFrontendsEventbusProtoParameterEntry(),
        ];

void checkUnnamed149(
    core.List<api.EnterpriseCrmFrontendsEventbusProtoParameterEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[0]);
  checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(o[1]);
}

core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType>
    buildUnnamed150() => {
          'x': buildGoogleCloudIntegrationsV1alphaValueType(),
          'y': buildGoogleCloudIntegrationsV1alphaValueType(),
        };

void checkUnnamed150(
    core.Map<core.String, api.GoogleCloudIntegrationsV1alphaValueType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaValueType(o['x']!);
  checkGoogleCloudIntegrationsV1alphaValueType(o['y']!);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsResponse = 0;
api.GoogleCloudIntegrationsV1alphaTestIntegrationsResponse
    buildGoogleCloudIntegrationsV1alphaTestIntegrationsResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaTestIntegrationsResponse();
  buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsResponse < 3) {
    o.eventParameters =
        buildEnterpriseCrmFrontendsEventbusProtoEventParameters();
    o.executionFailed = true;
    o.executionId = 'foo';
    o.parameterEntries = buildUnnamed149();
    o.parameters = buildUnnamed150();
  }
  buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTestIntegrationsResponse(
    api.GoogleCloudIntegrationsV1alphaTestIntegrationsResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsResponse < 3) {
    checkEnterpriseCrmFrontendsEventbusProtoEventParameters(o.eventParameters!);
    unittest.expect(o.executionFailed!, unittest.isTrue);
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    checkUnnamed149(o.parameterEntries!);
    checkUnnamed150(o.parameters!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaTestIntegrationsResponse--;
}

core.List<api.GoogleCloudIntegrationsV1alphaAssertion> buildUnnamed151() => [
      buildGoogleCloudIntegrationsV1alphaAssertion(),
      buildGoogleCloudIntegrationsV1alphaAssertion(),
    ];

void checkUnnamed151(core.List<api.GoogleCloudIntegrationsV1alphaAssertion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaAssertion(o[0]);
  checkGoogleCloudIntegrationsV1alphaAssertion(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaTestTaskConfig = 0;
api.GoogleCloudIntegrationsV1alphaTestTaskConfig
    buildGoogleCloudIntegrationsV1alphaTestTaskConfig() {
  final o = api.GoogleCloudIntegrationsV1alphaTestTaskConfig();
  buildCounterGoogleCloudIntegrationsV1alphaTestTaskConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTestTaskConfig < 3) {
    o.assertions = buildUnnamed151();
    o.mockConfig = buildGoogleCloudIntegrationsV1alphaMockConfig();
    o.task = 'foo';
    o.taskConfig = buildGoogleCloudIntegrationsV1alphaTaskConfig();
    o.taskNumber = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaTestTaskConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTestTaskConfig(
    api.GoogleCloudIntegrationsV1alphaTestTaskConfig o) {
  buildCounterGoogleCloudIntegrationsV1alphaTestTaskConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTestTaskConfig < 3) {
    checkUnnamed151(o.assertions!);
    checkGoogleCloudIntegrationsV1alphaMockConfig(o.mockConfig!);
    unittest.expect(
      o.task!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaTaskConfig(o.taskConfig!);
    unittest.expect(
      o.taskNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaTestTaskConfig--;
}

core.List<api.GoogleCloudIntegrationsV1alphaIntegrationAlertConfig>
    buildUnnamed152() => [
          buildGoogleCloudIntegrationsV1alphaIntegrationAlertConfig(),
          buildGoogleCloudIntegrationsV1alphaIntegrationAlertConfig(),
        ];

void checkUnnamed152(
    core.List<api.GoogleCloudIntegrationsV1alphaIntegrationAlertConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaIntegrationAlertConfig(o[0]);
  checkGoogleCloudIntegrationsV1alphaIntegrationAlertConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed153() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed153(core.Map<core.String, core.String> o) {
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

core.List<api.GoogleCloudIntegrationsV1alphaNextTask> buildUnnamed154() => [
      buildGoogleCloudIntegrationsV1alphaNextTask(),
      buildGoogleCloudIntegrationsV1alphaNextTask(),
    ];

void checkUnnamed154(core.List<api.GoogleCloudIntegrationsV1alphaNextTask> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaNextTask(o[0]);
  checkGoogleCloudIntegrationsV1alphaNextTask(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaTriggerConfig = 0;
api.GoogleCloudIntegrationsV1alphaTriggerConfig
    buildGoogleCloudIntegrationsV1alphaTriggerConfig() {
  final o = api.GoogleCloudIntegrationsV1alphaTriggerConfig();
  buildCounterGoogleCloudIntegrationsV1alphaTriggerConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTriggerConfig < 3) {
    o.alertConfig = buildUnnamed152();
    o.cloudSchedulerConfig =
        buildGoogleCloudIntegrationsV1alphaCloudSchedulerConfig();
    o.description = 'foo';
    o.errorCatcherId = 'foo';
    o.inputVariables =
        buildGoogleCloudIntegrationsV1alphaTriggerConfigVariables();
    o.label = 'foo';
    o.nextTasksExecutionPolicy = 'foo';
    o.outputVariables =
        buildGoogleCloudIntegrationsV1alphaTriggerConfigVariables();
    o.position = buildGoogleCloudIntegrationsV1alphaCoordinate();
    o.properties = buildUnnamed153();
    o.startTasks = buildUnnamed154();
    o.trigger = 'foo';
    o.triggerId = 'foo';
    o.triggerNumber = 'foo';
    o.triggerType = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaTriggerConfig--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTriggerConfig(
    api.GoogleCloudIntegrationsV1alphaTriggerConfig o) {
  buildCounterGoogleCloudIntegrationsV1alphaTriggerConfig++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTriggerConfig < 3) {
    checkUnnamed152(o.alertConfig!);
    checkGoogleCloudIntegrationsV1alphaCloudSchedulerConfig(
        o.cloudSchedulerConfig!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorCatcherId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaTriggerConfigVariables(
        o.inputVariables!);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nextTasksExecutionPolicy!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaTriggerConfigVariables(
        o.outputVariables!);
    checkGoogleCloudIntegrationsV1alphaCoordinate(o.position!);
    checkUnnamed153(o.properties!);
    checkUnnamed154(o.startTasks!);
    unittest.expect(
      o.trigger!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaTriggerConfig--;
}

core.List<core.String> buildUnnamed155() => [
      'foo',
      'foo',
    ];

void checkUnnamed155(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudIntegrationsV1alphaTriggerConfigVariables = 0;
api.GoogleCloudIntegrationsV1alphaTriggerConfigVariables
    buildGoogleCloudIntegrationsV1alphaTriggerConfigVariables() {
  final o = api.GoogleCloudIntegrationsV1alphaTriggerConfigVariables();
  buildCounterGoogleCloudIntegrationsV1alphaTriggerConfigVariables++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTriggerConfigVariables < 3) {
    o.names = buildUnnamed155();
  }
  buildCounterGoogleCloudIntegrationsV1alphaTriggerConfigVariables--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaTriggerConfigVariables(
    api.GoogleCloudIntegrationsV1alphaTriggerConfigVariables o) {
  buildCounterGoogleCloudIntegrationsV1alphaTriggerConfigVariables++;
  if (buildCounterGoogleCloudIntegrationsV1alphaTriggerConfigVariables < 3) {
    checkUnnamed155(o.names!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaTriggerConfigVariables--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest =
    0;
api.GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest
    buildGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest() {
  final o =
      api.GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest();
  buildCounterGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest <
      3) {}
  buildCounterGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest(
    api.GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest <
      3) {}
  buildCounterGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest--;
}

core.List<core.String> buildUnnamed156() => [
      'foo',
      'foo',
    ];

void checkUnnamed156(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudIntegrationsV1alphaUnshareTemplateRequest = 0;
api.GoogleCloudIntegrationsV1alphaUnshareTemplateRequest
    buildGoogleCloudIntegrationsV1alphaUnshareTemplateRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaUnshareTemplateRequest();
  buildCounterGoogleCloudIntegrationsV1alphaUnshareTemplateRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUnshareTemplateRequest < 3) {
    o.resourceNames = buildUnnamed156();
  }
  buildCounterGoogleCloudIntegrationsV1alphaUnshareTemplateRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaUnshareTemplateRequest(
    api.GoogleCloudIntegrationsV1alphaUnshareTemplateRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaUnshareTemplateRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUnshareTemplateRequest < 3) {
    checkUnnamed156(o.resourceNames!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaUnshareTemplateRequest--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest =
    0;
api.GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest
    buildGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest();
  buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest <
      3) {
    o.content = 'foo';
    o.fileFormat = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest(
    api.GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest <
      3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileFormat!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse =
    0;
api.GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse
    buildGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse() {
  final o =
      api.GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse();
  buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse <
      3) {
    o.integrationVersion =
        buildGoogleCloudIntegrationsV1alphaIntegrationVersion();
  }
  buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse(
    api.GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse <
      3) {
    checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
        o.integrationVersion!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateRequest = 0;
api.GoogleCloudIntegrationsV1alphaUploadTemplateRequest
    buildGoogleCloudIntegrationsV1alphaUploadTemplateRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaUploadTemplateRequest();
  buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateRequest < 3) {
    o.content = 'foo';
    o.fileFormat = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaUploadTemplateRequest(
    api.GoogleCloudIntegrationsV1alphaUploadTemplateRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateRequest < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileFormat!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateRequest--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateResponse = 0;
api.GoogleCloudIntegrationsV1alphaUploadTemplateResponse
    buildGoogleCloudIntegrationsV1alphaUploadTemplateResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaUploadTemplateResponse();
  buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateResponse < 3) {
    o.template = buildGoogleCloudIntegrationsV1alphaTemplate();
  }
  buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaUploadTemplateResponse(
    api.GoogleCloudIntegrationsV1alphaUploadTemplateResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateResponse < 3) {
    checkGoogleCloudIntegrationsV1alphaTemplate(o.template!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaUploadTemplateResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseRequest = 0;
api.GoogleCloudIntegrationsV1alphaUploadTestCaseRequest
    buildGoogleCloudIntegrationsV1alphaUploadTestCaseRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaUploadTestCaseRequest();
  buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseRequest < 3) {
    o.content = 'foo';
    o.fileFormat = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaUploadTestCaseRequest(
    api.GoogleCloudIntegrationsV1alphaUploadTestCaseRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseRequest < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileFormat!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseRequest--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseResponse = 0;
api.GoogleCloudIntegrationsV1alphaUploadTestCaseResponse
    buildGoogleCloudIntegrationsV1alphaUploadTestCaseResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaUploadTestCaseResponse();
  buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseResponse < 3) {
    o.testCase = buildGoogleCloudIntegrationsV1alphaTestCase();
  }
  buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaUploadTestCaseResponse(
    api.GoogleCloudIntegrationsV1alphaUploadTestCaseResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseResponse < 3) {
    checkGoogleCloudIntegrationsV1alphaTestCase(o.testCase!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaUploadTestCaseResponse--;
}

core.Map<core.String,
        api.GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails>
    buildUnnamed157() => {
          'x':
              buildGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails(),
          'y':
              buildGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails(),
        };

void checkUnnamed157(
    core.Map<
            core.String,
            api
            .GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails(
      o['x']!);
  checkGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails(
      o['y']!);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequest = 0;
api.GoogleCloudIntegrationsV1alphaUseTemplateRequest
    buildGoogleCloudIntegrationsV1alphaUseTemplateRequest() {
  final o = api.GoogleCloudIntegrationsV1alphaUseTemplateRequest();
  buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequest < 3) {
    o.integrationDetails =
        buildGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails();
    o.integrationRegion = 'foo';
    o.subIntegrations = buildUnnamed157();
  }
  buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequest--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaUseTemplateRequest(
    api.GoogleCloudIntegrationsV1alphaUseTemplateRequest o) {
  buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequest++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequest < 3) {
    checkGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails(
        o.integrationDetails!);
    unittest.expect(
      o.integrationRegion!,
      unittest.equals('foo'),
    );
    checkUnnamed157(o.subIntegrations!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequest--;
}

core.int
    buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails =
    0;
api.GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails
    buildGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails() {
  final o =
      api.GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails();
  buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails <
      3) {
    o.integration = 'foo';
    o.integrationDescription = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails(
    api.GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails o) {
  buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails <
      3) {
    unittest.expect(
      o.integration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.integrationDescription!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails--;
}

core.List<api.GoogleCloudIntegrationsV1alphaIntegrationVersion>
    buildUnnamed158() => [
          buildGoogleCloudIntegrationsV1alphaIntegrationVersion(),
          buildGoogleCloudIntegrationsV1alphaIntegrationVersion(),
        ];

void checkUnnamed158(
    core.List<api.GoogleCloudIntegrationsV1alphaIntegrationVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudIntegrationsV1alphaIntegrationVersion(o[0]);
  checkGoogleCloudIntegrationsV1alphaIntegrationVersion(o[1]);
}

core.int buildCounterGoogleCloudIntegrationsV1alphaUseTemplateResponse = 0;
api.GoogleCloudIntegrationsV1alphaUseTemplateResponse
    buildGoogleCloudIntegrationsV1alphaUseTemplateResponse() {
  final o = api.GoogleCloudIntegrationsV1alphaUseTemplateResponse();
  buildCounterGoogleCloudIntegrationsV1alphaUseTemplateResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUseTemplateResponse < 3) {
    o.integrationVersion =
        buildGoogleCloudIntegrationsV1alphaIntegrationVersion();
    o.subIntegrationVersions = buildUnnamed158();
  }
  buildCounterGoogleCloudIntegrationsV1alphaUseTemplateResponse--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaUseTemplateResponse(
    api.GoogleCloudIntegrationsV1alphaUseTemplateResponse o) {
  buildCounterGoogleCloudIntegrationsV1alphaUseTemplateResponse++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUseTemplateResponse < 3) {
    checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
        o.integrationVersion!);
    checkUnnamed158(o.subIntegrationVersions!);
  }
  buildCounterGoogleCloudIntegrationsV1alphaUseTemplateResponse--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaUsernameAndPassword = 0;
api.GoogleCloudIntegrationsV1alphaUsernameAndPassword
    buildGoogleCloudIntegrationsV1alphaUsernameAndPassword() {
  final o = api.GoogleCloudIntegrationsV1alphaUsernameAndPassword();
  buildCounterGoogleCloudIntegrationsV1alphaUsernameAndPassword++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUsernameAndPassword < 3) {
    o.password = 'foo';
    o.username = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaUsernameAndPassword--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaUsernameAndPassword(
    api.GoogleCloudIntegrationsV1alphaUsernameAndPassword o) {
  buildCounterGoogleCloudIntegrationsV1alphaUsernameAndPassword++;
  if (buildCounterGoogleCloudIntegrationsV1alphaUsernameAndPassword < 3) {
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaUsernameAndPassword--;
}

core.int buildCounterGoogleCloudIntegrationsV1alphaValueType = 0;
api.GoogleCloudIntegrationsV1alphaValueType
    buildGoogleCloudIntegrationsV1alphaValueType() {
  final o = api.GoogleCloudIntegrationsV1alphaValueType();
  buildCounterGoogleCloudIntegrationsV1alphaValueType++;
  if (buildCounterGoogleCloudIntegrationsV1alphaValueType < 3) {
    o.booleanArray = buildGoogleCloudIntegrationsV1alphaBooleanParameterArray();
    o.booleanValue = true;
    o.doubleArray = buildGoogleCloudIntegrationsV1alphaDoubleParameterArray();
    o.doubleValue = 42.0;
    o.intArray = buildGoogleCloudIntegrationsV1alphaIntParameterArray();
    o.intValue = 'foo';
    o.jsonValue = 'foo';
    o.stringArray = buildGoogleCloudIntegrationsV1alphaStringParameterArray();
    o.stringValue = 'foo';
  }
  buildCounterGoogleCloudIntegrationsV1alphaValueType--;
  return o;
}

void checkGoogleCloudIntegrationsV1alphaValueType(
    api.GoogleCloudIntegrationsV1alphaValueType o) {
  buildCounterGoogleCloudIntegrationsV1alphaValueType++;
  if (buildCounterGoogleCloudIntegrationsV1alphaValueType < 3) {
    checkGoogleCloudIntegrationsV1alphaBooleanParameterArray(o.booleanArray!);
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleCloudIntegrationsV1alphaDoubleParameterArray(o.doubleArray!);
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    checkGoogleCloudIntegrationsV1alphaIntParameterArray(o.intArray!);
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jsonValue!,
      unittest.equals('foo'),
    );
    checkGoogleCloudIntegrationsV1alphaStringParameterArray(o.stringArray!);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudIntegrationsV1alphaValueType--;
}

core.int
    buildCounterGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest =
    0;
api.GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest
    buildGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest() {
  final o =
      api.GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest();
  buildCounterGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest++;
  if (buildCounterGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest <
      3) {
    o.clientId = 'foo';
    o.ignoreErrorIfNoActiveWorkflow = true;
    o.parameters = buildEnterpriseCrmEventbusProtoEventParameters();
    o.priority = 'foo';
    o.quotaRetryCount = 42;
    o.requestId = 'foo';
    o.resourceName = 'foo';
    o.scheduledTime = 'foo';
    o.testMode = true;
    o.triggerId = 'foo';
    o.userGeneratedExecutionId = 'foo';
    o.workflowName = 'foo';
  }
  buildCounterGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest--;
  return o;
}

void checkGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest(
    api.GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest o) {
  buildCounterGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest++;
  if (buildCounterGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest <
      3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ignoreErrorIfNoActiveWorkflow!, unittest.isTrue);
    checkEnterpriseCrmEventbusProtoEventParameters(o.parameters!);
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quotaRetryCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduledTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.testMode!, unittest.isTrue);
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userGeneratedExecutionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workflowName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.List<core.String> buildUnnamed159() => [
      'foo',
      'foo',
    ];

void checkUnnamed159(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed160() => [
      'foo',
      'foo',
    ];

void checkUnnamed160(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed161() => [
      'foo',
      'foo',
    ];

void checkUnnamed161(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed162() => [
      'foo',
      'foo',
    ];

void checkUnnamed162(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed163() => [
      'foo',
      'foo',
    ];

void checkUnnamed163(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed164() => [
      'foo',
      'foo',
    ];

void checkUnnamed164(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed165() => [
      'foo',
      'foo',
    ];

void checkUnnamed165(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-CrmlogErrorCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCrmlogErrorCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CrmlogErrorCode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCrmlogErrorCode(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoAddress(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoAttributes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoAttributes(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoBaseAlertConfigErrorEnumList(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoBooleanParameterArray',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoBooleanParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoBooleanParameterArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoBooleanParameterArray(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoBuganizerNotification',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoBuganizerNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoBuganizerNotification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoBuganizerNotification(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoCloudLoggingDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoCloudLoggingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoCloudLoggingDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoCloudLoggingDetails(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoCloudSchedulerConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoCloudSchedulerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoCloudSchedulerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoCloudSchedulerConfig(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoCombinedCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoCombinedCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoCombinedCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoCombinedCondition(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoCondition(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoConditionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoConditionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoConditionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoConditionResult(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoConditionalFailurePolicies', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoConditionalFailurePolicies();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoConditionalFailurePolicies.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoConditionalFailurePolicies(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoCoordinate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoCoordinate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoCoordinate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoCoordinate(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoCustomSuspensionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoCustomSuspensionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoCustomSuspensionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoCustomSuspensionRequest(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoDoubleArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoDoubleArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoDoubleArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoDoubleArray(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoDoubleParameterArray',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoDoubleParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoDoubleParameterArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoDoubleParameterArray(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoErrorDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoErrorDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoErrorDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoErrorDetail(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoEventBusProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoEventBusProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoEventBusProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoEventBusProperties(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoEventExecutionDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoEventExecutionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoEventExecutionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoEventExecutionDetails(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoEventExecutionDetailsEventAttemptStats(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoEventExecutionSnapshot',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoEventExecutionSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoEventExecutionSnapshot.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoEventExecutionSnapshot(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoEventExecutionSnapshotEventExecutionSnapshotMetadata(
          od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoEventParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoEventParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoEventParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoEventParameters(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoExecutionTraceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoExecutionTraceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoExecutionTraceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoExecutionTraceInfo(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoFailurePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoFailurePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoFailurePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoFailurePolicy(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoIntArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoIntArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoIntArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoIntArray(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoIntParameterArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoIntParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoIntParameterArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoIntParameterArray(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoLogSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoLogSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoLogSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoLogSettings(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoNextTask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoNextTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoNextTask.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoNextTask(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoNextTeardownTask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoNextTeardownTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoNextTeardownTask.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoNextTeardownTask(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoNodeIdentifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoNodeIdentifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoNodeIdentifier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoNodeIdentifier(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoNotification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoNotification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoNotification(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoParamSpecEntryConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoParamSpecEntryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoParamSpecEntryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoParamSpecEntryConfig(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoParamSpecEntryValidationRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoParamSpecEntryValidationRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRule.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoParamSpecEntryValidationRule(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange(
          od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex(
          od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoParameterEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoParameterEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoParameterEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoParameterEntry(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoParameterValueType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoParameterValueType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoParameterValueType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoParameterValueType(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoPropertyEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoPropertyEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoPropertyEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoPropertyEntry(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoProtoParameterArray',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoProtoParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoProtoParameterArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoProtoParameterArray(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoSerializedObjectParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoSerializedObjectParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoSerializedObjectParameter.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoSerializedObjectParameter(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoStringArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoStringArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoStringArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoStringArray(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoStringParameterArray',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoStringParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoStringParameterArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoStringParameterArray(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoSuccessPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoSuccessPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoSuccessPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoSuccessPolicy(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoSuspensionAuthPermissions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoSuspensionAuthPermissions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoSuspensionAuthPermissions.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoSuspensionAuthPermissions(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoSuspensionAuthPermissionsGaiaIdentity(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoSuspensionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoSuspensionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoSuspensionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoSuspensionConfig(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoSuspensionExpiration',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoSuspensionExpiration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoSuspensionExpiration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoSuspensionExpiration(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoTaskAlertConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoTaskAlertConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoTaskAlertConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoTaskAlertConfig(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoTaskExecutionDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoTaskExecutionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoTaskExecutionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoTaskExecutionDetails(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoTaskExecutionDetailsTaskAttemptStats(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoTaskMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoTaskMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoTaskMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoTaskMetadata(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoTaskMetadataAdmin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoTaskMetadataAdmin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoTaskMetadataAdmin.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoTaskMetadataAdmin(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoTaskUiConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoTaskUiConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoTaskUiConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoTaskUiConfig(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoTaskUiModuleConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoTaskUiModuleConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoTaskUiModuleConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoTaskUiModuleConfig(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoTeardown', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoTeardown();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoTeardown.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoTeardown(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoTeardownTaskConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoTeardownTaskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoTeardownTaskConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoTeardownTaskConfig(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoToken(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoTriggerCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoTriggerCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoTriggerCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoTriggerCriteria(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoValueType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoValueType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoValueType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoValueType(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusProtoWorkflowAlertConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusProtoWorkflowAlertConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusProtoWorkflowAlertConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusProtoWorkflowAlertConfig(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusStats(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmEventbusStatsDimensions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmEventbusStatsDimensions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmEventbusStatsDimensions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmEventbusStatsDimensions(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoBooleanParameterArray(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoDoubleParameterArray.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoDoubleParameterArray(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoEventExecutionDetails.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoEventExecutionDetails(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfo.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoEventExecutionInfo(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoEventExecutionInfoReplayInfo(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoEventExecutionSnapshot(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoEventParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoEventParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoEventParameters.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoEventParameters(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoIntParameterArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoIntParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoIntParameterArray.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoIntParameterArray(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmFrontendsEventbusProtoParamSpecEntry',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoParamSpecEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmFrontendsEventbusProtoParamSpecEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoParamSpecEntry(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoParamSpecsMessage(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmFrontendsEventbusProtoParameterEntry',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoParameterEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmFrontendsEventbusProtoParameterEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoParameterEntry(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoParameterValueType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoParameterValueType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoParameterValueType.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoParameterValueType(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoProtoParameterArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoProtoParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoProtoParameterArray.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoProtoParameterArray(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoRollbackStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoRollbackStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoRollbackStrategy.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoRollbackStrategy(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoStringParameterArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoStringParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoStringParameterArray.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoStringParameterArray(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmFrontendsEventbusProtoTaskConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoTaskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmFrontendsEventbusProtoTaskConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoTaskConfig(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmFrontendsEventbusProtoTaskEntity',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoTaskEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmFrontendsEventbusProtoTaskEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoTaskEntity(od);
    });
  });

  unittest.group('obj-schema-EnterpriseCrmFrontendsEventbusProtoTriggerConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoTriggerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmFrontendsEventbusProtoTriggerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoTriggerConfig(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoTriggerConfigVariables(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoWorkflowParameterEntry(od);
    });
  });

  unittest.group(
      'obj-schema-EnterpriseCrmFrontendsEventbusProtoWorkflowParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseCrmFrontendsEventbusProtoWorkflowParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnterpriseCrmFrontendsEventbusProtoWorkflowParameters.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseCrmFrontendsEventbusProtoWorkflowParameters(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1AuthConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1AuthConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1AuthConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1AuthConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlowGoogleManaged(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1AuthConfigOauth2JwtBearer(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1AuthConfigOauth2JwtBearerJwtClaims(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1AuthConfigSshPublicKey',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1AuthConfigSshPublicKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1AuthConfigSshPublicKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1AuthConfigSshPublicKey(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1AuthConfigUserPassword',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1AuthConfigUserPassword();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1AuthConfigUserPassword.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1AuthConfigUserPassword(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1BillingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1BillingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1BillingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1BillingConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1ConfigVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1ConfigVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1ConfigVariable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1ConfigVariable(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1Connection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1Connection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1Connection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1Connection(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1ConnectionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1ConnectionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1ConnectionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1ConnectionStatus(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudConnectorsV1ConnectorVersionInfraConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1ConnectorVersionInfraConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudConnectorsV1ConnectorVersionInfraConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1ConnectorVersionInfraConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1Destination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1Destination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1Destination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1Destination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1DestinationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1DestinationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1DestinationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1DestinationConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1EncryptionKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1EncryptionKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1EncryptionKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1EncryptionKey(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1EventingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1EventingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1EventingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1EventingConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudConnectorsV1EventingConfigDeadLetterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1EventingConfigDeadLetterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudConnectorsV1EventingConfigDeadLetterConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1EventingConfigDeadLetterConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1EventingRuntimeData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1EventingRuntimeData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1EventingRuntimeData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1EventingRuntimeData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudConnectorsV1EventingRuntimeDataWebhookData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1EventingRuntimeDataWebhookData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudConnectorsV1EventingRuntimeDataWebhookData.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1EventingRuntimeDataWebhookData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1EventingRuntimeDataWebhookSubscriptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1EventingStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1EventingStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1EventingStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1EventingStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1HPAConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1HPAConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1HPAConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1HPAConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1LockConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1LockConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1LockConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1LockConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1LogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1LogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1LogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1LogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1NodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1NodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1NodeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1NodeConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1ResourceLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1ResourceLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1ResourceLimits.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1ResourceLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1ResourceRequests', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1ResourceRequests();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1ResourceRequests.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1ResourceRequests(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1Secret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1Secret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1Secret.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1Secret(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudConnectorsV1SslConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudConnectorsV1SslConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudConnectorsV1SslConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudConnectorsV1SslConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaAccessToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaAccessToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaAccessToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaAccessToken(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaAssertion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaAssertion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaAssertion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaAssertion(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaAssertionResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaAssertionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaAssertionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaAssertionResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaAttemptStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaAttemptStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaAttemptStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaAttemptStats(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaAuthConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaAuthConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaAuthConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaAuthToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaAuthToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaAuthToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaAuthToken(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaBooleanParameterArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaBooleanParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaBooleanParameterArray.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaBooleanParameterArray(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaCancelExecutionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaCancelExecutionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaCancelExecutionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaCancelExecutionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaCancelExecutionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaCancelExecutionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaCancelExecutionResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaCancelExecutionResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaCertificate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaCertificate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaClientCertificate',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaClientCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaClientCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaClientCertificate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaClientConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaClientConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaClientConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaClientConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaCloudKmsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaCloudKmsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaCloudKmsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaCloudKmsConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaCloudLoggingDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaCloudLoggingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaCloudLoggingDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaCloudLoggingDetails(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaCloudSchedulerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaCloudSchedulerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaCloudSchedulerConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaCloudSchedulerConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaConditionalFailurePolicies',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaConditionalFailurePolicies();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaConditionalFailurePolicies.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaConditionalFailurePolicies(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaCoordinate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaCoordinate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaCoordinate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaCoordinate(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaCredential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaCredential.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaCredential(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaDeprovisionClientRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaDeprovisionClientRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaDeprovisionClientRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaDeprovisionClientRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaDoubleParameterArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaDoubleParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaDoubleParameterArray.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaDoubleParameterArray(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaDownloadExecutionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaDownloadExecutionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaDownloadExecutionResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaDownloadExecutionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaDownloadTemplateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaDownloadTemplateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaDownloadTemplateResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaDownloadTemplateResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaErrorCatcherConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaErrorCatcherConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaErrorCatcherConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaErrorCatcherConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaEventParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaEventParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaEventParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaEventParameter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaExecuteEventResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaExecuteEventResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaExecuteEventResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaExecuteEventResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaExecution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaExecution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaExecution(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaExecutionDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaExecutionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaExecutionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaExecutionDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaExecutionReplayInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaExecutionReplayInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaExecutionReplayInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaExecutionReplayInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaExecutionSnapshot',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaExecutionSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaExecutionSnapshot.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaExecutionSnapshot(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaExecutionSnapshotExecutionSnapshotMetadata(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaFailurePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaFailurePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaFailurePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaFailurePolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaFile(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaGenerateTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaGenerateTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaGenerateTokenResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaGenerateTokenResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaGetClientMetadataResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaGetClientMetadataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaGetClientMetadataResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaGetClientMetadataResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaGetClientResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaGetClientResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaGetClientResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaGetClientResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaImportTemplateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaImportTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaImportTemplateRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaImportTemplateRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaImportTemplateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaImportTemplateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaImportTemplateResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaImportTemplateResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaIntParameterArray',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaIntParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaIntParameterArray.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaIntParameterArray(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaIntegration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaIntegration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaIntegration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaIntegration(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaIntegrationAlertConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaIntegrationAlertConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaIntegrationAlertConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaIntegrationAlertConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaIntegrationConfigParameter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaIntegrationConfigParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaIntegrationConfigParameter.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaIntegrationConfigParameter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaIntegrationParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaIntegrationParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaIntegrationParameter.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaIntegrationParameter(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaIntegrationVersion',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaIntegrationVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaIntegrationVersion(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaIntegrationVersionTemplate.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaIntegrationVersionTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaJwt', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaJwt();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaJwt.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaJwt(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaLiftSuspensionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaLiftSuspensionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaLiftSuspensionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaLiftSuspensionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaLiftSuspensionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaLiftSuspensionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaLiftSuspensionResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaLiftSuspensionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListAuthConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaListAuthConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListAuthConfigsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListAuthConfigsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListCertificatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaListCertificatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListCertificatesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListCertificatesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaListConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListConnectionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListConnectionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListExecutionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaListExecutionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListExecutionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListExecutionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListIntegrationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaListIntegrationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListIntegrationsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListIntegrationsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListSuspensionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaListSuspensionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListSuspensionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListSuspensionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListTemplatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaListTemplatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListTemplatesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListTemplatesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaListTestCasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaListTestCasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaListTestCasesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaListTestCasesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaMockConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaMockConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaMockConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaMockConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaNextTask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaNextTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaNextTask.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaNextTask(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaOAuth2ClientCredentials(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaOidcToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaOidcToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaOidcToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaOidcToken(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaParameterMap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaParameterMap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaParameterMap.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaParameterMap(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaParameterMapEntry',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaParameterMapEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaParameterMapEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaParameterMapEntry(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaParameterMapField',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaParameterMapField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaParameterMapField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaParameterMapField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaProjectProperties',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaProjectProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaProjectProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaProjectProperties(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaProvisionClientRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaProvisionClientRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaProvisionClientRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaProvisionClientRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaReplayExecutionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaReplayExecutionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaReplayExecutionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaReplayExecutionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaReplayExecutionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaReplayExecutionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaReplayExecutionResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaReplayExecutionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaResolveSuspensionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaResolveSuspensionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaResolveSuspensionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaResolveSuspensionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaResolveSuspensionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaResolveSuspensionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaResolveSuspensionResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaResolveSuspensionResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaRuntimeActionSchema',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaRuntimeActionSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaRuntimeActionSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaRuntimeActionSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaRuntimeEntitySchema',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaRuntimeEntitySchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaRuntimeEntitySchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaRuntimeEntitySchema(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaSearchTemplatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaSearchTemplatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaSearchTemplatesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaSearchTemplatesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaSerializedFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaSerializedFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaSerializedFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaSerializedFile(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaServiceAccountCredentials', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaServiceAccountCredentials();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaServiceAccountCredentials.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaServiceAccountCredentials(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaSfdcChannel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaSfdcChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaSfdcChannel(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaSfdcInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaSfdcInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaSfdcInstance(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaShareTemplateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaShareTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaShareTemplateRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaShareTemplateRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaStringParameterArray', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaStringParameterArray();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaStringParameterArray.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaStringParameterArray(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaSuccessPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaSuccessPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaSuccessPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaSuccessPolicy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaSuspension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaSuspension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaSuspension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaSuspension(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaSuspensionApprovalConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaSuspensionApprovalConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaSuspensionApprovalExpiration(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaSuspensionAudit',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaSuspensionAudit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaSuspensionAudit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaSuspensionAudit(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaTaskConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTaskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaTaskConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTaskConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaTaskExecutionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTaskExecutionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaTaskExecutionDetails.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTaskExecutionDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaTemplateBundle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTemplateBundle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaTemplateBundle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTemplateBundle(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaTemplateComponent',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTemplateComponent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaTemplateComponent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTemplateComponent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaTestCase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTestCase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaTestCase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTestCase(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaTestIntegrationsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTestIntegrationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaTestIntegrationsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTestIntegrationsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaTestIntegrationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTestIntegrationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaTestIntegrationsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTestIntegrationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaTestTaskConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTestTaskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaTestTaskConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTestTaskConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaTriggerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTriggerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaTriggerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTriggerConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaTriggerConfigVariables', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaTriggerConfigVariables();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaTriggerConfigVariables.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaTriggerConfigVariables(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaUnshareTemplateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaUnshareTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaUnshareTemplateRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaUnshareTemplateRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaUploadTemplateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaUploadTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaUploadTemplateRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaUploadTemplateRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaUploadTemplateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaUploadTemplateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaUploadTemplateResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaUploadTemplateResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaUploadTestCaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaUploadTestCaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaUploadTestCaseRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaUploadTestCaseRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaUploadTestCaseResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaUploadTestCaseResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaUploadTestCaseResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaUploadTestCaseResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaUseTemplateRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaUseTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaUseTemplateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaUseTemplateRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaUseTemplateRequestIntegrationDetails(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaUseTemplateResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaUseTemplateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaUseTemplateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaUseTemplateResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaUsernameAndPassword',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaUsernameAndPassword();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaUsernameAndPassword.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaUsernameAndPassword(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudIntegrationsV1alphaValueType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudIntegrationsV1alphaValueType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudIntegrationsV1alphaValueType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudIntegrationsV1alphaValueType(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleInternalCloudCrmEventbusV3PostToQueueWithTriggerIdRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('resource-CallbackResource', () {
    unittest.test('method--generateToken', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).callback;
      final arg_code = 'foo';
      final arg_gcpProjectId = 'foo';
      final arg_product = 'foo';
      final arg_redirectUri = 'foo';
      final arg_state = 'foo';
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('v1/callback:generateToken'),
        );
        pathOffset += 25;

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
          queryMap['code']!.first,
          unittest.equals(arg_code),
        );
        unittest.expect(
          queryMap['gcpProjectId']!.first,
          unittest.equals(arg_gcpProjectId),
        );
        unittest.expect(
          queryMap['product']!.first,
          unittest.equals(arg_product),
        );
        unittest.expect(
          queryMap['redirectUri']!.first,
          unittest.equals(arg_redirectUri),
        );
        unittest.expect(
          queryMap['state']!.first,
          unittest.equals(arg_state),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaGenerateTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateToken(
          code: arg_code,
          gcpProjectId: arg_gcpProjectId,
          product: arg_product,
          redirectUri: arg_redirectUri,
          state: arg_state,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaGenerateTokenResponse(
          response as api.GoogleCloudIntegrationsV1alphaGenerateTokenResponse);
    });
  });

  unittest.group('resource-ConnectorPlatformRegionsResource', () {
    unittest.test('method--enumerate', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).connectorPlatformRegions;
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
          path.substring(pathOffset, pathOffset + 37),
          unittest.equals('v1/connectorPlatformRegions:enumerate'),
        );
        pathOffset += 37;

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.enumerate($fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse(
          response as api
              .GoogleCloudIntegrationsV1alphaEnumerateConnectorPlatformRegionsResponse);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getClientmetadata', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaGetClientMetadataResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getClientmetadata(arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaGetClientMetadataResponse(response
          as api.GoogleCloudIntegrationsV1alphaGetClientMetadataResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--getClients', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations;
      final arg_parent = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaGetClientResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getClients(arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaGetClientResponse(
          response as api.GoogleCloudIntegrationsV1alphaGetClientResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAppsScriptProjectsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.appsScriptProjects;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse(
          response as api
              .GoogleCloudIntegrationsV1alphaCreateAppsScriptProjectResponse);
    });

    unittest.test('method--link', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.appsScriptProjects;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.link(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse(response
          as api.GoogleCloudIntegrationsV1alphaLinkAppsScriptProjectResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAuthConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.authConfigs;
      final arg_request = buildGoogleCloudIntegrationsV1alphaAuthConfig();
      final arg_parent = 'foo';
      final arg_clientCertificate_encryptedPrivateKey = 'foo';
      final arg_clientCertificate_passphrase = 'foo';
      final arg_clientCertificate_sslCertificate = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaAuthConfig(obj);

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
          queryMap['clientCertificate.encryptedPrivateKey']!.first,
          unittest.equals(arg_clientCertificate_encryptedPrivateKey),
        );
        unittest.expect(
          queryMap['clientCertificate.passphrase']!.first,
          unittest.equals(arg_clientCertificate_passphrase),
        );
        unittest.expect(
          queryMap['clientCertificate.sslCertificate']!.first,
          unittest.equals(arg_clientCertificate_sslCertificate),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaAuthConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          clientCertificate_encryptedPrivateKey:
              arg_clientCertificate_encryptedPrivateKey,
          clientCertificate_passphrase: arg_clientCertificate_passphrase,
          clientCertificate_sslCertificate:
              arg_clientCertificate_sslCertificate,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaAuthConfig(
          response as api.GoogleCloudIntegrationsV1alphaAuthConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.authConfigs;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.authConfigs;
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaAuthConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaAuthConfig(
          response as api.GoogleCloudIntegrationsV1alphaAuthConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.authConfigs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListAuthConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListAuthConfigsResponse(response
          as api.GoogleCloudIntegrationsV1alphaListAuthConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.authConfigs;
      final arg_request = buildGoogleCloudIntegrationsV1alphaAuthConfig();
      final arg_name = 'foo';
      final arg_clientCertificate_encryptedPrivateKey = 'foo';
      final arg_clientCertificate_passphrase = 'foo';
      final arg_clientCertificate_sslCertificate = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaAuthConfig(obj);

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
          queryMap['clientCertificate.encryptedPrivateKey']!.first,
          unittest.equals(arg_clientCertificate_encryptedPrivateKey),
        );
        unittest.expect(
          queryMap['clientCertificate.passphrase']!.first,
          unittest.equals(arg_clientCertificate_passphrase),
        );
        unittest.expect(
          queryMap['clientCertificate.sslCertificate']!.first,
          unittest.equals(arg_clientCertificate_sslCertificate),
        );
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaAuthConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          clientCertificate_encryptedPrivateKey:
              arg_clientCertificate_encryptedPrivateKey,
          clientCertificate_passphrase: arg_clientCertificate_passphrase,
          clientCertificate_sslCertificate:
              arg_clientCertificate_sslCertificate,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaAuthConfig(
          response as api.GoogleCloudIntegrationsV1alphaAuthConfig);
    });
  });

  unittest.group('resource-ProjectsLocationsCertificatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.certificates;
      final arg_request = buildGoogleCloudIntegrationsV1alphaCertificate();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaCertificate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaCertificate(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaCertificate(
          response as api.GoogleCloudIntegrationsV1alphaCertificate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.certificates;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.certificates;
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaCertificate(
          response as api.GoogleCloudIntegrationsV1alphaCertificate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.certificates;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListCertificatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListCertificatesResponse(response
          as api.GoogleCloudIntegrationsV1alphaListCertificatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.certificates;
      final arg_request = buildGoogleCloudIntegrationsV1alphaCertificate();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaCertificate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaCertificate(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaCertificate(
          response as api.GoogleCloudIntegrationsV1alphaCertificate);
    });
  });

  unittest.group('resource-ProjectsLocationsClientsResource', () {
    unittest.test('method--deprovision', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.clients;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaDeprovisionClientRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaDeprovisionClientRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaDeprovisionClientRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deprovision(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--provision', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.clients;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaProvisionClientRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaProvisionClientRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaProvisionClientRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.provision(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--replace', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.clients;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaReplaceServiceAccountRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.replace(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--switch_', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.clients;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaSwitchEncryptionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaSwitchEncryptionRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.switch_(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--switchVariableMasking', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.clients;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaSwitchVariableMaskingRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.switchVariableMasking(arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-ProjectsLocationsCloudFunctionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.cloudFunctions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse(response
          as api.GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsConnectionsResource', () {
    unittest.test('method--getConnectionSchemaMetadata', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.connections;
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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getConnectionSchemaMetadata(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaConnectionSchemaMetadata(response
          as api.GoogleCloudIntegrationsV1alphaConnectionSchemaMetadata);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.connections;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListConnectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListConnectionsResponse(response
          as api.GoogleCloudIntegrationsV1alphaListConnectionsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsConnectionsRuntimeActionSchemasResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .connections
          .runtimeActionSchemas;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse(
          response as api
              .GoogleCloudIntegrationsV1alphaListRuntimeActionSchemasResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsConnectionsRuntimeEntitySchemasResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .connections
          .runtimeEntitySchemas;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse(
          response as api
              .GoogleCloudIntegrationsV1alphaListRuntimeEntitySchemasResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsIntegrationsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.integrations;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--execute', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.integrations;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.execute(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse(response
          as api.GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse);
    });

    unittest.test('method--executeEvent', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.integrations;
      final arg_name = 'foo';
      final arg_triggerId = 'foo';
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
          queryMap['triggerId']!.first,
          unittest.equals(arg_triggerId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaExecuteEventResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.executeEvent(arg_name,
          triggerId: arg_triggerId, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaExecuteEventResponse(
          response as api.GoogleCloudIntegrationsV1alphaExecuteEventResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.integrations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListIntegrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListIntegrationsResponse(response
          as api.GoogleCloudIntegrationsV1alphaListIntegrationsResponse);
    });

    unittest.test('method--schedule', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.integrations;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.schedule(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse(response
          as api.GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse);
    });

    unittest.test('method--test', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.integrations;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaTestIntegrationsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaTestIntegrationsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaTestIntegrationsRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaTestIntegrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.test(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaTestIntegrationsResponse(response
          as api.GoogleCloudIntegrationsV1alphaTestIntegrationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsIntegrationsExecutionsResource',
      () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.executions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaCancelExecutionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaCancelExecutionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaCancelExecutionRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaCancelExecutionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaCancelExecutionResponse(response
          as api.GoogleCloudIntegrationsV1alphaCancelExecutionResponse);
    });

    unittest.test('method--download', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.executions;
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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaDownloadExecutionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.download(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaDownloadExecutionResponse(response
          as api.GoogleCloudIntegrationsV1alphaDownloadExecutionResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.executions;
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
        final resp =
            convert.json.encode(buildGoogleCloudIntegrationsV1alphaExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaExecution(
          response as api.GoogleCloudIntegrationsV1alphaExecution);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.executions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_filterParams_customFilter = 'foo';
      final arg_filterParams_endTime = 'foo';
      final arg_filterParams_eventStatuses = buildUnnamed159();
      final arg_filterParams_executionId = 'foo';
      final arg_filterParams_parameterKey = 'foo';
      final arg_filterParams_parameterPairKey = 'foo';
      final arg_filterParams_parameterPairValue = 'foo';
      final arg_filterParams_parameterType = 'foo';
      final arg_filterParams_parameterValue = 'foo';
      final arg_filterParams_startTime = 'foo';
      final arg_filterParams_taskStatuses = buildUnnamed160();
      final arg_filterParams_workflowName = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
      final arg_refreshAcl = true;
      final arg_snapshotMetadataWithoutParams = true;
      final arg_truncateParams = true;
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['filterParams.customFilter']!.first,
          unittest.equals(arg_filterParams_customFilter),
        );
        unittest.expect(
          queryMap['filterParams.endTime']!.first,
          unittest.equals(arg_filterParams_endTime),
        );
        unittest.expect(
          queryMap['filterParams.eventStatuses']!,
          unittest.equals(arg_filterParams_eventStatuses),
        );
        unittest.expect(
          queryMap['filterParams.executionId']!.first,
          unittest.equals(arg_filterParams_executionId),
        );
        unittest.expect(
          queryMap['filterParams.parameterKey']!.first,
          unittest.equals(arg_filterParams_parameterKey),
        );
        unittest.expect(
          queryMap['filterParams.parameterPairKey']!.first,
          unittest.equals(arg_filterParams_parameterPairKey),
        );
        unittest.expect(
          queryMap['filterParams.parameterPairValue']!.first,
          unittest.equals(arg_filterParams_parameterPairValue),
        );
        unittest.expect(
          queryMap['filterParams.parameterType']!.first,
          unittest.equals(arg_filterParams_parameterType),
        );
        unittest.expect(
          queryMap['filterParams.parameterValue']!.first,
          unittest.equals(arg_filterParams_parameterValue),
        );
        unittest.expect(
          queryMap['filterParams.startTime']!.first,
          unittest.equals(arg_filterParams_startTime),
        );
        unittest.expect(
          queryMap['filterParams.taskStatuses']!,
          unittest.equals(arg_filterParams_taskStatuses),
        );
        unittest.expect(
          queryMap['filterParams.workflowName']!.first,
          unittest.equals(arg_filterParams_workflowName),
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['refreshAcl']!.first,
          unittest.equals('$arg_refreshAcl'),
        );
        unittest.expect(
          queryMap['snapshotMetadataWithoutParams']!.first,
          unittest.equals('$arg_snapshotMetadataWithoutParams'),
        );
        unittest.expect(
          queryMap['truncateParams']!.first,
          unittest.equals('$arg_truncateParams'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListExecutionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          filterParams_customFilter: arg_filterParams_customFilter,
          filterParams_endTime: arg_filterParams_endTime,
          filterParams_eventStatuses: arg_filterParams_eventStatuses,
          filterParams_executionId: arg_filterParams_executionId,
          filterParams_parameterKey: arg_filterParams_parameterKey,
          filterParams_parameterPairKey: arg_filterParams_parameterPairKey,
          filterParams_parameterPairValue: arg_filterParams_parameterPairValue,
          filterParams_parameterType: arg_filterParams_parameterType,
          filterParams_parameterValue: arg_filterParams_parameterValue,
          filterParams_startTime: arg_filterParams_startTime,
          filterParams_taskStatuses: arg_filterParams_taskStatuses,
          filterParams_workflowName: arg_filterParams_workflowName,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          refreshAcl: arg_refreshAcl,
          snapshotMetadataWithoutParams: arg_snapshotMetadataWithoutParams,
          truncateParams: arg_truncateParams,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListExecutionsResponse(
          response as api.GoogleCloudIntegrationsV1alphaListExecutionsResponse);
    });

    unittest.test('method--replay', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.executions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaReplayExecutionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaReplayExecutionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaReplayExecutionRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaReplayExecutionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.replay(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaReplayExecutionResponse(response
          as api.GoogleCloudIntegrationsV1alphaReplayExecutionResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsIntegrationsExecutionsSuspensionsResource',
      () {
    unittest.test('method--lift', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .executions
          .suspensions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaLiftSuspensionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaLiftSuspensionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaLiftSuspensionRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaLiftSuspensionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.lift(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaLiftSuspensionResponse(
          response as api.GoogleCloudIntegrationsV1alphaLiftSuspensionResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .executions
          .suspensions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListSuspensionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListSuspensionsResponse(response
          as api.GoogleCloudIntegrationsV1alphaListSuspensionsResponse);
    });

    unittest.test('method--resolve', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .executions
          .suspensions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaResolveSuspensionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaResolveSuspensionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaResolveSuspensionRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaResolveSuspensionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.resolve(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaResolveSuspensionResponse(response
          as api.GoogleCloudIntegrationsV1alphaResolveSuspensionResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsIntegrationsVersionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.versions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaIntegrationVersion();
      final arg_parent = 'foo';
      final arg_createSampleIntegrations = true;
      final arg_newIntegration = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaIntegrationVersion(obj);

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
          queryMap['createSampleIntegrations']!.first,
          unittest.equals('$arg_createSampleIntegrations'),
        );
        unittest.expect(
          queryMap['newIntegration']!.first,
          unittest.equals('$arg_newIntegration'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaIntegrationVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          createSampleIntegrations: arg_createSampleIntegrations,
          newIntegration: arg_newIntegration,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
          response as api.GoogleCloudIntegrationsV1alphaIntegrationVersion);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.versions;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--download', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.versions;
      final arg_name = 'foo';
      final arg_fileFormat = 'foo';
      final arg_files = buildUnnamed161();
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
          queryMap['fileFormat']!.first,
          unittest.equals(arg_fileFormat),
        );
        unittest.expect(
          queryMap['files']!,
          unittest.equals(arg_files),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.download(arg_name,
          fileFormat: arg_fileFormat, files: arg_files, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse(
          response as api
              .GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse);
    });

    unittest.test('method--downloadJsonPackage', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.versions;
      final arg_name = 'foo';
      final arg_files = buildUnnamed162();
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
          queryMap['files']!,
          unittest.equals(arg_files),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.downloadJsonPackage(arg_name,
          files: arg_files, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse(response
          as api.GoogleCloudIntegrationsV1alphaDownloadJsonPackageResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.versions;
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaIntegrationVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
          response as api.GoogleCloudIntegrationsV1alphaIntegrationVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.versions;
      final arg_parent = 'foo';
      final arg_fieldMask = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          queryMap['fieldMask']!.first,
          unittest.equals(arg_fieldMask),
        );
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          fieldMask: arg_fieldMask,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse(
          response as api
              .GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.versions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaIntegrationVersion();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaIntegrationVersion(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaIntegrationVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
          response as api.GoogleCloudIntegrationsV1alphaIntegrationVersion);
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.versions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest(
            obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.publish(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse(
          response as api
              .GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse);
    });

    unittest.test('method--unpublish', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.versions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest(
            obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.unpublish(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--upload', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.integrations.versions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse(
          response as api
              .GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsIntegrationsVersionsTestCasesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .versions
          .testCases;
      final arg_request = buildGoogleCloudIntegrationsV1alphaTestCase();
      final arg_parent = 'foo';
      final arg_testCaseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaTestCase.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaTestCase(obj);

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
          queryMap['testCaseId']!.first,
          unittest.equals(arg_testCaseId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudIntegrationsV1alphaTestCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          testCaseId: arg_testCaseId, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaTestCase(
          response as api.GoogleCloudIntegrationsV1alphaTestCase);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .versions
          .testCases;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--download', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .versions
          .testCases;
      final arg_name = 'foo';
      final arg_fileFormat = 'foo';
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
          queryMap['fileFormat']!.first,
          unittest.equals(arg_fileFormat),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.download(arg_name,
          fileFormat: arg_fileFormat, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaDownloadTestCaseResponse(response
          as api.GoogleCloudIntegrationsV1alphaDownloadTestCaseResponse);
    });

    unittest.test('method--executeTest', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .versions
          .testCases;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest();
      final arg_testCaseName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaExecuteTestCaseRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaExecuteTestCaseRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.executeTest(arg_request, arg_testCaseName,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaExecuteTestCaseResponse(response
          as api.GoogleCloudIntegrationsV1alphaExecuteTestCaseResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .versions
          .testCases;
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
        final resp =
            convert.json.encode(buildGoogleCloudIntegrationsV1alphaTestCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaTestCase(
          response as api.GoogleCloudIntegrationsV1alphaTestCase);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .versions
          .testCases;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaListTestCasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListTestCasesResponse(
          response as api.GoogleCloudIntegrationsV1alphaListTestCasesResponse);
    });

    unittest.test('method--listExecutions', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .versions
          .testCases;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
      final arg_truncateParams = true;
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['truncateParams']!.first,
          unittest.equals('$arg_truncateParams'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listExecutions(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          truncateParams: arg_truncateParams,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse(response
          as api.GoogleCloudIntegrationsV1alphaListTestCaseExecutionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .versions
          .testCases;
      final arg_request = buildGoogleCloudIntegrationsV1alphaTestCase();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaTestCase.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaTestCase(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudIntegrationsV1alphaTestCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaTestCase(
          response as api.GoogleCloudIntegrationsV1alphaTestCase);
    });

    unittest.test('method--takeoverEditLock', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .versions
          .testCases;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaTakeoverTestCaseEditLockRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudIntegrationsV1alphaTestCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.takeoverEditLock(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaTestCase(
          response as api.GoogleCloudIntegrationsV1alphaTestCase);
    });

    unittest.test('method--upload', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .integrations
          .versions
          .testCases;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaUploadTestCaseRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaUploadTestCaseRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaUploadTestCaseRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaUploadTestCaseResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaUploadTestCaseResponse(
          response as api.GoogleCloudIntegrationsV1alphaUploadTestCaseResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsProductsAuthConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.authConfigs;
      final arg_request = buildGoogleCloudIntegrationsV1alphaAuthConfig();
      final arg_parent = 'foo';
      final arg_clientCertificate_encryptedPrivateKey = 'foo';
      final arg_clientCertificate_passphrase = 'foo';
      final arg_clientCertificate_sslCertificate = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaAuthConfig(obj);

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
          queryMap['clientCertificate.encryptedPrivateKey']!.first,
          unittest.equals(arg_clientCertificate_encryptedPrivateKey),
        );
        unittest.expect(
          queryMap['clientCertificate.passphrase']!.first,
          unittest.equals(arg_clientCertificate_passphrase),
        );
        unittest.expect(
          queryMap['clientCertificate.sslCertificate']!.first,
          unittest.equals(arg_clientCertificate_sslCertificate),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaAuthConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          clientCertificate_encryptedPrivateKey:
              arg_clientCertificate_encryptedPrivateKey,
          clientCertificate_passphrase: arg_clientCertificate_passphrase,
          clientCertificate_sslCertificate:
              arg_clientCertificate_sslCertificate,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaAuthConfig(
          response as api.GoogleCloudIntegrationsV1alphaAuthConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.authConfigs;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.authConfigs;
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaAuthConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaAuthConfig(
          response as api.GoogleCloudIntegrationsV1alphaAuthConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.authConfigs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListAuthConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListAuthConfigsResponse(response
          as api.GoogleCloudIntegrationsV1alphaListAuthConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.authConfigs;
      final arg_request = buildGoogleCloudIntegrationsV1alphaAuthConfig();
      final arg_name = 'foo';
      final arg_clientCertificate_encryptedPrivateKey = 'foo';
      final arg_clientCertificate_passphrase = 'foo';
      final arg_clientCertificate_sslCertificate = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaAuthConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaAuthConfig(obj);

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
          queryMap['clientCertificate.encryptedPrivateKey']!.first,
          unittest.equals(arg_clientCertificate_encryptedPrivateKey),
        );
        unittest.expect(
          queryMap['clientCertificate.passphrase']!.first,
          unittest.equals(arg_clientCertificate_passphrase),
        );
        unittest.expect(
          queryMap['clientCertificate.sslCertificate']!.first,
          unittest.equals(arg_clientCertificate_sslCertificate),
        );
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaAuthConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          clientCertificate_encryptedPrivateKey:
              arg_clientCertificate_encryptedPrivateKey,
          clientCertificate_passphrase: arg_clientCertificate_passphrase,
          clientCertificate_sslCertificate:
              arg_clientCertificate_sslCertificate,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaAuthConfig(
          response as api.GoogleCloudIntegrationsV1alphaAuthConfig);
    });
  });

  unittest.group('resource-ProjectsLocationsProductsCertificatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.certificates;
      final arg_request = buildGoogleCloudIntegrationsV1alphaCertificate();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaCertificate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaCertificate(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaCertificate(
          response as api.GoogleCloudIntegrationsV1alphaCertificate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.certificates;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.certificates;
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaCertificate(
          response as api.GoogleCloudIntegrationsV1alphaCertificate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.certificates;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListCertificatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListCertificatesResponse(response
          as api.GoogleCloudIntegrationsV1alphaListCertificatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.certificates;
      final arg_request = buildGoogleCloudIntegrationsV1alphaCertificate();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaCertificate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaCertificate(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaCertificate(
          response as api.GoogleCloudIntegrationsV1alphaCertificate);
    });
  });

  unittest.group('resource-ProjectsLocationsProductsCloudFunctionsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.cloudFunctions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaCreateCloudFunctionRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse(response
          as api.GoogleCloudIntegrationsV1alphaCreateCloudFunctionResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsProductsIntegrationsResource', () {
    unittest.test('method--execute', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.integrations;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaExecuteIntegrationsRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.execute(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse(response
          as api.GoogleCloudIntegrationsV1alphaExecuteIntegrationsResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.integrations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListIntegrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListIntegrationsResponse(response
          as api.GoogleCloudIntegrationsV1alphaListIntegrationsResponse);
    });

    unittest.test('method--schedule', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.integrations;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaScheduleIntegrationsRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.schedule(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse(response
          as api.GoogleCloudIntegrationsV1alphaScheduleIntegrationsResponse);
    });

    unittest.test('method--test', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.integrations;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaTestIntegrationsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaTestIntegrationsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaTestIntegrationsRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaTestIntegrationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.test(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaTestIntegrationsResponse(response
          as api.GoogleCloudIntegrationsV1alphaTestIntegrationsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsProductsIntegrationsExecutionsResource', () {
    unittest.test('method--download', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .executions;
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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaDownloadExecutionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.download(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaDownloadExecutionResponse(response
          as api.GoogleCloudIntegrationsV1alphaDownloadExecutionResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .executions;
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
        final resp =
            convert.json.encode(buildGoogleCloudIntegrationsV1alphaExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaExecution(
          response as api.GoogleCloudIntegrationsV1alphaExecution);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .executions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_filterParams_customFilter = 'foo';
      final arg_filterParams_endTime = 'foo';
      final arg_filterParams_eventStatuses = buildUnnamed163();
      final arg_filterParams_executionId = 'foo';
      final arg_filterParams_parameterKey = 'foo';
      final arg_filterParams_parameterPairKey = 'foo';
      final arg_filterParams_parameterPairValue = 'foo';
      final arg_filterParams_parameterType = 'foo';
      final arg_filterParams_parameterValue = 'foo';
      final arg_filterParams_startTime = 'foo';
      final arg_filterParams_taskStatuses = buildUnnamed164();
      final arg_filterParams_workflowName = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
      final arg_refreshAcl = true;
      final arg_snapshotMetadataWithoutParams = true;
      final arg_truncateParams = true;
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['filterParams.customFilter']!.first,
          unittest.equals(arg_filterParams_customFilter),
        );
        unittest.expect(
          queryMap['filterParams.endTime']!.first,
          unittest.equals(arg_filterParams_endTime),
        );
        unittest.expect(
          queryMap['filterParams.eventStatuses']!,
          unittest.equals(arg_filterParams_eventStatuses),
        );
        unittest.expect(
          queryMap['filterParams.executionId']!.first,
          unittest.equals(arg_filterParams_executionId),
        );
        unittest.expect(
          queryMap['filterParams.parameterKey']!.first,
          unittest.equals(arg_filterParams_parameterKey),
        );
        unittest.expect(
          queryMap['filterParams.parameterPairKey']!.first,
          unittest.equals(arg_filterParams_parameterPairKey),
        );
        unittest.expect(
          queryMap['filterParams.parameterPairValue']!.first,
          unittest.equals(arg_filterParams_parameterPairValue),
        );
        unittest.expect(
          queryMap['filterParams.parameterType']!.first,
          unittest.equals(arg_filterParams_parameterType),
        );
        unittest.expect(
          queryMap['filterParams.parameterValue']!.first,
          unittest.equals(arg_filterParams_parameterValue),
        );
        unittest.expect(
          queryMap['filterParams.startTime']!.first,
          unittest.equals(arg_filterParams_startTime),
        );
        unittest.expect(
          queryMap['filterParams.taskStatuses']!,
          unittest.equals(arg_filterParams_taskStatuses),
        );
        unittest.expect(
          queryMap['filterParams.workflowName']!.first,
          unittest.equals(arg_filterParams_workflowName),
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['refreshAcl']!.first,
          unittest.equals('$arg_refreshAcl'),
        );
        unittest.expect(
          queryMap['snapshotMetadataWithoutParams']!.first,
          unittest.equals('$arg_snapshotMetadataWithoutParams'),
        );
        unittest.expect(
          queryMap['truncateParams']!.first,
          unittest.equals('$arg_truncateParams'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListExecutionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          filterParams_customFilter: arg_filterParams_customFilter,
          filterParams_endTime: arg_filterParams_endTime,
          filterParams_eventStatuses: arg_filterParams_eventStatuses,
          filterParams_executionId: arg_filterParams_executionId,
          filterParams_parameterKey: arg_filterParams_parameterKey,
          filterParams_parameterPairKey: arg_filterParams_parameterPairKey,
          filterParams_parameterPairValue: arg_filterParams_parameterPairValue,
          filterParams_parameterType: arg_filterParams_parameterType,
          filterParams_parameterValue: arg_filterParams_parameterValue,
          filterParams_startTime: arg_filterParams_startTime,
          filterParams_taskStatuses: arg_filterParams_taskStatuses,
          filterParams_workflowName: arg_filterParams_workflowName,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          refreshAcl: arg_refreshAcl,
          snapshotMetadataWithoutParams: arg_snapshotMetadataWithoutParams,
          truncateParams: arg_truncateParams,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListExecutionsResponse(
          response as api.GoogleCloudIntegrationsV1alphaListExecutionsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsProductsIntegrationsExecutionsSuspensionsResource',
      () {
    unittest.test('method--lift', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .executions
          .suspensions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaLiftSuspensionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaLiftSuspensionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaLiftSuspensionRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaLiftSuspensionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.lift(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaLiftSuspensionResponse(
          response as api.GoogleCloudIntegrationsV1alphaLiftSuspensionResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .executions
          .suspensions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListSuspensionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListSuspensionsResponse(response
          as api.GoogleCloudIntegrationsV1alphaListSuspensionsResponse);
    });

    unittest.test('method--resolve', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .executions
          .suspensions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaResolveSuspensionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaResolveSuspensionRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaResolveSuspensionRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaResolveSuspensionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.resolve(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaResolveSuspensionResponse(response
          as api.GoogleCloudIntegrationsV1alphaResolveSuspensionResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsProductsIntegrationsVersionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .versions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaIntegrationVersion();
      final arg_parent = 'foo';
      final arg_createSampleIntegrations = true;
      final arg_newIntegration = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaIntegrationVersion(obj);

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
          queryMap['createSampleIntegrations']!.first,
          unittest.equals('$arg_createSampleIntegrations'),
        );
        unittest.expect(
          queryMap['newIntegration']!.first,
          unittest.equals('$arg_newIntegration'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaIntegrationVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          createSampleIntegrations: arg_createSampleIntegrations,
          newIntegration: arg_newIntegration,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
          response as api.GoogleCloudIntegrationsV1alphaIntegrationVersion);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .versions;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--download', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .versions;
      final arg_name = 'foo';
      final arg_fileFormat = 'foo';
      final arg_files = buildUnnamed165();
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
          queryMap['fileFormat']!.first,
          unittest.equals(arg_fileFormat),
        );
        unittest.expect(
          queryMap['files']!,
          unittest.equals(arg_files),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.download(arg_name,
          fileFormat: arg_fileFormat, files: arg_files, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse(
          response as api
              .GoogleCloudIntegrationsV1alphaDownloadIntegrationVersionResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .versions;
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaIntegrationVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
          response as api.GoogleCloudIntegrationsV1alphaIntegrationVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .versions;
      final arg_parent = 'foo';
      final arg_fieldMask = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          queryMap['fieldMask']!.first,
          unittest.equals(arg_fieldMask),
        );
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          fieldMask: arg_fieldMask,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse(
          response as api
              .GoogleCloudIntegrationsV1alphaListIntegrationVersionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .versions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaIntegrationVersion();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaIntegrationVersion.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaIntegrationVersion(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaIntegrationVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaIntegrationVersion(
          response as api.GoogleCloudIntegrationsV1alphaIntegrationVersion);
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .versions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaPublishIntegrationVersionRequest(
            obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.publish(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse(
          response as api
              .GoogleCloudIntegrationsV1alphaPublishIntegrationVersionResponse);
    });

    unittest.test('method--takeoverEditLock', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .versions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest();
      final arg_integrationVersion = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaTakeoverEditLockRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaTakeoverEditLockRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.takeoverEditLock(
          arg_request, arg_integrationVersion,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaTakeoverEditLockResponse(response
          as api.GoogleCloudIntegrationsV1alphaTakeoverEditLockResponse);
    });

    unittest.test('method--unpublish', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .versions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaUnpublishIntegrationVersionRequest(
            obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.unpublish(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--upload', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .integrations
          .versions;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaUploadIntegrationVersionRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse(
          response as api
              .GoogleCloudIntegrationsV1alphaUploadIntegrationVersionResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsProductsSfdcInstancesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.sfdcInstances;
      final arg_request = buildGoogleCloudIntegrationsV1alphaSfdcInstance();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaSfdcInstance(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaSfdcInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSfdcInstance(
          response as api.GoogleCloudIntegrationsV1alphaSfdcInstance);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.sfdcInstances;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.sfdcInstances;
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaSfdcInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSfdcInstance(
          response as api.GoogleCloudIntegrationsV1alphaSfdcInstance);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.sfdcInstances;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse(response
          as api.GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.IntegrationsApi(mock).projects.locations.products.sfdcInstances;
      final arg_request = buildGoogleCloudIntegrationsV1alphaSfdcInstance();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaSfdcInstance(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaSfdcInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSfdcInstance(
          response as api.GoogleCloudIntegrationsV1alphaSfdcInstance);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsProductsSfdcInstancesSfdcChannelsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .sfdcInstances
          .sfdcChannels;
      final arg_request = buildGoogleCloudIntegrationsV1alphaSfdcChannel();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaSfdcChannel(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaSfdcChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSfdcChannel(
          response as api.GoogleCloudIntegrationsV1alphaSfdcChannel);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .sfdcInstances
          .sfdcChannels;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .sfdcInstances
          .sfdcChannels;
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaSfdcChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSfdcChannel(
          response as api.GoogleCloudIntegrationsV1alphaSfdcChannel);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .sfdcInstances
          .sfdcChannels;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse(response
          as api.GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .products
          .sfdcInstances
          .sfdcChannels;
      final arg_request = buildGoogleCloudIntegrationsV1alphaSfdcChannel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaSfdcChannel(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaSfdcChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSfdcChannel(
          response as api.GoogleCloudIntegrationsV1alphaSfdcChannel);
    });
  });

  unittest.group('resource-ProjectsLocationsSfdcInstancesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.sfdcInstances;
      final arg_request = buildGoogleCloudIntegrationsV1alphaSfdcInstance();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaSfdcInstance(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaSfdcInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSfdcInstance(
          response as api.GoogleCloudIntegrationsV1alphaSfdcInstance);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.sfdcInstances;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.sfdcInstances;
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaSfdcInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSfdcInstance(
          response as api.GoogleCloudIntegrationsV1alphaSfdcInstance);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.sfdcInstances;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListSfdcInstancesResponse(response
          as api.GoogleCloudIntegrationsV1alphaListSfdcInstancesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.sfdcInstances;
      final arg_request = buildGoogleCloudIntegrationsV1alphaSfdcInstance();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaSfdcInstance.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaSfdcInstance(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaSfdcInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSfdcInstance(
          response as api.GoogleCloudIntegrationsV1alphaSfdcInstance);
    });
  });

  unittest.group('resource-ProjectsLocationsSfdcInstancesSfdcChannelsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .sfdcInstances
          .sfdcChannels;
      final arg_request = buildGoogleCloudIntegrationsV1alphaSfdcChannel();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaSfdcChannel(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaSfdcChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSfdcChannel(
          response as api.GoogleCloudIntegrationsV1alphaSfdcChannel);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .sfdcInstances
          .sfdcChannels;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .sfdcInstances
          .sfdcChannels;
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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaSfdcChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSfdcChannel(
          response as api.GoogleCloudIntegrationsV1alphaSfdcChannel);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .sfdcInstances
          .sfdcChannels;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListSfdcChannelsResponse(response
          as api.GoogleCloudIntegrationsV1alphaListSfdcChannelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock)
          .projects
          .locations
          .sfdcInstances
          .sfdcChannels;
      final arg_request = buildGoogleCloudIntegrationsV1alphaSfdcChannel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaSfdcChannel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaSfdcChannel(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaSfdcChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSfdcChannel(
          response as api.GoogleCloudIntegrationsV1alphaSfdcChannel);
    });
  });

  unittest.group('resource-ProjectsLocationsTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.templates;
      final arg_request = buildGoogleCloudIntegrationsV1alphaTemplate();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaTemplate(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudIntegrationsV1alphaTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaTemplate(
          response as api.GoogleCloudIntegrationsV1alphaTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.templates;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--download', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.templates;
      final arg_name = 'foo';
      final arg_fileFormat = 'foo';
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
          queryMap['fileFormat']!.first,
          unittest.equals(arg_fileFormat),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaDownloadTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.download(arg_name,
          fileFormat: arg_fileFormat, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaDownloadTemplateResponse(response
          as api.GoogleCloudIntegrationsV1alphaDownloadTemplateResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.templates;
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
        final resp =
            convert.json.encode(buildGoogleCloudIntegrationsV1alphaTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaTemplate(
          response as api.GoogleCloudIntegrationsV1alphaTemplate);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.templates;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaImportTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaImportTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaImportTemplateRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaImportTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaImportTemplateResponse(
          response as api.GoogleCloudIntegrationsV1alphaImportTemplateResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.templates;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaListTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaListTemplatesResponse(
          response as api.GoogleCloudIntegrationsV1alphaListTemplatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.templates;
      final arg_request = buildGoogleCloudIntegrationsV1alphaTemplate();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudIntegrationsV1alphaTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaTemplate(obj);

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
        final resp =
            convert.json.encode(buildGoogleCloudIntegrationsV1alphaTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaTemplate(
          response as api.GoogleCloudIntegrationsV1alphaTemplate);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.templates;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaSearchTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaSearchTemplatesResponse(response
          as api.GoogleCloudIntegrationsV1alphaSearchTemplatesResponse);
    });

    unittest.test('method--share', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.templates;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaShareTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaShareTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaShareTemplateRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.share(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--unshare', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.templates;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaUnshareTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaUnshareTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaUnshareTemplateRequest(obj);

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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.unshare(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--upload', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.templates;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaUploadTemplateRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaUploadTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaUploadTemplateRequest(obj);

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
        final resp = convert.json.encode(
            buildGoogleCloudIntegrationsV1alphaUploadTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaUploadTemplateResponse(
          response as api.GoogleCloudIntegrationsV1alphaUploadTemplateResponse);
    });

    unittest.test('method--use', () async {
      final mock = HttpServerMock();
      final res = api.IntegrationsApi(mock).projects.locations.templates;
      final arg_request =
          buildGoogleCloudIntegrationsV1alphaUseTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudIntegrationsV1alphaUseTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudIntegrationsV1alphaUseTemplateRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudIntegrationsV1alphaUseTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.use(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudIntegrationsV1alphaUseTemplateResponse(
          response as api.GoogleCloudIntegrationsV1alphaUseTemplateResponse);
    });
  });
}
