// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/monitoring/v3.dart' as api;

import '../test_shared.dart';

core.List<core.String> buildUnnamed2297() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2297(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAggregation = 0;
api.Aggregation buildAggregation() {
  var o = api.Aggregation();
  buildCounterAggregation++;
  if (buildCounterAggregation < 3) {
    o.alignmentPeriod = 'foo';
    o.crossSeriesReducer = 'foo';
    o.groupByFields = buildUnnamed2297();
    o.perSeriesAligner = 'foo';
  }
  buildCounterAggregation--;
  return o;
}

void checkAggregation(api.Aggregation o) {
  buildCounterAggregation++;
  if (buildCounterAggregation < 3) {
    unittest.expect(o.alignmentPeriod, unittest.equals('foo'));
    unittest.expect(o.crossSeriesReducer, unittest.equals('foo'));
    checkUnnamed2297(o.groupByFields);
    unittest.expect(o.perSeriesAligner, unittest.equals('foo'));
  }
  buildCounterAggregation--;
}

core.List<api.Condition> buildUnnamed2298() {
  var o = <api.Condition>[];
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

void checkUnnamed2298(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0] as api.Condition);
  checkCondition(o[1] as api.Condition);
}

core.List<core.String> buildUnnamed2299() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2299(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2300() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2300(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterAlertPolicy = 0;
api.AlertPolicy buildAlertPolicy() {
  var o = api.AlertPolicy();
  buildCounterAlertPolicy++;
  if (buildCounterAlertPolicy < 3) {
    o.combiner = 'foo';
    o.conditions = buildUnnamed2298();
    o.creationRecord = buildMutationRecord();
    o.displayName = 'foo';
    o.documentation = buildDocumentation();
    o.enabled = true;
    o.mutationRecord = buildMutationRecord();
    o.name = 'foo';
    o.notificationChannels = buildUnnamed2299();
    o.userLabels = buildUnnamed2300();
    o.validity = buildStatus();
  }
  buildCounterAlertPolicy--;
  return o;
}

void checkAlertPolicy(api.AlertPolicy o) {
  buildCounterAlertPolicy++;
  if (buildCounterAlertPolicy < 3) {
    unittest.expect(o.combiner, unittest.equals('foo'));
    checkUnnamed2298(o.conditions);
    checkMutationRecord(o.creationRecord as api.MutationRecord);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkDocumentation(o.documentation as api.Documentation);
    unittest.expect(o.enabled, unittest.isTrue);
    checkMutationRecord(o.mutationRecord as api.MutationRecord);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2299(o.notificationChannels);
    checkUnnamed2300(o.userLabels);
    checkStatus(o.validity as api.Status);
  }
  buildCounterAlertPolicy--;
}

core.int buildCounterAppEngine = 0;
api.AppEngine buildAppEngine() {
  var o = api.AppEngine();
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
    unittest.expect(o.moduleId, unittest.equals('foo'));
  }
  buildCounterAppEngine--;
}

core.int buildCounterAvailabilityCriteria = 0;
api.AvailabilityCriteria buildAvailabilityCriteria() {
  var o = api.AvailabilityCriteria();
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
  var o = api.BasicAuthentication();
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
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterBasicAuthentication--;
}

core.List<core.String> buildUnnamed2301() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2301(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2302() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2302(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2303() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2303(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBasicSli = 0;
api.BasicSli buildBasicSli() {
  var o = api.BasicSli();
  buildCounterBasicSli++;
  if (buildCounterBasicSli < 3) {
    o.availability = buildAvailabilityCriteria();
    o.latency = buildLatencyCriteria();
    o.location = buildUnnamed2301();
    o.method = buildUnnamed2302();
    o.version = buildUnnamed2303();
  }
  buildCounterBasicSli--;
  return o;
}

void checkBasicSli(api.BasicSli o) {
  buildCounterBasicSli++;
  if (buildCounterBasicSli < 3) {
    checkAvailabilityCriteria(o.availability as api.AvailabilityCriteria);
    checkLatencyCriteria(o.latency as api.LatencyCriteria);
    checkUnnamed2301(o.location);
    checkUnnamed2302(o.method);
    checkUnnamed2303(o.version);
  }
  buildCounterBasicSli--;
}

core.int buildCounterBucketOptions = 0;
api.BucketOptions buildBucketOptions() {
  var o = api.BucketOptions();
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
    checkExplicit(o.explicitBuckets as api.Explicit);
    checkExponential(o.exponentialBuckets as api.Exponential);
    checkLinear(o.linearBuckets as api.Linear);
  }
  buildCounterBucketOptions--;
}

core.int buildCounterCloudEndpoints = 0;
api.CloudEndpoints buildCloudEndpoints() {
  var o = api.CloudEndpoints();
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
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterCloudEndpoints--;
}

core.int buildCounterClusterIstio = 0;
api.ClusterIstio buildClusterIstio() {
  var o = api.ClusterIstio();
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
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
    unittest.expect(o.serviceNamespace, unittest.equals('foo'));
  }
  buildCounterClusterIstio--;
}

core.Map<core.String, api.TypedValue> buildUnnamed2304() {
  var o = <core.String, api.TypedValue>{};
  o['x'] = buildTypedValue();
  o['y'] = buildTypedValue();
  return o;
}

void checkUnnamed2304(core.Map<core.String, api.TypedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTypedValue(o['x'] as api.TypedValue);
  checkTypedValue(o['y'] as api.TypedValue);
}

core.List<api.CollectdValue> buildUnnamed2305() {
  var o = <api.CollectdValue>[];
  o.add(buildCollectdValue());
  o.add(buildCollectdValue());
  return o;
}

void checkUnnamed2305(core.List<api.CollectdValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectdValue(o[0] as api.CollectdValue);
  checkCollectdValue(o[1] as api.CollectdValue);
}

core.int buildCounterCollectdPayload = 0;
api.CollectdPayload buildCollectdPayload() {
  var o = api.CollectdPayload();
  buildCounterCollectdPayload++;
  if (buildCounterCollectdPayload < 3) {
    o.endTime = 'foo';
    o.metadata = buildUnnamed2304();
    o.plugin = 'foo';
    o.pluginInstance = 'foo';
    o.startTime = 'foo';
    o.type = 'foo';
    o.typeInstance = 'foo';
    o.values = buildUnnamed2305();
  }
  buildCounterCollectdPayload--;
  return o;
}

void checkCollectdPayload(api.CollectdPayload o) {
  buildCounterCollectdPayload++;
  if (buildCounterCollectdPayload < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed2304(o.metadata);
    unittest.expect(o.plugin, unittest.equals('foo'));
    unittest.expect(o.pluginInstance, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.typeInstance, unittest.equals('foo'));
    checkUnnamed2305(o.values);
  }
  buildCounterCollectdPayload--;
}

core.List<api.CollectdValueError> buildUnnamed2306() {
  var o = <api.CollectdValueError>[];
  o.add(buildCollectdValueError());
  o.add(buildCollectdValueError());
  return o;
}

void checkUnnamed2306(core.List<api.CollectdValueError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectdValueError(o[0] as api.CollectdValueError);
  checkCollectdValueError(o[1] as api.CollectdValueError);
}

core.int buildCounterCollectdPayloadError = 0;
api.CollectdPayloadError buildCollectdPayloadError() {
  var o = api.CollectdPayloadError();
  buildCounterCollectdPayloadError++;
  if (buildCounterCollectdPayloadError < 3) {
    o.error = buildStatus();
    o.index = 42;
    o.valueErrors = buildUnnamed2306();
  }
  buildCounterCollectdPayloadError--;
  return o;
}

void checkCollectdPayloadError(api.CollectdPayloadError o) {
  buildCounterCollectdPayloadError++;
  if (buildCounterCollectdPayloadError < 3) {
    checkStatus(o.error as api.Status);
    unittest.expect(o.index, unittest.equals(42));
    checkUnnamed2306(o.valueErrors);
  }
  buildCounterCollectdPayloadError--;
}

core.int buildCounterCollectdValue = 0;
api.CollectdValue buildCollectdValue() {
  var o = api.CollectdValue();
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
    unittest.expect(o.dataSourceName, unittest.equals('foo'));
    unittest.expect(o.dataSourceType, unittest.equals('foo'));
    checkTypedValue(o.value as api.TypedValue);
  }
  buildCounterCollectdValue--;
}

core.int buildCounterCollectdValueError = 0;
api.CollectdValueError buildCollectdValueError() {
  var o = api.CollectdValueError();
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
    checkStatus(o.error as api.Status);
    unittest.expect(o.index, unittest.equals(42));
  }
  buildCounterCollectdValueError--;
}

core.int buildCounterCondition = 0;
api.Condition buildCondition() {
  var o = api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.conditionAbsent = buildMetricAbsence();
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
    checkMetricAbsence(o.conditionAbsent as api.MetricAbsence);
    checkMonitoringQueryLanguageCondition(o.conditionMonitoringQueryLanguage
        as api.MonitoringQueryLanguageCondition);
    checkMetricThreshold(o.conditionThreshold as api.MetricThreshold);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterCondition--;
}

core.int buildCounterContentMatcher = 0;
api.ContentMatcher buildContentMatcher() {
  var o = api.ContentMatcher();
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
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.matcher, unittest.equals('foo'));
  }
  buildCounterContentMatcher--;
}

core.List<api.CollectdPayload> buildUnnamed2307() {
  var o = <api.CollectdPayload>[];
  o.add(buildCollectdPayload());
  o.add(buildCollectdPayload());
  return o;
}

void checkUnnamed2307(core.List<api.CollectdPayload> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectdPayload(o[0] as api.CollectdPayload);
  checkCollectdPayload(o[1] as api.CollectdPayload);
}

core.int buildCounterCreateCollectdTimeSeriesRequest = 0;
api.CreateCollectdTimeSeriesRequest buildCreateCollectdTimeSeriesRequest() {
  var o = api.CreateCollectdTimeSeriesRequest();
  buildCounterCreateCollectdTimeSeriesRequest++;
  if (buildCounterCreateCollectdTimeSeriesRequest < 3) {
    o.collectdPayloads = buildUnnamed2307();
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
    checkUnnamed2307(o.collectdPayloads);
    unittest.expect(o.collectdVersion, unittest.equals('foo'));
    checkMonitoredResource(o.resource as api.MonitoredResource);
  }
  buildCounterCreateCollectdTimeSeriesRequest--;
}

core.List<api.CollectdPayloadError> buildUnnamed2308() {
  var o = <api.CollectdPayloadError>[];
  o.add(buildCollectdPayloadError());
  o.add(buildCollectdPayloadError());
  return o;
}

void checkUnnamed2308(core.List<api.CollectdPayloadError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectdPayloadError(o[0] as api.CollectdPayloadError);
  checkCollectdPayloadError(o[1] as api.CollectdPayloadError);
}

core.int buildCounterCreateCollectdTimeSeriesResponse = 0;
api.CreateCollectdTimeSeriesResponse buildCreateCollectdTimeSeriesResponse() {
  var o = api.CreateCollectdTimeSeriesResponse();
  buildCounterCreateCollectdTimeSeriesResponse++;
  if (buildCounterCreateCollectdTimeSeriesResponse < 3) {
    o.payloadErrors = buildUnnamed2308();
    o.summary = buildCreateTimeSeriesSummary();
  }
  buildCounterCreateCollectdTimeSeriesResponse--;
  return o;
}

void checkCreateCollectdTimeSeriesResponse(
    api.CreateCollectdTimeSeriesResponse o) {
  buildCounterCreateCollectdTimeSeriesResponse++;
  if (buildCounterCreateCollectdTimeSeriesResponse < 3) {
    checkUnnamed2308(o.payloadErrors);
    checkCreateTimeSeriesSummary(o.summary as api.CreateTimeSeriesSummary);
  }
  buildCounterCreateCollectdTimeSeriesResponse--;
}

core.List<api.TimeSeries> buildUnnamed2309() {
  var o = <api.TimeSeries>[];
  o.add(buildTimeSeries());
  o.add(buildTimeSeries());
  return o;
}

void checkUnnamed2309(core.List<api.TimeSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeSeries(o[0] as api.TimeSeries);
  checkTimeSeries(o[1] as api.TimeSeries);
}

core.int buildCounterCreateTimeSeriesRequest = 0;
api.CreateTimeSeriesRequest buildCreateTimeSeriesRequest() {
  var o = api.CreateTimeSeriesRequest();
  buildCounterCreateTimeSeriesRequest++;
  if (buildCounterCreateTimeSeriesRequest < 3) {
    o.timeSeries = buildUnnamed2309();
  }
  buildCounterCreateTimeSeriesRequest--;
  return o;
}

void checkCreateTimeSeriesRequest(api.CreateTimeSeriesRequest o) {
  buildCounterCreateTimeSeriesRequest++;
  if (buildCounterCreateTimeSeriesRequest < 3) {
    checkUnnamed2309(o.timeSeries);
  }
  buildCounterCreateTimeSeriesRequest--;
}

core.List<api.Error> buildUnnamed2310() {
  var o = <api.Error>[];
  o.add(buildError());
  o.add(buildError());
  return o;
}

void checkUnnamed2310(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0] as api.Error);
  checkError(o[1] as api.Error);
}

