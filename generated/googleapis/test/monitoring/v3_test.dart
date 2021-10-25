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

import 'package:googleapis/monitoring/v3.dart' as api;
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

core.int buildCounterAggregation = 0;
api.Aggregation buildAggregation() {
  final o = api.Aggregation();
  buildCounterAggregation++;
  if (buildCounterAggregation < 3) {
    o.alignmentPeriod = 'foo';
    o.crossSeriesReducer = 'foo';
    o.groupByFields = buildUnnamed0();
    o.perSeriesAligner = 'foo';
  }
  buildCounterAggregation--;
  return o;
}

void checkAggregation(api.Aggregation o) {
  buildCounterAggregation++;
  if (buildCounterAggregation < 3) {
    unittest.expect(
      o.alignmentPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crossSeriesReducer!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.groupByFields!);
    unittest.expect(
      o.perSeriesAligner!,
      unittest.equals('foo'),
    );
  }
  buildCounterAggregation--;
}

core.List<api.Condition> buildUnnamed1() => [
      buildCondition(),
      buildCondition(),
    ];

void checkUnnamed1(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
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

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
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

core.int buildCounterAlertPolicy = 0;
api.AlertPolicy buildAlertPolicy() {
  final o = api.AlertPolicy();
  buildCounterAlertPolicy++;
  if (buildCounterAlertPolicy < 3) {
    o.alertStrategy = buildAlertStrategy();
    o.combiner = 'foo';
    o.conditions = buildUnnamed1();
    o.creationRecord = buildMutationRecord();
    o.displayName = 'foo';
    o.documentation = buildDocumentation();
    o.enabled = true;
    o.mutationRecord = buildMutationRecord();
    o.name = 'foo';
    o.notificationChannels = buildUnnamed2();
    o.userLabels = buildUnnamed3();
    o.validity = buildStatus();
  }
  buildCounterAlertPolicy--;
  return o;
}

void checkAlertPolicy(api.AlertPolicy o) {
  buildCounterAlertPolicy++;
  if (buildCounterAlertPolicy < 3) {
    checkAlertStrategy(o.alertStrategy!);
    unittest.expect(
      o.combiner!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.conditions!);
    checkMutationRecord(o.creationRecord!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkDocumentation(o.documentation!);
    unittest.expect(o.enabled!, unittest.isTrue);
    checkMutationRecord(o.mutationRecord!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.notificationChannels!);
    checkUnnamed3(o.userLabels!);
    checkStatus(o.validity!);
  }
  buildCounterAlertPolicy--;
}

core.int buildCounterAlertStrategy = 0;
api.AlertStrategy buildAlertStrategy() {
  final o = api.AlertStrategy();
  buildCounterAlertStrategy++;
  if (buildCounterAlertStrategy < 3) {
    o.autoClose = 'foo';
    o.notificationRateLimit = buildNotificationRateLimit();
  }
  buildCounterAlertStrategy--;
  return o;
}

void checkAlertStrategy(api.AlertStrategy o) {
  buildCounterAlertStrategy++;
  if (buildCounterAlertStrategy < 3) {
    unittest.expect(
      o.autoClose!,
      unittest.equals('foo'),
    );
    checkNotificationRateLimit(o.notificationRateLimit!);
  }
  buildCounterAlertStrategy--;
}

core.int buildCounterAppEngine = 0;
api.AppEngine buildAppEngine() {
  final o = api.AppEngine();
  buildCounterAppEngine++;
  if (buildCounterAppEngine < 3) {
    o.moduleId = 'foo';
  }
  buildCounterAppEngine--;
  return o;
}

void checkAppEngine(api.AppEngine o) {
  buildCounterAppEngine++;
  if (buildCounterAppEngine < 3) {
    unittest.expect(
      o.moduleId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppEngine--;
}

core.int buildCounterAvailabilityCriteria = 0;
api.AvailabilityCriteria buildAvailabilityCriteria() {
  final o = api.AvailabilityCriteria();
  buildCounterAvailabilityCriteria++;
  if (buildCounterAvailabilityCriteria < 3) {}
  buildCounterAvailabilityCriteria--;
  return o;
}

void checkAvailabilityCriteria(api.AvailabilityCriteria o) {
  buildCounterAvailabilityCriteria++;
  if (buildCounterAvailabilityCriteria < 3) {}
  buildCounterAvailabilityCriteria--;
}

core.int buildCounterBasicAuthentication = 0;
api.BasicAuthentication buildBasicAuthentication() {
  final o = api.BasicAuthentication();
  buildCounterBasicAuthentication++;
  if (buildCounterBasicAuthentication < 3) {
    o.password = 'foo';
    o.username = 'foo';
  }
  buildCounterBasicAuthentication--;
  return o;
}

void checkBasicAuthentication(api.BasicAuthentication o) {
  buildCounterBasicAuthentication++;
  if (buildCounterBasicAuthentication < 3) {
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterBasicAuthentication--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterBasicSli = 0;
api.BasicSli buildBasicSli() {
  final o = api.BasicSli();
  buildCounterBasicSli++;
  if (buildCounterBasicSli < 3) {
    o.availability = buildAvailabilityCriteria();
    o.latency = buildLatencyCriteria();
    o.location = buildUnnamed4();
    o.method = buildUnnamed5();
    o.version = buildUnnamed6();
  }
  buildCounterBasicSli--;
  return o;
}

void checkBasicSli(api.BasicSli o) {
  buildCounterBasicSli++;
  if (buildCounterBasicSli < 3) {
    checkAvailabilityCriteria(o.availability!);
    checkLatencyCriteria(o.latency!);
    checkUnnamed4(o.location!);
    checkUnnamed5(o.method!);
    checkUnnamed6(o.version!);
  }
  buildCounterBasicSli--;
}

core.int buildCounterBucketOptions = 0;
api.BucketOptions buildBucketOptions() {
  final o = api.BucketOptions();
  buildCounterBucketOptions++;
  if (buildCounterBucketOptions < 3) {
    o.explicitBuckets = buildExplicit();
    o.exponentialBuckets = buildExponential();
    o.linearBuckets = buildLinear();
  }
  buildCounterBucketOptions--;
  return o;
}

void checkBucketOptions(api.BucketOptions o) {
  buildCounterBucketOptions++;
  if (buildCounterBucketOptions < 3) {
    checkExplicit(o.explicitBuckets!);
    checkExponential(o.exponentialBuckets!);
    checkLinear(o.linearBuckets!);
  }
  buildCounterBucketOptions--;
}

core.int buildCounterCloudEndpoints = 0;
api.CloudEndpoints buildCloudEndpoints() {
  final o = api.CloudEndpoints();
  buildCounterCloudEndpoints++;
  if (buildCounterCloudEndpoints < 3) {
    o.service = 'foo';
  }
  buildCounterCloudEndpoints--;
  return o;
}

void checkCloudEndpoints(api.CloudEndpoints o) {
  buildCounterCloudEndpoints++;
  if (buildCounterCloudEndpoints < 3) {
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudEndpoints--;
}

core.int buildCounterClusterIstio = 0;
api.ClusterIstio buildClusterIstio() {
  final o = api.ClusterIstio();
  buildCounterClusterIstio++;
  if (buildCounterClusterIstio < 3) {
    o.clusterName = 'foo';
    o.location = 'foo';
    o.serviceName = 'foo';
    o.serviceNamespace = 'foo';
  }
  buildCounterClusterIstio--;
  return o;
}

void checkClusterIstio(api.ClusterIstio o) {
  buildCounterClusterIstio++;
  if (buildCounterClusterIstio < 3) {
    unittest.expect(
      o.clusterName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceNamespace!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterIstio--;
}

core.Map<core.String, api.TypedValue> buildUnnamed7() => {
      'x': buildTypedValue(),
      'y': buildTypedValue(),
    };

void checkUnnamed7(core.Map<core.String, api.TypedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTypedValue(o['x']!);
  checkTypedValue(o['y']!);
}

core.List<api.CollectdValue> buildUnnamed8() => [
      buildCollectdValue(),
      buildCollectdValue(),
    ];

void checkUnnamed8(core.List<api.CollectdValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectdValue(o[0]);
  checkCollectdValue(o[1]);
}

core.int buildCounterCollectdPayload = 0;
api.CollectdPayload buildCollectdPayload() {
  final o = api.CollectdPayload();
  buildCounterCollectdPayload++;
  if (buildCounterCollectdPayload < 3) {
    o.endTime = 'foo';
    o.metadata = buildUnnamed7();
    o.plugin = 'foo';
    o.pluginInstance = 'foo';
    o.startTime = 'foo';
    o.type = 'foo';
    o.typeInstance = 'foo';
    o.values = buildUnnamed8();
  }
  buildCounterCollectdPayload--;
  return o;
}

void checkCollectdPayload(api.CollectdPayload o) {
  buildCounterCollectdPayload++;
  if (buildCounterCollectdPayload < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.metadata!);
    unittest.expect(
      o.plugin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pluginInstance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.typeInstance!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.values!);
  }
  buildCounterCollectdPayload--;
}

core.List<api.CollectdValueError> buildUnnamed9() => [
      buildCollectdValueError(),
      buildCollectdValueError(),
    ];

void checkUnnamed9(core.List<api.CollectdValueError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectdValueError(o[0]);
  checkCollectdValueError(o[1]);
}

core.int buildCounterCollectdPayloadError = 0;
api.CollectdPayloadError buildCollectdPayloadError() {
  final o = api.CollectdPayloadError();
  buildCounterCollectdPayloadError++;
  if (buildCounterCollectdPayloadError < 3) {
    o.error = buildStatus();
    o.index = 42;
    o.valueErrors = buildUnnamed9();
  }
  buildCounterCollectdPayloadError--;
  return o;
}

void checkCollectdPayloadError(api.CollectdPayloadError o) {
  buildCounterCollectdPayloadError++;
  if (buildCounterCollectdPayloadError < 3) {
    checkStatus(o.error!);
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    checkUnnamed9(o.valueErrors!);
  }
  buildCounterCollectdPayloadError--;
}

core.int buildCounterCollectdValue = 0;
api.CollectdValue buildCollectdValue() {
  final o = api.CollectdValue();
  buildCounterCollectdValue++;
  if (buildCounterCollectdValue < 3) {
    o.dataSourceName = 'foo';
    o.dataSourceType = 'foo';
    o.value = buildTypedValue();
  }
  buildCounterCollectdValue--;
  return o;
}

void checkCollectdValue(api.CollectdValue o) {
  buildCounterCollectdValue++;
  if (buildCounterCollectdValue < 3) {
    unittest.expect(
      o.dataSourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataSourceType!,
      unittest.equals('foo'),
    );
    checkTypedValue(o.value!);
  }
  buildCounterCollectdValue--;
}

core.int buildCounterCollectdValueError = 0;
api.CollectdValueError buildCollectdValueError() {
  final o = api.CollectdValueError();
  buildCounterCollectdValueError++;
  if (buildCounterCollectdValueError < 3) {
    o.error = buildStatus();
    o.index = 42;
  }
  buildCounterCollectdValueError--;
  return o;
}

void checkCollectdValueError(api.CollectdValueError o) {
  buildCounterCollectdValueError++;
  if (buildCounterCollectdValueError < 3) {
    checkStatus(o.error!);
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
  }
  buildCounterCollectdValueError--;
}

core.int buildCounterCondition = 0;
api.Condition buildCondition() {
  final o = api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.conditionAbsent = buildMetricAbsence();
    o.conditionMatchedLog = buildLogMatch();
    o.conditionMonitoringQueryLanguage =
        buildMonitoringQueryLanguageCondition();
    o.conditionThreshold = buildMetricThreshold();
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterCondition--;
  return o;
}

void checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    checkMetricAbsence(o.conditionAbsent!);
    checkLogMatch(o.conditionMatchedLog!);
    checkMonitoringQueryLanguageCondition(o.conditionMonitoringQueryLanguage!);
    checkMetricThreshold(o.conditionThreshold!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterCondition--;
}

core.int buildCounterContentMatcher = 0;
api.ContentMatcher buildContentMatcher() {
  final o = api.ContentMatcher();
  buildCounterContentMatcher++;
  if (buildCounterContentMatcher < 3) {
    o.content = 'foo';
    o.matcher = 'foo';
  }
  buildCounterContentMatcher--;
  return o;
}

void checkContentMatcher(api.ContentMatcher o) {
  buildCounterContentMatcher++;
  if (buildCounterContentMatcher < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matcher!,
      unittest.equals('foo'),
    );
  }
  buildCounterContentMatcher--;
}

core.List<api.CollectdPayload> buildUnnamed10() => [
      buildCollectdPayload(),
      buildCollectdPayload(),
    ];

void checkUnnamed10(core.List<api.CollectdPayload> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectdPayload(o[0]);
  checkCollectdPayload(o[1]);
}

core.int buildCounterCreateCollectdTimeSeriesRequest = 0;
api.CreateCollectdTimeSeriesRequest buildCreateCollectdTimeSeriesRequest() {
  final o = api.CreateCollectdTimeSeriesRequest();
  buildCounterCreateCollectdTimeSeriesRequest++;
  if (buildCounterCreateCollectdTimeSeriesRequest < 3) {
    o.collectdPayloads = buildUnnamed10();
    o.collectdVersion = 'foo';
    o.resource = buildMonitoredResource();
  }
  buildCounterCreateCollectdTimeSeriesRequest--;
  return o;
}

void checkCreateCollectdTimeSeriesRequest(
    api.CreateCollectdTimeSeriesRequest o) {
  buildCounterCreateCollectdTimeSeriesRequest++;
  if (buildCounterCreateCollectdTimeSeriesRequest < 3) {
    checkUnnamed10(o.collectdPayloads!);
    unittest.expect(
      o.collectdVersion!,
      unittest.equals('foo'),
    );
    checkMonitoredResource(o.resource!);
  }
  buildCounterCreateCollectdTimeSeriesRequest--;
}

core.List<api.CollectdPayloadError> buildUnnamed11() => [
      buildCollectdPayloadError(),
      buildCollectdPayloadError(),
    ];

void checkUnnamed11(core.List<api.CollectdPayloadError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectdPayloadError(o[0]);
  checkCollectdPayloadError(o[1]);
}

core.int buildCounterCreateCollectdTimeSeriesResponse = 0;
api.CreateCollectdTimeSeriesResponse buildCreateCollectdTimeSeriesResponse() {
  final o = api.CreateCollectdTimeSeriesResponse();
  buildCounterCreateCollectdTimeSeriesResponse++;
  if (buildCounterCreateCollectdTimeSeriesResponse < 3) {
    o.payloadErrors = buildUnnamed11();
    o.summary = buildCreateTimeSeriesSummary();
  }
  buildCounterCreateCollectdTimeSeriesResponse--;
  return o;
}

void checkCreateCollectdTimeSeriesResponse(
    api.CreateCollectdTimeSeriesResponse o) {
  buildCounterCreateCollectdTimeSeriesResponse++;
  if (buildCounterCreateCollectdTimeSeriesResponse < 3) {
    checkUnnamed11(o.payloadErrors!);
    checkCreateTimeSeriesSummary(o.summary!);
  }
  buildCounterCreateCollectdTimeSeriesResponse--;
}

core.List<api.TimeSeries> buildUnnamed12() => [
      buildTimeSeries(),
      buildTimeSeries(),
    ];

void checkUnnamed12(core.List<api.TimeSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeSeries(o[0]);
  checkTimeSeries(o[1]);
}

core.int buildCounterCreateTimeSeriesRequest = 0;
api.CreateTimeSeriesRequest buildCreateTimeSeriesRequest() {
  final o = api.CreateTimeSeriesRequest();
  buildCounterCreateTimeSeriesRequest++;
  if (buildCounterCreateTimeSeriesRequest < 3) {
    o.timeSeries = buildUnnamed12();
  }
  buildCounterCreateTimeSeriesRequest--;
  return o;
}

void checkCreateTimeSeriesRequest(api.CreateTimeSeriesRequest o) {
  buildCounterCreateTimeSeriesRequest++;
  if (buildCounterCreateTimeSeriesRequest < 3) {
    checkUnnamed12(o.timeSeries!);
  }
  buildCounterCreateTimeSeriesRequest--;
}

core.List<api.Error> buildUnnamed13() => [
      buildError(),
      buildError(),
    ];

void checkUnnamed13(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0]);
  checkError(o[1]);
}

core.int buildCounterCreateTimeSeriesSummary = 0;
api.CreateTimeSeriesSummary buildCreateTimeSeriesSummary() {
  final o = api.CreateTimeSeriesSummary();
  buildCounterCreateTimeSeriesSummary++;
  if (buildCounterCreateTimeSeriesSummary < 3) {
    o.errors = buildUnnamed13();
    o.successPointCount = 42;
    o.totalPointCount = 42;
  }
  buildCounterCreateTimeSeriesSummary--;
  return o;
}

void checkCreateTimeSeriesSummary(api.CreateTimeSeriesSummary o) {
  buildCounterCreateTimeSeriesSummary++;
  if (buildCounterCreateTimeSeriesSummary < 3) {
    checkUnnamed13(o.errors!);
    unittest.expect(
      o.successPointCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalPointCount!,
      unittest.equals(42),
    );
  }
  buildCounterCreateTimeSeriesSummary--;
}

core.int buildCounterCustom = 0;
api.Custom buildCustom() {
  final o = api.Custom();
  buildCounterCustom++;
  if (buildCounterCustom < 3) {}
  buildCounterCustom--;
  return o;
}

void checkCustom(api.Custom o) {
  buildCounterCustom++;
  if (buildCounterCustom < 3) {}
  buildCounterCustom--;
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

core.List<api.Exemplar> buildUnnamed15() => [
      buildExemplar(),
      buildExemplar(),
    ];

void checkUnnamed15(core.List<api.Exemplar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExemplar(o[0]);
  checkExemplar(o[1]);
}

core.int buildCounterDistribution = 0;
api.Distribution buildDistribution() {
  final o = api.Distribution();
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    o.bucketCounts = buildUnnamed14();
    o.bucketOptions = buildBucketOptions();
    o.count = 'foo';
    o.exemplars = buildUnnamed15();
    o.mean = 42.0;
    o.range = buildRange();
    o.sumOfSquaredDeviation = 42.0;
  }
  buildCounterDistribution--;
  return o;
}

void checkDistribution(api.Distribution o) {
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    checkUnnamed14(o.bucketCounts!);
    checkBucketOptions(o.bucketOptions!);
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.exemplars!);
    unittest.expect(
      o.mean!,
      unittest.equals(42.0),
    );
    checkRange(o.range!);
    unittest.expect(
      o.sumOfSquaredDeviation!,
      unittest.equals(42.0),
    );
  }
  buildCounterDistribution--;
}

core.int buildCounterDistributionCut = 0;
api.DistributionCut buildDistributionCut() {
  final o = api.DistributionCut();
  buildCounterDistributionCut++;
  if (buildCounterDistributionCut < 3) {
    o.distributionFilter = 'foo';
    o.range = buildGoogleMonitoringV3Range();
  }
  buildCounterDistributionCut--;
  return o;
}

void checkDistributionCut(api.DistributionCut o) {
  buildCounterDistributionCut++;
  if (buildCounterDistributionCut < 3) {
    unittest.expect(
      o.distributionFilter!,
      unittest.equals('foo'),
    );
    checkGoogleMonitoringV3Range(o.range!);
  }
  buildCounterDistributionCut--;
}

core.int buildCounterDocumentation = 0;
api.Documentation buildDocumentation() {
  final o = api.Documentation();
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    o.content = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterDocumentation--;
  return o;
}

void checkDocumentation(api.Documentation o) {
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDocumentation--;
}

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

core.int buildCounterError = 0;
api.Error buildError() {
  final o = api.Error();
  buildCounterError++;
  if (buildCounterError < 3) {
    o.pointCount = 42;
    o.status = buildStatus();
  }
  buildCounterError--;
  return o;
}

void checkError(api.Error o) {
  buildCounterError++;
  if (buildCounterError < 3) {
    unittest.expect(
      o.pointCount!,
      unittest.equals(42),
    );
    checkStatus(o.status!);
  }
  buildCounterError--;
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed17() => [
      buildUnnamed16(),
      buildUnnamed16(),
    ];

void checkUnnamed17(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed16(o[0]);
  checkUnnamed16(o[1]);
}

core.int buildCounterExemplar = 0;
api.Exemplar buildExemplar() {
  final o = api.Exemplar();
  buildCounterExemplar++;
  if (buildCounterExemplar < 3) {
    o.attachments = buildUnnamed17();
    o.timestamp = 'foo';
    o.value = 42.0;
  }
  buildCounterExemplar--;
  return o;
}

void checkExemplar(api.Exemplar o) {
  buildCounterExemplar++;
  if (buildCounterExemplar < 3) {
    checkUnnamed17(o.attachments!);
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterExemplar--;
}

core.List<core.double> buildUnnamed18() => [
      42.0,
      42.0,
    ];

void checkUnnamed18(core.List<core.double> o) {
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

core.int buildCounterExplicit = 0;
api.Explicit buildExplicit() {
  final o = api.Explicit();
  buildCounterExplicit++;
  if (buildCounterExplicit < 3) {
    o.bounds = buildUnnamed18();
  }
  buildCounterExplicit--;
  return o;
}

void checkExplicit(api.Explicit o) {
  buildCounterExplicit++;
  if (buildCounterExplicit < 3) {
    checkUnnamed18(o.bounds!);
  }
  buildCounterExplicit--;
}

core.int buildCounterExponential = 0;
api.Exponential buildExponential() {
  final o = api.Exponential();
  buildCounterExponential++;
  if (buildCounterExponential < 3) {
    o.growthFactor = 42.0;
    o.numFiniteBuckets = 42;
    o.scale = 42.0;
  }
  buildCounterExponential--;
  return o;
}

void checkExponential(api.Exponential o) {
  buildCounterExponential++;
  if (buildCounterExponential < 3) {
    unittest.expect(
      o.growthFactor!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.numFiniteBuckets!,
      unittest.equals(42),
    );
    unittest.expect(
      o.scale!,
      unittest.equals(42.0),
    );
  }
  buildCounterExponential--;
}

core.int buildCounterGetNotificationChannelVerificationCodeRequest = 0;
api.GetNotificationChannelVerificationCodeRequest
    buildGetNotificationChannelVerificationCodeRequest() {
  final o = api.GetNotificationChannelVerificationCodeRequest();
  buildCounterGetNotificationChannelVerificationCodeRequest++;
  if (buildCounterGetNotificationChannelVerificationCodeRequest < 3) {
    o.expireTime = 'foo';
  }
  buildCounterGetNotificationChannelVerificationCodeRequest--;
  return o;
}

void checkGetNotificationChannelVerificationCodeRequest(
    api.GetNotificationChannelVerificationCodeRequest o) {
  buildCounterGetNotificationChannelVerificationCodeRequest++;
  if (buildCounterGetNotificationChannelVerificationCodeRequest < 3) {
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetNotificationChannelVerificationCodeRequest--;
}

core.int buildCounterGetNotificationChannelVerificationCodeResponse = 0;
api.GetNotificationChannelVerificationCodeResponse
    buildGetNotificationChannelVerificationCodeResponse() {
  final o = api.GetNotificationChannelVerificationCodeResponse();
  buildCounterGetNotificationChannelVerificationCodeResponse++;
  if (buildCounterGetNotificationChannelVerificationCodeResponse < 3) {
    o.code = 'foo';
    o.expireTime = 'foo';
  }
  buildCounterGetNotificationChannelVerificationCodeResponse--;
  return o;
}

void checkGetNotificationChannelVerificationCodeResponse(
    api.GetNotificationChannelVerificationCodeResponse o) {
  buildCounterGetNotificationChannelVerificationCodeResponse++;
  if (buildCounterGetNotificationChannelVerificationCodeResponse < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetNotificationChannelVerificationCodeResponse--;
}

core.int buildCounterGoogleMonitoringV3Range = 0;
api.GoogleMonitoringV3Range buildGoogleMonitoringV3Range() {
  final o = api.GoogleMonitoringV3Range();
  buildCounterGoogleMonitoringV3Range++;
  if (buildCounterGoogleMonitoringV3Range < 3) {
    o.max = 42.0;
    o.min = 42.0;
  }
  buildCounterGoogleMonitoringV3Range--;
  return o;
}

void checkGoogleMonitoringV3Range(api.GoogleMonitoringV3Range o) {
  buildCounterGoogleMonitoringV3Range++;
  if (buildCounterGoogleMonitoringV3Range < 3) {
    unittest.expect(
      o.max!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.min!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleMonitoringV3Range--;
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  final o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.displayName = 'foo';
    o.filter = 'foo';
    o.isCluster = true;
    o.name = 'foo';
    o.parentName = 'foo';
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isCluster!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroup--;
}

core.Map<core.String, core.String> buildUnnamed19() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed19(core.Map<core.String, core.String> o) {
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

core.int buildCounterHttpCheck = 0;
api.HttpCheck buildHttpCheck() {
  final o = api.HttpCheck();
  buildCounterHttpCheck++;
  if (buildCounterHttpCheck < 3) {
    o.authInfo = buildBasicAuthentication();
    o.body = 'foo';
    o.contentType = 'foo';
    o.headers = buildUnnamed19();
    o.maskHeaders = true;
    o.path = 'foo';
    o.port = 42;
    o.requestMethod = 'foo';
    o.useSsl = true;
    o.validateSsl = true;
  }
  buildCounterHttpCheck--;
  return o;
}

void checkHttpCheck(api.HttpCheck o) {
  buildCounterHttpCheck++;
  if (buildCounterHttpCheck < 3) {
    checkBasicAuthentication(o.authInfo!);
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.headers!);
    unittest.expect(o.maskHeaders!, unittest.isTrue);
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
    unittest.expect(
      o.requestMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useSsl!, unittest.isTrue);
    unittest.expect(o.validateSsl!, unittest.isTrue);
  }
  buildCounterHttpCheck--;
}

core.int buildCounterInternalChecker = 0;
api.InternalChecker buildInternalChecker() {
  final o = api.InternalChecker();
  buildCounterInternalChecker++;
  if (buildCounterInternalChecker < 3) {
    o.displayName = 'foo';
    o.gcpZone = 'foo';
    o.name = 'foo';
    o.network = 'foo';
    o.peerProjectId = 'foo';
    o.state = 'foo';
  }
  buildCounterInternalChecker--;
  return o;
}

void checkInternalChecker(api.InternalChecker o) {
  buildCounterInternalChecker++;
  if (buildCounterInternalChecker < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcpZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peerProjectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterInternalChecker--;
}

core.int buildCounterIstioCanonicalService = 0;
api.IstioCanonicalService buildIstioCanonicalService() {
  final o = api.IstioCanonicalService();
  buildCounterIstioCanonicalService++;
  if (buildCounterIstioCanonicalService < 3) {
    o.canonicalService = 'foo';
    o.canonicalServiceNamespace = 'foo';
    o.meshUid = 'foo';
  }
  buildCounterIstioCanonicalService--;
  return o;
}

void checkIstioCanonicalService(api.IstioCanonicalService o) {
  buildCounterIstioCanonicalService++;
  if (buildCounterIstioCanonicalService < 3) {
    unittest.expect(
      o.canonicalService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.canonicalServiceNamespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.meshUid!,
      unittest.equals('foo'),
    );
  }
  buildCounterIstioCanonicalService--;
}

core.int buildCounterLabelDescriptor = 0;
api.LabelDescriptor buildLabelDescriptor() {
  final o = api.LabelDescriptor();
  buildCounterLabelDescriptor++;
  if (buildCounterLabelDescriptor < 3) {
    o.description = 'foo';
    o.key = 'foo';
    o.valueType = 'foo';
  }
  buildCounterLabelDescriptor--;
  return o;
}

void checkLabelDescriptor(api.LabelDescriptor o) {
  buildCounterLabelDescriptor++;
  if (buildCounterLabelDescriptor < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterLabelDescriptor--;
}

core.int buildCounterLabelValue = 0;
api.LabelValue buildLabelValue() {
  final o = api.LabelValue();
  buildCounterLabelValue++;
  if (buildCounterLabelValue < 3) {
    o.boolValue = true;
    o.int64Value = 'foo';
    o.stringValue = 'foo';
  }
  buildCounterLabelValue--;
  return o;
}

void checkLabelValue(api.LabelValue o) {
  buildCounterLabelValue++;
  if (buildCounterLabelValue < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterLabelValue--;
}

core.int buildCounterLatencyCriteria = 0;
api.LatencyCriteria buildLatencyCriteria() {
  final o = api.LatencyCriteria();
  buildCounterLatencyCriteria++;
  if (buildCounterLatencyCriteria < 3) {
    o.threshold = 'foo';
  }
  buildCounterLatencyCriteria--;
  return o;
}

void checkLatencyCriteria(api.LatencyCriteria o) {
  buildCounterLatencyCriteria++;
  if (buildCounterLatencyCriteria < 3) {
    unittest.expect(
      o.threshold!,
      unittest.equals('foo'),
    );
  }
  buildCounterLatencyCriteria--;
}

core.int buildCounterLinear = 0;
api.Linear buildLinear() {
  final o = api.Linear();
  buildCounterLinear++;
  if (buildCounterLinear < 3) {
    o.numFiniteBuckets = 42;
    o.offset = 42.0;
    o.width = 42.0;
  }
  buildCounterLinear--;
  return o;
}

void checkLinear(api.Linear o) {
  buildCounterLinear++;
  if (buildCounterLinear < 3) {
    unittest.expect(
      o.numFiniteBuckets!,
      unittest.equals(42),
    );
    unittest.expect(
      o.offset!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42.0),
    );
  }
  buildCounterLinear--;
}

core.List<api.AlertPolicy> buildUnnamed20() => [
      buildAlertPolicy(),
      buildAlertPolicy(),
    ];

void checkUnnamed20(core.List<api.AlertPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlertPolicy(o[0]);
  checkAlertPolicy(o[1]);
}

core.int buildCounterListAlertPoliciesResponse = 0;
api.ListAlertPoliciesResponse buildListAlertPoliciesResponse() {
  final o = api.ListAlertPoliciesResponse();
  buildCounterListAlertPoliciesResponse++;
  if (buildCounterListAlertPoliciesResponse < 3) {
    o.alertPolicies = buildUnnamed20();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListAlertPoliciesResponse--;
  return o;
}

void checkListAlertPoliciesResponse(api.ListAlertPoliciesResponse o) {
  buildCounterListAlertPoliciesResponse++;
  if (buildCounterListAlertPoliciesResponse < 3) {
    checkUnnamed20(o.alertPolicies!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListAlertPoliciesResponse--;
}

core.List<api.MonitoredResource> buildUnnamed21() => [
      buildMonitoredResource(),
      buildMonitoredResource(),
    ];

void checkUnnamed21(core.List<api.MonitoredResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResource(o[0]);
  checkMonitoredResource(o[1]);
}

core.int buildCounterListGroupMembersResponse = 0;
api.ListGroupMembersResponse buildListGroupMembersResponse() {
  final o = api.ListGroupMembersResponse();
  buildCounterListGroupMembersResponse++;
  if (buildCounterListGroupMembersResponse < 3) {
    o.members = buildUnnamed21();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListGroupMembersResponse--;
  return o;
}

void checkListGroupMembersResponse(api.ListGroupMembersResponse o) {
  buildCounterListGroupMembersResponse++;
  if (buildCounterListGroupMembersResponse < 3) {
    checkUnnamed21(o.members!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListGroupMembersResponse--;
}

core.List<api.Group> buildUnnamed22() => [
      buildGroup(),
      buildGroup(),
    ];

void checkUnnamed22(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  final o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.group = buildUnnamed22();
    o.nextPageToken = 'foo';
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed22(o.group!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGroupsResponse--;
}

core.List<api.MetricDescriptor> buildUnnamed23() => [
      buildMetricDescriptor(),
      buildMetricDescriptor(),
    ];

void checkUnnamed23(core.List<api.MetricDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDescriptor(o[0]);
  checkMetricDescriptor(o[1]);
}

core.int buildCounterListMetricDescriptorsResponse = 0;
api.ListMetricDescriptorsResponse buildListMetricDescriptorsResponse() {
  final o = api.ListMetricDescriptorsResponse();
  buildCounterListMetricDescriptorsResponse++;
  if (buildCounterListMetricDescriptorsResponse < 3) {
    o.metricDescriptors = buildUnnamed23();
    o.nextPageToken = 'foo';
  }
  buildCounterListMetricDescriptorsResponse--;
  return o;
}

void checkListMetricDescriptorsResponse(api.ListMetricDescriptorsResponse o) {
  buildCounterListMetricDescriptorsResponse++;
  if (buildCounterListMetricDescriptorsResponse < 3) {
    checkUnnamed23(o.metricDescriptors!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMetricDescriptorsResponse--;
}

core.List<api.MonitoredResourceDescriptor> buildUnnamed24() => [
      buildMonitoredResourceDescriptor(),
      buildMonitoredResourceDescriptor(),
    ];

void checkUnnamed24(core.List<api.MonitoredResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResourceDescriptor(o[0]);
  checkMonitoredResourceDescriptor(o[1]);
}

core.int buildCounterListMonitoredResourceDescriptorsResponse = 0;
api.ListMonitoredResourceDescriptorsResponse
    buildListMonitoredResourceDescriptorsResponse() {
  final o = api.ListMonitoredResourceDescriptorsResponse();
  buildCounterListMonitoredResourceDescriptorsResponse++;
  if (buildCounterListMonitoredResourceDescriptorsResponse < 3) {
    o.nextPageToken = 'foo';
    o.resourceDescriptors = buildUnnamed24();
  }
  buildCounterListMonitoredResourceDescriptorsResponse--;
  return o;
}

void checkListMonitoredResourceDescriptorsResponse(
    api.ListMonitoredResourceDescriptorsResponse o) {
  buildCounterListMonitoredResourceDescriptorsResponse++;
  if (buildCounterListMonitoredResourceDescriptorsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.resourceDescriptors!);
  }
  buildCounterListMonitoredResourceDescriptorsResponse--;
}

core.List<api.NotificationChannelDescriptor> buildUnnamed25() => [
      buildNotificationChannelDescriptor(),
      buildNotificationChannelDescriptor(),
    ];

void checkUnnamed25(core.List<api.NotificationChannelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotificationChannelDescriptor(o[0]);
  checkNotificationChannelDescriptor(o[1]);
}

core.int buildCounterListNotificationChannelDescriptorsResponse = 0;
api.ListNotificationChannelDescriptorsResponse
    buildListNotificationChannelDescriptorsResponse() {
  final o = api.ListNotificationChannelDescriptorsResponse();
  buildCounterListNotificationChannelDescriptorsResponse++;
  if (buildCounterListNotificationChannelDescriptorsResponse < 3) {
    o.channelDescriptors = buildUnnamed25();
    o.nextPageToken = 'foo';
  }
  buildCounterListNotificationChannelDescriptorsResponse--;
  return o;
}

void checkListNotificationChannelDescriptorsResponse(
    api.ListNotificationChannelDescriptorsResponse o) {
  buildCounterListNotificationChannelDescriptorsResponse++;
  if (buildCounterListNotificationChannelDescriptorsResponse < 3) {
    checkUnnamed25(o.channelDescriptors!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListNotificationChannelDescriptorsResponse--;
}

core.List<api.NotificationChannel> buildUnnamed26() => [
      buildNotificationChannel(),
      buildNotificationChannel(),
    ];

void checkUnnamed26(core.List<api.NotificationChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotificationChannel(o[0]);
  checkNotificationChannel(o[1]);
}

core.int buildCounterListNotificationChannelsResponse = 0;
api.ListNotificationChannelsResponse buildListNotificationChannelsResponse() {
  final o = api.ListNotificationChannelsResponse();
  buildCounterListNotificationChannelsResponse++;
  if (buildCounterListNotificationChannelsResponse < 3) {
    o.nextPageToken = 'foo';
    o.notificationChannels = buildUnnamed26();
    o.totalSize = 42;
  }
  buildCounterListNotificationChannelsResponse--;
  return o;
}

void checkListNotificationChannelsResponse(
    api.ListNotificationChannelsResponse o) {
  buildCounterListNotificationChannelsResponse++;
  if (buildCounterListNotificationChannelsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.notificationChannels!);
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListNotificationChannelsResponse--;
}

core.List<api.ServiceLevelObjective> buildUnnamed27() => [
      buildServiceLevelObjective(),
      buildServiceLevelObjective(),
    ];

void checkUnnamed27(core.List<api.ServiceLevelObjective> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceLevelObjective(o[0]);
  checkServiceLevelObjective(o[1]);
}

core.int buildCounterListServiceLevelObjectivesResponse = 0;
api.ListServiceLevelObjectivesResponse
    buildListServiceLevelObjectivesResponse() {
  final o = api.ListServiceLevelObjectivesResponse();
  buildCounterListServiceLevelObjectivesResponse++;
  if (buildCounterListServiceLevelObjectivesResponse < 3) {
    o.nextPageToken = 'foo';
    o.serviceLevelObjectives = buildUnnamed27();
  }
  buildCounterListServiceLevelObjectivesResponse--;
  return o;
}

void checkListServiceLevelObjectivesResponse(
    api.ListServiceLevelObjectivesResponse o) {
  buildCounterListServiceLevelObjectivesResponse++;
  if (buildCounterListServiceLevelObjectivesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.serviceLevelObjectives!);
  }
  buildCounterListServiceLevelObjectivesResponse--;
}

core.List<api.Service> buildUnnamed28() => [
      buildService(),
      buildService(),
    ];

void checkUnnamed28(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.int buildCounterListServicesResponse = 0;
api.ListServicesResponse buildListServicesResponse() {
  final o = api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed28();
  }
  buildCounterListServicesResponse--;
  return o;
}

void checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.services!);
  }
  buildCounterListServicesResponse--;
}

core.List<api.Status> buildUnnamed29() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed29(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.TimeSeries> buildUnnamed30() => [
      buildTimeSeries(),
      buildTimeSeries(),
    ];

void checkUnnamed30(core.List<api.TimeSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeSeries(o[0]);
  checkTimeSeries(o[1]);
}

core.int buildCounterListTimeSeriesResponse = 0;
api.ListTimeSeriesResponse buildListTimeSeriesResponse() {
  final o = api.ListTimeSeriesResponse();
  buildCounterListTimeSeriesResponse++;
  if (buildCounterListTimeSeriesResponse < 3) {
    o.executionErrors = buildUnnamed29();
    o.nextPageToken = 'foo';
    o.timeSeries = buildUnnamed30();
    o.unit = 'foo';
  }
  buildCounterListTimeSeriesResponse--;
  return o;
}

void checkListTimeSeriesResponse(api.ListTimeSeriesResponse o) {
  buildCounterListTimeSeriesResponse++;
  if (buildCounterListTimeSeriesResponse < 3) {
    checkUnnamed29(o.executionErrors!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.timeSeries!);
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterListTimeSeriesResponse--;
}

core.List<api.UptimeCheckConfig> buildUnnamed31() => [
      buildUptimeCheckConfig(),
      buildUptimeCheckConfig(),
    ];

void checkUnnamed31(core.List<api.UptimeCheckConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUptimeCheckConfig(o[0]);
  checkUptimeCheckConfig(o[1]);
}

core.int buildCounterListUptimeCheckConfigsResponse = 0;
api.ListUptimeCheckConfigsResponse buildListUptimeCheckConfigsResponse() {
  final o = api.ListUptimeCheckConfigsResponse();
  buildCounterListUptimeCheckConfigsResponse++;
  if (buildCounterListUptimeCheckConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.totalSize = 42;
    o.uptimeCheckConfigs = buildUnnamed31();
  }
  buildCounterListUptimeCheckConfigsResponse--;
  return o;
}

void checkListUptimeCheckConfigsResponse(api.ListUptimeCheckConfigsResponse o) {
  buildCounterListUptimeCheckConfigsResponse++;
  if (buildCounterListUptimeCheckConfigsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
    checkUnnamed31(o.uptimeCheckConfigs!);
  }
  buildCounterListUptimeCheckConfigsResponse--;
}

core.List<api.UptimeCheckIp> buildUnnamed32() => [
      buildUptimeCheckIp(),
      buildUptimeCheckIp(),
    ];

void checkUnnamed32(core.List<api.UptimeCheckIp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUptimeCheckIp(o[0]);
  checkUptimeCheckIp(o[1]);
}

core.int buildCounterListUptimeCheckIpsResponse = 0;
api.ListUptimeCheckIpsResponse buildListUptimeCheckIpsResponse() {
  final o = api.ListUptimeCheckIpsResponse();
  buildCounterListUptimeCheckIpsResponse++;
  if (buildCounterListUptimeCheckIpsResponse < 3) {
    o.nextPageToken = 'foo';
    o.uptimeCheckIps = buildUnnamed32();
  }
  buildCounterListUptimeCheckIpsResponse--;
  return o;
}

void checkListUptimeCheckIpsResponse(api.ListUptimeCheckIpsResponse o) {
  buildCounterListUptimeCheckIpsResponse++;
  if (buildCounterListUptimeCheckIpsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.uptimeCheckIps!);
  }
  buildCounterListUptimeCheckIpsResponse--;
}

core.Map<core.String, core.String> buildUnnamed33() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed33(core.Map<core.String, core.String> o) {
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

core.int buildCounterLogMatch = 0;
api.LogMatch buildLogMatch() {
  final o = api.LogMatch();
  buildCounterLogMatch++;
  if (buildCounterLogMatch < 3) {
    o.filter = 'foo';
    o.labelExtractors = buildUnnamed33();
  }
  buildCounterLogMatch--;
  return o;
}

void checkLogMatch(api.LogMatch o) {
  buildCounterLogMatch++;
  if (buildCounterLogMatch < 3) {
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.labelExtractors!);
  }
  buildCounterLogMatch--;
}

core.int buildCounterMeshIstio = 0;
api.MeshIstio buildMeshIstio() {
  final o = api.MeshIstio();
  buildCounterMeshIstio++;
  if (buildCounterMeshIstio < 3) {
    o.meshUid = 'foo';
    o.serviceName = 'foo';
    o.serviceNamespace = 'foo';
  }
  buildCounterMeshIstio--;
  return o;
}

void checkMeshIstio(api.MeshIstio o) {
  buildCounterMeshIstio++;
  if (buildCounterMeshIstio < 3) {
    unittest.expect(
      o.meshUid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceNamespace!,
      unittest.equals('foo'),
    );
  }
  buildCounterMeshIstio--;
}

core.Map<core.String, core.String> buildUnnamed34() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed34(core.Map<core.String, core.String> o) {
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

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  final o = api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.labels = buildUnnamed34();
    o.type = 'foo';
  }
  buildCounterMetric--;
  return o;
}

void checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    checkUnnamed34(o.labels!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetric--;
}

core.List<api.Aggregation> buildUnnamed35() => [
      buildAggregation(),
      buildAggregation(),
    ];

void checkUnnamed35(core.List<api.Aggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregation(o[0]);
  checkAggregation(o[1]);
}

core.int buildCounterMetricAbsence = 0;
api.MetricAbsence buildMetricAbsence() {
  final o = api.MetricAbsence();
  buildCounterMetricAbsence++;
  if (buildCounterMetricAbsence < 3) {
    o.aggregations = buildUnnamed35();
    o.duration = 'foo';
    o.filter = 'foo';
    o.trigger = buildTrigger();
  }
  buildCounterMetricAbsence--;
  return o;
}

void checkMetricAbsence(api.MetricAbsence o) {
  buildCounterMetricAbsence++;
  if (buildCounterMetricAbsence < 3) {
    checkUnnamed35(o.aggregations!);
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    checkTrigger(o.trigger!);
  }
  buildCounterMetricAbsence--;
}

core.List<api.LabelDescriptor> buildUnnamed36() => [
      buildLabelDescriptor(),
      buildLabelDescriptor(),
    ];

void checkUnnamed36(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
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

core.int buildCounterMetricDescriptor = 0;
api.MetricDescriptor buildMetricDescriptor() {
  final o = api.MetricDescriptor();
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed36();
    o.launchStage = 'foo';
    o.metadata = buildMetricDescriptorMetadata();
    o.metricKind = 'foo';
    o.monitoredResourceTypes = buildUnnamed37();
    o.name = 'foo';
    o.type = 'foo';
    o.unit = 'foo';
    o.valueType = 'foo';
  }
  buildCounterMetricDescriptor--;
  return o;
}

void checkMetricDescriptor(api.MetricDescriptor o) {
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.labels!);
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    checkMetricDescriptorMetadata(o.metadata!);
    unittest.expect(
      o.metricKind!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.monitoredResourceTypes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricDescriptor--;
}

core.int buildCounterMetricDescriptorMetadata = 0;
api.MetricDescriptorMetadata buildMetricDescriptorMetadata() {
  final o = api.MetricDescriptorMetadata();
  buildCounterMetricDescriptorMetadata++;
  if (buildCounterMetricDescriptorMetadata < 3) {
    o.ingestDelay = 'foo';
    o.launchStage = 'foo';
    o.samplePeriod = 'foo';
  }
  buildCounterMetricDescriptorMetadata--;
  return o;
}

void checkMetricDescriptorMetadata(api.MetricDescriptorMetadata o) {
  buildCounterMetricDescriptorMetadata++;
  if (buildCounterMetricDescriptorMetadata < 3) {
    unittest.expect(
      o.ingestDelay!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.samplePeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricDescriptorMetadata--;
}

core.int buildCounterMetricRange = 0;
api.MetricRange buildMetricRange() {
  final o = api.MetricRange();
  buildCounterMetricRange++;
  if (buildCounterMetricRange < 3) {
    o.range = buildGoogleMonitoringV3Range();
    o.timeSeries = 'foo';
  }
  buildCounterMetricRange--;
  return o;
}

void checkMetricRange(api.MetricRange o) {
  buildCounterMetricRange++;
  if (buildCounterMetricRange < 3) {
    checkGoogleMonitoringV3Range(o.range!);
    unittest.expect(
      o.timeSeries!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricRange--;
}

core.List<api.Aggregation> buildUnnamed38() => [
      buildAggregation(),
      buildAggregation(),
    ];

void checkUnnamed38(core.List<api.Aggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregation(o[0]);
  checkAggregation(o[1]);
}

core.List<api.Aggregation> buildUnnamed39() => [
      buildAggregation(),
      buildAggregation(),
    ];

void checkUnnamed39(core.List<api.Aggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregation(o[0]);
  checkAggregation(o[1]);
}

core.int buildCounterMetricThreshold = 0;
api.MetricThreshold buildMetricThreshold() {
  final o = api.MetricThreshold();
  buildCounterMetricThreshold++;
  if (buildCounterMetricThreshold < 3) {
    o.aggregations = buildUnnamed38();
    o.comparison = 'foo';
    o.denominatorAggregations = buildUnnamed39();
    o.denominatorFilter = 'foo';
    o.duration = 'foo';
    o.filter = 'foo';
    o.thresholdValue = 42.0;
    o.trigger = buildTrigger();
  }
  buildCounterMetricThreshold--;
  return o;
}

void checkMetricThreshold(api.MetricThreshold o) {
  buildCounterMetricThreshold++;
  if (buildCounterMetricThreshold < 3) {
    checkUnnamed38(o.aggregations!);
    unittest.expect(
      o.comparison!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.denominatorAggregations!);
    unittest.expect(
      o.denominatorFilter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thresholdValue!,
      unittest.equals(42.0),
    );
    checkTrigger(o.trigger!);
  }
  buildCounterMetricThreshold--;
}

core.Map<core.String, core.String> buildUnnamed40() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed40(core.Map<core.String, core.String> o) {
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

core.int buildCounterMonitoredResource = 0;
api.MonitoredResource buildMonitoredResource() {
  final o = api.MonitoredResource();
  buildCounterMonitoredResource++;
  if (buildCounterMonitoredResource < 3) {
    o.labels = buildUnnamed40();
    o.type = 'foo';
  }
  buildCounterMonitoredResource--;
  return o;
}

void checkMonitoredResource(api.MonitoredResource o) {
  buildCounterMonitoredResource++;
  if (buildCounterMonitoredResource < 3) {
    checkUnnamed40(o.labels!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterMonitoredResource--;
}

core.List<api.LabelDescriptor> buildUnnamed41() => [
      buildLabelDescriptor(),
      buildLabelDescriptor(),
    ];

void checkUnnamed41(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.int buildCounterMonitoredResourceDescriptor = 0;
api.MonitoredResourceDescriptor buildMonitoredResourceDescriptor() {
  final o = api.MonitoredResourceDescriptor();
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed41();
    o.launchStage = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterMonitoredResourceDescriptor--;
  return o;
}

void checkMonitoredResourceDescriptor(api.MonitoredResourceDescriptor o) {
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.labels!);
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterMonitoredResourceDescriptor--;
}

core.Map<core.String, core.Object?> buildUnnamed42() => {
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

void checkUnnamed42(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.String> buildUnnamed43() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed43(core.Map<core.String, core.String> o) {
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

core.int buildCounterMonitoredResourceMetadata = 0;
api.MonitoredResourceMetadata buildMonitoredResourceMetadata() {
  final o = api.MonitoredResourceMetadata();
  buildCounterMonitoredResourceMetadata++;
  if (buildCounterMonitoredResourceMetadata < 3) {
    o.systemLabels = buildUnnamed42();
    o.userLabels = buildUnnamed43();
  }
  buildCounterMonitoredResourceMetadata--;
  return o;
}

void checkMonitoredResourceMetadata(api.MonitoredResourceMetadata o) {
  buildCounterMonitoredResourceMetadata++;
  if (buildCounterMonitoredResourceMetadata < 3) {
    checkUnnamed42(o.systemLabels!);
    checkUnnamed43(o.userLabels!);
  }
  buildCounterMonitoredResourceMetadata--;
}

core.int buildCounterMonitoringQueryLanguageCondition = 0;
api.MonitoringQueryLanguageCondition buildMonitoringQueryLanguageCondition() {
  final o = api.MonitoringQueryLanguageCondition();
  buildCounterMonitoringQueryLanguageCondition++;
  if (buildCounterMonitoringQueryLanguageCondition < 3) {
    o.duration = 'foo';
    o.query = 'foo';
    o.trigger = buildTrigger();
  }
  buildCounterMonitoringQueryLanguageCondition--;
  return o;
}

void checkMonitoringQueryLanguageCondition(
    api.MonitoringQueryLanguageCondition o) {
  buildCounterMonitoringQueryLanguageCondition++;
  if (buildCounterMonitoringQueryLanguageCondition < 3) {
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    checkTrigger(o.trigger!);
  }
  buildCounterMonitoringQueryLanguageCondition--;
}

core.int buildCounterMutationRecord = 0;
api.MutationRecord buildMutationRecord() {
  final o = api.MutationRecord();
  buildCounterMutationRecord++;
  if (buildCounterMutationRecord < 3) {
    o.mutateTime = 'foo';
    o.mutatedBy = 'foo';
  }
  buildCounterMutationRecord--;
  return o;
}

void checkMutationRecord(api.MutationRecord o) {
  buildCounterMutationRecord++;
  if (buildCounterMutationRecord < 3) {
    unittest.expect(
      o.mutateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mutatedBy!,
      unittest.equals('foo'),
    );
  }
  buildCounterMutationRecord--;
}

core.Map<core.String, core.String> buildUnnamed44() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed44(core.Map<core.String, core.String> o) {
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

core.List<api.MutationRecord> buildUnnamed45() => [
      buildMutationRecord(),
      buildMutationRecord(),
    ];

void checkUnnamed45(core.List<api.MutationRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutationRecord(o[0]);
  checkMutationRecord(o[1]);
}

core.Map<core.String, core.String> buildUnnamed46() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed46(core.Map<core.String, core.String> o) {
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

core.int buildCounterNotificationChannel = 0;
api.NotificationChannel buildNotificationChannel() {
  final o = api.NotificationChannel();
  buildCounterNotificationChannel++;
  if (buildCounterNotificationChannel < 3) {
    o.creationRecord = buildMutationRecord();
    o.description = 'foo';
    o.displayName = 'foo';
    o.enabled = true;
    o.labels = buildUnnamed44();
    o.mutationRecords = buildUnnamed45();
    o.name = 'foo';
    o.type = 'foo';
    o.userLabels = buildUnnamed46();
    o.verificationStatus = 'foo';
  }
  buildCounterNotificationChannel--;
  return o;
}

void checkNotificationChannel(api.NotificationChannel o) {
  buildCounterNotificationChannel++;
  if (buildCounterNotificationChannel < 3) {
    checkMutationRecord(o.creationRecord!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enabled!, unittest.isTrue);
    checkUnnamed44(o.labels!);
    checkUnnamed45(o.mutationRecords!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.userLabels!);
    unittest.expect(
      o.verificationStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotificationChannel--;
}

core.List<api.LabelDescriptor> buildUnnamed47() => [
      buildLabelDescriptor(),
      buildLabelDescriptor(),
    ];

void checkUnnamed47(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.int buildCounterNotificationChannelDescriptor = 0;
api.NotificationChannelDescriptor buildNotificationChannelDescriptor() {
  final o = api.NotificationChannelDescriptor();
  buildCounterNotificationChannelDescriptor++;
  if (buildCounterNotificationChannelDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed47();
    o.launchStage = 'foo';
    o.name = 'foo';
    o.supportedTiers = buildUnnamed48();
    o.type = 'foo';
  }
  buildCounterNotificationChannelDescriptor--;
  return o;
}

void checkNotificationChannelDescriptor(api.NotificationChannelDescriptor o) {
  buildCounterNotificationChannelDescriptor++;
  if (buildCounterNotificationChannelDescriptor < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed47(o.labels!);
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.supportedTiers!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotificationChannelDescriptor--;
}

core.int buildCounterNotificationRateLimit = 0;
api.NotificationRateLimit buildNotificationRateLimit() {
  final o = api.NotificationRateLimit();
  buildCounterNotificationRateLimit++;
  if (buildCounterNotificationRateLimit < 3) {
    o.period = 'foo';
  }
  buildCounterNotificationRateLimit--;
  return o;
}

void checkNotificationRateLimit(api.NotificationRateLimit o) {
  buildCounterNotificationRateLimit++;
  if (buildCounterNotificationRateLimit < 3) {
    unittest.expect(
      o.period!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotificationRateLimit--;
}

core.int buildCounterPerformanceThreshold = 0;
api.PerformanceThreshold buildPerformanceThreshold() {
  final o = api.PerformanceThreshold();
  buildCounterPerformanceThreshold++;
  if (buildCounterPerformanceThreshold < 3) {
    o.basicSliPerformance = buildBasicSli();
    o.performance = buildRequestBasedSli();
    o.threshold = 42.0;
  }
  buildCounterPerformanceThreshold--;
  return o;
}

void checkPerformanceThreshold(api.PerformanceThreshold o) {
  buildCounterPerformanceThreshold++;
  if (buildCounterPerformanceThreshold < 3) {
    checkBasicSli(o.basicSliPerformance!);
    checkRequestBasedSli(o.performance!);
    unittest.expect(
      o.threshold!,
      unittest.equals(42.0),
    );
  }
  buildCounterPerformanceThreshold--;
}

core.int buildCounterPoint = 0;
api.Point buildPoint() {
  final o = api.Point();
  buildCounterPoint++;
  if (buildCounterPoint < 3) {
    o.interval = buildTimeInterval();
    o.value = buildTypedValue();
  }
  buildCounterPoint--;
  return o;
}

void checkPoint(api.Point o) {
  buildCounterPoint++;
  if (buildCounterPoint < 3) {
    checkTimeInterval(o.interval!);
    checkTypedValue(o.value!);
  }
  buildCounterPoint--;
}

core.List<api.TypedValue> buildUnnamed49() => [
      buildTypedValue(),
      buildTypedValue(),
    ];

void checkUnnamed49(core.List<api.TypedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTypedValue(o[0]);
  checkTypedValue(o[1]);
}

core.int buildCounterPointData = 0;
api.PointData buildPointData() {
  final o = api.PointData();
  buildCounterPointData++;
  if (buildCounterPointData < 3) {
    o.timeInterval = buildTimeInterval();
    o.values = buildUnnamed49();
  }
  buildCounterPointData--;
  return o;
}

void checkPointData(api.PointData o) {
  buildCounterPointData++;
  if (buildCounterPointData < 3) {
    checkTimeInterval(o.timeInterval!);
    checkUnnamed49(o.values!);
  }
  buildCounterPointData--;
}

core.int buildCounterQueryTimeSeriesRequest = 0;
api.QueryTimeSeriesRequest buildQueryTimeSeriesRequest() {
  final o = api.QueryTimeSeriesRequest();
  buildCounterQueryTimeSeriesRequest++;
  if (buildCounterQueryTimeSeriesRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.query = 'foo';
  }
  buildCounterQueryTimeSeriesRequest--;
  return o;
}

void checkQueryTimeSeriesRequest(api.QueryTimeSeriesRequest o) {
  buildCounterQueryTimeSeriesRequest++;
  if (buildCounterQueryTimeSeriesRequest < 3) {
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryTimeSeriesRequest--;
}

core.List<api.Status> buildUnnamed50() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed50(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.TimeSeriesData> buildUnnamed51() => [
      buildTimeSeriesData(),
      buildTimeSeriesData(),
    ];

void checkUnnamed51(core.List<api.TimeSeriesData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeSeriesData(o[0]);
  checkTimeSeriesData(o[1]);
}

core.int buildCounterQueryTimeSeriesResponse = 0;
api.QueryTimeSeriesResponse buildQueryTimeSeriesResponse() {
  final o = api.QueryTimeSeriesResponse();
  buildCounterQueryTimeSeriesResponse++;
  if (buildCounterQueryTimeSeriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.partialErrors = buildUnnamed50();
    o.timeSeriesData = buildUnnamed51();
    o.timeSeriesDescriptor = buildTimeSeriesDescriptor();
  }
  buildCounterQueryTimeSeriesResponse--;
  return o;
}

void checkQueryTimeSeriesResponse(api.QueryTimeSeriesResponse o) {
  buildCounterQueryTimeSeriesResponse++;
  if (buildCounterQueryTimeSeriesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.partialErrors!);
    checkUnnamed51(o.timeSeriesData!);
    checkTimeSeriesDescriptor(o.timeSeriesDescriptor!);
  }
  buildCounterQueryTimeSeriesResponse--;
}

core.int buildCounterRange = 0;
api.Range buildRange() {
  final o = api.Range();
  buildCounterRange++;
  if (buildCounterRange < 3) {
    o.max = 42.0;
    o.min = 42.0;
  }
  buildCounterRange--;
  return o;
}

void checkRange(api.Range o) {
  buildCounterRange++;
  if (buildCounterRange < 3) {
    unittest.expect(
      o.max!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.min!,
      unittest.equals(42.0),
    );
  }
  buildCounterRange--;
}

core.int buildCounterRequestBasedSli = 0;
api.RequestBasedSli buildRequestBasedSli() {
  final o = api.RequestBasedSli();
  buildCounterRequestBasedSli++;
  if (buildCounterRequestBasedSli < 3) {
    o.distributionCut = buildDistributionCut();
    o.goodTotalRatio = buildTimeSeriesRatio();
  }
  buildCounterRequestBasedSli--;
  return o;
}

void checkRequestBasedSli(api.RequestBasedSli o) {
  buildCounterRequestBasedSli++;
  if (buildCounterRequestBasedSli < 3) {
    checkDistributionCut(o.distributionCut!);
    checkTimeSeriesRatio(o.goodTotalRatio!);
  }
  buildCounterRequestBasedSli--;
}

core.int buildCounterResourceGroup = 0;
api.ResourceGroup buildResourceGroup() {
  final o = api.ResourceGroup();
  buildCounterResourceGroup++;
  if (buildCounterResourceGroup < 3) {
    o.groupId = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterResourceGroup--;
  return o;
}

void checkResourceGroup(api.ResourceGroup o) {
  buildCounterResourceGroup++;
  if (buildCounterResourceGroup < 3) {
    unittest.expect(
      o.groupId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceGroup--;
}

core.int buildCounterSendNotificationChannelVerificationCodeRequest = 0;
api.SendNotificationChannelVerificationCodeRequest
    buildSendNotificationChannelVerificationCodeRequest() {
  final o = api.SendNotificationChannelVerificationCodeRequest();
  buildCounterSendNotificationChannelVerificationCodeRequest++;
  if (buildCounterSendNotificationChannelVerificationCodeRequest < 3) {}
  buildCounterSendNotificationChannelVerificationCodeRequest--;
  return o;
}

void checkSendNotificationChannelVerificationCodeRequest(
    api.SendNotificationChannelVerificationCodeRequest o) {
  buildCounterSendNotificationChannelVerificationCodeRequest++;
  if (buildCounterSendNotificationChannelVerificationCodeRequest < 3) {}
  buildCounterSendNotificationChannelVerificationCodeRequest--;
}

core.Map<core.String, core.String> buildUnnamed52() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed52(core.Map<core.String, core.String> o) {
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

core.int buildCounterService = 0;
api.Service buildService() {
  final o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.appEngine = buildAppEngine();
    o.cloudEndpoints = buildCloudEndpoints();
    o.clusterIstio = buildClusterIstio();
    o.custom = buildCustom();
    o.displayName = 'foo';
    o.istioCanonicalService = buildIstioCanonicalService();
    o.meshIstio = buildMeshIstio();
    o.name = 'foo';
    o.telemetry = buildTelemetry();
    o.userLabels = buildUnnamed52();
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    checkAppEngine(o.appEngine!);
    checkCloudEndpoints(o.cloudEndpoints!);
    checkClusterIstio(o.clusterIstio!);
    checkCustom(o.custom!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkIstioCanonicalService(o.istioCanonicalService!);
    checkMeshIstio(o.meshIstio!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkTelemetry(o.telemetry!);
    checkUnnamed52(o.userLabels!);
  }
  buildCounterService--;
}

core.int buildCounterServiceLevelIndicator = 0;
api.ServiceLevelIndicator buildServiceLevelIndicator() {
  final o = api.ServiceLevelIndicator();
  buildCounterServiceLevelIndicator++;
  if (buildCounterServiceLevelIndicator < 3) {
    o.basicSli = buildBasicSli();
    o.requestBased = buildRequestBasedSli();
    o.windowsBased = buildWindowsBasedSli();
  }
  buildCounterServiceLevelIndicator--;
  return o;
}

void checkServiceLevelIndicator(api.ServiceLevelIndicator o) {
  buildCounterServiceLevelIndicator++;
  if (buildCounterServiceLevelIndicator < 3) {
    checkBasicSli(o.basicSli!);
    checkRequestBasedSli(o.requestBased!);
    checkWindowsBasedSli(o.windowsBased!);
  }
  buildCounterServiceLevelIndicator--;
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

core.int buildCounterServiceLevelObjective = 0;
api.ServiceLevelObjective buildServiceLevelObjective() {
  final o = api.ServiceLevelObjective();
  buildCounterServiceLevelObjective++;
  if (buildCounterServiceLevelObjective < 3) {
    o.calendarPeriod = 'foo';
    o.displayName = 'foo';
    o.goal = 42.0;
    o.name = 'foo';
    o.rollingPeriod = 'foo';
    o.serviceLevelIndicator = buildServiceLevelIndicator();
    o.userLabels = buildUnnamed53();
  }
  buildCounterServiceLevelObjective--;
  return o;
}

void checkServiceLevelObjective(api.ServiceLevelObjective o) {
  buildCounterServiceLevelObjective++;
  if (buildCounterServiceLevelObjective < 3) {
    unittest.expect(
      o.calendarPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.goal!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rollingPeriod!,
      unittest.equals('foo'),
    );
    checkServiceLevelIndicator(o.serviceLevelIndicator!);
    checkUnnamed53(o.userLabels!);
  }
  buildCounterServiceLevelObjective--;
}

core.Map<core.String, core.Object?> buildUnnamed54() => {
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

void checkUnnamed54(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed55() => [
      buildUnnamed54(),
      buildUnnamed54(),
    ];

void checkUnnamed55(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed54(o[0]);
  checkUnnamed54(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed55();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed55(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTcpCheck = 0;
api.TcpCheck buildTcpCheck() {
  final o = api.TcpCheck();
  buildCounterTcpCheck++;
  if (buildCounterTcpCheck < 3) {
    o.port = 42;
  }
  buildCounterTcpCheck--;
  return o;
}

void checkTcpCheck(api.TcpCheck o) {
  buildCounterTcpCheck++;
  if (buildCounterTcpCheck < 3) {
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
  }
  buildCounterTcpCheck--;
}

core.int buildCounterTelemetry = 0;
api.Telemetry buildTelemetry() {
  final o = api.Telemetry();
  buildCounterTelemetry++;
  if (buildCounterTelemetry < 3) {
    o.resourceName = 'foo';
  }
  buildCounterTelemetry--;
  return o;
}

void checkTelemetry(api.Telemetry o) {
  buildCounterTelemetry++;
  if (buildCounterTelemetry < 3) {
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterTelemetry--;
}

core.int buildCounterTimeInterval = 0;
api.TimeInterval buildTimeInterval() {
  final o = api.TimeInterval();
  buildCounterTimeInterval++;
  if (buildCounterTimeInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterTimeInterval--;
  return o;
}

void checkTimeInterval(api.TimeInterval o) {
  buildCounterTimeInterval++;
  if (buildCounterTimeInterval < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeInterval--;
}

core.List<api.Point> buildUnnamed56() => [
      buildPoint(),
      buildPoint(),
    ];

void checkUnnamed56(core.List<api.Point> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPoint(o[0]);
  checkPoint(o[1]);
}

core.int buildCounterTimeSeries = 0;
api.TimeSeries buildTimeSeries() {
  final o = api.TimeSeries();
  buildCounterTimeSeries++;
  if (buildCounterTimeSeries < 3) {
    o.metadata = buildMonitoredResourceMetadata();
    o.metric = buildMetric();
    o.metricKind = 'foo';
    o.points = buildUnnamed56();
    o.resource = buildMonitoredResource();
    o.unit = 'foo';
    o.valueType = 'foo';
  }
  buildCounterTimeSeries--;
  return o;
}

void checkTimeSeries(api.TimeSeries o) {
  buildCounterTimeSeries++;
  if (buildCounterTimeSeries < 3) {
    checkMonitoredResourceMetadata(o.metadata!);
    checkMetric(o.metric!);
    unittest.expect(
      o.metricKind!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.points!);
    checkMonitoredResource(o.resource!);
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeSeries--;
}

core.List<api.LabelValue> buildUnnamed57() => [
      buildLabelValue(),
      buildLabelValue(),
    ];

void checkUnnamed57(core.List<api.LabelValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelValue(o[0]);
  checkLabelValue(o[1]);
}

core.List<api.PointData> buildUnnamed58() => [
      buildPointData(),
      buildPointData(),
    ];

void checkUnnamed58(core.List<api.PointData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPointData(o[0]);
  checkPointData(o[1]);
}

core.int buildCounterTimeSeriesData = 0;
api.TimeSeriesData buildTimeSeriesData() {
  final o = api.TimeSeriesData();
  buildCounterTimeSeriesData++;
  if (buildCounterTimeSeriesData < 3) {
    o.labelValues = buildUnnamed57();
    o.pointData = buildUnnamed58();
  }
  buildCounterTimeSeriesData--;
  return o;
}

void checkTimeSeriesData(api.TimeSeriesData o) {
  buildCounterTimeSeriesData++;
  if (buildCounterTimeSeriesData < 3) {
    checkUnnamed57(o.labelValues!);
    checkUnnamed58(o.pointData!);
  }
  buildCounterTimeSeriesData--;
}

core.List<api.LabelDescriptor> buildUnnamed59() => [
      buildLabelDescriptor(),
      buildLabelDescriptor(),
    ];

void checkUnnamed59(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.List<api.ValueDescriptor> buildUnnamed60() => [
      buildValueDescriptor(),
      buildValueDescriptor(),
    ];

void checkUnnamed60(core.List<api.ValueDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueDescriptor(o[0]);
  checkValueDescriptor(o[1]);
}

core.int buildCounterTimeSeriesDescriptor = 0;
api.TimeSeriesDescriptor buildTimeSeriesDescriptor() {
  final o = api.TimeSeriesDescriptor();
  buildCounterTimeSeriesDescriptor++;
  if (buildCounterTimeSeriesDescriptor < 3) {
    o.labelDescriptors = buildUnnamed59();
    o.pointDescriptors = buildUnnamed60();
  }
  buildCounterTimeSeriesDescriptor--;
  return o;
}

void checkTimeSeriesDescriptor(api.TimeSeriesDescriptor o) {
  buildCounterTimeSeriesDescriptor++;
  if (buildCounterTimeSeriesDescriptor < 3) {
    checkUnnamed59(o.labelDescriptors!);
    checkUnnamed60(o.pointDescriptors!);
  }
  buildCounterTimeSeriesDescriptor--;
}

core.int buildCounterTimeSeriesRatio = 0;
api.TimeSeriesRatio buildTimeSeriesRatio() {
  final o = api.TimeSeriesRatio();
  buildCounterTimeSeriesRatio++;
  if (buildCounterTimeSeriesRatio < 3) {
    o.badServiceFilter = 'foo';
    o.goodServiceFilter = 'foo';
    o.totalServiceFilter = 'foo';
  }
  buildCounterTimeSeriesRatio--;
  return o;
}

void checkTimeSeriesRatio(api.TimeSeriesRatio o) {
  buildCounterTimeSeriesRatio++;
  if (buildCounterTimeSeriesRatio < 3) {
    unittest.expect(
      o.badServiceFilter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.goodServiceFilter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalServiceFilter!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeSeriesRatio--;
}

core.int buildCounterTrigger = 0;
api.Trigger buildTrigger() {
  final o = api.Trigger();
  buildCounterTrigger++;
  if (buildCounterTrigger < 3) {
    o.count = 42;
    o.percent = 42.0;
  }
  buildCounterTrigger--;
  return o;
}

void checkTrigger(api.Trigger o) {
  buildCounterTrigger++;
  if (buildCounterTrigger < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.percent!,
      unittest.equals(42.0),
    );
  }
  buildCounterTrigger--;
}

core.int buildCounterTypedValue = 0;
api.TypedValue buildTypedValue() {
  final o = api.TypedValue();
  buildCounterTypedValue++;
  if (buildCounterTypedValue < 3) {
    o.boolValue = true;
    o.distributionValue = buildDistribution();
    o.doubleValue = 42.0;
    o.int64Value = 'foo';
    o.stringValue = 'foo';
  }
  buildCounterTypedValue--;
  return o;
}

void checkTypedValue(api.TypedValue o) {
  buildCounterTypedValue++;
  if (buildCounterTypedValue < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    checkDistribution(o.distributionValue!);
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterTypedValue--;
}

core.List<api.ContentMatcher> buildUnnamed61() => [
      buildContentMatcher(),
      buildContentMatcher(),
    ];

void checkUnnamed61(core.List<api.ContentMatcher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContentMatcher(o[0]);
  checkContentMatcher(o[1]);
}

core.List<api.InternalChecker> buildUnnamed62() => [
      buildInternalChecker(),
      buildInternalChecker(),
    ];

void checkUnnamed62(core.List<api.InternalChecker> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInternalChecker(o[0]);
  checkInternalChecker(o[1]);
}

core.List<core.String> buildUnnamed63() => [
      'foo',
      'foo',
    ];

void checkUnnamed63(core.List<core.String> o) {
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

core.int buildCounterUptimeCheckConfig = 0;
api.UptimeCheckConfig buildUptimeCheckConfig() {
  final o = api.UptimeCheckConfig();
  buildCounterUptimeCheckConfig++;
  if (buildCounterUptimeCheckConfig < 3) {
    o.contentMatchers = buildUnnamed61();
    o.displayName = 'foo';
    o.httpCheck = buildHttpCheck();
    o.internalCheckers = buildUnnamed62();
    o.isInternal = true;
    o.monitoredResource = buildMonitoredResource();
    o.name = 'foo';
    o.period = 'foo';
    o.resourceGroup = buildResourceGroup();
    o.selectedRegions = buildUnnamed63();
    o.tcpCheck = buildTcpCheck();
    o.timeout = 'foo';
  }
  buildCounterUptimeCheckConfig--;
  return o;
}

void checkUptimeCheckConfig(api.UptimeCheckConfig o) {
  buildCounterUptimeCheckConfig++;
  if (buildCounterUptimeCheckConfig < 3) {
    checkUnnamed61(o.contentMatchers!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkHttpCheck(o.httpCheck!);
    checkUnnamed62(o.internalCheckers!);
    unittest.expect(o.isInternal!, unittest.isTrue);
    checkMonitoredResource(o.monitoredResource!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.period!,
      unittest.equals('foo'),
    );
    checkResourceGroup(o.resourceGroup!);
    checkUnnamed63(o.selectedRegions!);
    checkTcpCheck(o.tcpCheck!);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterUptimeCheckConfig--;
}

core.int buildCounterUptimeCheckIp = 0;
api.UptimeCheckIp buildUptimeCheckIp() {
  final o = api.UptimeCheckIp();
  buildCounterUptimeCheckIp++;
  if (buildCounterUptimeCheckIp < 3) {
    o.ipAddress = 'foo';
    o.location = 'foo';
    o.region = 'foo';
  }
  buildCounterUptimeCheckIp--;
  return o;
}

void checkUptimeCheckIp(api.UptimeCheckIp o) {
  buildCounterUptimeCheckIp++;
  if (buildCounterUptimeCheckIp < 3) {
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
  }
  buildCounterUptimeCheckIp--;
}

core.int buildCounterValueDescriptor = 0;
api.ValueDescriptor buildValueDescriptor() {
  final o = api.ValueDescriptor();
  buildCounterValueDescriptor++;
  if (buildCounterValueDescriptor < 3) {
    o.key = 'foo';
    o.metricKind = 'foo';
    o.unit = 'foo';
    o.valueType = 'foo';
  }
  buildCounterValueDescriptor--;
  return o;
}

void checkValueDescriptor(api.ValueDescriptor o) {
  buildCounterValueDescriptor++;
  if (buildCounterValueDescriptor < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metricKind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterValueDescriptor--;
}

core.int buildCounterVerifyNotificationChannelRequest = 0;
api.VerifyNotificationChannelRequest buildVerifyNotificationChannelRequest() {
  final o = api.VerifyNotificationChannelRequest();
  buildCounterVerifyNotificationChannelRequest++;
  if (buildCounterVerifyNotificationChannelRequest < 3) {
    o.code = 'foo';
  }
  buildCounterVerifyNotificationChannelRequest--;
  return o;
}

void checkVerifyNotificationChannelRequest(
    api.VerifyNotificationChannelRequest o) {
  buildCounterVerifyNotificationChannelRequest++;
  if (buildCounterVerifyNotificationChannelRequest < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterVerifyNotificationChannelRequest--;
}

core.int buildCounterWindowsBasedSli = 0;
api.WindowsBasedSli buildWindowsBasedSli() {
  final o = api.WindowsBasedSli();
  buildCounterWindowsBasedSli++;
  if (buildCounterWindowsBasedSli < 3) {
    o.goodBadMetricFilter = 'foo';
    o.goodTotalRatioThreshold = buildPerformanceThreshold();
    o.metricMeanInRange = buildMetricRange();
    o.metricSumInRange = buildMetricRange();
    o.windowPeriod = 'foo';
  }
  buildCounterWindowsBasedSli--;
  return o;
}

void checkWindowsBasedSli(api.WindowsBasedSli o) {
  buildCounterWindowsBasedSli++;
  if (buildCounterWindowsBasedSli < 3) {
    unittest.expect(
      o.goodBadMetricFilter!,
      unittest.equals('foo'),
    );
    checkPerformanceThreshold(o.goodTotalRatioThreshold!);
    checkMetricRange(o.metricMeanInRange!);
    checkMetricRange(o.metricSumInRange!);
    unittest.expect(
      o.windowPeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterWindowsBasedSli--;
}

core.List<core.String> buildUnnamed64() => [
      'foo',
      'foo',
    ];

void checkUnnamed64(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed65() => [
      'foo',
      'foo',
    ];

void checkUnnamed65(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed66() => [
      'foo',
      'foo',
    ];

void checkUnnamed66(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed67() => [
      'foo',
      'foo',
    ];

void checkUnnamed67(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed68() => [
      'foo',
      'foo',
    ];

void checkUnnamed68(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-Aggregation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Aggregation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregation(od);
    });
  });

  unittest.group('obj-schema-AlertPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlertPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlertPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAlertPolicy(od);
    });
  });

  unittest.group('obj-schema-AlertStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlertStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlertStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAlertStrategy(od);
    });
  });

  unittest.group('obj-schema-AppEngine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppEngine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppEngine.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppEngine(od);
    });
  });

  unittest.group('obj-schema-AvailabilityCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAvailabilityCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AvailabilityCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAvailabilityCriteria(od);
    });
  });

  unittest.group('obj-schema-BasicAuthentication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicAuthentication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicAuthentication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBasicAuthentication(od);
    });
  });

  unittest.group('obj-schema-BasicSli', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicSli();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BasicSli.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBasicSli(od);
    });
  });

  unittest.group('obj-schema-BucketOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketOptions(od);
    });
  });

  unittest.group('obj-schema-CloudEndpoints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudEndpoints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudEndpoints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudEndpoints(od);
    });
  });

  unittest.group('obj-schema-ClusterIstio', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterIstio();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterIstio.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterIstio(od);
    });
  });

  unittest.group('obj-schema-CollectdPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollectdPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollectdPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCollectdPayload(od);
    });
  });

  unittest.group('obj-schema-CollectdPayloadError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollectdPayloadError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollectdPayloadError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCollectdPayloadError(od);
    });
  });

  unittest.group('obj-schema-CollectdValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollectdValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollectdValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCollectdValue(od);
    });
  });

  unittest.group('obj-schema-CollectdValueError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCollectdValueError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CollectdValueError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCollectdValueError(od);
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

  unittest.group('obj-schema-ContentMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContentMatcher(od);
    });
  });

  unittest.group('obj-schema-CreateCollectdTimeSeriesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateCollectdTimeSeriesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateCollectdTimeSeriesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateCollectdTimeSeriesRequest(od);
    });
  });

  unittest.group('obj-schema-CreateCollectdTimeSeriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateCollectdTimeSeriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateCollectdTimeSeriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateCollectdTimeSeriesResponse(od);
    });
  });

  unittest.group('obj-schema-CreateTimeSeriesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateTimeSeriesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateTimeSeriesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateTimeSeriesRequest(od);
    });
  });

  unittest.group('obj-schema-CreateTimeSeriesSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateTimeSeriesSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateTimeSeriesSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateTimeSeriesSummary(od);
    });
  });

  unittest.group('obj-schema-Custom', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Custom.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCustom(od);
    });
  });

  unittest.group('obj-schema-Distribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Distribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDistribution(od);
    });
  });

  unittest.group('obj-schema-DistributionCut', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDistributionCut();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DistributionCut.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDistributionCut(od);
    });
  });

  unittest.group('obj-schema-Documentation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Documentation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentation(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Error', () {
    unittest.test('to-json--from-json', () async {
      final o = buildError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Error.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkError(od);
    });
  });

  unittest.group('obj-schema-Exemplar', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExemplar();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Exemplar.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExemplar(od);
    });
  });

  unittest.group('obj-schema-Explicit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExplicit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Explicit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExplicit(od);
    });
  });

  unittest.group('obj-schema-Exponential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExponential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Exponential.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExponential(od);
    });
  });

  unittest.group('obj-schema-GetNotificationChannelVerificationCodeRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetNotificationChannelVerificationCodeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetNotificationChannelVerificationCodeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetNotificationChannelVerificationCodeRequest(od);
    });
  });

  unittest.group('obj-schema-GetNotificationChannelVerificationCodeResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetNotificationChannelVerificationCodeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetNotificationChannelVerificationCodeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetNotificationChannelVerificationCodeResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleMonitoringV3Range', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMonitoringV3Range();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMonitoringV3Range.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMonitoringV3Range(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Group.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-HttpCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpCheck.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpCheck(od);
    });
  });

  unittest.group('obj-schema-InternalChecker', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInternalChecker();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InternalChecker.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInternalChecker(od);
    });
  });

  unittest.group('obj-schema-IstioCanonicalService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIstioCanonicalService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IstioCanonicalService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIstioCanonicalService(od);
    });
  });

  unittest.group('obj-schema-LabelDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LabelDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLabelDescriptor(od);
    });
  });

  unittest.group('obj-schema-LabelValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LabelValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLabelValue(od);
    });
  });

  unittest.group('obj-schema-LatencyCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatencyCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatencyCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLatencyCriteria(od);
    });
  });

  unittest.group('obj-schema-Linear', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinear();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Linear.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLinear(od);
    });
  });

  unittest.group('obj-schema-ListAlertPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAlertPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAlertPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAlertPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGroupMembersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGroupMembersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGroupMembersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGroupMembersResponse(od);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMetricDescriptorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMetricDescriptorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMetricDescriptorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMetricDescriptorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMonitoredResourceDescriptorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMonitoredResourceDescriptorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMonitoredResourceDescriptorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMonitoredResourceDescriptorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNotificationChannelDescriptorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNotificationChannelDescriptorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNotificationChannelDescriptorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNotificationChannelDescriptorsResponse(od);
    });
  });

  unittest.group('obj-schema-ListNotificationChannelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNotificationChannelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNotificationChannelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNotificationChannelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListServiceLevelObjectivesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServiceLevelObjectivesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServiceLevelObjectivesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListServiceLevelObjectivesResponse(od);
    });
  });

  unittest.group('obj-schema-ListServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListServicesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTimeSeriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTimeSeriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTimeSeriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTimeSeriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListUptimeCheckConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUptimeCheckConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUptimeCheckConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUptimeCheckConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUptimeCheckIpsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUptimeCheckIpsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUptimeCheckIpsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUptimeCheckIpsResponse(od);
    });
  });

  unittest.group('obj-schema-LogMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LogMatch.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLogMatch(od);
    });
  });

  unittest.group('obj-schema-MeshIstio', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMeshIstio();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MeshIstio.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMeshIstio(od);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metric.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetric(od);
    });
  });

  unittest.group('obj-schema-MetricAbsence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricAbsence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricAbsence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricAbsence(od);
    });
  });

  unittest.group('obj-schema-MetricDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricDescriptor(od);
    });
  });

  unittest.group('obj-schema-MetricDescriptorMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricDescriptorMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricDescriptorMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricDescriptorMetadata(od);
    });
  });

  unittest.group('obj-schema-MetricRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricRange(od);
    });
  });

  unittest.group('obj-schema-MetricThreshold', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricThreshold();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricThreshold.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricThreshold(od);
    });
  });

  unittest.group('obj-schema-MonitoredResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoredResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoredResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoredResource(od);
    });
  });

  unittest.group('obj-schema-MonitoredResourceDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoredResourceDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoredResourceDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoredResourceDescriptor(od);
    });
  });

  unittest.group('obj-schema-MonitoredResourceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoredResourceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoredResourceMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoredResourceMetadata(od);
    });
  });

  unittest.group('obj-schema-MonitoringQueryLanguageCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoringQueryLanguageCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoringQueryLanguageCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoringQueryLanguageCondition(od);
    });
  });

  unittest.group('obj-schema-MutationRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMutationRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MutationRecord.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMutationRecord(od);
    });
  });

  unittest.group('obj-schema-NotificationChannel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationChannel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotificationChannel(od);
    });
  });

  unittest.group('obj-schema-NotificationChannelDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationChannelDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationChannelDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotificationChannelDescriptor(od);
    });
  });

  unittest.group('obj-schema-NotificationRateLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationRateLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationRateLimit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotificationRateLimit(od);
    });
  });

  unittest.group('obj-schema-PerformanceThreshold', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerformanceThreshold();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerformanceThreshold.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerformanceThreshold(od);
    });
  });

  unittest.group('obj-schema-Point', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Point.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPoint(od);
    });
  });

  unittest.group('obj-schema-PointData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPointData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PointData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPointData(od);
    });
  });

  unittest.group('obj-schema-QueryTimeSeriesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryTimeSeriesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryTimeSeriesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryTimeSeriesRequest(od);
    });
  });

  unittest.group('obj-schema-QueryTimeSeriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryTimeSeriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryTimeSeriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryTimeSeriesResponse(od);
    });
  });

  unittest.group('obj-schema-Range', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Range.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRange(od);
    });
  });

  unittest.group('obj-schema-RequestBasedSli', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestBasedSli();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestBasedSli.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRequestBasedSli(od);
    });
  });

  unittest.group('obj-schema-ResourceGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceGroup(od);
    });
  });

  unittest.group('obj-schema-SendNotificationChannelVerificationCodeRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendNotificationChannelVerificationCodeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendNotificationChannelVerificationCodeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSendNotificationChannelVerificationCodeRequest(od);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Service.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkService(od);
    });
  });

  unittest.group('obj-schema-ServiceLevelIndicator', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceLevelIndicator();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceLevelIndicator.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceLevelIndicator(od);
    });
  });

  unittest.group('obj-schema-ServiceLevelObjective', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceLevelObjective();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceLevelObjective.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceLevelObjective(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TcpCheck', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTcpCheck();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TcpCheck.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTcpCheck(od);
    });
  });

  unittest.group('obj-schema-Telemetry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTelemetry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Telemetry.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTelemetry(od);
    });
  });

  unittest.group('obj-schema-TimeInterval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeInterval.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimeInterval(od);
    });
  });

  unittest.group('obj-schema-TimeSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeSeries.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeSeries(od);
    });
  });

  unittest.group('obj-schema-TimeSeriesData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeSeriesData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeSeriesData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimeSeriesData(od);
    });
  });

  unittest.group('obj-schema-TimeSeriesDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeSeriesDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeSeriesDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimeSeriesDescriptor(od);
    });
  });

  unittest.group('obj-schema-TimeSeriesRatio', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeSeriesRatio();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeSeriesRatio.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimeSeriesRatio(od);
    });
  });

  unittest.group('obj-schema-Trigger', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrigger();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Trigger.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTrigger(od);
    });
  });

  unittest.group('obj-schema-TypedValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypedValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TypedValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTypedValue(od);
    });
  });

  unittest.group('obj-schema-UptimeCheckConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUptimeCheckConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UptimeCheckConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUptimeCheckConfig(od);
    });
  });

  unittest.group('obj-schema-UptimeCheckIp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUptimeCheckIp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UptimeCheckIp.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUptimeCheckIp(od);
    });
  });

  unittest.group('obj-schema-ValueDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValueDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValueDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValueDescriptor(od);
    });
  });

  unittest.group('obj-schema-VerifyNotificationChannelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerifyNotificationChannelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerifyNotificationChannelRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerifyNotificationChannelRequest(od);
    });
  });

  unittest.group('obj-schema-WindowsBasedSli', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsBasedSli();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsBasedSli.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWindowsBasedSli(od);
    });
  });

  unittest.group('resource-FoldersTimeSeriesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).folders.timeSeries;
      final arg_name = 'foo';
      final arg_aggregation_alignmentPeriod = 'foo';
      final arg_aggregation_crossSeriesReducer = 'foo';
      final arg_aggregation_groupByFields = buildUnnamed64();
      final arg_aggregation_perSeriesAligner = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime = 'foo';
      final arg_interval_startTime = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_secondaryAggregation_alignmentPeriod = 'foo';
      final arg_secondaryAggregation_crossSeriesReducer = 'foo';
      final arg_secondaryAggregation_groupByFields = buildUnnamed65();
      final arg_secondaryAggregation_perSeriesAligner = 'foo';
      final arg_view = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['aggregation.alignmentPeriod']!.first,
          unittest.equals(arg_aggregation_alignmentPeriod),
        );
        unittest.expect(
          queryMap['aggregation.crossSeriesReducer']!.first,
          unittest.equals(arg_aggregation_crossSeriesReducer),
        );
        unittest.expect(
          queryMap['aggregation.groupByFields']!,
          unittest.equals(arg_aggregation_groupByFields),
        );
        unittest.expect(
          queryMap['aggregation.perSeriesAligner']!.first,
          unittest.equals(arg_aggregation_perSeriesAligner),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['interval.endTime']!.first,
          unittest.equals(arg_interval_endTime),
        );
        unittest.expect(
          queryMap['interval.startTime']!.first,
          unittest.equals(arg_interval_startTime),
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
          queryMap['secondaryAggregation.alignmentPeriod']!.first,
          unittest.equals(arg_secondaryAggregation_alignmentPeriod),
        );
        unittest.expect(
          queryMap['secondaryAggregation.crossSeriesReducer']!.first,
          unittest.equals(arg_secondaryAggregation_crossSeriesReducer),
        );
        unittest.expect(
          queryMap['secondaryAggregation.groupByFields']!,
          unittest.equals(arg_secondaryAggregation_groupByFields),
        );
        unittest.expect(
          queryMap['secondaryAggregation.perSeriesAligner']!.first,
          unittest.equals(arg_secondaryAggregation_perSeriesAligner),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListTimeSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          aggregation_alignmentPeriod: arg_aggregation_alignmentPeriod,
          aggregation_crossSeriesReducer: arg_aggregation_crossSeriesReducer,
          aggregation_groupByFields: arg_aggregation_groupByFields,
          aggregation_perSeriesAligner: arg_aggregation_perSeriesAligner,
          filter: arg_filter,
          interval_endTime: arg_interval_endTime,
          interval_startTime: arg_interval_startTime,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          secondaryAggregation_alignmentPeriod:
              arg_secondaryAggregation_alignmentPeriod,
          secondaryAggregation_crossSeriesReducer:
              arg_secondaryAggregation_crossSeriesReducer,
          secondaryAggregation_groupByFields:
              arg_secondaryAggregation_groupByFields,
          secondaryAggregation_perSeriesAligner:
              arg_secondaryAggregation_perSeriesAligner,
          view: arg_view,
          $fields: arg_$fields);
      checkListTimeSeriesResponse(response as api.ListTimeSeriesResponse);
    });
  });

  unittest.group('resource-OrganizationsTimeSeriesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).organizations.timeSeries;
      final arg_name = 'foo';
      final arg_aggregation_alignmentPeriod = 'foo';
      final arg_aggregation_crossSeriesReducer = 'foo';
      final arg_aggregation_groupByFields = buildUnnamed66();
      final arg_aggregation_perSeriesAligner = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime = 'foo';
      final arg_interval_startTime = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_secondaryAggregation_alignmentPeriod = 'foo';
      final arg_secondaryAggregation_crossSeriesReducer = 'foo';
      final arg_secondaryAggregation_groupByFields = buildUnnamed67();
      final arg_secondaryAggregation_perSeriesAligner = 'foo';
      final arg_view = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['aggregation.alignmentPeriod']!.first,
          unittest.equals(arg_aggregation_alignmentPeriod),
        );
        unittest.expect(
          queryMap['aggregation.crossSeriesReducer']!.first,
          unittest.equals(arg_aggregation_crossSeriesReducer),
        );
        unittest.expect(
          queryMap['aggregation.groupByFields']!,
          unittest.equals(arg_aggregation_groupByFields),
        );
        unittest.expect(
          queryMap['aggregation.perSeriesAligner']!.first,
          unittest.equals(arg_aggregation_perSeriesAligner),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['interval.endTime']!.first,
          unittest.equals(arg_interval_endTime),
        );
        unittest.expect(
          queryMap['interval.startTime']!.first,
          unittest.equals(arg_interval_startTime),
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
          queryMap['secondaryAggregation.alignmentPeriod']!.first,
          unittest.equals(arg_secondaryAggregation_alignmentPeriod),
        );
        unittest.expect(
          queryMap['secondaryAggregation.crossSeriesReducer']!.first,
          unittest.equals(arg_secondaryAggregation_crossSeriesReducer),
        );
        unittest.expect(
          queryMap['secondaryAggregation.groupByFields']!,
          unittest.equals(arg_secondaryAggregation_groupByFields),
        );
        unittest.expect(
          queryMap['secondaryAggregation.perSeriesAligner']!.first,
          unittest.equals(arg_secondaryAggregation_perSeriesAligner),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListTimeSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          aggregation_alignmentPeriod: arg_aggregation_alignmentPeriod,
          aggregation_crossSeriesReducer: arg_aggregation_crossSeriesReducer,
          aggregation_groupByFields: arg_aggregation_groupByFields,
          aggregation_perSeriesAligner: arg_aggregation_perSeriesAligner,
          filter: arg_filter,
          interval_endTime: arg_interval_endTime,
          interval_startTime: arg_interval_startTime,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          secondaryAggregation_alignmentPeriod:
              arg_secondaryAggregation_alignmentPeriod,
          secondaryAggregation_crossSeriesReducer:
              arg_secondaryAggregation_crossSeriesReducer,
          secondaryAggregation_groupByFields:
              arg_secondaryAggregation_groupByFields,
          secondaryAggregation_perSeriesAligner:
              arg_secondaryAggregation_perSeriesAligner,
          view: arg_view,
          $fields: arg_$fields);
      checkListTimeSeriesResponse(response as api.ListTimeSeriesResponse);
    });
  });

  unittest.group('resource-ProjectsAlertPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.alertPolicies;
      final arg_request = buildAlertPolicy();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AlertPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAlertPolicy(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildAlertPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_name, $fields: arg_$fields);
      checkAlertPolicy(response as api.AlertPolicy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.alertPolicies;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.alertPolicies;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildAlertPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAlertPolicy(response as api.AlertPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.alertPolicies;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildListAlertPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAlertPoliciesResponse(response as api.ListAlertPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.alertPolicies;
      final arg_request = buildAlertPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AlertPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAlertPolicy(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildAlertPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkAlertPolicy(response as api.AlertPolicy);
    });
  });

  unittest.group('resource-ProjectsCollectdTimeSeriesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.collectdTimeSeries;
      final arg_request = buildCreateCollectdTimeSeriesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateCollectdTimeSeriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateCollectdTimeSeriesRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildCreateCollectdTimeSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_name, $fields: arg_$fields);
      checkCreateCollectdTimeSeriesResponse(
          response as api.CreateCollectdTimeSeriesResponse);
    });
  });

  unittest.group('resource-ProjectsGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.groups;
      final arg_request = buildGroup();
      final arg_name = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_name,
          validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.groups;
      final arg_name = 'foo';
      final arg_recursive = true;
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
          unittest.equals('v3/'),
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
          queryMap['recursive']!.first,
          unittest.equals('$arg_recursive'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          recursive: arg_recursive, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.groups;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.groups;
      final arg_name = 'foo';
      final arg_ancestorsOfGroup = 'foo';
      final arg_childrenOfGroup = 'foo';
      final arg_descendantsOfGroup = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v3/'),
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
          queryMap['ancestorsOfGroup']!.first,
          unittest.equals(arg_ancestorsOfGroup),
        );
        unittest.expect(
          queryMap['childrenOfGroup']!.first,
          unittest.equals(arg_childrenOfGroup),
        );
        unittest.expect(
          queryMap['descendantsOfGroup']!.first,
          unittest.equals(arg_descendantsOfGroup),
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
        final resp = convert.json.encode(buildListGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          ancestorsOfGroup: arg_ancestorsOfGroup,
          childrenOfGroup: arg_childrenOfGroup,
          descendantsOfGroup: arg_descendantsOfGroup,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGroupsResponse(response as api.ListGroupsResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.groups;
      final arg_request = buildGroup();
      final arg_name = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_name,
          validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });
  });

  unittest.group('resource-ProjectsGroupsMembersResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.groups.members;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime = 'foo';
      final arg_interval_startTime = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v3/'),
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['interval.endTime']!.first,
          unittest.equals(arg_interval_endTime),
        );
        unittest.expect(
          queryMap['interval.startTime']!.first,
          unittest.equals(arg_interval_startTime),
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
        final resp = convert.json.encode(buildListGroupMembersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          interval_endTime: arg_interval_endTime,
          interval_startTime: arg_interval_startTime,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGroupMembersResponse(response as api.ListGroupMembersResponse);
    });
  });

  unittest.group('resource-ProjectsMetricDescriptorsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.metricDescriptors;
      final arg_request = buildMetricDescriptor();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MetricDescriptor.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMetricDescriptor(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildMetricDescriptor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_name, $fields: arg_$fields);
      checkMetricDescriptor(response as api.MetricDescriptor);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.metricDescriptors;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.metricDescriptors;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildMetricDescriptor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMetricDescriptor(response as api.MetricDescriptor);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.metricDescriptors;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildListMetricDescriptorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListMetricDescriptorsResponse(
          response as api.ListMetricDescriptorsResponse);
    });
  });

  unittest.group('resource-ProjectsMonitoredResourceDescriptorsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.monitoredResourceDescriptors;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildMonitoredResourceDescriptor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMonitoredResourceDescriptor(
          response as api.MonitoredResourceDescriptor);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.monitoredResourceDescriptors;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildListMonitoredResourceDescriptorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListMonitoredResourceDescriptorsResponse(
          response as api.ListMonitoredResourceDescriptorsResponse);
    });
  });

  unittest.group('resource-ProjectsNotificationChannelDescriptorsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.MonitoringApi(mock).projects.notificationChannelDescriptors;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildNotificationChannelDescriptor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNotificationChannelDescriptor(
          response as api.NotificationChannelDescriptor);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.MonitoringApi(mock).projects.notificationChannelDescriptors;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildListNotificationChannelDescriptorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNotificationChannelDescriptorsResponse(
          response as api.ListNotificationChannelDescriptorsResponse);
    });
  });

  unittest.group('resource-ProjectsNotificationChannelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.notificationChannels;
      final arg_request = buildNotificationChannel();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.NotificationChannel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkNotificationChannel(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildNotificationChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_name, $fields: arg_$fields);
      checkNotificationChannel(response as api.NotificationChannel);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.notificationChannels;
      final arg_name = 'foo';
      final arg_force = true;
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
          unittest.equals('v3/'),
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.notificationChannels;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildNotificationChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNotificationChannel(response as api.NotificationChannel);
    });

    unittest.test('method--getVerificationCode', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.notificationChannels;
      final arg_request = buildGetNotificationChannelVerificationCodeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetNotificationChannelVerificationCodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetNotificationChannelVerificationCodeRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGetNotificationChannelVerificationCodeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getVerificationCode(arg_request, arg_name,
          $fields: arg_$fields);
      checkGetNotificationChannelVerificationCodeResponse(
          response as api.GetNotificationChannelVerificationCodeResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.notificationChannels;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildListNotificationChannelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNotificationChannelsResponse(
          response as api.ListNotificationChannelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.notificationChannels;
      final arg_request = buildNotificationChannel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.NotificationChannel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkNotificationChannel(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildNotificationChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkNotificationChannel(response as api.NotificationChannel);
    });

    unittest.test('method--sendVerificationCode', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.notificationChannels;
      final arg_request = buildSendNotificationChannelVerificationCodeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SendNotificationChannelVerificationCodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendNotificationChannelVerificationCodeRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.sendVerificationCode(arg_request, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--verify', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.notificationChannels;
      final arg_request = buildVerifyNotificationChannelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.VerifyNotificationChannelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVerifyNotificationChannelRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildNotificationChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.verify(arg_request, arg_name, $fields: arg_$fields);
      checkNotificationChannel(response as api.NotificationChannel);
    });
  });

  unittest.group('resource-ProjectsTimeSeriesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.timeSeries;
      final arg_request = buildCreateTimeSeriesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateTimeSeriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateTimeSeriesRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--createService', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.timeSeries;
      final arg_request = buildCreateTimeSeriesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateTimeSeriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateTimeSeriesRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createService(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.timeSeries;
      final arg_name = 'foo';
      final arg_aggregation_alignmentPeriod = 'foo';
      final arg_aggregation_crossSeriesReducer = 'foo';
      final arg_aggregation_groupByFields = buildUnnamed68();
      final arg_aggregation_perSeriesAligner = 'foo';
      final arg_filter = 'foo';
      final arg_interval_endTime = 'foo';
      final arg_interval_startTime = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_secondaryAggregation_alignmentPeriod = 'foo';
      final arg_secondaryAggregation_crossSeriesReducer = 'foo';
      final arg_secondaryAggregation_groupByFields = buildUnnamed69();
      final arg_secondaryAggregation_perSeriesAligner = 'foo';
      final arg_view = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['aggregation.alignmentPeriod']!.first,
          unittest.equals(arg_aggregation_alignmentPeriod),
        );
        unittest.expect(
          queryMap['aggregation.crossSeriesReducer']!.first,
          unittest.equals(arg_aggregation_crossSeriesReducer),
        );
        unittest.expect(
          queryMap['aggregation.groupByFields']!,
          unittest.equals(arg_aggregation_groupByFields),
        );
        unittest.expect(
          queryMap['aggregation.perSeriesAligner']!.first,
          unittest.equals(arg_aggregation_perSeriesAligner),
        );
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['interval.endTime']!.first,
          unittest.equals(arg_interval_endTime),
        );
        unittest.expect(
          queryMap['interval.startTime']!.first,
          unittest.equals(arg_interval_startTime),
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
          queryMap['secondaryAggregation.alignmentPeriod']!.first,
          unittest.equals(arg_secondaryAggregation_alignmentPeriod),
        );
        unittest.expect(
          queryMap['secondaryAggregation.crossSeriesReducer']!.first,
          unittest.equals(arg_secondaryAggregation_crossSeriesReducer),
        );
        unittest.expect(
          queryMap['secondaryAggregation.groupByFields']!,
          unittest.equals(arg_secondaryAggregation_groupByFields),
        );
        unittest.expect(
          queryMap['secondaryAggregation.perSeriesAligner']!.first,
          unittest.equals(arg_secondaryAggregation_perSeriesAligner),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListTimeSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          aggregation_alignmentPeriod: arg_aggregation_alignmentPeriod,
          aggregation_crossSeriesReducer: arg_aggregation_crossSeriesReducer,
          aggregation_groupByFields: arg_aggregation_groupByFields,
          aggregation_perSeriesAligner: arg_aggregation_perSeriesAligner,
          filter: arg_filter,
          interval_endTime: arg_interval_endTime,
          interval_startTime: arg_interval_startTime,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          secondaryAggregation_alignmentPeriod:
              arg_secondaryAggregation_alignmentPeriod,
          secondaryAggregation_crossSeriesReducer:
              arg_secondaryAggregation_crossSeriesReducer,
          secondaryAggregation_groupByFields:
              arg_secondaryAggregation_groupByFields,
          secondaryAggregation_perSeriesAligner:
              arg_secondaryAggregation_perSeriesAligner,
          view: arg_view,
          $fields: arg_$fields);
      checkListTimeSeriesResponse(response as api.ListTimeSeriesResponse);
    });

    unittest.test('method--query', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.timeSeries;
      final arg_request = buildQueryTimeSeriesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.QueryTimeSeriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryTimeSeriesRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildQueryTimeSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.query(arg_request, arg_name, $fields: arg_$fields);
      checkQueryTimeSeriesResponse(response as api.QueryTimeSeriesResponse);
    });
  });

  unittest.group('resource-ProjectsUptimeCheckConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      final arg_request = buildUptimeCheckConfig();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UptimeCheckConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUptimeCheckConfig(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildUptimeCheckConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkUptimeCheckConfig(response as api.UptimeCheckConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildUptimeCheckConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUptimeCheckConfig(response as api.UptimeCheckConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.uptimeCheckConfigs;
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildListUptimeCheckConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListUptimeCheckConfigsResponse(
          response as api.ListUptimeCheckConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      final arg_request = buildUptimeCheckConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UptimeCheckConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUptimeCheckConfig(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildUptimeCheckConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkUptimeCheckConfig(response as api.UptimeCheckConfig);
    });
  });

  unittest.group('resource-ServicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).services;
      final arg_request = buildService();
      final arg_parent = 'foo';
      final arg_serviceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Service.fromJson(json as core.Map<core.String, core.dynamic>);
        checkService(obj);

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
          unittest.equals('v3/'),
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
          queryMap['serviceId']!.first,
          unittest.equals(arg_serviceId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          serviceId: arg_serviceId, $fields: arg_$fields);
      checkService(response as api.Service);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).services;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).services;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkService(response as api.Service);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).services;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListServicesResponse(response as api.ListServicesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).services;
      final arg_request = buildService();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Service.fromJson(json as core.Map<core.String, core.dynamic>);
        checkService(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkService(response as api.Service);
    });
  });

  unittest.group('resource-ServicesServiceLevelObjectivesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).services.serviceLevelObjectives;
      final arg_request = buildServiceLevelObjective();
      final arg_parent = 'foo';
      final arg_serviceLevelObjectiveId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServiceLevelObjective.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceLevelObjective(obj);

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
          unittest.equals('v3/'),
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
          queryMap['serviceLevelObjectiveId']!.first,
          unittest.equals(arg_serviceLevelObjectiveId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServiceLevelObjective());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          serviceLevelObjectiveId: arg_serviceLevelObjectiveId,
          $fields: arg_$fields);
      checkServiceLevelObjective(response as api.ServiceLevelObjective);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).services.serviceLevelObjectives;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).services.serviceLevelObjectives;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServiceLevelObjective());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkServiceLevelObjective(response as api.ServiceLevelObjective);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).services.serviceLevelObjectives;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListServiceLevelObjectivesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListServiceLevelObjectivesResponse(
          response as api.ListServiceLevelObjectivesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).services.serviceLevelObjectives;
      final arg_request = buildServiceLevelObjective();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServiceLevelObjective.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceLevelObjective(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildServiceLevelObjective());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkServiceLevelObjective(response as api.ServiceLevelObjective);
    });
  });

  unittest.group('resource-UptimeCheckIpsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MonitoringApi(mock).uptimeCheckIps;
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v3/uptimeCheckIps'),
        );
        pathOffset += 17;

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
        final resp = convert.json.encode(buildListUptimeCheckIpsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListUptimeCheckIpsResponse(
          response as api.ListUptimeCheckIpsResponse);
    });
  });
}