core.int buildCounterCreateTimeSeriesSummary = 0;
api.CreateTimeSeriesSummary buildCreateTimeSeriesSummary() {
  var o = api.CreateTimeSeriesSummary();
  buildCounterCreateTimeSeriesSummary++;
  if (buildCounterCreateTimeSeriesSummary < 3) {
    o.errors = buildUnnamed2310();
    o.successPointCount = 42;
    o.totalPointCount = 42;
  }
  buildCounterCreateTimeSeriesSummary--;
  return o;
}

void checkCreateTimeSeriesSummary(api.CreateTimeSeriesSummary o) {
  buildCounterCreateTimeSeriesSummary++;
  if (buildCounterCreateTimeSeriesSummary < 3) {
    checkUnnamed2310(o.errors);
    unittest.expect(o.successPointCount, unittest.equals(42));
    unittest.expect(o.totalPointCount, unittest.equals(42));
  }
  buildCounterCreateTimeSeriesSummary--;
}

core.int buildCounterCustom = 0;
api.Custom buildCustom() {
  var o = api.Custom();
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

core.List<core.String> buildUnnamed2311() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2311(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Exemplar> buildUnnamed2312() {
  var o = <api.Exemplar>[];
  o.add(buildExemplar());
  o.add(buildExemplar());
  return o;
}

void checkUnnamed2312(core.List<api.Exemplar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExemplar(o[0] as api.Exemplar);
  checkExemplar(o[1] as api.Exemplar);
}

core.int buildCounterDistribution = 0;
api.Distribution buildDistribution() {
  var o = api.Distribution();
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    o.bucketCounts = buildUnnamed2311();
    o.bucketOptions = buildBucketOptions();
    o.count = 'foo';
    o.exemplars = buildUnnamed2312();
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
    checkUnnamed2311(o.bucketCounts);
    checkBucketOptions(o.bucketOptions as api.BucketOptions);
    unittest.expect(o.count, unittest.equals('foo'));
    checkUnnamed2312(o.exemplars);
    unittest.expect(o.mean, unittest.equals(42.0));
    checkRange(o.range as api.Range);
    unittest.expect(o.sumOfSquaredDeviation, unittest.equals(42.0));
  }
  buildCounterDistribution--;
}

core.int buildCounterDistributionCut = 0;
api.DistributionCut buildDistributionCut() {
  var o = api.DistributionCut();
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
    unittest.expect(o.distributionFilter, unittest.equals('foo'));
    checkGoogleMonitoringV3Range(o.range as api.GoogleMonitoringV3Range);
  }
  buildCounterDistributionCut--;
}

core.int buildCounterDocumentation = 0;
api.Documentation buildDocumentation() {
  var o = api.Documentation();
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
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterDocumentation--;
}

core.Map<core.String, core.String> buildUnnamed2313() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2313(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterDroppedLabels = 0;
api.DroppedLabels buildDroppedLabels() {
  var o = api.DroppedLabels();
  buildCounterDroppedLabels++;
  if (buildCounterDroppedLabels < 3) {
    o.label = buildUnnamed2313();
  }
  buildCounterDroppedLabels--;
  return o;
}

void checkDroppedLabels(api.DroppedLabels o) {
  buildCounterDroppedLabels++;
  if (buildCounterDroppedLabels < 3) {
    checkUnnamed2313(o.label);
  }
  buildCounterDroppedLabels--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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
  var o = api.Error();
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
    unittest.expect(o.pointCount, unittest.equals(42));
    checkStatus(o.status as api.Status);
  }
  buildCounterError--;
}

core.Map<core.String, core.Object> buildUnnamed2314() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2314(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed2315() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2314());
  o.add(buildUnnamed2314());
  return o;
}

void checkUnnamed2315(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2314(o[0]);
  checkUnnamed2314(o[1]);
}

core.int buildCounterExemplar = 0;
api.Exemplar buildExemplar() {
  var o = api.Exemplar();
  buildCounterExemplar++;
  if (buildCounterExemplar < 3) {
    o.attachments = buildUnnamed2315();
    o.timestamp = 'foo';
    o.value = 42.0;
  }
  buildCounterExemplar--;
  return o;
}

void checkExemplar(api.Exemplar o) {
  buildCounterExemplar++;
  if (buildCounterExemplar < 3) {
    checkUnnamed2315(o.attachments);
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterExemplar--;
}

core.List<core.double> buildUnnamed2316() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed2316(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterExplicit = 0;
api.Explicit buildExplicit() {
  var o = api.Explicit();
  buildCounterExplicit++;
  if (buildCounterExplicit < 3) {
    o.bounds = buildUnnamed2316();
  }
  buildCounterExplicit--;
  return o;
}

void checkExplicit(api.Explicit o) {
  buildCounterExplicit++;
  if (buildCounterExplicit < 3) {
    checkUnnamed2316(o.bounds);
  }
  buildCounterExplicit--;
}

core.int buildCounterExponential = 0;
api.Exponential buildExponential() {
  var o = api.Exponential();
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
    unittest.expect(o.growthFactor, unittest.equals(42.0));
    unittest.expect(o.numFiniteBuckets, unittest.equals(42));
    unittest.expect(o.scale, unittest.equals(42.0));
  }
  buildCounterExponential--;
}

core.List<api.Option> buildUnnamed2317() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed2317(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterField = 0;
api.Field buildField() {
  var o = api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.cardinality = 'foo';
    o.defaultValue = 'foo';
    o.jsonName = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.number = 42;
    o.oneofIndex = 42;
    o.options = buildUnnamed2317();
    o.packed = true;
    o.typeUrl = 'foo';
  }
  buildCounterField--;
  return o;
}

void checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    unittest.expect(o.cardinality, unittest.equals('foo'));
    unittest.expect(o.defaultValue, unittest.equals('foo'));
    unittest.expect(o.jsonName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals(42));
    unittest.expect(o.oneofIndex, unittest.equals(42));
    checkUnnamed2317(o.options);
    unittest.expect(o.packed, unittest.isTrue);
    unittest.expect(o.typeUrl, unittest.equals('foo'));
  }
  buildCounterField--;
}

core.int buildCounterGetNotificationChannelVerificationCodeRequest = 0;
api.GetNotificationChannelVerificationCodeRequest
    buildGetNotificationChannelVerificationCodeRequest() {
  var o = api.GetNotificationChannelVerificationCodeRequest();
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
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterGetNotificationChannelVerificationCodeRequest--;
}

core.int buildCounterGetNotificationChannelVerificationCodeResponse = 0;
api.GetNotificationChannelVerificationCodeResponse
    buildGetNotificationChannelVerificationCodeResponse() {
  var o = api.GetNotificationChannelVerificationCodeResponse();
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
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterGetNotificationChannelVerificationCodeResponse--;
}

core.int buildCounterGoogleMonitoringV3Range = 0;
api.GoogleMonitoringV3Range buildGoogleMonitoringV3Range() {
  var o = api.GoogleMonitoringV3Range();
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
    unittest.expect(o.max, unittest.equals(42.0));
    unittest.expect(o.min, unittest.equals(42.0));
  }
  buildCounterGoogleMonitoringV3Range--;
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  var o = api.Group();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.isCluster, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parentName, unittest.equals('foo'));
  }
  buildCounterGroup--;
}

core.Map<core.String, core.String> buildUnnamed2318() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2318(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterHttpCheck = 0;
api.HttpCheck buildHttpCheck() {
  var o = api.HttpCheck();
  buildCounterHttpCheck++;
  if (buildCounterHttpCheck < 3) {
    o.authInfo = buildBasicAuthentication();
    o.body = 'foo';
    o.contentType = 'foo';
    o.headers = buildUnnamed2318();
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
    checkBasicAuthentication(o.authInfo as api.BasicAuthentication);
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkUnnamed2318(o.headers);
    unittest.expect(o.maskHeaders, unittest.isTrue);
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.requestMethod, unittest.equals('foo'));
    unittest.expect(o.useSsl, unittest.isTrue);
    unittest.expect(o.validateSsl, unittest.isTrue);
  }
  buildCounterHttpCheck--;
}

core.int buildCounterInternalChecker = 0;
api.InternalChecker buildInternalChecker() {
  var o = api.InternalChecker();
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.gcpZone, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.peerProjectId, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterInternalChecker--;
}

core.int buildCounterIstioCanonicalService = 0;
api.IstioCanonicalService buildIstioCanonicalService() {
  var o = api.IstioCanonicalService();
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
    unittest.expect(o.canonicalService, unittest.equals('foo'));
    unittest.expect(o.canonicalServiceNamespace, unittest.equals('foo'));
    unittest.expect(o.meshUid, unittest.equals('foo'));
  }
  buildCounterIstioCanonicalService--;
}

core.int buildCounterLabelDescriptor = 0;
api.LabelDescriptor buildLabelDescriptor() {
  var o = api.LabelDescriptor();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterLabelDescriptor--;
}

core.int buildCounterLabelValue = 0;
api.LabelValue buildLabelValue() {
  var o = api.LabelValue();
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
    unittest.expect(o.boolValue, unittest.isTrue);
    unittest.expect(o.int64Value, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterLabelValue--;
}

core.int buildCounterLatencyCriteria = 0;
api.LatencyCriteria buildLatencyCriteria() {
  var o = api.LatencyCriteria();
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
    unittest.expect(o.threshold, unittest.equals('foo'));
  }
  buildCounterLatencyCriteria--;
}

core.int buildCounterLinear = 0;
api.Linear buildLinear() {
  var o = api.Linear();
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
    unittest.expect(o.numFiniteBuckets, unittest.equals(42));
    unittest.expect(o.offset, unittest.equals(42.0));
    unittest.expect(o.width, unittest.equals(42.0));
  }
  buildCounterLinear--;
}

core.List<api.AlertPolicy> buildUnnamed2319() {
  var o = <api.AlertPolicy>[];
  o.add(buildAlertPolicy());
  o.add(buildAlertPolicy());
  return o;
}

void checkUnnamed2319(core.List<api.AlertPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlertPolicy(o[0] as api.AlertPolicy);
  checkAlertPolicy(o[1] as api.AlertPolicy);
}

core.int buildCounterListAlertPoliciesResponse = 0;
api.ListAlertPoliciesResponse buildListAlertPoliciesResponse() {
  var o = api.ListAlertPoliciesResponse();
  buildCounterListAlertPoliciesResponse++;
  if (buildCounterListAlertPoliciesResponse < 3) {
    o.alertPolicies = buildUnnamed2319();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListAlertPoliciesResponse--;
  return o;
}

void checkListAlertPoliciesResponse(api.ListAlertPoliciesResponse o) {
  buildCounterListAlertPoliciesResponse++;
  if (buildCounterListAlertPoliciesResponse < 3) {
    checkUnnamed2319(o.alertPolicies);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListAlertPoliciesResponse--;
}

core.List<api.MonitoredResource> buildUnnamed2320() {
  var o = <api.MonitoredResource>[];
  o.add(buildMonitoredResource());
  o.add(buildMonitoredResource());
  return o;
}

void checkUnnamed2320(core.List<api.MonitoredResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResource(o[0] as api.MonitoredResource);
  checkMonitoredResource(o[1] as api.MonitoredResource);
}

core.int buildCounterListGroupMembersResponse = 0;
api.ListGroupMembersResponse buildListGroupMembersResponse() {
  var o = api.ListGroupMembersResponse();
  buildCounterListGroupMembersResponse++;
  if (buildCounterListGroupMembersResponse < 3) {
    o.members = buildUnnamed2320();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListGroupMembersResponse--;
  return o;
}

void checkListGroupMembersResponse(api.ListGroupMembersResponse o) {
  buildCounterListGroupMembersResponse++;
  if (buildCounterListGroupMembersResponse < 3) {
    checkUnnamed2320(o.members);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListGroupMembersResponse--;
}

core.List<api.Group> buildUnnamed2321() {
  var o = <api.Group>[];
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

void checkUnnamed2321(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0] as api.Group);
  checkGroup(o[1] as api.Group);
}

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  var o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.group = buildUnnamed2321();
    o.nextPageToken = 'foo';
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed2321(o.group);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGroupsResponse--;
}

core.List<api.MetricDescriptor> buildUnnamed2322() {
  var o = <api.MetricDescriptor>[];
  o.add(buildMetricDescriptor());
  o.add(buildMetricDescriptor());
  return o;
}

void checkUnnamed2322(core.List<api.MetricDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDescriptor(o[0] as api.MetricDescriptor);
  checkMetricDescriptor(o[1] as api.MetricDescriptor);
}

core.int buildCounterListMetricDescriptorsResponse = 0;
api.ListMetricDescriptorsResponse buildListMetricDescriptorsResponse() {
  var o = api.ListMetricDescriptorsResponse();
  buildCounterListMetricDescriptorsResponse++;
  if (buildCounterListMetricDescriptorsResponse < 3) {
    o.metricDescriptors = buildUnnamed2322();
    o.nextPageToken = 'foo';
  }
  buildCounterListMetricDescriptorsResponse--;
  return o;
}

void checkListMetricDescriptorsResponse(api.ListMetricDescriptorsResponse o) {
  buildCounterListMetricDescriptorsResponse++;
  if (buildCounterListMetricDescriptorsResponse < 3) {
    checkUnnamed2322(o.metricDescriptors);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListMetricDescriptorsResponse--;
}

core.List<api.MonitoredResourceDescriptor> buildUnnamed2323() {
  var o = <api.MonitoredResourceDescriptor>[];
  o.add(buildMonitoredResourceDescriptor());
  o.add(buildMonitoredResourceDescriptor());
  return o;
}

void checkUnnamed2323(core.List<api.MonitoredResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResourceDescriptor(o[0] as api.MonitoredResourceDescriptor);
  checkMonitoredResourceDescriptor(o[1] as api.MonitoredResourceDescriptor);
}

core.int buildCounterListMonitoredResourceDescriptorsResponse = 0;
api.ListMonitoredResourceDescriptorsResponse
    buildListMonitoredResourceDescriptorsResponse() {
  var o = api.ListMonitoredResourceDescriptorsResponse();
  buildCounterListMonitoredResourceDescriptorsResponse++;
  if (buildCounterListMonitoredResourceDescriptorsResponse < 3) {
    o.nextPageToken = 'foo';
    o.resourceDescriptors = buildUnnamed2323();
  }
  buildCounterListMonitoredResourceDescriptorsResponse--;
  return o;
}

void checkListMonitoredResourceDescriptorsResponse(
    api.ListMonitoredResourceDescriptorsResponse o) {
  buildCounterListMonitoredResourceDescriptorsResponse++;
  if (buildCounterListMonitoredResourceDescriptorsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2323(o.resourceDescriptors);
  }
  buildCounterListMonitoredResourceDescriptorsResponse--;
}

core.List<api.NotificationChannelDescriptor> buildUnnamed2324() {
  var o = <api.NotificationChannelDescriptor>[];
  o.add(buildNotificationChannelDescriptor());
  o.add(buildNotificationChannelDescriptor());
  return o;
}

void checkUnnamed2324(core.List<api.NotificationChannelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotificationChannelDescriptor(o[0] as api.NotificationChannelDescriptor);
  checkNotificationChannelDescriptor(o[1] as api.NotificationChannelDescriptor);
}

core.int buildCounterListNotificationChannelDescriptorsResponse = 0;
api.ListNotificationChannelDescriptorsResponse
    buildListNotificationChannelDescriptorsResponse() {
  var o = api.ListNotificationChannelDescriptorsResponse();
  buildCounterListNotificationChannelDescriptorsResponse++;
  if (buildCounterListNotificationChannelDescriptorsResponse < 3) {
    o.channelDescriptors = buildUnnamed2324();
    o.nextPageToken = 'foo';
  }
  buildCounterListNotificationChannelDescriptorsResponse--;
  return o;
}

void checkListNotificationChannelDescriptorsResponse(
    api.ListNotificationChannelDescriptorsResponse o) {
  buildCounterListNotificationChannelDescriptorsResponse++;
  if (buildCounterListNotificationChannelDescriptorsResponse < 3) {
    checkUnnamed2324(o.channelDescriptors);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListNotificationChannelDescriptorsResponse--;
}

core.List<api.NotificationChannel> buildUnnamed2325() {
  var o = <api.NotificationChannel>[];
  o.add(buildNotificationChannel());
  o.add(buildNotificationChannel());
  return o;
}

void checkUnnamed2325(core.List<api.NotificationChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotificationChannel(o[0] as api.NotificationChannel);
  checkNotificationChannel(o[1] as api.NotificationChannel);
}

core.int buildCounterListNotificationChannelsResponse = 0;
api.ListNotificationChannelsResponse buildListNotificationChannelsResponse() {
  var o = api.ListNotificationChannelsResponse();
  buildCounterListNotificationChannelsResponse++;
  if (buildCounterListNotificationChannelsResponse < 3) {
    o.nextPageToken = 'foo';
    o.notificationChannels = buildUnnamed2325();
    o.totalSize = 42;
  }
  buildCounterListNotificationChannelsResponse--;
  return o;
}

void checkListNotificationChannelsResponse(
    api.ListNotificationChannelsResponse o) {
  buildCounterListNotificationChannelsResponse++;
  if (buildCounterListNotificationChannelsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2325(o.notificationChannels);
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListNotificationChannelsResponse--;
}

core.List<api.ServiceLevelObjective> buildUnnamed2326() {
  var o = <api.ServiceLevelObjective>[];
  o.add(buildServiceLevelObjective());
  o.add(buildServiceLevelObjective());
  return o;
}

void checkUnnamed2326(core.List<api.ServiceLevelObjective> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceLevelObjective(o[0] as api.ServiceLevelObjective);
  checkServiceLevelObjective(o[1] as api.ServiceLevelObjective);
}

core.int buildCounterListServiceLevelObjectivesResponse = 0;
api.ListServiceLevelObjectivesResponse
    buildListServiceLevelObjectivesResponse() {
  var o = api.ListServiceLevelObjectivesResponse();
  buildCounterListServiceLevelObjectivesResponse++;
  if (buildCounterListServiceLevelObjectivesResponse < 3) {
    o.nextPageToken = 'foo';
    o.serviceLevelObjectives = buildUnnamed2326();
  }
  buildCounterListServiceLevelObjectivesResponse--;
  return o;
}

void checkListServiceLevelObjectivesResponse(
    api.ListServiceLevelObjectivesResponse o) {
  buildCounterListServiceLevelObjectivesResponse++;
  if (buildCounterListServiceLevelObjectivesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2326(o.serviceLevelObjectives);
  }
  buildCounterListServiceLevelObjectivesResponse--;
}

core.List<api.Service> buildUnnamed2327() {
  var o = <api.Service>[];
  o.add(buildService());
  o.add(buildService());
  return o;
}

void checkUnnamed2327(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0] as api.Service);
  checkService(o[1] as api.Service);
}

core.int buildCounterListServicesResponse = 0;
api.ListServicesResponse buildListServicesResponse() {
  var o = api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.nextPageToken = 'foo';
    o.services = buildUnnamed2327();
  }
  buildCounterListServicesResponse--;
  return o;
}

void checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2327(o.services);
  }
  buildCounterListServicesResponse--;
}

core.List<api.Status> buildUnnamed2328() {
  var o = <api.Status>[];
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

void checkUnnamed2328(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0] as api.Status);
  checkStatus(o[1] as api.Status);
}

core.List<api.TimeSeries> buildUnnamed2329() {
  var o = <api.TimeSeries>[];
  o.add(buildTimeSeries());
  o.add(buildTimeSeries());
  return o;
}

void checkUnnamed2329(core.List<api.TimeSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeSeries(o[0] as api.TimeSeries);
  checkTimeSeries(o[1] as api.TimeSeries);
}

core.int buildCounterListTimeSeriesResponse = 0;
api.ListTimeSeriesResponse buildListTimeSeriesResponse() {
  var o = api.ListTimeSeriesResponse();
  buildCounterListTimeSeriesResponse++;
  if (buildCounterListTimeSeriesResponse < 3) {
    o.executionErrors = buildUnnamed2328();
    o.nextPageToken = 'foo';
    o.timeSeries = buildUnnamed2329();
    o.unit = 'foo';
  }
  buildCounterListTimeSeriesResponse--;
  return o;
}

void checkListTimeSeriesResponse(api.ListTimeSeriesResponse o) {
  buildCounterListTimeSeriesResponse++;
  if (buildCounterListTimeSeriesResponse < 3) {
    checkUnnamed2328(o.executionErrors);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2329(o.timeSeries);
    unittest.expect(o.unit, unittest.equals('foo'));
  }
  buildCounterListTimeSeriesResponse--;
}

core.List<api.UptimeCheckConfig> buildUnnamed2330() {
  var o = <api.UptimeCheckConfig>[];
  o.add(buildUptimeCheckConfig());
  o.add(buildUptimeCheckConfig());
  return o;
}

void checkUnnamed2330(core.List<api.UptimeCheckConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUptimeCheckConfig(o[0] as api.UptimeCheckConfig);
  checkUptimeCheckConfig(o[1] as api.UptimeCheckConfig);
}

core.int buildCounterListUptimeCheckConfigsResponse = 0;
api.ListUptimeCheckConfigsResponse buildListUptimeCheckConfigsResponse() {
  var o = api.ListUptimeCheckConfigsResponse();
  buildCounterListUptimeCheckConfigsResponse++;
  if (buildCounterListUptimeCheckConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.totalSize = 42;
    o.uptimeCheckConfigs = buildUnnamed2330();
  }
  buildCounterListUptimeCheckConfigsResponse--;
  return o;
}

void checkListUptimeCheckConfigsResponse(api.ListUptimeCheckConfigsResponse o) {
  buildCounterListUptimeCheckConfigsResponse++;
  if (buildCounterListUptimeCheckConfigsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
    checkUnnamed2330(o.uptimeCheckConfigs);
  }
  buildCounterListUptimeCheckConfigsResponse--;
}

core.List<api.UptimeCheckIp> buildUnnamed2331() {
  var o = <api.UptimeCheckIp>[];
  o.add(buildUptimeCheckIp());
  o.add(buildUptimeCheckIp());
  return o;
}

void checkUnnamed2331(core.List<api.UptimeCheckIp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUptimeCheckIp(o[0] as api.UptimeCheckIp);
  checkUptimeCheckIp(o[1] as api.UptimeCheckIp);
}

core.int buildCounterListUptimeCheckIpsResponse = 0;
api.ListUptimeCheckIpsResponse buildListUptimeCheckIpsResponse() {
  var o = api.ListUptimeCheckIpsResponse();
  buildCounterListUptimeCheckIpsResponse++;
  if (buildCounterListUptimeCheckIpsResponse < 3) {
    o.nextPageToken = 'foo';
    o.uptimeCheckIps = buildUnnamed2331();
  }
  buildCounterListUptimeCheckIpsResponse--;
  return o;
}

void checkListUptimeCheckIpsResponse(api.ListUptimeCheckIpsResponse o) {
  buildCounterListUptimeCheckIpsResponse++;
  if (buildCounterListUptimeCheckIpsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2331(o.uptimeCheckIps);
  }
  buildCounterListUptimeCheckIpsResponse--;
}

core.int buildCounterMeshIstio = 0;
api.MeshIstio buildMeshIstio() {
  var o = api.MeshIstio();
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
    unittest.expect(o.meshUid, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
    unittest.expect(o.serviceNamespace, unittest.equals('foo'));
  }
  buildCounterMeshIstio--;
}

core.Map<core.String, core.String> buildUnnamed2332() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2332(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  var o = api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.labels = buildUnnamed2332();
    o.type = 'foo';
  }
  buildCounterMetric--;
  return o;
}

void checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    checkUnnamed2332(o.labels);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMetric--;
}

core.List<api.Aggregation> buildUnnamed2333() {
  var o = <api.Aggregation>[];
  o.add(buildAggregation());
  o.add(buildAggregation());
  return o;
}

void checkUnnamed2333(core.List<api.Aggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregation(o[0] as api.Aggregation);
  checkAggregation(o[1] as api.Aggregation);
}

core.int buildCounterMetricAbsence = 0;
api.MetricAbsence buildMetricAbsence() {
  var o = api.MetricAbsence();
  buildCounterMetricAbsence++;
  if (buildCounterMetricAbsence < 3) {
    o.aggregations = buildUnnamed2333();
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
    checkUnnamed2333(o.aggregations);
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    checkTrigger(o.trigger as api.Trigger);
  }
  buildCounterMetricAbsence--;
}

core.List<api.LabelDescriptor> buildUnnamed2334() {
  var o = <api.LabelDescriptor>[];
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

void checkUnnamed2334(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0] as api.LabelDescriptor);
  checkLabelDescriptor(o[1] as api.LabelDescriptor);
}

core.List<core.String> buildUnnamed2335() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2335(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMetricDescriptor = 0;
api.MetricDescriptor buildMetricDescriptor() {
  var o = api.MetricDescriptor();
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed2334();
    o.launchStage = 'foo';
    o.metadata = buildMetricDescriptorMetadata();
    o.metricKind = 'foo';
    o.monitoredResourceTypes = buildUnnamed2335();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2334(o.labels);
    unittest.expect(o.launchStage, unittest.equals('foo'));
    checkMetricDescriptorMetadata(o.metadata as api.MetricDescriptorMetadata);
    unittest.expect(o.metricKind, unittest.equals('foo'));
    checkUnnamed2335(o.monitoredResourceTypes);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterMetricDescriptor--;
}

core.int buildCounterMetricDescriptorMetadata = 0;
api.MetricDescriptorMetadata buildMetricDescriptorMetadata() {
  var o = api.MetricDescriptorMetadata();
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
    unittest.expect(o.ingestDelay, unittest.equals('foo'));
    unittest.expect(o.launchStage, unittest.equals('foo'));
    unittest.expect(o.samplePeriod, unittest.equals('foo'));
  }
  buildCounterMetricDescriptorMetadata--;
}

core.int buildCounterMetricRange = 0;
api.MetricRange buildMetricRange() {
  var o = api.MetricRange();
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
    checkGoogleMonitoringV3Range(o.range as api.GoogleMonitoringV3Range);
    unittest.expect(o.timeSeries, unittest.equals('foo'));
  }
  buildCounterMetricRange--;
}

core.List<api.Aggregation> buildUnnamed2336() {
  var o = <api.Aggregation>[];
  o.add(buildAggregation());
  o.add(buildAggregation());
  return o;
}

void checkUnnamed2336(core.List<api.Aggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregation(o[0] as api.Aggregation);
  checkAggregation(o[1] as api.Aggregation);
}

core.List<api.Aggregation> buildUnnamed2337() {
  var o = <api.Aggregation>[];
  o.add(buildAggregation());
  o.add(buildAggregation());
  return o;
}

void checkUnnamed2337(core.List<api.Aggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregation(o[0] as api.Aggregation);
  checkAggregation(o[1] as api.Aggregation);
}

core.int buildCounterMetricThreshold = 0;
api.MetricThreshold buildMetricThreshold() {
  var o = api.MetricThreshold();
  buildCounterMetricThreshold++;
  if (buildCounterMetricThreshold < 3) {
    o.aggregations = buildUnnamed2336();
    o.comparison = 'foo';
    o.denominatorAggregations = buildUnnamed2337();
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
    checkUnnamed2336(o.aggregations);
    unittest.expect(o.comparison, unittest.equals('foo'));
    checkUnnamed2337(o.denominatorAggregations);
    unittest.expect(o.denominatorFilter, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.thresholdValue, unittest.equals(42.0));
    checkTrigger(o.trigger as api.Trigger);
  }
  buildCounterMetricThreshold--;
}

core.Map<core.String, core.String> buildUnnamed2338() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2338(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterMonitoredResource = 0;
api.MonitoredResource buildMonitoredResource() {
  var o = api.MonitoredResource();
  buildCounterMonitoredResource++;
  if (buildCounterMonitoredResource < 3) {
    o.labels = buildUnnamed2338();
    o.type = 'foo';
  }
  buildCounterMonitoredResource--;
  return o;
}

void checkMonitoredResource(api.MonitoredResource o) {
  buildCounterMonitoredResource++;
  if (buildCounterMonitoredResource < 3) {
    checkUnnamed2338(o.labels);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMonitoredResource--;
}

core.List<api.LabelDescriptor> buildUnnamed2339() {
  var o = <api.LabelDescriptor>[];
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

void checkUnnamed2339(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0] as api.LabelDescriptor);
  checkLabelDescriptor(o[1] as api.LabelDescriptor);
}

core.int buildCounterMonitoredResourceDescriptor = 0;
api.MonitoredResourceDescriptor buildMonitoredResourceDescriptor() {
  var o = api.MonitoredResourceDescriptor();
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed2339();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2339(o.labels);
    unittest.expect(o.launchStage, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMonitoredResourceDescriptor--;
}

core.Map<core.String, core.Object> buildUnnamed2340() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2340(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2341() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2341(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterMonitoredResourceMetadata = 0;
api.MonitoredResourceMetadata buildMonitoredResourceMetadata() {
  var o = api.MonitoredResourceMetadata();
  buildCounterMonitoredResourceMetadata++;
  if (buildCounterMonitoredResourceMetadata < 3) {
    o.systemLabels = buildUnnamed2340();
    o.userLabels = buildUnnamed2341();
  }
  buildCounterMonitoredResourceMetadata--;
  return o;
}

void checkMonitoredResourceMetadata(api.MonitoredResourceMetadata o) {
  buildCounterMonitoredResourceMetadata++;
  if (buildCounterMonitoredResourceMetadata < 3) {
    checkUnnamed2340(o.systemLabels);
    checkUnnamed2341(o.userLabels);
  }
  buildCounterMonitoredResourceMetadata--;
}

core.int buildCounterMonitoringQueryLanguageCondition = 0;
api.MonitoringQueryLanguageCondition buildMonitoringQueryLanguageCondition() {
  var o = api.MonitoringQueryLanguageCondition();
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
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    checkTrigger(o.trigger as api.Trigger);
  }
  buildCounterMonitoringQueryLanguageCondition--;
}

core.int buildCounterMutationRecord = 0;
api.MutationRecord buildMutationRecord() {
  var o = api.MutationRecord();
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
    unittest.expect(o.mutateTime, unittest.equals('foo'));
    unittest.expect(o.mutatedBy, unittest.equals('foo'));
  }
  buildCounterMutationRecord--;
}

core.Map<core.String, core.String> buildUnnamed2342() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2342(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.MutationRecord> buildUnnamed2343() {
  var o = <api.MutationRecord>[];
  o.add(buildMutationRecord());
  o.add(buildMutationRecord());
  return o;
}

void checkUnnamed2343(core.List<api.MutationRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMutationRecord(o[0] as api.MutationRecord);
  checkMutationRecord(o[1] as api.MutationRecord);
}

core.Map<core.String, core.String> buildUnnamed2344() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2344(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterNotificationChannel = 0;
api.NotificationChannel buildNotificationChannel() {
  var o = api.NotificationChannel();
  buildCounterNotificationChannel++;
  if (buildCounterNotificationChannel < 3) {
    o.creationRecord = buildMutationRecord();
    o.description = 'foo';
    o.displayName = 'foo';
    o.enabled = true;
    o.labels = buildUnnamed2342();
    o.mutationRecords = buildUnnamed2343();
    o.name = 'foo';
    o.type = 'foo';
    o.userLabels = buildUnnamed2344();
    o.verificationStatus = 'foo';
  }
  buildCounterNotificationChannel--;
  return o;
}

void checkNotificationChannel(api.NotificationChannel o) {
  buildCounterNotificationChannel++;
  if (buildCounterNotificationChannel < 3) {
    checkMutationRecord(o.creationRecord as api.MutationRecord);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enabled, unittest.isTrue);
    checkUnnamed2342(o.labels);
    checkUnnamed2343(o.mutationRecords);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    checkUnnamed2344(o.userLabels);
    unittest.expect(o.verificationStatus, unittest.equals('foo'));
  }
  buildCounterNotificationChannel--;
}

core.List<api.LabelDescriptor> buildUnnamed2345() {
  var o = <api.LabelDescriptor>[];
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

void checkUnnamed2345(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0] as api.LabelDescriptor);
  checkLabelDescriptor(o[1] as api.LabelDescriptor);
}

core.int buildCounterNotificationChannelDescriptor = 0;
api.NotificationChannelDescriptor buildNotificationChannelDescriptor() {
  var o = api.NotificationChannelDescriptor();
  buildCounterNotificationChannelDescriptor++;
  if (buildCounterNotificationChannelDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed2345();
    o.launchStage = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterNotificationChannelDescriptor--;
  return o;
}

void checkNotificationChannelDescriptor(api.NotificationChannelDescriptor o) {
  buildCounterNotificationChannelDescriptor++;
  if (buildCounterNotificationChannelDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2345(o.labels);
    unittest.expect(o.launchStage, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterNotificationChannelDescriptor--;
}

core.Map<core.String, core.Object> buildUnnamed2346() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2346(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterOption = 0;
api.Option buildOption() {
  var o = api.Option();
  buildCounterOption++;
  if (buildCounterOption < 3) {
    o.name = 'foo';
    o.value = buildUnnamed2346();
  }
  buildCounterOption--;
  return o;
}

void checkOption(api.Option o) {
  buildCounterOption++;
  if (buildCounterOption < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2346(o.value);
  }
  buildCounterOption--;
}

core.int buildCounterPerformanceThreshold = 0;
api.PerformanceThreshold buildPerformanceThreshold() {
  var o = api.PerformanceThreshold();
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
    checkBasicSli(o.basicSliPerformance as api.BasicSli);
    checkRequestBasedSli(o.performance as api.RequestBasedSli);
    unittest.expect(o.threshold, unittest.equals(42.0));
  }
  buildCounterPerformanceThreshold--;
}

core.int buildCounterPoint = 0;
api.Point buildPoint() {
  var o = api.Point();
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
    checkTimeInterval(o.interval as api.TimeInterval);
    checkTypedValue(o.value as api.TypedValue);
  }
  buildCounterPoint--;
}

core.List<api.TypedValue> buildUnnamed2347() {
  var o = <api.TypedValue>[];
  o.add(buildTypedValue());
  o.add(buildTypedValue());
  return o;
}

void checkUnnamed2347(core.List<api.TypedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTypedValue(o[0] as api.TypedValue);
  checkTypedValue(o[1] as api.TypedValue);
}

core.int buildCounterPointData = 0;
api.PointData buildPointData() {
  var o = api.PointData();
  buildCounterPointData++;
  if (buildCounterPointData < 3) {
    o.timeInterval = buildTimeInterval();
    o.values = buildUnnamed2347();
  }
  buildCounterPointData--;
  return o;
}

void checkPointData(api.PointData o) {
  buildCounterPointData++;
  if (buildCounterPointData < 3) {
    checkTimeInterval(o.timeInterval as api.TimeInterval);
    checkUnnamed2347(o.values);
  }
  buildCounterPointData--;
}

core.int buildCounterQueryTimeSeriesRequest = 0;
api.QueryTimeSeriesRequest buildQueryTimeSeriesRequest() {
  var o = api.QueryTimeSeriesRequest();
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
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
  }
  buildCounterQueryTimeSeriesRequest--;
}

core.List<api.Status> buildUnnamed2348() {
  var o = <api.Status>[];
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

void checkUnnamed2348(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0] as api.Status);
  checkStatus(o[1] as api.Status);
}

core.List<api.TimeSeriesData> buildUnnamed2349() {
  var o = <api.TimeSeriesData>[];
  o.add(buildTimeSeriesData());
  o.add(buildTimeSeriesData());
  return o;
}

void checkUnnamed2349(core.List<api.TimeSeriesData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeSeriesData(o[0] as api.TimeSeriesData);
  checkTimeSeriesData(o[1] as api.TimeSeriesData);
}

core.int buildCounterQueryTimeSeriesResponse = 0;
api.QueryTimeSeriesResponse buildQueryTimeSeriesResponse() {
  var o = api.QueryTimeSeriesResponse();
  buildCounterQueryTimeSeriesResponse++;
  if (buildCounterQueryTimeSeriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.partialErrors = buildUnnamed2348();
    o.timeSeriesData = buildUnnamed2349();
    o.timeSeriesDescriptor = buildTimeSeriesDescriptor();
  }
  buildCounterQueryTimeSeriesResponse--;
  return o;
}

void checkQueryTimeSeriesResponse(api.QueryTimeSeriesResponse o) {
  buildCounterQueryTimeSeriesResponse++;
  if (buildCounterQueryTimeSeriesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2348(o.partialErrors);
    checkUnnamed2349(o.timeSeriesData);
    checkTimeSeriesDescriptor(
        o.timeSeriesDescriptor as api.TimeSeriesDescriptor);
  }
  buildCounterQueryTimeSeriesResponse--;
}

core.int buildCounterRange = 0;
api.Range buildRange() {
  var o = api.Range();
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
    unittest.expect(o.max, unittest.equals(42.0));
    unittest.expect(o.min, unittest.equals(42.0));
  }
  buildCounterRange--;
}

core.int buildCounterRequestBasedSli = 0;
api.RequestBasedSli buildRequestBasedSli() {
  var o = api.RequestBasedSli();
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
    checkDistributionCut(o.distributionCut as api.DistributionCut);
    checkTimeSeriesRatio(o.goodTotalRatio as api.TimeSeriesRatio);
  }
  buildCounterRequestBasedSli--;
}

core.int buildCounterResourceGroup = 0;
api.ResourceGroup buildResourceGroup() {
  var o = api.ResourceGroup();
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
    unittest.expect(o.groupId, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
  }
  buildCounterResourceGroup--;
}

core.int buildCounterSendNotificationChannelVerificationCodeRequest = 0;
api.SendNotificationChannelVerificationCodeRequest
    buildSendNotificationChannelVerificationCodeRequest() {
  var o = api.SendNotificationChannelVerificationCodeRequest();
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

core.int buildCounterService = 0;
api.Service buildService() {
  var o = api.Service();
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
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    checkAppEngine(o.appEngine as api.AppEngine);
    checkCloudEndpoints(o.cloudEndpoints as api.CloudEndpoints);
    checkClusterIstio(o.clusterIstio as api.ClusterIstio);
    checkCustom(o.custom as api.Custom);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkIstioCanonicalService(
        o.istioCanonicalService as api.IstioCanonicalService);
    checkMeshIstio(o.meshIstio as api.MeshIstio);
    unittest.expect(o.name, unittest.equals('foo'));
    checkTelemetry(o.telemetry as api.Telemetry);
  }
  buildCounterService--;
}

core.int buildCounterServiceLevelIndicator = 0;
api.ServiceLevelIndicator buildServiceLevelIndicator() {
  var o = api.ServiceLevelIndicator();
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
    checkBasicSli(o.basicSli as api.BasicSli);
    checkRequestBasedSli(o.requestBased as api.RequestBasedSli);
    checkWindowsBasedSli(o.windowsBased as api.WindowsBasedSli);
  }
  buildCounterServiceLevelIndicator--;
}

core.int buildCounterServiceLevelObjective = 0;
api.ServiceLevelObjective buildServiceLevelObjective() {
  var o = api.ServiceLevelObjective();
  buildCounterServiceLevelObjective++;
  if (buildCounterServiceLevelObjective < 3) {
    o.calendarPeriod = 'foo';
    o.displayName = 'foo';
    o.goal = 42.0;
    o.name = 'foo';
    o.rollingPeriod = 'foo';
    o.serviceLevelIndicator = buildServiceLevelIndicator();
  }
  buildCounterServiceLevelObjective--;
  return o;
}

void checkServiceLevelObjective(api.ServiceLevelObjective o) {
  buildCounterServiceLevelObjective++;
  if (buildCounterServiceLevelObjective < 3) {
    unittest.expect(o.calendarPeriod, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.goal, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.rollingPeriod, unittest.equals('foo'));
    checkServiceLevelIndicator(
        o.serviceLevelIndicator as api.ServiceLevelIndicator);
  }
  buildCounterServiceLevelObjective--;
}

core.int buildCounterSourceContext = 0;
api.SourceContext buildSourceContext() {
  var o = api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.fileName = 'foo';
  }
  buildCounterSourceContext--;
  return o;
}

void checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    unittest.expect(o.fileName, unittest.equals('foo'));
  }
  buildCounterSourceContext--;
}

core.int buildCounterSpanContext = 0;
api.SpanContext buildSpanContext() {
  var o = api.SpanContext();
  buildCounterSpanContext++;
  if (buildCounterSpanContext < 3) {
    o.spanName = 'foo';
  }
  buildCounterSpanContext--;
  return o;
}

void checkSpanContext(api.SpanContext o) {
  buildCounterSpanContext++;
  if (buildCounterSpanContext < 3) {
    unittest.expect(o.spanName, unittest.equals('foo'));
  }
  buildCounterSpanContext--;
}

core.Map<core.String, core.Object> buildUnnamed2350() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2350(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed2351() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2350());
  o.add(buildUnnamed2350());
  return o;
}

void checkUnnamed2351(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2350(o[0]);
  checkUnnamed2350(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2351();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2351(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTcpCheck = 0;
api.TcpCheck buildTcpCheck() {
  var o = api.TcpCheck();
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
    unittest.expect(o.port, unittest.equals(42));
  }
  buildCounterTcpCheck--;
}

core.int buildCounterTelemetry = 0;
api.Telemetry buildTelemetry() {
  var o = api.Telemetry();
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
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterTelemetry--;
}

core.int buildCounterTimeInterval = 0;
api.TimeInterval buildTimeInterval() {
  var o = api.TimeInterval();
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
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeInterval--;
}

core.List<api.Point> buildUnnamed2352() {
  var o = <api.Point>[];
  o.add(buildPoint());
  o.add(buildPoint());
  return o;
}

void checkUnnamed2352(core.List<api.Point> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPoint(o[0] as api.Point);
  checkPoint(o[1] as api.Point);
}

core.int buildCounterTimeSeries = 0;
api.TimeSeries buildTimeSeries() {
  var o = api.TimeSeries();
  buildCounterTimeSeries++;
  if (buildCounterTimeSeries < 3) {
    o.metadata = buildMonitoredResourceMetadata();
    o.metric = buildMetric();
    o.metricKind = 'foo';
    o.points = buildUnnamed2352();
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
    checkMonitoredResourceMetadata(o.metadata as api.MonitoredResourceMetadata);
    checkMetric(o.metric as api.Metric);
    unittest.expect(o.metricKind, unittest.equals('foo'));
    checkUnnamed2352(o.points);
    checkMonitoredResource(o.resource as api.MonitoredResource);
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterTimeSeries--;
}

core.List<api.LabelValue> buildUnnamed2353() {
  var o = <api.LabelValue>[];
  o.add(buildLabelValue());
  o.add(buildLabelValue());
  return o;
}

void checkUnnamed2353(core.List<api.LabelValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelValue(o[0] as api.LabelValue);
  checkLabelValue(o[1] as api.LabelValue);
}

core.List<api.PointData> buildUnnamed2354() {
  var o = <api.PointData>[];
  o.add(buildPointData());
  o.add(buildPointData());
  return o;
}

void checkUnnamed2354(core.List<api.PointData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPointData(o[0] as api.PointData);
  checkPointData(o[1] as api.PointData);
}

core.int buildCounterTimeSeriesData = 0;
api.TimeSeriesData buildTimeSeriesData() {
  var o = api.TimeSeriesData();
  buildCounterTimeSeriesData++;
  if (buildCounterTimeSeriesData < 3) {
    o.labelValues = buildUnnamed2353();
    o.pointData = buildUnnamed2354();
  }
  buildCounterTimeSeriesData--;
  return o;
}

void checkTimeSeriesData(api.TimeSeriesData o) {
  buildCounterTimeSeriesData++;
  if (buildCounterTimeSeriesData < 3) {
    checkUnnamed2353(o.labelValues);
    checkUnnamed2354(o.pointData);
  }
  buildCounterTimeSeriesData--;
}

core.List<api.LabelDescriptor> buildUnnamed2355() {
  var o = <api.LabelDescriptor>[];
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

void checkUnnamed2355(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0] as api.LabelDescriptor);
  checkLabelDescriptor(o[1] as api.LabelDescriptor);
}

core.List<api.ValueDescriptor> buildUnnamed2356() {
  var o = <api.ValueDescriptor>[];
  o.add(buildValueDescriptor());
  o.add(buildValueDescriptor());
  return o;
}

void checkUnnamed2356(core.List<api.ValueDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueDescriptor(o[0] as api.ValueDescriptor);
  checkValueDescriptor(o[1] as api.ValueDescriptor);
}

core.int buildCounterTimeSeriesDescriptor = 0;
api.TimeSeriesDescriptor buildTimeSeriesDescriptor() {
  var o = api.TimeSeriesDescriptor();
  buildCounterTimeSeriesDescriptor++;
  if (buildCounterTimeSeriesDescriptor < 3) {
    o.labelDescriptors = buildUnnamed2355();
    o.pointDescriptors = buildUnnamed2356();
  }
  buildCounterTimeSeriesDescriptor--;
  return o;
}

void checkTimeSeriesDescriptor(api.TimeSeriesDescriptor o) {
  buildCounterTimeSeriesDescriptor++;
  if (buildCounterTimeSeriesDescriptor < 3) {
    checkUnnamed2355(o.labelDescriptors);
    checkUnnamed2356(o.pointDescriptors);
  }
  buildCounterTimeSeriesDescriptor--;
}

core.int buildCounterTimeSeriesRatio = 0;
api.TimeSeriesRatio buildTimeSeriesRatio() {
  var o = api.TimeSeriesRatio();
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
    unittest.expect(o.badServiceFilter, unittest.equals('foo'));
    unittest.expect(o.goodServiceFilter, unittest.equals('foo'));
    unittest.expect(o.totalServiceFilter, unittest.equals('foo'));
  }
  buildCounterTimeSeriesRatio--;
}

core.int buildCounterTrigger = 0;
api.Trigger buildTrigger() {
  var o = api.Trigger();
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
    unittest.expect(o.count, unittest.equals(42));
    unittest.expect(o.percent, unittest.equals(42.0));
  }
  buildCounterTrigger--;
}

core.List<api.Field> buildUnnamed2357() {
  var o = <api.Field>[];
  o.add(buildField());
  o.add(buildField());
  return o;
}

void checkUnnamed2357(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0] as api.Field);
  checkField(o[1] as api.Field);
}

core.List<core.String> buildUnnamed2358() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2358(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Option> buildUnnamed2359() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed2359(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterType = 0;
api.Type buildType() {
  var o = api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.fields = buildUnnamed2357();
    o.name = 'foo';
    o.oneofs = buildUnnamed2358();
    o.options = buildUnnamed2359();
    o.sourceContext = buildSourceContext();
    o.syntax = 'foo';
  }
  buildCounterType--;
  return o;
}

void checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkUnnamed2357(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2358(o.oneofs);
    checkUnnamed2359(o.options);
    checkSourceContext(o.sourceContext as api.SourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterType--;
}

core.int buildCounterTypedValue = 0;
api.TypedValue buildTypedValue() {
  var o = api.TypedValue();
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
    unittest.expect(o.boolValue, unittest.isTrue);
    checkDistribution(o.distributionValue as api.Distribution);
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    unittest.expect(o.int64Value, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterTypedValue--;
}

core.List<api.ContentMatcher> buildUnnamed2360() {
  var o = <api.ContentMatcher>[];
  o.add(buildContentMatcher());
  o.add(buildContentMatcher());
  return o;
}

void checkUnnamed2360(core.List<api.ContentMatcher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContentMatcher(o[0] as api.ContentMatcher);
  checkContentMatcher(o[1] as api.ContentMatcher);
}

core.List<api.InternalChecker> buildUnnamed2361() {
  var o = <api.InternalChecker>[];
  o.add(buildInternalChecker());
  o.add(buildInternalChecker());
  return o;
}

void checkUnnamed2361(core.List<api.InternalChecker> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInternalChecker(o[0] as api.InternalChecker);
  checkInternalChecker(o[1] as api.InternalChecker);
}

core.List<core.String> buildUnnamed2362() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2362(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUptimeCheckConfig = 0;
api.UptimeCheckConfig buildUptimeCheckConfig() {
  var o = api.UptimeCheckConfig();
  buildCounterUptimeCheckConfig++;
  if (buildCounterUptimeCheckConfig < 3) {
    o.contentMatchers = buildUnnamed2360();
    o.displayName = 'foo';
    o.httpCheck = buildHttpCheck();
    o.internalCheckers = buildUnnamed2361();
    o.isInternal = true;
    o.monitoredResource = buildMonitoredResource();
    o.name = 'foo';
    o.period = 'foo';
    o.resourceGroup = buildResourceGroup();
    o.selectedRegions = buildUnnamed2362();
    o.tcpCheck = buildTcpCheck();
    o.timeout = 'foo';
  }
  buildCounterUptimeCheckConfig--;
  return o;
}

void checkUptimeCheckConfig(api.UptimeCheckConfig o) {
  buildCounterUptimeCheckConfig++;
  if (buildCounterUptimeCheckConfig < 3) {
    checkUnnamed2360(o.contentMatchers);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkHttpCheck(o.httpCheck as api.HttpCheck);
    checkUnnamed2361(o.internalCheckers);
    unittest.expect(o.isInternal, unittest.isTrue);
    checkMonitoredResource(o.monitoredResource as api.MonitoredResource);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.period, unittest.equals('foo'));
    checkResourceGroup(o.resourceGroup as api.ResourceGroup);
    checkUnnamed2362(o.selectedRegions);
    checkTcpCheck(o.tcpCheck as api.TcpCheck);
    unittest.expect(o.timeout, unittest.equals('foo'));
  }
  buildCounterUptimeCheckConfig--;
}

core.int buildCounterUptimeCheckIp = 0;
api.UptimeCheckIp buildUptimeCheckIp() {
  var o = api.UptimeCheckIp();
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
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
  }
  buildCounterUptimeCheckIp--;
}

core.int buildCounterValueDescriptor = 0;
api.ValueDescriptor buildValueDescriptor() {
  var o = api.ValueDescriptor();
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
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.metricKind, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterValueDescriptor--;
}

core.int buildCounterVerifyNotificationChannelRequest = 0;
api.VerifyNotificationChannelRequest buildVerifyNotificationChannelRequest() {
  var o = api.VerifyNotificationChannelRequest();
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
    unittest.expect(o.code, unittest.equals('foo'));
  }
  buildCounterVerifyNotificationChannelRequest--;
}

core.int buildCounterWindowsBasedSli = 0;
api.WindowsBasedSli buildWindowsBasedSli() {
  var o = api.WindowsBasedSli();
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
    unittest.expect(o.goodBadMetricFilter, unittest.equals('foo'));
    checkPerformanceThreshold(
        o.goodTotalRatioThreshold as api.PerformanceThreshold);
    checkMetricRange(o.metricMeanInRange as api.MetricRange);
    checkMetricRange(o.metricSumInRange as api.MetricRange);
    unittest.expect(o.windowPeriod, unittest.equals('foo'));
  }
  buildCounterWindowsBasedSli--;
}

core.List<core.String> buildUnnamed2363() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2363(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2364() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2364(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2365() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2365(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2366() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2366(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2367() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2367(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2368() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2368(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Aggregation', () {
    unittest.test('to-json--from-json', () {
      var o = buildAggregation();
      var od = api.Aggregation.fromJson(o.toJson());
      checkAggregation(od as api.Aggregation);
    });
  });

  unittest.group('obj-schema-AlertPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildAlertPolicy();
      var od = api.AlertPolicy.fromJson(o.toJson());
      checkAlertPolicy(od as api.AlertPolicy);
    });
  });

  unittest.group('obj-schema-AppEngine', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppEngine();
      var od = api.AppEngine.fromJson(o.toJson());
      checkAppEngine(od as api.AppEngine);
    });
  });

  unittest.group('obj-schema-AvailabilityCriteria', () {
    unittest.test('to-json--from-json', () {
      var o = buildAvailabilityCriteria();
      var od = api.AvailabilityCriteria.fromJson(o.toJson());
      checkAvailabilityCriteria(od as api.AvailabilityCriteria);
    });
  });

  unittest.group('obj-schema-BasicAuthentication', () {
    unittest.test('to-json--from-json', () {
      var o = buildBasicAuthentication();
      var od = api.BasicAuthentication.fromJson(o.toJson());
      checkBasicAuthentication(od as api.BasicAuthentication);
    });
  });

  unittest.group('obj-schema-BasicSli', () {
    unittest.test('to-json--from-json', () {
      var o = buildBasicSli();
      var od = api.BasicSli.fromJson(o.toJson());
      checkBasicSli(od as api.BasicSli);
    });
  });

  unittest.group('obj-schema-BucketOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildBucketOptions();
      var od = api.BucketOptions.fromJson(o.toJson());
      checkBucketOptions(od as api.BucketOptions);
    });
  });

  unittest.group('obj-schema-CloudEndpoints', () {
    unittest.test('to-json--from-json', () {
      var o = buildCloudEndpoints();
      var od = api.CloudEndpoints.fromJson(o.toJson());
      checkCloudEndpoints(od as api.CloudEndpoints);
    });
  });

  unittest.group('obj-schema-ClusterIstio', () {
    unittest.test('to-json--from-json', () {
      var o = buildClusterIstio();
      var od = api.ClusterIstio.fromJson(o.toJson());
      checkClusterIstio(od as api.ClusterIstio);
    });
  });

  unittest.group('obj-schema-CollectdPayload', () {
    unittest.test('to-json--from-json', () {
      var o = buildCollectdPayload();
      var od = api.CollectdPayload.fromJson(o.toJson());
      checkCollectdPayload(od as api.CollectdPayload);
    });
  });

  unittest.group('obj-schema-CollectdPayloadError', () {
    unittest.test('to-json--from-json', () {
      var o = buildCollectdPayloadError();
      var od = api.CollectdPayloadError.fromJson(o.toJson());
      checkCollectdPayloadError(od as api.CollectdPayloadError);
    });
  });

  unittest.group('obj-schema-CollectdValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildCollectdValue();
      var od = api.CollectdValue.fromJson(o.toJson());
      checkCollectdValue(od as api.CollectdValue);
    });
  });

  unittest.group('obj-schema-CollectdValueError', () {
    unittest.test('to-json--from-json', () {
      var o = buildCollectdValueError();
      var od = api.CollectdValueError.fromJson(o.toJson());
      checkCollectdValueError(od as api.CollectdValueError);
    });
  });

  unittest.group('obj-schema-Condition', () {
    unittest.test('to-json--from-json', () {
      var o = buildCondition();
      var od = api.Condition.fromJson(o.toJson());
      checkCondition(od as api.Condition);
    });
  });

  unittest.group('obj-schema-ContentMatcher', () {
    unittest.test('to-json--from-json', () {
      var o = buildContentMatcher();
      var od = api.ContentMatcher.fromJson(o.toJson());
      checkContentMatcher(od as api.ContentMatcher);
    });
  });

  unittest.group('obj-schema-CreateCollectdTimeSeriesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateCollectdTimeSeriesRequest();
      var od = api.CreateCollectdTimeSeriesRequest.fromJson(o.toJson());
      checkCreateCollectdTimeSeriesRequest(
          od as api.CreateCollectdTimeSeriesRequest);
    });
  });

  unittest.group('obj-schema-CreateCollectdTimeSeriesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateCollectdTimeSeriesResponse();
      var od = api.CreateCollectdTimeSeriesResponse.fromJson(o.toJson());
      checkCreateCollectdTimeSeriesResponse(
          od as api.CreateCollectdTimeSeriesResponse);
    });
  });

  unittest.group('obj-schema-CreateTimeSeriesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateTimeSeriesRequest();
      var od = api.CreateTimeSeriesRequest.fromJson(o.toJson());
      checkCreateTimeSeriesRequest(od as api.CreateTimeSeriesRequest);
    });
  });

  unittest.group('obj-schema-CreateTimeSeriesSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateTimeSeriesSummary();
      var od = api.CreateTimeSeriesSummary.fromJson(o.toJson());
      checkCreateTimeSeriesSummary(od as api.CreateTimeSeriesSummary);
    });
  });

  unittest.group('obj-schema-Custom', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustom();
      var od = api.Custom.fromJson(o.toJson());
      checkCustom(od as api.Custom);
    });
  });

  unittest.group('obj-schema-Distribution', () {
    unittest.test('to-json--from-json', () {
      var o = buildDistribution();
      var od = api.Distribution.fromJson(o.toJson());
      checkDistribution(od as api.Distribution);
    });
  });

  unittest.group('obj-schema-DistributionCut', () {
    unittest.test('to-json--from-json', () {
      var o = buildDistributionCut();
      var od = api.DistributionCut.fromJson(o.toJson());
      checkDistributionCut(od as api.DistributionCut);
    });
  });

  unittest.group('obj-schema-Documentation', () {
    unittest.test('to-json--from-json', () {
      var o = buildDocumentation();
      var od = api.Documentation.fromJson(o.toJson());
      checkDocumentation(od as api.Documentation);
    });
  });

  unittest.group('obj-schema-DroppedLabels', () {
    unittest.test('to-json--from-json', () {
      var o = buildDroppedLabels();
      var od = api.DroppedLabels.fromJson(o.toJson());
      checkDroppedLabels(od as api.DroppedLabels);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Error', () {
    unittest.test('to-json--from-json', () {
      var o = buildError();
      var od = api.Error.fromJson(o.toJson());
      checkError(od as api.Error);
    });
  });

  unittest.group('obj-schema-Exemplar', () {
    unittest.test('to-json--from-json', () {
      var o = buildExemplar();
      var od = api.Exemplar.fromJson(o.toJson());
      checkExemplar(od as api.Exemplar);
    });
  });

  unittest.group('obj-schema-Explicit', () {
    unittest.test('to-json--from-json', () {
      var o = buildExplicit();
      var od = api.Explicit.fromJson(o.toJson());
      checkExplicit(od as api.Explicit);
    });
  });

  unittest.group('obj-schema-Exponential', () {
    unittest.test('to-json--from-json', () {
      var o = buildExponential();
      var od = api.Exponential.fromJson(o.toJson());
      checkExponential(od as api.Exponential);
    });
  });

  unittest.group('obj-schema-Field', () {
    unittest.test('to-json--from-json', () {
      var o = buildField();
      var od = api.Field.fromJson(o.toJson());
      checkField(od as api.Field);
    });
  });

  unittest.group('obj-schema-GetNotificationChannelVerificationCodeRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGetNotificationChannelVerificationCodeRequest();
      var od = api.GetNotificationChannelVerificationCodeRequest.fromJson(
          o.toJson());
      checkGetNotificationChannelVerificationCodeRequest(
          od as api.GetNotificationChannelVerificationCodeRequest);
    });
  });

  unittest.group('obj-schema-GetNotificationChannelVerificationCodeResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGetNotificationChannelVerificationCodeResponse();
      var od = api.GetNotificationChannelVerificationCodeResponse.fromJson(
          o.toJson());
      checkGetNotificationChannelVerificationCodeResponse(
          od as api.GetNotificationChannelVerificationCodeResponse);
    });
  });

  unittest.group('obj-schema-GoogleMonitoringV3Range', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleMonitoringV3Range();
      var od = api.GoogleMonitoringV3Range.fromJson(o.toJson());
      checkGoogleMonitoringV3Range(od as api.GoogleMonitoringV3Range);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () {
      var o = buildGroup();
      var od = api.Group.fromJson(o.toJson());
      checkGroup(od as api.Group);
    });
  });

  unittest.group('obj-schema-HttpCheck', () {
    unittest.test('to-json--from-json', () {
      var o = buildHttpCheck();
      var od = api.HttpCheck.fromJson(o.toJson());
      checkHttpCheck(od as api.HttpCheck);
    });
  });

  unittest.group('obj-schema-InternalChecker', () {
    unittest.test('to-json--from-json', () {
      var o = buildInternalChecker();
      var od = api.InternalChecker.fromJson(o.toJson());
      checkInternalChecker(od as api.InternalChecker);
    });
  });

  unittest.group('obj-schema-IstioCanonicalService', () {
    unittest.test('to-json--from-json', () {
      var o = buildIstioCanonicalService();
      var od = api.IstioCanonicalService.fromJson(o.toJson());
      checkIstioCanonicalService(od as api.IstioCanonicalService);
    });
  });

  unittest.group('obj-schema-LabelDescriptor', () {
    unittest.test('to-json--from-json', () {
      var o = buildLabelDescriptor();
      var od = api.LabelDescriptor.fromJson(o.toJson());
      checkLabelDescriptor(od as api.LabelDescriptor);
    });
  });

  unittest.group('obj-schema-LabelValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildLabelValue();
      var od = api.LabelValue.fromJson(o.toJson());
      checkLabelValue(od as api.LabelValue);
    });
  });

  unittest.group('obj-schema-LatencyCriteria', () {
    unittest.test('to-json--from-json', () {
      var o = buildLatencyCriteria();
      var od = api.LatencyCriteria.fromJson(o.toJson());
      checkLatencyCriteria(od as api.LatencyCriteria);
    });
  });

  unittest.group('obj-schema-Linear', () {
    unittest.test('to-json--from-json', () {
      var o = buildLinear();
      var od = api.Linear.fromJson(o.toJson());
      checkLinear(od as api.Linear);
    });
  });

  unittest.group('obj-schema-ListAlertPoliciesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListAlertPoliciesResponse();
      var od = api.ListAlertPoliciesResponse.fromJson(o.toJson());
      checkListAlertPoliciesResponse(od as api.ListAlertPoliciesResponse);
    });
  });

  unittest.group('obj-schema-ListGroupMembersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGroupMembersResponse();
      var od = api.ListGroupMembersResponse.fromJson(o.toJson());
      checkListGroupMembersResponse(od as api.ListGroupMembersResponse);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListGroupsResponse();
      var od = api.ListGroupsResponse.fromJson(o.toJson());
      checkListGroupsResponse(od as api.ListGroupsResponse);
    });
  });

  unittest.group('obj-schema-ListMetricDescriptorsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListMetricDescriptorsResponse();
      var od = api.ListMetricDescriptorsResponse.fromJson(o.toJson());
      checkListMetricDescriptorsResponse(
          od as api.ListMetricDescriptorsResponse);
    });
  });

  unittest.group('obj-schema-ListMonitoredResourceDescriptorsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListMonitoredResourceDescriptorsResponse();
      var od =
          api.ListMonitoredResourceDescriptorsResponse.fromJson(o.toJson());
      checkListMonitoredResourceDescriptorsResponse(
          od as api.ListMonitoredResourceDescriptorsResponse);
    });
  });

  unittest.group('obj-schema-ListNotificationChannelDescriptorsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListNotificationChannelDescriptorsResponse();
      var od =
          api.ListNotificationChannelDescriptorsResponse.fromJson(o.toJson());
      checkListNotificationChannelDescriptorsResponse(
          od as api.ListNotificationChannelDescriptorsResponse);
    });
  });

  unittest.group('obj-schema-ListNotificationChannelsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListNotificationChannelsResponse();
      var od = api.ListNotificationChannelsResponse.fromJson(o.toJson());
      checkListNotificationChannelsResponse(
          od as api.ListNotificationChannelsResponse);
    });
  });

  unittest.group('obj-schema-ListServiceLevelObjectivesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListServiceLevelObjectivesResponse();
      var od = api.ListServiceLevelObjectivesResponse.fromJson(o.toJson());
      checkListServiceLevelObjectivesResponse(
          od as api.ListServiceLevelObjectivesResponse);
    });
  });

  unittest.group('obj-schema-ListServicesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListServicesResponse();
      var od = api.ListServicesResponse.fromJson(o.toJson());
      checkListServicesResponse(od as api.ListServicesResponse);
    });
  });

  unittest.group('obj-schema-ListTimeSeriesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListTimeSeriesResponse();
      var od = api.ListTimeSeriesResponse.fromJson(o.toJson());
      checkListTimeSeriesResponse(od as api.ListTimeSeriesResponse);
    });
  });

  unittest.group('obj-schema-ListUptimeCheckConfigsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListUptimeCheckConfigsResponse();
      var od = api.ListUptimeCheckConfigsResponse.fromJson(o.toJson());
      checkListUptimeCheckConfigsResponse(
          od as api.ListUptimeCheckConfigsResponse);
    });
  });

  unittest.group('obj-schema-ListUptimeCheckIpsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListUptimeCheckIpsResponse();
      var od = api.ListUptimeCheckIpsResponse.fromJson(o.toJson());
      checkListUptimeCheckIpsResponse(od as api.ListUptimeCheckIpsResponse);
    });
  });

  unittest.group('obj-schema-MeshIstio', () {
    unittest.test('to-json--from-json', () {
      var o = buildMeshIstio();
      var od = api.MeshIstio.fromJson(o.toJson());
      checkMeshIstio(od as api.MeshIstio);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetric();
      var od = api.Metric.fromJson(o.toJson());
      checkMetric(od as api.Metric);
    });
  });

  unittest.group('obj-schema-MetricAbsence', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricAbsence();
      var od = api.MetricAbsence.fromJson(o.toJson());
      checkMetricAbsence(od as api.MetricAbsence);
    });
  });

  unittest.group('obj-schema-MetricDescriptor', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricDescriptor();
      var od = api.MetricDescriptor.fromJson(o.toJson());
      checkMetricDescriptor(od as api.MetricDescriptor);
    });
  });

  unittest.group('obj-schema-MetricDescriptorMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricDescriptorMetadata();
      var od = api.MetricDescriptorMetadata.fromJson(o.toJson());
      checkMetricDescriptorMetadata(od as api.MetricDescriptorMetadata);
    });
  });

  unittest.group('obj-schema-MetricRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricRange();
      var od = api.MetricRange.fromJson(o.toJson());
      checkMetricRange(od as api.MetricRange);
    });
  });

  unittest.group('obj-schema-MetricThreshold', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricThreshold();
      var od = api.MetricThreshold.fromJson(o.toJson());
      checkMetricThreshold(od as api.MetricThreshold);
    });
  });

  unittest.group('obj-schema-MonitoredResource', () {
    unittest.test('to-json--from-json', () {
      var o = buildMonitoredResource();
      var od = api.MonitoredResource.fromJson(o.toJson());
      checkMonitoredResource(od as api.MonitoredResource);
    });
  });

  unittest.group('obj-schema-MonitoredResourceDescriptor', () {
    unittest.test('to-json--from-json', () {
      var o = buildMonitoredResourceDescriptor();
      var od = api.MonitoredResourceDescriptor.fromJson(o.toJson());
      checkMonitoredResourceDescriptor(od as api.MonitoredResourceDescriptor);
    });
  });

  unittest.group('obj-schema-MonitoredResourceMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildMonitoredResourceMetadata();
      var od = api.MonitoredResourceMetadata.fromJson(o.toJson());
      checkMonitoredResourceMetadata(od as api.MonitoredResourceMetadata);
    });
  });

  unittest.group('obj-schema-MonitoringQueryLanguageCondition', () {
    unittest.test('to-json--from-json', () {
      var o = buildMonitoringQueryLanguageCondition();
      var od = api.MonitoringQueryLanguageCondition.fromJson(o.toJson());
      checkMonitoringQueryLanguageCondition(
          od as api.MonitoringQueryLanguageCondition);
    });
  });

  unittest.group('obj-schema-MutationRecord', () {
    unittest.test('to-json--from-json', () {
      var o = buildMutationRecord();
      var od = api.MutationRecord.fromJson(o.toJson());
      checkMutationRecord(od as api.MutationRecord);
    });
  });

  unittest.group('obj-schema-NotificationChannel', () {
    unittest.test('to-json--from-json', () {
      var o = buildNotificationChannel();
      var od = api.NotificationChannel.fromJson(o.toJson());
      checkNotificationChannel(od as api.NotificationChannel);
    });
  });

  unittest.group('obj-schema-NotificationChannelDescriptor', () {
    unittest.test('to-json--from-json', () {
      var o = buildNotificationChannelDescriptor();
      var od = api.NotificationChannelDescriptor.fromJson(o.toJson());
      checkNotificationChannelDescriptor(
          od as api.NotificationChannelDescriptor);
    });
  });

  unittest.group('obj-schema-Option', () {
    unittest.test('to-json--from-json', () {
      var o = buildOption();
      var od = api.Option.fromJson(o.toJson());
      checkOption(od as api.Option);
    });
  });

  unittest.group('obj-schema-PerformanceThreshold', () {
    unittest.test('to-json--from-json', () {
      var o = buildPerformanceThreshold();
      var od = api.PerformanceThreshold.fromJson(o.toJson());
      checkPerformanceThreshold(od as api.PerformanceThreshold);
    });
  });

  unittest.group('obj-schema-Point', () {
    unittest.test('to-json--from-json', () {
      var o = buildPoint();
      var od = api.Point.fromJson(o.toJson());
      checkPoint(od as api.Point);
    });
  });

  unittest.group('obj-schema-PointData', () {
    unittest.test('to-json--from-json', () {
      var o = buildPointData();
      var od = api.PointData.fromJson(o.toJson());
      checkPointData(od as api.PointData);
    });
  });

  unittest.group('obj-schema-QueryTimeSeriesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryTimeSeriesRequest();
      var od = api.QueryTimeSeriesRequest.fromJson(o.toJson());
      checkQueryTimeSeriesRequest(od as api.QueryTimeSeriesRequest);
    });
  });

  unittest.group('obj-schema-QueryTimeSeriesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryTimeSeriesResponse();
      var od = api.QueryTimeSeriesResponse.fromJson(o.toJson());
      checkQueryTimeSeriesResponse(od as api.QueryTimeSeriesResponse);
    });
  });

  unittest.group('obj-schema-Range', () {
    unittest.test('to-json--from-json', () {
      var o = buildRange();
      var od = api.Range.fromJson(o.toJson());
      checkRange(od as api.Range);
    });
  });

  unittest.group('obj-schema-RequestBasedSli', () {
    unittest.test('to-json--from-json', () {
      var o = buildRequestBasedSli();
      var od = api.RequestBasedSli.fromJson(o.toJson());
      checkRequestBasedSli(od as api.RequestBasedSli);
    });
  });

  unittest.group('obj-schema-ResourceGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceGroup();
      var od = api.ResourceGroup.fromJson(o.toJson());
      checkResourceGroup(od as api.ResourceGroup);
    });
  });

  unittest.group('obj-schema-SendNotificationChannelVerificationCodeRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildSendNotificationChannelVerificationCodeRequest();
      var od = api.SendNotificationChannelVerificationCodeRequest.fromJson(
          o.toJson());
      checkSendNotificationChannelVerificationCodeRequest(
          od as api.SendNotificationChannelVerificationCodeRequest);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () {
      var o = buildService();
      var od = api.Service.fromJson(o.toJson());
      checkService(od as api.Service);
    });
  });

  unittest.group('obj-schema-ServiceLevelIndicator', () {
    unittest.test('to-json--from-json', () {
      var o = buildServiceLevelIndicator();
      var od = api.ServiceLevelIndicator.fromJson(o.toJson());
      checkServiceLevelIndicator(od as api.ServiceLevelIndicator);
    });
  });

  unittest.group('obj-schema-ServiceLevelObjective', () {
    unittest.test('to-json--from-json', () {
      var o = buildServiceLevelObjective();
      var od = api.ServiceLevelObjective.fromJson(o.toJson());
      checkServiceLevelObjective(od as api.ServiceLevelObjective);
    });
  });

  unittest.group('obj-schema-SourceContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceContext();
      var od = api.SourceContext.fromJson(o.toJson());
      checkSourceContext(od as api.SourceContext);
    });
  });

  unittest.group('obj-schema-SpanContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpanContext();
      var od = api.SpanContext.fromJson(o.toJson());
      checkSpanContext(od as api.SpanContext);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-TcpCheck', () {
    unittest.test('to-json--from-json', () {
      var o = buildTcpCheck();
      var od = api.TcpCheck.fromJson(o.toJson());
      checkTcpCheck(od as api.TcpCheck);
    });
  });

  unittest.group('obj-schema-Telemetry', () {
    unittest.test('to-json--from-json', () {
      var o = buildTelemetry();
      var od = api.Telemetry.fromJson(o.toJson());
      checkTelemetry(od as api.Telemetry);
    });
  });

  unittest.group('obj-schema-TimeInterval', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeInterval();
      var od = api.TimeInterval.fromJson(o.toJson());
      checkTimeInterval(od as api.TimeInterval);
    });
  });

  unittest.group('obj-schema-TimeSeries', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeSeries();
      var od = api.TimeSeries.fromJson(o.toJson());
      checkTimeSeries(od as api.TimeSeries);
    });
  });

  unittest.group('obj-schema-TimeSeriesData', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeSeriesData();
      var od = api.TimeSeriesData.fromJson(o.toJson());
      checkTimeSeriesData(od as api.TimeSeriesData);
    });
  });

  unittest.group('obj-schema-TimeSeriesDescriptor', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeSeriesDescriptor();
      var od = api.TimeSeriesDescriptor.fromJson(o.toJson());
      checkTimeSeriesDescriptor(od as api.TimeSeriesDescriptor);
    });
  });

  unittest.group('obj-schema-TimeSeriesRatio', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimeSeriesRatio();
      var od = api.TimeSeriesRatio.fromJson(o.toJson());
      checkTimeSeriesRatio(od as api.TimeSeriesRatio);
    });
  });

  unittest.group('obj-schema-Trigger', () {
    unittest.test('to-json--from-json', () {
      var o = buildTrigger();
      var od = api.Trigger.fromJson(o.toJson());
      checkTrigger(od as api.Trigger);
    });
  });

  unittest.group('obj-schema-Type', () {
    unittest.test('to-json--from-json', () {
      var o = buildType();
      var od = api.Type.fromJson(o.toJson());
      checkType(od as api.Type);
    });
  });

  unittest.group('obj-schema-TypedValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildTypedValue();
      var od = api.TypedValue.fromJson(o.toJson());
      checkTypedValue(od as api.TypedValue);
    });
  });

  unittest.group('obj-schema-UptimeCheckConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildUptimeCheckConfig();
      var od = api.UptimeCheckConfig.fromJson(o.toJson());
      checkUptimeCheckConfig(od as api.UptimeCheckConfig);
    });
  });

  unittest.group('obj-schema-UptimeCheckIp', () {
    unittest.test('to-json--from-json', () {
      var o = buildUptimeCheckIp();
      var od = api.UptimeCheckIp.fromJson(o.toJson());
      checkUptimeCheckIp(od as api.UptimeCheckIp);
    });
  });

  unittest.group('obj-schema-ValueDescriptor', () {
    unittest.test('to-json--from-json', () {
      var o = buildValueDescriptor();
      var od = api.ValueDescriptor.fromJson(o.toJson());
      checkValueDescriptor(od as api.ValueDescriptor);
    });
  });

  unittest.group('obj-schema-VerifyNotificationChannelRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildVerifyNotificationChannelRequest();
      var od = api.VerifyNotificationChannelRequest.fromJson(o.toJson());
      checkVerifyNotificationChannelRequest(
          od as api.VerifyNotificationChannelRequest);
    });
  });

  unittest.group('obj-schema-WindowsBasedSli', () {
    unittest.test('to-json--from-json', () {
      var o = buildWindowsBasedSli();
      var od = api.WindowsBasedSli.fromJson(o.toJson());
      checkWindowsBasedSli(od as api.WindowsBasedSli);
    });
  });

  unittest.group('resource-FoldersTimeSeriesResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).folders.timeSeries;
      var arg_name = 'foo';
      var arg_aggregation_alignmentPeriod = 'foo';
      var arg_aggregation_crossSeriesReducer = 'foo';
      var arg_aggregation_groupByFields = buildUnnamed2363();
      var arg_aggregation_perSeriesAligner = 'foo';
      var arg_filter = 'foo';
      var arg_interval_endTime = 'foo';
      var arg_interval_startTime = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_secondaryAggregation_alignmentPeriod = 'foo';
      var arg_secondaryAggregation_crossSeriesReducer = 'foo';
      var arg_secondaryAggregation_groupByFields = buildUnnamed2364();
      var arg_secondaryAggregation_perSeriesAligner = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["aggregation.alignmentPeriod"].first,
            unittest.equals(arg_aggregation_alignmentPeriod));
        unittest.expect(queryMap["aggregation.crossSeriesReducer"].first,
            unittest.equals(arg_aggregation_crossSeriesReducer));
        unittest.expect(queryMap["aggregation.groupByFields"],
            unittest.equals(arg_aggregation_groupByFields));
        unittest.expect(queryMap["aggregation.perSeriesAligner"].first,
            unittest.equals(arg_aggregation_perSeriesAligner));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["interval.endTime"].first,
            unittest.equals(arg_interval_endTime));
        unittest.expect(queryMap["interval.startTime"].first,
            unittest.equals(arg_interval_startTime));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["secondaryAggregation.alignmentPeriod"].first,
            unittest.equals(arg_secondaryAggregation_alignmentPeriod));
        unittest.expect(
            queryMap["secondaryAggregation.crossSeriesReducer"].first,
            unittest.equals(arg_secondaryAggregation_crossSeriesReducer));
        unittest.expect(queryMap["secondaryAggregation.groupByFields"],
            unittest.equals(arg_secondaryAggregation_groupByFields));
        unittest.expect(queryMap["secondaryAggregation.perSeriesAligner"].first,
            unittest.equals(arg_secondaryAggregation_perSeriesAligner));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTimeSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              aggregation_alignmentPeriod: arg_aggregation_alignmentPeriod,
              aggregation_crossSeriesReducer:
                  arg_aggregation_crossSeriesReducer,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTimeSeriesResponse(response as api.ListTimeSeriesResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsTimeSeriesResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).organizations.timeSeries;
      var arg_name = 'foo';
      var arg_aggregation_alignmentPeriod = 'foo';
      var arg_aggregation_crossSeriesReducer = 'foo';
      var arg_aggregation_groupByFields = buildUnnamed2365();
      var arg_aggregation_perSeriesAligner = 'foo';
      var arg_filter = 'foo';
      var arg_interval_endTime = 'foo';
      var arg_interval_startTime = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_secondaryAggregation_alignmentPeriod = 'foo';
      var arg_secondaryAggregation_crossSeriesReducer = 'foo';
      var arg_secondaryAggregation_groupByFields = buildUnnamed2366();
      var arg_secondaryAggregation_perSeriesAligner = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["aggregation.alignmentPeriod"].first,
            unittest.equals(arg_aggregation_alignmentPeriod));
        unittest.expect(queryMap["aggregation.crossSeriesReducer"].first,
            unittest.equals(arg_aggregation_crossSeriesReducer));
        unittest.expect(queryMap["aggregation.groupByFields"],
            unittest.equals(arg_aggregation_groupByFields));
        unittest.expect(queryMap["aggregation.perSeriesAligner"].first,
            unittest.equals(arg_aggregation_perSeriesAligner));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["interval.endTime"].first,
            unittest.equals(arg_interval_endTime));
        unittest.expect(queryMap["interval.startTime"].first,
            unittest.equals(arg_interval_startTime));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["secondaryAggregation.alignmentPeriod"].first,
            unittest.equals(arg_secondaryAggregation_alignmentPeriod));
        unittest.expect(
            queryMap["secondaryAggregation.crossSeriesReducer"].first,
            unittest.equals(arg_secondaryAggregation_crossSeriesReducer));
        unittest.expect(queryMap["secondaryAggregation.groupByFields"],
            unittest.equals(arg_secondaryAggregation_groupByFields));
        unittest.expect(queryMap["secondaryAggregation.perSeriesAligner"].first,
            unittest.equals(arg_secondaryAggregation_perSeriesAligner));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTimeSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              aggregation_alignmentPeriod: arg_aggregation_alignmentPeriod,
              aggregation_crossSeriesReducer:
                  arg_aggregation_crossSeriesReducer,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTimeSeriesResponse(response as api.ListTimeSeriesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsAlertPoliciesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.alertPolicies;
      var arg_request = buildAlertPolicy();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AlertPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAlertPolicy(obj as api.AlertPolicy);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAlertPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlertPolicy(response as api.AlertPolicy);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.alertPolicies;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.alertPolicies;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAlertPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlertPolicy(response as api.AlertPolicy);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.alertPolicies;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAlertPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAlertPoliciesResponse(
            response as api.ListAlertPoliciesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.alertPolicies;
      var arg_request = buildAlertPolicy();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AlertPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAlertPolicy(obj as api.AlertPolicy);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAlertPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlertPolicy(response as api.AlertPolicy);
      })));
    });
  });

  unittest.group('resource-ProjectsCollectdTimeSeriesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.collectdTimeSeries;
      var arg_request = buildCreateCollectdTimeSeriesRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateCollectdTimeSeriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateCollectdTimeSeriesRequest(
            obj as api.CreateCollectdTimeSeriesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreateCollectdTimeSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreateCollectdTimeSeriesResponse(
            response as api.CreateCollectdTimeSeriesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsGroupsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.groups;
      var arg_request = buildGroup();
      var arg_name = 'foo';
      var arg_validateOnly = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj as api.Group);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["validateOnly"].first,
            unittest.equals("$arg_validateOnly"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name,
              validateOnly: arg_validateOnly, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response as api.Group);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.groups;
      var arg_name = 'foo';
      var arg_recursive = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["recursive"].first, unittest.equals("$arg_recursive"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, recursive: arg_recursive, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.groups;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response as api.Group);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.groups;
      var arg_name = 'foo';
      var arg_ancestorsOfGroup = 'foo';
      var arg_childrenOfGroup = 'foo';
      var arg_descendantsOfGroup = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["ancestorsOfGroup"].first,
            unittest.equals(arg_ancestorsOfGroup));
        unittest.expect(queryMap["childrenOfGroup"].first,
            unittest.equals(arg_childrenOfGroup));
        unittest.expect(queryMap["descendantsOfGroup"].first,
            unittest.equals(arg_descendantsOfGroup));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              ancestorsOfGroup: arg_ancestorsOfGroup,
              childrenOfGroup: arg_childrenOfGroup,
              descendantsOfGroup: arg_descendantsOfGroup,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGroupsResponse(response as api.ListGroupsResponse);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.groups;
      var arg_request = buildGroup();
      var arg_name = 'foo';
      var arg_validateOnly = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGroup(obj as api.Group);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["validateOnly"].first,
            unittest.equals("$arg_validateOnly"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name,
              validateOnly: arg_validateOnly, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response as api.Group);
      })));
    });
  });

  unittest.group('resource-ProjectsGroupsMembersResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.groups.members;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_interval_endTime = 'foo';
      var arg_interval_startTime = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["interval.endTime"].first,
            unittest.equals(arg_interval_endTime));
        unittest.expect(queryMap["interval.startTime"].first,
            unittest.equals(arg_interval_startTime));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListGroupMembersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              interval_endTime: arg_interval_endTime,
              interval_startTime: arg_interval_startTime,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGroupMembersResponse(response as api.ListGroupMembersResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsMetricDescriptorsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.metricDescriptors;
      var arg_request = buildMetricDescriptor();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.MetricDescriptor.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMetricDescriptor(obj as api.MetricDescriptor);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMetricDescriptor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMetricDescriptor(response as api.MetricDescriptor);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.metricDescriptors;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.metricDescriptors;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMetricDescriptor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMetricDescriptor(response as api.MetricDescriptor);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.metricDescriptors;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListMetricDescriptorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListMetricDescriptorsResponse(
            response as api.ListMetricDescriptorsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsMonitoredResourceDescriptorsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.monitoredResourceDescriptors;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMonitoredResourceDescriptor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMonitoredResourceDescriptor(
            response as api.MonitoredResourceDescriptor);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.monitoredResourceDescriptors;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildListMonitoredResourceDescriptorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListMonitoredResourceDescriptorsResponse(
            response as api.ListMonitoredResourceDescriptorsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsNotificationChannelDescriptorsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.notificationChannelDescriptors;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNotificationChannelDescriptor());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotificationChannelDescriptor(
            response as api.NotificationChannelDescriptor);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.notificationChannelDescriptors;
      var arg_name = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildListNotificationChannelDescriptorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNotificationChannelDescriptorsResponse(
            response as api.ListNotificationChannelDescriptorsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsNotificationChannelsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.notificationChannels;
      var arg_request = buildNotificationChannel();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.NotificationChannel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkNotificationChannel(obj as api.NotificationChannel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNotificationChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotificationChannel(response as api.NotificationChannel);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.notificationChannels;
      var arg_name = 'foo';
      var arg_force = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.notificationChannels;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNotificationChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotificationChannel(response as api.NotificationChannel);
      })));
    });

    unittest.test('method--getVerificationCode', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.notificationChannels;
      var arg_request = buildGetNotificationChannelVerificationCodeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetNotificationChannelVerificationCodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetNotificationChannelVerificationCodeRequest(
            obj as api.GetNotificationChannelVerificationCodeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGetNotificationChannelVerificationCodeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getVerificationCode(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetNotificationChannelVerificationCodeResponse(
            response as api.GetNotificationChannelVerificationCodeResponse);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.notificationChannels;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListNotificationChannelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNotificationChannelsResponse(
            response as api.ListNotificationChannelsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.notificationChannels;
      var arg_request = buildNotificationChannel();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.NotificationChannel.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkNotificationChannel(obj as api.NotificationChannel);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNotificationChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotificationChannel(response as api.NotificationChannel);
      })));
    });

    unittest.test('method--sendVerificationCode', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.notificationChannels;
      var arg_request = buildSendNotificationChannelVerificationCodeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SendNotificationChannelVerificationCodeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendNotificationChannelVerificationCodeRequest(
            obj as api.SendNotificationChannelVerificationCodeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sendVerificationCode(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--verify', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.notificationChannels;
      var arg_request = buildVerifyNotificationChannelRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.VerifyNotificationChannelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkVerifyNotificationChannelRequest(
            obj as api.VerifyNotificationChannelRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildNotificationChannel());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verify(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotificationChannel(response as api.NotificationChannel);
      })));
    });
  });

  unittest.group('resource-ProjectsTimeSeriesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.timeSeries;
      var arg_request = buildCreateTimeSeriesRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateTimeSeriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateTimeSeriesRequest(obj as api.CreateTimeSeriesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.timeSeries;
      var arg_name = 'foo';
      var arg_aggregation_alignmentPeriod = 'foo';
      var arg_aggregation_crossSeriesReducer = 'foo';
      var arg_aggregation_groupByFields = buildUnnamed2367();
      var arg_aggregation_perSeriesAligner = 'foo';
      var arg_filter = 'foo';
      var arg_interval_endTime = 'foo';
      var arg_interval_startTime = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_secondaryAggregation_alignmentPeriod = 'foo';
      var arg_secondaryAggregation_crossSeriesReducer = 'foo';
      var arg_secondaryAggregation_groupByFields = buildUnnamed2368();
      var arg_secondaryAggregation_perSeriesAligner = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["aggregation.alignmentPeriod"].first,
            unittest.equals(arg_aggregation_alignmentPeriod));
        unittest.expect(queryMap["aggregation.crossSeriesReducer"].first,
            unittest.equals(arg_aggregation_crossSeriesReducer));
        unittest.expect(queryMap["aggregation.groupByFields"],
            unittest.equals(arg_aggregation_groupByFields));
        unittest.expect(queryMap["aggregation.perSeriesAligner"].first,
            unittest.equals(arg_aggregation_perSeriesAligner));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["interval.endTime"].first,
            unittest.equals(arg_interval_endTime));
        unittest.expect(queryMap["interval.startTime"].first,
            unittest.equals(arg_interval_startTime));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["secondaryAggregation.alignmentPeriod"].first,
            unittest.equals(arg_secondaryAggregation_alignmentPeriod));
        unittest.expect(
            queryMap["secondaryAggregation.crossSeriesReducer"].first,
            unittest.equals(arg_secondaryAggregation_crossSeriesReducer));
        unittest.expect(queryMap["secondaryAggregation.groupByFields"],
            unittest.equals(arg_secondaryAggregation_groupByFields));
        unittest.expect(queryMap["secondaryAggregation.perSeriesAligner"].first,
            unittest.equals(arg_secondaryAggregation_perSeriesAligner));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTimeSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              aggregation_alignmentPeriod: arg_aggregation_alignmentPeriod,
              aggregation_crossSeriesReducer:
                  arg_aggregation_crossSeriesReducer,
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
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTimeSeriesResponse(response as api.ListTimeSeriesResponse);
      })));
    });

    unittest.test('method--query', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.timeSeries;
      var arg_request = buildQueryTimeSeriesRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.QueryTimeSeriesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryTimeSeriesRequest(obj as api.QueryTimeSeriesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildQueryTimeSeriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkQueryTimeSeriesResponse(response as api.QueryTimeSeriesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsUptimeCheckConfigsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      var arg_request = buildUptimeCheckConfig();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UptimeCheckConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUptimeCheckConfig(obj as api.UptimeCheckConfig);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUptimeCheckConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUptimeCheckConfig(response as api.UptimeCheckConfig);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUptimeCheckConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUptimeCheckConfig(response as api.UptimeCheckConfig);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListUptimeCheckConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListUptimeCheckConfigsResponse(
            response as api.ListUptimeCheckConfigsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      var arg_request = buildUptimeCheckConfig();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UptimeCheckConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUptimeCheckConfig(obj as api.UptimeCheckConfig);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUptimeCheckConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUptimeCheckConfig(response as api.UptimeCheckConfig);
      })));
    });
  });

  unittest.group('resource-ServicesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).services;
      var arg_request = buildService();
      var arg_parent = 'foo';
      var arg_serviceId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Service.fromJson(json as core.Map<core.String, core.dynamic>);
        checkService(obj as api.Service);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["serviceId"].first, unittest.equals(arg_serviceId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              serviceId: arg_serviceId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response as api.Service);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).services;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).services;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response as api.Service);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).services;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServicesResponse(response as api.ListServicesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).services;
      var arg_request = buildService();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Service.fromJson(json as core.Map<core.String, core.dynamic>);
        checkService(obj as api.Service);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildService());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response as api.Service);
      })));
    });
  });

  unittest.group('resource-ServicesServiceLevelObjectivesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).services.serviceLevelObjectives;
      var arg_request = buildServiceLevelObjective();
      var arg_parent = 'foo';
      var arg_serviceLevelObjectiveId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServiceLevelObjective.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceLevelObjective(obj as api.ServiceLevelObjective);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["serviceLevelObjectiveId"].first,
            unittest.equals(arg_serviceLevelObjectiveId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServiceLevelObjective());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              serviceLevelObjectiveId: arg_serviceLevelObjectiveId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceLevelObjective(response as api.ServiceLevelObjective);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).services.serviceLevelObjectives;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).services.serviceLevelObjectives;
      var arg_name = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServiceLevelObjective());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceLevelObjective(response as api.ServiceLevelObjective);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).services.serviceLevelObjectives;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildListServiceLevelObjectivesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServiceLevelObjectivesResponse(
            response as api.ListServiceLevelObjectivesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).services.serviceLevelObjectives;
      var arg_request = buildServiceLevelObjective();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServiceLevelObjective.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceLevelObjective(obj as api.ServiceLevelObjective);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v3/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServiceLevelObjective());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceLevelObjective(response as api.ServiceLevelObjective);
      })));
    });
  });

  unittest.group('resource-UptimeCheckIpsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.MonitoringApi(mock).uptimeCheckIps;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v3/uptimeCheckIps"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListUptimeCheckIpsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListUptimeCheckIpsResponse(
            response as api.ListUptimeCheckIpsResponse);
      })));
    });
  });
}
