library googleapis.monitoring.v3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/monitoring/v3.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed3469() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3469(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAggregation = 0;
buildAggregation() {
  var o = new api.Aggregation();
  buildCounterAggregation++;
  if (buildCounterAggregation < 3) {
    o.alignmentPeriod = "foo";
    o.crossSeriesReducer = "foo";
    o.groupByFields = buildUnnamed3469();
    o.perSeriesAligner = "foo";
  }
  buildCounterAggregation--;
  return o;
}

checkAggregation(api.Aggregation o) {
  buildCounterAggregation++;
  if (buildCounterAggregation < 3) {
    unittest.expect(o.alignmentPeriod, unittest.equals('foo'));
    unittest.expect(o.crossSeriesReducer, unittest.equals('foo'));
    checkUnnamed3469(o.groupByFields);
    unittest.expect(o.perSeriesAligner, unittest.equals('foo'));
  }
  buildCounterAggregation--;
}

buildUnnamed3470() {
  var o = new core.List<api.Condition>();
  o.add(buildCondition());
  o.add(buildCondition());
  return o;
}

checkUnnamed3470(core.List<api.Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCondition(o[0]);
  checkCondition(o[1]);
}

buildUnnamed3471() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3471(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3472() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3472(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterAlertPolicy = 0;
buildAlertPolicy() {
  var o = new api.AlertPolicy();
  buildCounterAlertPolicy++;
  if (buildCounterAlertPolicy < 3) {
    o.combiner = "foo";
    o.conditions = buildUnnamed3470();
    o.creationRecord = buildMutationRecord();
    o.displayName = "foo";
    o.documentation = buildDocumentation();
    o.enabled = true;
    o.mutationRecord = buildMutationRecord();
    o.name = "foo";
    o.notificationChannels = buildUnnamed3471();
    o.userLabels = buildUnnamed3472();
  }
  buildCounterAlertPolicy--;
  return o;
}

checkAlertPolicy(api.AlertPolicy o) {
  buildCounterAlertPolicy++;
  if (buildCounterAlertPolicy < 3) {
    unittest.expect(o.combiner, unittest.equals('foo'));
    checkUnnamed3470(o.conditions);
    checkMutationRecord(o.creationRecord);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkDocumentation(o.documentation);
    unittest.expect(o.enabled, unittest.isTrue);
    checkMutationRecord(o.mutationRecord);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3471(o.notificationChannels);
    checkUnnamed3472(o.userLabels);
  }
  buildCounterAlertPolicy--;
}

core.int buildCounterBasicAuthentication = 0;
buildBasicAuthentication() {
  var o = new api.BasicAuthentication();
  buildCounterBasicAuthentication++;
  if (buildCounterBasicAuthentication < 3) {
    o.password = "foo";
    o.username = "foo";
  }
  buildCounterBasicAuthentication--;
  return o;
}

checkBasicAuthentication(api.BasicAuthentication o) {
  buildCounterBasicAuthentication++;
  if (buildCounterBasicAuthentication < 3) {
    unittest.expect(o.password, unittest.equals('foo'));
    unittest.expect(o.username, unittest.equals('foo'));
  }
  buildCounterBasicAuthentication--;
}

core.int buildCounterBucketOptions = 0;
buildBucketOptions() {
  var o = new api.BucketOptions();
  buildCounterBucketOptions++;
  if (buildCounterBucketOptions < 3) {
    o.explicitBuckets = buildExplicit();
    o.exponentialBuckets = buildExponential();
    o.linearBuckets = buildLinear();
  }
  buildCounterBucketOptions--;
  return o;
}

checkBucketOptions(api.BucketOptions o) {
  buildCounterBucketOptions++;
  if (buildCounterBucketOptions < 3) {
    checkExplicit(o.explicitBuckets);
    checkExponential(o.exponentialBuckets);
    checkLinear(o.linearBuckets);
  }
  buildCounterBucketOptions--;
}

buildUnnamed3473() {
  var o = new core.Map<core.String, api.TypedValue>();
  o["x"] = buildTypedValue();
  o["y"] = buildTypedValue();
  return o;
}

checkUnnamed3473(core.Map<core.String, api.TypedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTypedValue(o["x"]);
  checkTypedValue(o["y"]);
}

buildUnnamed3474() {
  var o = new core.List<api.CollectdValue>();
  o.add(buildCollectdValue());
  o.add(buildCollectdValue());
  return o;
}

checkUnnamed3474(core.List<api.CollectdValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectdValue(o[0]);
  checkCollectdValue(o[1]);
}

core.int buildCounterCollectdPayload = 0;
buildCollectdPayload() {
  var o = new api.CollectdPayload();
  buildCounterCollectdPayload++;
  if (buildCounterCollectdPayload < 3) {
    o.endTime = "foo";
    o.metadata = buildUnnamed3473();
    o.plugin = "foo";
    o.pluginInstance = "foo";
    o.startTime = "foo";
    o.type = "foo";
    o.typeInstance = "foo";
    o.values = buildUnnamed3474();
  }
  buildCounterCollectdPayload--;
  return o;
}

checkCollectdPayload(api.CollectdPayload o) {
  buildCounterCollectdPayload++;
  if (buildCounterCollectdPayload < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed3473(o.metadata);
    unittest.expect(o.plugin, unittest.equals('foo'));
    unittest.expect(o.pluginInstance, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.typeInstance, unittest.equals('foo'));
    checkUnnamed3474(o.values);
  }
  buildCounterCollectdPayload--;
}

buildUnnamed3475() {
  var o = new core.List<api.CollectdValueError>();
  o.add(buildCollectdValueError());
  o.add(buildCollectdValueError());
  return o;
}

checkUnnamed3475(core.List<api.CollectdValueError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectdValueError(o[0]);
  checkCollectdValueError(o[1]);
}

core.int buildCounterCollectdPayloadError = 0;
buildCollectdPayloadError() {
  var o = new api.CollectdPayloadError();
  buildCounterCollectdPayloadError++;
  if (buildCounterCollectdPayloadError < 3) {
    o.error = buildStatus();
    o.index = 42;
    o.valueErrors = buildUnnamed3475();
  }
  buildCounterCollectdPayloadError--;
  return o;
}

checkCollectdPayloadError(api.CollectdPayloadError o) {
  buildCounterCollectdPayloadError++;
  if (buildCounterCollectdPayloadError < 3) {
    checkStatus(o.error);
    unittest.expect(o.index, unittest.equals(42));
    checkUnnamed3475(o.valueErrors);
  }
  buildCounterCollectdPayloadError--;
}

core.int buildCounterCollectdValue = 0;
buildCollectdValue() {
  var o = new api.CollectdValue();
  buildCounterCollectdValue++;
  if (buildCounterCollectdValue < 3) {
    o.dataSourceName = "foo";
    o.dataSourceType = "foo";
    o.value = buildTypedValue();
  }
  buildCounterCollectdValue--;
  return o;
}

checkCollectdValue(api.CollectdValue o) {
  buildCounterCollectdValue++;
  if (buildCounterCollectdValue < 3) {
    unittest.expect(o.dataSourceName, unittest.equals('foo'));
    unittest.expect(o.dataSourceType, unittest.equals('foo'));
    checkTypedValue(o.value);
  }
  buildCounterCollectdValue--;
}

core.int buildCounterCollectdValueError = 0;
buildCollectdValueError() {
  var o = new api.CollectdValueError();
  buildCounterCollectdValueError++;
  if (buildCounterCollectdValueError < 3) {
    o.error = buildStatus();
    o.index = 42;
  }
  buildCounterCollectdValueError--;
  return o;
}

checkCollectdValueError(api.CollectdValueError o) {
  buildCounterCollectdValueError++;
  if (buildCounterCollectdValueError < 3) {
    checkStatus(o.error);
    unittest.expect(o.index, unittest.equals(42));
  }
  buildCounterCollectdValueError--;
}

core.int buildCounterCondition = 0;
buildCondition() {
  var o = new api.Condition();
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    o.conditionAbsent = buildMetricAbsence();
    o.conditionThreshold = buildMetricThreshold();
    o.displayName = "foo";
    o.name = "foo";
  }
  buildCounterCondition--;
  return o;
}

checkCondition(api.Condition o) {
  buildCounterCondition++;
  if (buildCounterCondition < 3) {
    checkMetricAbsence(o.conditionAbsent);
    checkMetricThreshold(o.conditionThreshold);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterCondition--;
}

core.int buildCounterContentMatcher = 0;
buildContentMatcher() {
  var o = new api.ContentMatcher();
  buildCounterContentMatcher++;
  if (buildCounterContentMatcher < 3) {
    o.content = "foo";
  }
  buildCounterContentMatcher--;
  return o;
}

checkContentMatcher(api.ContentMatcher o) {
  buildCounterContentMatcher++;
  if (buildCounterContentMatcher < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
  }
  buildCounterContentMatcher--;
}

buildUnnamed3476() {
  var o = new core.List<api.CollectdPayload>();
  o.add(buildCollectdPayload());
  o.add(buildCollectdPayload());
  return o;
}

checkUnnamed3476(core.List<api.CollectdPayload> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectdPayload(o[0]);
  checkCollectdPayload(o[1]);
}

core.int buildCounterCreateCollectdTimeSeriesRequest = 0;
buildCreateCollectdTimeSeriesRequest() {
  var o = new api.CreateCollectdTimeSeriesRequest();
  buildCounterCreateCollectdTimeSeriesRequest++;
  if (buildCounterCreateCollectdTimeSeriesRequest < 3) {
    o.collectdPayloads = buildUnnamed3476();
    o.collectdVersion = "foo";
    o.resource = buildMonitoredResource();
  }
  buildCounterCreateCollectdTimeSeriesRequest--;
  return o;
}

checkCreateCollectdTimeSeriesRequest(api.CreateCollectdTimeSeriesRequest o) {
  buildCounterCreateCollectdTimeSeriesRequest++;
  if (buildCounterCreateCollectdTimeSeriesRequest < 3) {
    checkUnnamed3476(o.collectdPayloads);
    unittest.expect(o.collectdVersion, unittest.equals('foo'));
    checkMonitoredResource(o.resource);
  }
  buildCounterCreateCollectdTimeSeriesRequest--;
}

buildUnnamed3477() {
  var o = new core.List<api.CollectdPayloadError>();
  o.add(buildCollectdPayloadError());
  o.add(buildCollectdPayloadError());
  return o;
}

checkUnnamed3477(core.List<api.CollectdPayloadError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCollectdPayloadError(o[0]);
  checkCollectdPayloadError(o[1]);
}

core.int buildCounterCreateCollectdTimeSeriesResponse = 0;
buildCreateCollectdTimeSeriesResponse() {
  var o = new api.CreateCollectdTimeSeriesResponse();
  buildCounterCreateCollectdTimeSeriesResponse++;
  if (buildCounterCreateCollectdTimeSeriesResponse < 3) {
    o.payloadErrors = buildUnnamed3477();
  }
  buildCounterCreateCollectdTimeSeriesResponse--;
  return o;
}

checkCreateCollectdTimeSeriesResponse(api.CreateCollectdTimeSeriesResponse o) {
  buildCounterCreateCollectdTimeSeriesResponse++;
  if (buildCounterCreateCollectdTimeSeriesResponse < 3) {
    checkUnnamed3477(o.payloadErrors);
  }
  buildCounterCreateCollectdTimeSeriesResponse--;
}

buildUnnamed3478() {
  var o = new core.List<api.TimeSeries>();
  o.add(buildTimeSeries());
  o.add(buildTimeSeries());
  return o;
}

checkUnnamed3478(core.List<api.TimeSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeSeries(o[0]);
  checkTimeSeries(o[1]);
}

core.int buildCounterCreateTimeSeriesRequest = 0;
buildCreateTimeSeriesRequest() {
  var o = new api.CreateTimeSeriesRequest();
  buildCounterCreateTimeSeriesRequest++;
  if (buildCounterCreateTimeSeriesRequest < 3) {
    o.timeSeries = buildUnnamed3478();
  }
  buildCounterCreateTimeSeriesRequest--;
  return o;
}

checkCreateTimeSeriesRequest(api.CreateTimeSeriesRequest o) {
  buildCounterCreateTimeSeriesRequest++;
  if (buildCounterCreateTimeSeriesRequest < 3) {
    checkUnnamed3478(o.timeSeries);
  }
  buildCounterCreateTimeSeriesRequest--;
}

buildUnnamed3479() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3479(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3480() {
  var o = new core.List<api.Exemplar>();
  o.add(buildExemplar());
  o.add(buildExemplar());
  return o;
}

checkUnnamed3480(core.List<api.Exemplar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExemplar(o[0]);
  checkExemplar(o[1]);
}

core.int buildCounterDistribution = 0;
buildDistribution() {
  var o = new api.Distribution();
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    o.bucketCounts = buildUnnamed3479();
    o.bucketOptions = buildBucketOptions();
    o.count = "foo";
    o.exemplars = buildUnnamed3480();
    o.mean = 42.0;
    o.range = buildRange();
    o.sumOfSquaredDeviation = 42.0;
  }
  buildCounterDistribution--;
  return o;
}

checkDistribution(api.Distribution o) {
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    checkUnnamed3479(o.bucketCounts);
    checkBucketOptions(o.bucketOptions);
    unittest.expect(o.count, unittest.equals('foo'));
    checkUnnamed3480(o.exemplars);
    unittest.expect(o.mean, unittest.equals(42.0));
    checkRange(o.range);
    unittest.expect(o.sumOfSquaredDeviation, unittest.equals(42.0));
  }
  buildCounterDistribution--;
}

core.int buildCounterDocumentation = 0;
buildDocumentation() {
  var o = new api.Documentation();
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    o.content = "foo";
    o.mimeType = "foo";
  }
  buildCounterDocumentation--;
  return o;
}

checkDocumentation(api.Documentation o) {
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterDocumentation--;
}

buildUnnamed3481() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3481(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDroppedLabels = 0;
buildDroppedLabels() {
  var o = new api.DroppedLabels();
  buildCounterDroppedLabels++;
  if (buildCounterDroppedLabels < 3) {
    o.label = buildUnnamed3481();
  }
  buildCounterDroppedLabels--;
  return o;
}

checkDroppedLabels(api.DroppedLabels o) {
  buildCounterDroppedLabels++;
  if (buildCounterDroppedLabels < 3) {
    checkUnnamed3481(o.label);
  }
  buildCounterDroppedLabels--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed3482() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3482(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed3483() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3482());
  o.add(buildUnnamed3482());
  return o;
}

checkUnnamed3483(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3482(o[0]);
  checkUnnamed3482(o[1]);
}

core.int buildCounterExemplar = 0;
buildExemplar() {
  var o = new api.Exemplar();
  buildCounterExemplar++;
  if (buildCounterExemplar < 3) {
    o.attachments = buildUnnamed3483();
    o.timestamp = "foo";
    o.value = 42.0;
  }
  buildCounterExemplar--;
  return o;
}

checkExemplar(api.Exemplar o) {
  buildCounterExemplar++;
  if (buildCounterExemplar < 3) {
    checkUnnamed3483(o.attachments);
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterExemplar--;
}

buildUnnamed3484() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed3484(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterExplicit = 0;
buildExplicit() {
  var o = new api.Explicit();
  buildCounterExplicit++;
  if (buildCounterExplicit < 3) {
    o.bounds = buildUnnamed3484();
  }
  buildCounterExplicit--;
  return o;
}

checkExplicit(api.Explicit o) {
  buildCounterExplicit++;
  if (buildCounterExplicit < 3) {
    checkUnnamed3484(o.bounds);
  }
  buildCounterExplicit--;
}

core.int buildCounterExponential = 0;
buildExponential() {
  var o = new api.Exponential();
  buildCounterExponential++;
  if (buildCounterExponential < 3) {
    o.growthFactor = 42.0;
    o.numFiniteBuckets = 42;
    o.scale = 42.0;
  }
  buildCounterExponential--;
  return o;
}

checkExponential(api.Exponential o) {
  buildCounterExponential++;
  if (buildCounterExponential < 3) {
    unittest.expect(o.growthFactor, unittest.equals(42.0));
    unittest.expect(o.numFiniteBuckets, unittest.equals(42));
    unittest.expect(o.scale, unittest.equals(42.0));
  }
  buildCounterExponential--;
}

buildUnnamed3485() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed3485(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterField = 0;
buildField() {
  var o = new api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.cardinality = "foo";
    o.defaultValue = "foo";
    o.jsonName = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.number = 42;
    o.oneofIndex = 42;
    o.options = buildUnnamed3485();
    o.packed = true;
    o.typeUrl = "foo";
  }
  buildCounterField--;
  return o;
}

checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    unittest.expect(o.cardinality, unittest.equals('foo'));
    unittest.expect(o.defaultValue, unittest.equals('foo'));
    unittest.expect(o.jsonName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals(42));
    unittest.expect(o.oneofIndex, unittest.equals(42));
    checkUnnamed3485(o.options);
    unittest.expect(o.packed, unittest.isTrue);
    unittest.expect(o.typeUrl, unittest.equals('foo'));
  }
  buildCounterField--;
}

core.int buildCounterGetNotificationChannelVerificationCodeRequest = 0;
buildGetNotificationChannelVerificationCodeRequest() {
  var o = new api.GetNotificationChannelVerificationCodeRequest();
  buildCounterGetNotificationChannelVerificationCodeRequest++;
  if (buildCounterGetNotificationChannelVerificationCodeRequest < 3) {
    o.expireTime = "foo";
  }
  buildCounterGetNotificationChannelVerificationCodeRequest--;
  return o;
}

checkGetNotificationChannelVerificationCodeRequest(
    api.GetNotificationChannelVerificationCodeRequest o) {
  buildCounterGetNotificationChannelVerificationCodeRequest++;
  if (buildCounterGetNotificationChannelVerificationCodeRequest < 3) {
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterGetNotificationChannelVerificationCodeRequest--;
}

core.int buildCounterGetNotificationChannelVerificationCodeResponse = 0;
buildGetNotificationChannelVerificationCodeResponse() {
  var o = new api.GetNotificationChannelVerificationCodeResponse();
  buildCounterGetNotificationChannelVerificationCodeResponse++;
  if (buildCounterGetNotificationChannelVerificationCodeResponse < 3) {
    o.code = "foo";
    o.expireTime = "foo";
  }
  buildCounterGetNotificationChannelVerificationCodeResponse--;
  return o;
}

checkGetNotificationChannelVerificationCodeResponse(
    api.GetNotificationChannelVerificationCodeResponse o) {
  buildCounterGetNotificationChannelVerificationCodeResponse++;
  if (buildCounterGetNotificationChannelVerificationCodeResponse < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterGetNotificationChannelVerificationCodeResponse--;
}

core.int buildCounterGroup = 0;
buildGroup() {
  var o = new api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.displayName = "foo";
    o.filter = "foo";
    o.isCluster = true;
    o.name = "foo";
    o.parentName = "foo";
  }
  buildCounterGroup--;
  return o;
}

checkGroup(api.Group o) {
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

buildUnnamed3486() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3486(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterHttpCheck = 0;
buildHttpCheck() {
  var o = new api.HttpCheck();
  buildCounterHttpCheck++;
  if (buildCounterHttpCheck < 3) {
    o.authInfo = buildBasicAuthentication();
    o.headers = buildUnnamed3486();
    o.maskHeaders = true;
    o.path = "foo";
    o.port = 42;
    o.useSsl = true;
  }
  buildCounterHttpCheck--;
  return o;
}

checkHttpCheck(api.HttpCheck o) {
  buildCounterHttpCheck++;
  if (buildCounterHttpCheck < 3) {
    checkBasicAuthentication(o.authInfo);
    checkUnnamed3486(o.headers);
    unittest.expect(o.maskHeaders, unittest.isTrue);
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
    unittest.expect(o.useSsl, unittest.isTrue);
  }
  buildCounterHttpCheck--;
}

core.int buildCounterInternalChecker = 0;
buildInternalChecker() {
  var o = new api.InternalChecker();
  buildCounterInternalChecker++;
  if (buildCounterInternalChecker < 3) {
    o.displayName = "foo";
    o.gcpZone = "foo";
    o.name = "foo";
    o.network = "foo";
    o.peerProjectId = "foo";
    o.state = "foo";
  }
  buildCounterInternalChecker--;
  return o;
}

checkInternalChecker(api.InternalChecker o) {
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

core.int buildCounterLabelDescriptor = 0;
buildLabelDescriptor() {
  var o = new api.LabelDescriptor();
  buildCounterLabelDescriptor++;
  if (buildCounterLabelDescriptor < 3) {
    o.description = "foo";
    o.key = "foo";
    o.valueType = "foo";
  }
  buildCounterLabelDescriptor--;
  return o;
}

checkLabelDescriptor(api.LabelDescriptor o) {
  buildCounterLabelDescriptor++;
  if (buildCounterLabelDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterLabelDescriptor--;
}

core.int buildCounterLinear = 0;
buildLinear() {
  var o = new api.Linear();
  buildCounterLinear++;
  if (buildCounterLinear < 3) {
    o.numFiniteBuckets = 42;
    o.offset = 42.0;
    o.width = 42.0;
  }
  buildCounterLinear--;
  return o;
}

checkLinear(api.Linear o) {
  buildCounterLinear++;
  if (buildCounterLinear < 3) {
    unittest.expect(o.numFiniteBuckets, unittest.equals(42));
    unittest.expect(o.offset, unittest.equals(42.0));
    unittest.expect(o.width, unittest.equals(42.0));
  }
  buildCounterLinear--;
}

buildUnnamed3487() {
  var o = new core.List<api.AlertPolicy>();
  o.add(buildAlertPolicy());
  o.add(buildAlertPolicy());
  return o;
}

checkUnnamed3487(core.List<api.AlertPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAlertPolicy(o[0]);
  checkAlertPolicy(o[1]);
}

core.int buildCounterListAlertPoliciesResponse = 0;
buildListAlertPoliciesResponse() {
  var o = new api.ListAlertPoliciesResponse();
  buildCounterListAlertPoliciesResponse++;
  if (buildCounterListAlertPoliciesResponse < 3) {
    o.alertPolicies = buildUnnamed3487();
    o.nextPageToken = "foo";
  }
  buildCounterListAlertPoliciesResponse--;
  return o;
}

checkListAlertPoliciesResponse(api.ListAlertPoliciesResponse o) {
  buildCounterListAlertPoliciesResponse++;
  if (buildCounterListAlertPoliciesResponse < 3) {
    checkUnnamed3487(o.alertPolicies);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAlertPoliciesResponse--;
}

buildUnnamed3488() {
  var o = new core.List<api.MonitoredResource>();
  o.add(buildMonitoredResource());
  o.add(buildMonitoredResource());
  return o;
}

checkUnnamed3488(core.List<api.MonitoredResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResource(o[0]);
  checkMonitoredResource(o[1]);
}

core.int buildCounterListGroupMembersResponse = 0;
buildListGroupMembersResponse() {
  var o = new api.ListGroupMembersResponse();
  buildCounterListGroupMembersResponse++;
  if (buildCounterListGroupMembersResponse < 3) {
    o.members = buildUnnamed3488();
    o.nextPageToken = "foo";
    o.totalSize = 42;
  }
  buildCounterListGroupMembersResponse--;
  return o;
}

checkListGroupMembersResponse(api.ListGroupMembersResponse o) {
  buildCounterListGroupMembersResponse++;
  if (buildCounterListGroupMembersResponse < 3) {
    checkUnnamed3488(o.members);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
  }
  buildCounterListGroupMembersResponse--;
}

buildUnnamed3489() {
  var o = new core.List<api.Group>();
  o.add(buildGroup());
  o.add(buildGroup());
  return o;
}

checkUnnamed3489(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterListGroupsResponse = 0;
buildListGroupsResponse() {
  var o = new api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.group = buildUnnamed3489();
    o.nextPageToken = "foo";
  }
  buildCounterListGroupsResponse--;
  return o;
}

checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed3489(o.group);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGroupsResponse--;
}

buildUnnamed3490() {
  var o = new core.List<api.MetricDescriptor>();
  o.add(buildMetricDescriptor());
  o.add(buildMetricDescriptor());
  return o;
}

checkUnnamed3490(core.List<api.MetricDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDescriptor(o[0]);
  checkMetricDescriptor(o[1]);
}

core.int buildCounterListMetricDescriptorsResponse = 0;
buildListMetricDescriptorsResponse() {
  var o = new api.ListMetricDescriptorsResponse();
  buildCounterListMetricDescriptorsResponse++;
  if (buildCounterListMetricDescriptorsResponse < 3) {
    o.metricDescriptors = buildUnnamed3490();
    o.nextPageToken = "foo";
  }
  buildCounterListMetricDescriptorsResponse--;
  return o;
}

checkListMetricDescriptorsResponse(api.ListMetricDescriptorsResponse o) {
  buildCounterListMetricDescriptorsResponse++;
  if (buildCounterListMetricDescriptorsResponse < 3) {
    checkUnnamed3490(o.metricDescriptors);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListMetricDescriptorsResponse--;
}

buildUnnamed3491() {
  var o = new core.List<api.MonitoredResourceDescriptor>();
  o.add(buildMonitoredResourceDescriptor());
  o.add(buildMonitoredResourceDescriptor());
  return o;
}

checkUnnamed3491(core.List<api.MonitoredResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResourceDescriptor(o[0]);
  checkMonitoredResourceDescriptor(o[1]);
}

core.int buildCounterListMonitoredResourceDescriptorsResponse = 0;
buildListMonitoredResourceDescriptorsResponse() {
  var o = new api.ListMonitoredResourceDescriptorsResponse();
  buildCounterListMonitoredResourceDescriptorsResponse++;
  if (buildCounterListMonitoredResourceDescriptorsResponse < 3) {
    o.nextPageToken = "foo";
    o.resourceDescriptors = buildUnnamed3491();
  }
  buildCounterListMonitoredResourceDescriptorsResponse--;
  return o;
}

checkListMonitoredResourceDescriptorsResponse(
    api.ListMonitoredResourceDescriptorsResponse o) {
  buildCounterListMonitoredResourceDescriptorsResponse++;
  if (buildCounterListMonitoredResourceDescriptorsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3491(o.resourceDescriptors);
  }
  buildCounterListMonitoredResourceDescriptorsResponse--;
}

buildUnnamed3492() {
  var o = new core.List<api.NotificationChannelDescriptor>();
  o.add(buildNotificationChannelDescriptor());
  o.add(buildNotificationChannelDescriptor());
  return o;
}

checkUnnamed3492(core.List<api.NotificationChannelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotificationChannelDescriptor(o[0]);
  checkNotificationChannelDescriptor(o[1]);
}

core.int buildCounterListNotificationChannelDescriptorsResponse = 0;
buildListNotificationChannelDescriptorsResponse() {
  var o = new api.ListNotificationChannelDescriptorsResponse();
  buildCounterListNotificationChannelDescriptorsResponse++;
  if (buildCounterListNotificationChannelDescriptorsResponse < 3) {
    o.channelDescriptors = buildUnnamed3492();
    o.nextPageToken = "foo";
  }
  buildCounterListNotificationChannelDescriptorsResponse--;
  return o;
}

checkListNotificationChannelDescriptorsResponse(
    api.ListNotificationChannelDescriptorsResponse o) {
  buildCounterListNotificationChannelDescriptorsResponse++;
  if (buildCounterListNotificationChannelDescriptorsResponse < 3) {
    checkUnnamed3492(o.channelDescriptors);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListNotificationChannelDescriptorsResponse--;
}

buildUnnamed3493() {
  var o = new core.List<api.NotificationChannel>();
  o.add(buildNotificationChannel());
  o.add(buildNotificationChannel());
  return o;
}

checkUnnamed3493(core.List<api.NotificationChannel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNotificationChannel(o[0]);
  checkNotificationChannel(o[1]);
}

core.int buildCounterListNotificationChannelsResponse = 0;
buildListNotificationChannelsResponse() {
  var o = new api.ListNotificationChannelsResponse();
  buildCounterListNotificationChannelsResponse++;
  if (buildCounterListNotificationChannelsResponse < 3) {
    o.nextPageToken = "foo";
    o.notificationChannels = buildUnnamed3493();
  }
  buildCounterListNotificationChannelsResponse--;
  return o;
}

checkListNotificationChannelsResponse(api.ListNotificationChannelsResponse o) {
  buildCounterListNotificationChannelsResponse++;
  if (buildCounterListNotificationChannelsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3493(o.notificationChannels);
  }
  buildCounterListNotificationChannelsResponse--;
}

buildUnnamed3494() {
  var o = new core.List<api.Status>();
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

checkUnnamed3494(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

buildUnnamed3495() {
  var o = new core.List<api.TimeSeries>();
  o.add(buildTimeSeries());
  o.add(buildTimeSeries());
  return o;
}

checkUnnamed3495(core.List<api.TimeSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeSeries(o[0]);
  checkTimeSeries(o[1]);
}

core.int buildCounterListTimeSeriesResponse = 0;
buildListTimeSeriesResponse() {
  var o = new api.ListTimeSeriesResponse();
  buildCounterListTimeSeriesResponse++;
  if (buildCounterListTimeSeriesResponse < 3) {
    o.executionErrors = buildUnnamed3494();
    o.nextPageToken = "foo";
    o.timeSeries = buildUnnamed3495();
  }
  buildCounterListTimeSeriesResponse--;
  return o;
}

checkListTimeSeriesResponse(api.ListTimeSeriesResponse o) {
  buildCounterListTimeSeriesResponse++;
  if (buildCounterListTimeSeriesResponse < 3) {
    checkUnnamed3494(o.executionErrors);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3495(o.timeSeries);
  }
  buildCounterListTimeSeriesResponse--;
}

buildUnnamed3496() {
  var o = new core.List<api.UptimeCheckConfig>();
  o.add(buildUptimeCheckConfig());
  o.add(buildUptimeCheckConfig());
  return o;
}

checkUnnamed3496(core.List<api.UptimeCheckConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUptimeCheckConfig(o[0]);
  checkUptimeCheckConfig(o[1]);
}

core.int buildCounterListUptimeCheckConfigsResponse = 0;
buildListUptimeCheckConfigsResponse() {
  var o = new api.ListUptimeCheckConfigsResponse();
  buildCounterListUptimeCheckConfigsResponse++;
  if (buildCounterListUptimeCheckConfigsResponse < 3) {
    o.nextPageToken = "foo";
    o.totalSize = 42;
    o.uptimeCheckConfigs = buildUnnamed3496();
  }
  buildCounterListUptimeCheckConfigsResponse--;
  return o;
}

checkListUptimeCheckConfigsResponse(api.ListUptimeCheckConfigsResponse o) {
  buildCounterListUptimeCheckConfigsResponse++;
  if (buildCounterListUptimeCheckConfigsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalSize, unittest.equals(42));
    checkUnnamed3496(o.uptimeCheckConfigs);
  }
  buildCounterListUptimeCheckConfigsResponse--;
}

buildUnnamed3497() {
  var o = new core.List<api.UptimeCheckIp>();
  o.add(buildUptimeCheckIp());
  o.add(buildUptimeCheckIp());
  return o;
}

checkUnnamed3497(core.List<api.UptimeCheckIp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUptimeCheckIp(o[0]);
  checkUptimeCheckIp(o[1]);
}

core.int buildCounterListUptimeCheckIpsResponse = 0;
buildListUptimeCheckIpsResponse() {
  var o = new api.ListUptimeCheckIpsResponse();
  buildCounterListUptimeCheckIpsResponse++;
  if (buildCounterListUptimeCheckIpsResponse < 3) {
    o.nextPageToken = "foo";
    o.uptimeCheckIps = buildUnnamed3497();
  }
  buildCounterListUptimeCheckIpsResponse--;
  return o;
}

checkListUptimeCheckIpsResponse(api.ListUptimeCheckIpsResponse o) {
  buildCounterListUptimeCheckIpsResponse++;
  if (buildCounterListUptimeCheckIpsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3497(o.uptimeCheckIps);
  }
  buildCounterListUptimeCheckIpsResponse--;
}

buildUnnamed3498() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3498(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMetric = 0;
buildMetric() {
  var o = new api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.labels = buildUnnamed3498();
    o.type = "foo";
  }
  buildCounterMetric--;
  return o;
}

checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    checkUnnamed3498(o.labels);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMetric--;
}

buildUnnamed3499() {
  var o = new core.List<api.Aggregation>();
  o.add(buildAggregation());
  o.add(buildAggregation());
  return o;
}

checkUnnamed3499(core.List<api.Aggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregation(o[0]);
  checkAggregation(o[1]);
}

core.int buildCounterMetricAbsence = 0;
buildMetricAbsence() {
  var o = new api.MetricAbsence();
  buildCounterMetricAbsence++;
  if (buildCounterMetricAbsence < 3) {
    o.aggregations = buildUnnamed3499();
    o.duration = "foo";
    o.filter = "foo";
    o.trigger = buildTrigger();
  }
  buildCounterMetricAbsence--;
  return o;
}

checkMetricAbsence(api.MetricAbsence o) {
  buildCounterMetricAbsence++;
  if (buildCounterMetricAbsence < 3) {
    checkUnnamed3499(o.aggregations);
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    checkTrigger(o.trigger);
  }
  buildCounterMetricAbsence--;
}

buildUnnamed3500() {
  var o = new core.List<api.LabelDescriptor>();
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

checkUnnamed3500(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.int buildCounterMetricDescriptor = 0;
buildMetricDescriptor() {
  var o = new api.MetricDescriptor();
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.labels = buildUnnamed3500();
    o.launchStage = "foo";
    o.metadata = buildMetricDescriptorMetadata();
    o.metricKind = "foo";
    o.name = "foo";
    o.type = "foo";
    o.unit = "foo";
    o.valueType = "foo";
  }
  buildCounterMetricDescriptor--;
  return o;
}

checkMetricDescriptor(api.MetricDescriptor o) {
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3500(o.labels);
    unittest.expect(o.launchStage, unittest.equals('foo'));
    checkMetricDescriptorMetadata(o.metadata);
    unittest.expect(o.metricKind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterMetricDescriptor--;
}

core.int buildCounterMetricDescriptorMetadata = 0;
buildMetricDescriptorMetadata() {
  var o = new api.MetricDescriptorMetadata();
  buildCounterMetricDescriptorMetadata++;
  if (buildCounterMetricDescriptorMetadata < 3) {
    o.ingestDelay = "foo";
    o.launchStage = "foo";
    o.samplePeriod = "foo";
  }
  buildCounterMetricDescriptorMetadata--;
  return o;
}

checkMetricDescriptorMetadata(api.MetricDescriptorMetadata o) {
  buildCounterMetricDescriptorMetadata++;
  if (buildCounterMetricDescriptorMetadata < 3) {
    unittest.expect(o.ingestDelay, unittest.equals('foo'));
    unittest.expect(o.launchStage, unittest.equals('foo'));
    unittest.expect(o.samplePeriod, unittest.equals('foo'));
  }
  buildCounterMetricDescriptorMetadata--;
}

buildUnnamed3501() {
  var o = new core.List<api.Aggregation>();
  o.add(buildAggregation());
  o.add(buildAggregation());
  return o;
}

checkUnnamed3501(core.List<api.Aggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregation(o[0]);
  checkAggregation(o[1]);
}

buildUnnamed3502() {
  var o = new core.List<api.Aggregation>();
  o.add(buildAggregation());
  o.add(buildAggregation());
  return o;
}

checkUnnamed3502(core.List<api.Aggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregation(o[0]);
  checkAggregation(o[1]);
}

core.int buildCounterMetricThreshold = 0;
buildMetricThreshold() {
  var o = new api.MetricThreshold();
  buildCounterMetricThreshold++;
  if (buildCounterMetricThreshold < 3) {
    o.aggregations = buildUnnamed3501();
    o.comparison = "foo";
    o.denominatorAggregations = buildUnnamed3502();
    o.denominatorFilter = "foo";
    o.duration = "foo";
    o.filter = "foo";
    o.thresholdValue = 42.0;
    o.trigger = buildTrigger();
  }
  buildCounterMetricThreshold--;
  return o;
}

checkMetricThreshold(api.MetricThreshold o) {
  buildCounterMetricThreshold++;
  if (buildCounterMetricThreshold < 3) {
    checkUnnamed3501(o.aggregations);
    unittest.expect(o.comparison, unittest.equals('foo'));
    checkUnnamed3502(o.denominatorAggregations);
    unittest.expect(o.denominatorFilter, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.thresholdValue, unittest.equals(42.0));
    checkTrigger(o.trigger);
  }
  buildCounterMetricThreshold--;
}

buildUnnamed3503() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3503(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMonitoredResource = 0;
buildMonitoredResource() {
  var o = new api.MonitoredResource();
  buildCounterMonitoredResource++;
  if (buildCounterMonitoredResource < 3) {
    o.labels = buildUnnamed3503();
    o.type = "foo";
  }
  buildCounterMonitoredResource--;
  return o;
}

checkMonitoredResource(api.MonitoredResource o) {
  buildCounterMonitoredResource++;
  if (buildCounterMonitoredResource < 3) {
    checkUnnamed3503(o.labels);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMonitoredResource--;
}

buildUnnamed3504() {
  var o = new core.List<api.LabelDescriptor>();
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

checkUnnamed3504(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.int buildCounterMonitoredResourceDescriptor = 0;
buildMonitoredResourceDescriptor() {
  var o = new api.MonitoredResourceDescriptor();
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.labels = buildUnnamed3504();
    o.launchStage = "foo";
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterMonitoredResourceDescriptor--;
  return o;
}

checkMonitoredResourceDescriptor(api.MonitoredResourceDescriptor o) {
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3504(o.labels);
    unittest.expect(o.launchStage, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMonitoredResourceDescriptor--;
}

buildUnnamed3505() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3505(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

buildUnnamed3506() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3506(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMonitoredResourceMetadata = 0;
buildMonitoredResourceMetadata() {
  var o = new api.MonitoredResourceMetadata();
  buildCounterMonitoredResourceMetadata++;
  if (buildCounterMonitoredResourceMetadata < 3) {
    o.systemLabels = buildUnnamed3505();
    o.userLabels = buildUnnamed3506();
  }
  buildCounterMonitoredResourceMetadata--;
  return o;
}

checkMonitoredResourceMetadata(api.MonitoredResourceMetadata o) {
  buildCounterMonitoredResourceMetadata++;
  if (buildCounterMonitoredResourceMetadata < 3) {
    checkUnnamed3505(o.systemLabels);
    checkUnnamed3506(o.userLabels);
  }
  buildCounterMonitoredResourceMetadata--;
}

core.int buildCounterMutationRecord = 0;
buildMutationRecord() {
  var o = new api.MutationRecord();
  buildCounterMutationRecord++;
  if (buildCounterMutationRecord < 3) {
    o.mutateTime = "foo";
    o.mutatedBy = "foo";
  }
  buildCounterMutationRecord--;
  return o;
}

checkMutationRecord(api.MutationRecord o) {
  buildCounterMutationRecord++;
  if (buildCounterMutationRecord < 3) {
    unittest.expect(o.mutateTime, unittest.equals('foo'));
    unittest.expect(o.mutatedBy, unittest.equals('foo'));
  }
  buildCounterMutationRecord--;
}

buildUnnamed3507() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3507(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3508() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3508(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterNotificationChannel = 0;
buildNotificationChannel() {
  var o = new api.NotificationChannel();
  buildCounterNotificationChannel++;
  if (buildCounterNotificationChannel < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.enabled = true;
    o.labels = buildUnnamed3507();
    o.name = "foo";
    o.type = "foo";
    o.userLabels = buildUnnamed3508();
    o.verificationStatus = "foo";
  }
  buildCounterNotificationChannel--;
  return o;
}

checkNotificationChannel(api.NotificationChannel o) {
  buildCounterNotificationChannel++;
  if (buildCounterNotificationChannel < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.enabled, unittest.isTrue);
    checkUnnamed3507(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    checkUnnamed3508(o.userLabels);
    unittest.expect(o.verificationStatus, unittest.equals('foo'));
  }
  buildCounterNotificationChannel--;
}

buildUnnamed3509() {
  var o = new core.List<api.LabelDescriptor>();
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

checkUnnamed3509(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

buildUnnamed3510() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3510(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNotificationChannelDescriptor = 0;
buildNotificationChannelDescriptor() {
  var o = new api.NotificationChannelDescriptor();
  buildCounterNotificationChannelDescriptor++;
  if (buildCounterNotificationChannelDescriptor < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.labels = buildUnnamed3509();
    o.name = "foo";
    o.supportedTiers = buildUnnamed3510();
    o.type = "foo";
  }
  buildCounterNotificationChannelDescriptor--;
  return o;
}

checkNotificationChannelDescriptor(api.NotificationChannelDescriptor o) {
  buildCounterNotificationChannelDescriptor++;
  if (buildCounterNotificationChannelDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3509(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3510(o.supportedTiers);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterNotificationChannelDescriptor--;
}

buildUnnamed3511() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3511(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

core.int buildCounterOption = 0;
buildOption() {
  var o = new api.Option();
  buildCounterOption++;
  if (buildCounterOption < 3) {
    o.name = "foo";
    o.value = buildUnnamed3511();
  }
  buildCounterOption--;
  return o;
}

checkOption(api.Option o) {
  buildCounterOption++;
  if (buildCounterOption < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3511(o.value);
  }
  buildCounterOption--;
}

core.int buildCounterPoint = 0;
buildPoint() {
  var o = new api.Point();
  buildCounterPoint++;
  if (buildCounterPoint < 3) {
    o.interval = buildTimeInterval();
    o.value = buildTypedValue();
  }
  buildCounterPoint--;
  return o;
}

checkPoint(api.Point o) {
  buildCounterPoint++;
  if (buildCounterPoint < 3) {
    checkTimeInterval(o.interval);
    checkTypedValue(o.value);
  }
  buildCounterPoint--;
}

core.int buildCounterRange = 0;
buildRange() {
  var o = new api.Range();
  buildCounterRange++;
  if (buildCounterRange < 3) {
    o.max = 42.0;
    o.min = 42.0;
  }
  buildCounterRange--;
  return o;
}

checkRange(api.Range o) {
  buildCounterRange++;
  if (buildCounterRange < 3) {
    unittest.expect(o.max, unittest.equals(42.0));
    unittest.expect(o.min, unittest.equals(42.0));
  }
  buildCounterRange--;
}

core.int buildCounterResourceGroup = 0;
buildResourceGroup() {
  var o = new api.ResourceGroup();
  buildCounterResourceGroup++;
  if (buildCounterResourceGroup < 3) {
    o.groupId = "foo";
    o.resourceType = "foo";
  }
  buildCounterResourceGroup--;
  return o;
}

checkResourceGroup(api.ResourceGroup o) {
  buildCounterResourceGroup++;
  if (buildCounterResourceGroup < 3) {
    unittest.expect(o.groupId, unittest.equals('foo'));
    unittest.expect(o.resourceType, unittest.equals('foo'));
  }
  buildCounterResourceGroup--;
}

core.int buildCounterSendNotificationChannelVerificationCodeRequest = 0;
buildSendNotificationChannelVerificationCodeRequest() {
  var o = new api.SendNotificationChannelVerificationCodeRequest();
  buildCounterSendNotificationChannelVerificationCodeRequest++;
  if (buildCounterSendNotificationChannelVerificationCodeRequest < 3) {}
  buildCounterSendNotificationChannelVerificationCodeRequest--;
  return o;
}

checkSendNotificationChannelVerificationCodeRequest(
    api.SendNotificationChannelVerificationCodeRequest o) {
  buildCounterSendNotificationChannelVerificationCodeRequest++;
  if (buildCounterSendNotificationChannelVerificationCodeRequest < 3) {}
  buildCounterSendNotificationChannelVerificationCodeRequest--;
}

core.int buildCounterSourceContext = 0;
buildSourceContext() {
  var o = new api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.fileName = "foo";
  }
  buildCounterSourceContext--;
  return o;
}

checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    unittest.expect(o.fileName, unittest.equals('foo'));
  }
  buildCounterSourceContext--;
}

core.int buildCounterSpanContext = 0;
buildSpanContext() {
  var o = new api.SpanContext();
  buildCounterSpanContext++;
  if (buildCounterSpanContext < 3) {
    o.spanName = "foo";
  }
  buildCounterSpanContext--;
  return o;
}

checkSpanContext(api.SpanContext o) {
  buildCounterSpanContext++;
  if (buildCounterSpanContext < 3) {
    unittest.expect(o.spanName, unittest.equals('foo'));
  }
  buildCounterSpanContext--;
}

buildUnnamed3512() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed3512(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

buildUnnamed3513() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3512());
  o.add(buildUnnamed3512());
  return o;
}

checkUnnamed3513(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3512(o[0]);
  checkUnnamed3512(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3513();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3513(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTcpCheck = 0;
buildTcpCheck() {
  var o = new api.TcpCheck();
  buildCounterTcpCheck++;
  if (buildCounterTcpCheck < 3) {
    o.port = 42;
  }
  buildCounterTcpCheck--;
  return o;
}

checkTcpCheck(api.TcpCheck o) {
  buildCounterTcpCheck++;
  if (buildCounterTcpCheck < 3) {
    unittest.expect(o.port, unittest.equals(42));
  }
  buildCounterTcpCheck--;
}

core.int buildCounterTimeInterval = 0;
buildTimeInterval() {
  var o = new api.TimeInterval();
  buildCounterTimeInterval++;
  if (buildCounterTimeInterval < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
  }
  buildCounterTimeInterval--;
  return o;
}

checkTimeInterval(api.TimeInterval o) {
  buildCounterTimeInterval++;
  if (buildCounterTimeInterval < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterTimeInterval--;
}

buildUnnamed3514() {
  var o = new core.List<api.Point>();
  o.add(buildPoint());
  o.add(buildPoint());
  return o;
}

checkUnnamed3514(core.List<api.Point> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPoint(o[0]);
  checkPoint(o[1]);
}

core.int buildCounterTimeSeries = 0;
buildTimeSeries() {
  var o = new api.TimeSeries();
  buildCounterTimeSeries++;
  if (buildCounterTimeSeries < 3) {
    o.metadata = buildMonitoredResourceMetadata();
    o.metric = buildMetric();
    o.metricKind = "foo";
    o.points = buildUnnamed3514();
    o.resource = buildMonitoredResource();
    o.valueType = "foo";
  }
  buildCounterTimeSeries--;
  return o;
}

checkTimeSeries(api.TimeSeries o) {
  buildCounterTimeSeries++;
  if (buildCounterTimeSeries < 3) {
    checkMonitoredResourceMetadata(o.metadata);
    checkMetric(o.metric);
    unittest.expect(o.metricKind, unittest.equals('foo'));
    checkUnnamed3514(o.points);
    checkMonitoredResource(o.resource);
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterTimeSeries--;
}

core.int buildCounterTrigger = 0;
buildTrigger() {
  var o = new api.Trigger();
  buildCounterTrigger++;
  if (buildCounterTrigger < 3) {
    o.count = 42;
    o.percent = 42.0;
  }
  buildCounterTrigger--;
  return o;
}

checkTrigger(api.Trigger o) {
  buildCounterTrigger++;
  if (buildCounterTrigger < 3) {
    unittest.expect(o.count, unittest.equals(42));
    unittest.expect(o.percent, unittest.equals(42.0));
  }
  buildCounterTrigger--;
}

buildUnnamed3515() {
  var o = new core.List<api.Field>();
  o.add(buildField());
  o.add(buildField());
  return o;
}

checkUnnamed3515(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

buildUnnamed3516() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3516(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3517() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed3517(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterType = 0;
buildType() {
  var o = new api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.fields = buildUnnamed3515();
    o.name = "foo";
    o.oneofs = buildUnnamed3516();
    o.options = buildUnnamed3517();
    o.sourceContext = buildSourceContext();
    o.syntax = "foo";
  }
  buildCounterType--;
  return o;
}

checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkUnnamed3515(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3516(o.oneofs);
    checkUnnamed3517(o.options);
    checkSourceContext(o.sourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterType--;
}

core.int buildCounterTypedValue = 0;
buildTypedValue() {
  var o = new api.TypedValue();
  buildCounterTypedValue++;
  if (buildCounterTypedValue < 3) {
    o.boolValue = true;
    o.distributionValue = buildDistribution();
    o.doubleValue = 42.0;
    o.int64Value = "foo";
    o.stringValue = "foo";
  }
  buildCounterTypedValue--;
  return o;
}

checkTypedValue(api.TypedValue o) {
  buildCounterTypedValue++;
  if (buildCounterTypedValue < 3) {
    unittest.expect(o.boolValue, unittest.isTrue);
    checkDistribution(o.distributionValue);
    unittest.expect(o.doubleValue, unittest.equals(42.0));
    unittest.expect(o.int64Value, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterTypedValue--;
}

buildUnnamed3518() {
  var o = new core.List<api.ContentMatcher>();
  o.add(buildContentMatcher());
  o.add(buildContentMatcher());
  return o;
}

checkUnnamed3518(core.List<api.ContentMatcher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContentMatcher(o[0]);
  checkContentMatcher(o[1]);
}

buildUnnamed3519() {
  var o = new core.List<api.InternalChecker>();
  o.add(buildInternalChecker());
  o.add(buildInternalChecker());
  return o;
}

checkUnnamed3519(core.List<api.InternalChecker> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInternalChecker(o[0]);
  checkInternalChecker(o[1]);
}

buildUnnamed3520() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3520(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUptimeCheckConfig = 0;
buildUptimeCheckConfig() {
  var o = new api.UptimeCheckConfig();
  buildCounterUptimeCheckConfig++;
  if (buildCounterUptimeCheckConfig < 3) {
    o.contentMatchers = buildUnnamed3518();
    o.displayName = "foo";
    o.httpCheck = buildHttpCheck();
    o.internalCheckers = buildUnnamed3519();
    o.monitoredResource = buildMonitoredResource();
    o.name = "foo";
    o.period = "foo";
    o.resourceGroup = buildResourceGroup();
    o.selectedRegions = buildUnnamed3520();
    o.tcpCheck = buildTcpCheck();
    o.timeout = "foo";
  }
  buildCounterUptimeCheckConfig--;
  return o;
}

checkUptimeCheckConfig(api.UptimeCheckConfig o) {
  buildCounterUptimeCheckConfig++;
  if (buildCounterUptimeCheckConfig < 3) {
    checkUnnamed3518(o.contentMatchers);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkHttpCheck(o.httpCheck);
    checkUnnamed3519(o.internalCheckers);
    checkMonitoredResource(o.monitoredResource);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.period, unittest.equals('foo'));
    checkResourceGroup(o.resourceGroup);
    checkUnnamed3520(o.selectedRegions);
    checkTcpCheck(o.tcpCheck);
    unittest.expect(o.timeout, unittest.equals('foo'));
  }
  buildCounterUptimeCheckConfig--;
}

core.int buildCounterUptimeCheckIp = 0;
buildUptimeCheckIp() {
  var o = new api.UptimeCheckIp();
  buildCounterUptimeCheckIp++;
  if (buildCounterUptimeCheckIp < 3) {
    o.ipAddress = "foo";
    o.location = "foo";
    o.region = "foo";
  }
  buildCounterUptimeCheckIp--;
  return o;
}

checkUptimeCheckIp(api.UptimeCheckIp o) {
  buildCounterUptimeCheckIp++;
  if (buildCounterUptimeCheckIp < 3) {
    unittest.expect(o.ipAddress, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
  }
  buildCounterUptimeCheckIp--;
}

core.int buildCounterVerifyNotificationChannelRequest = 0;
buildVerifyNotificationChannelRequest() {
  var o = new api.VerifyNotificationChannelRequest();
  buildCounterVerifyNotificationChannelRequest++;
  if (buildCounterVerifyNotificationChannelRequest < 3) {
    o.code = "foo";
  }
  buildCounterVerifyNotificationChannelRequest--;
  return o;
}

checkVerifyNotificationChannelRequest(api.VerifyNotificationChannelRequest o) {
  buildCounterVerifyNotificationChannelRequest++;
  if (buildCounterVerifyNotificationChannelRequest < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
  }
  buildCounterVerifyNotificationChannelRequest--;
}

buildUnnamed3521() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3521(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-Aggregation", () {
    unittest.test("to-json--from-json", () {
      var o = buildAggregation();
      var od = new api.Aggregation.fromJson(o.toJson());
      checkAggregation(od);
    });
  });

  unittest.group("obj-schema-AlertPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildAlertPolicy();
      var od = new api.AlertPolicy.fromJson(o.toJson());
      checkAlertPolicy(od);
    });
  });

  unittest.group("obj-schema-BasicAuthentication", () {
    unittest.test("to-json--from-json", () {
      var o = buildBasicAuthentication();
      var od = new api.BasicAuthentication.fromJson(o.toJson());
      checkBasicAuthentication(od);
    });
  });

  unittest.group("obj-schema-BucketOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildBucketOptions();
      var od = new api.BucketOptions.fromJson(o.toJson());
      checkBucketOptions(od);
    });
  });

  unittest.group("obj-schema-CollectdPayload", () {
    unittest.test("to-json--from-json", () {
      var o = buildCollectdPayload();
      var od = new api.CollectdPayload.fromJson(o.toJson());
      checkCollectdPayload(od);
    });
  });

  unittest.group("obj-schema-CollectdPayloadError", () {
    unittest.test("to-json--from-json", () {
      var o = buildCollectdPayloadError();
      var od = new api.CollectdPayloadError.fromJson(o.toJson());
      checkCollectdPayloadError(od);
    });
  });

  unittest.group("obj-schema-CollectdValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildCollectdValue();
      var od = new api.CollectdValue.fromJson(o.toJson());
      checkCollectdValue(od);
    });
  });

  unittest.group("obj-schema-CollectdValueError", () {
    unittest.test("to-json--from-json", () {
      var o = buildCollectdValueError();
      var od = new api.CollectdValueError.fromJson(o.toJson());
      checkCollectdValueError(od);
    });
  });

  unittest.group("obj-schema-Condition", () {
    unittest.test("to-json--from-json", () {
      var o = buildCondition();
      var od = new api.Condition.fromJson(o.toJson());
      checkCondition(od);
    });
  });

  unittest.group("obj-schema-ContentMatcher", () {
    unittest.test("to-json--from-json", () {
      var o = buildContentMatcher();
      var od = new api.ContentMatcher.fromJson(o.toJson());
      checkContentMatcher(od);
    });
  });

  unittest.group("obj-schema-CreateCollectdTimeSeriesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateCollectdTimeSeriesRequest();
      var od = new api.CreateCollectdTimeSeriesRequest.fromJson(o.toJson());
      checkCreateCollectdTimeSeriesRequest(od);
    });
  });

  unittest.group("obj-schema-CreateCollectdTimeSeriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateCollectdTimeSeriesResponse();
      var od = new api.CreateCollectdTimeSeriesResponse.fromJson(o.toJson());
      checkCreateCollectdTimeSeriesResponse(od);
    });
  });

  unittest.group("obj-schema-CreateTimeSeriesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateTimeSeriesRequest();
      var od = new api.CreateTimeSeriesRequest.fromJson(o.toJson());
      checkCreateTimeSeriesRequest(od);
    });
  });

  unittest.group("obj-schema-Distribution", () {
    unittest.test("to-json--from-json", () {
      var o = buildDistribution();
      var od = new api.Distribution.fromJson(o.toJson());
      checkDistribution(od);
    });
  });

  unittest.group("obj-schema-Documentation", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentation();
      var od = new api.Documentation.fromJson(o.toJson());
      checkDocumentation(od);
    });
  });

  unittest.group("obj-schema-DroppedLabels", () {
    unittest.test("to-json--from-json", () {
      var o = buildDroppedLabels();
      var od = new api.DroppedLabels.fromJson(o.toJson());
      checkDroppedLabels(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Exemplar", () {
    unittest.test("to-json--from-json", () {
      var o = buildExemplar();
      var od = new api.Exemplar.fromJson(o.toJson());
      checkExemplar(od);
    });
  });

  unittest.group("obj-schema-Explicit", () {
    unittest.test("to-json--from-json", () {
      var o = buildExplicit();
      var od = new api.Explicit.fromJson(o.toJson());
      checkExplicit(od);
    });
  });

  unittest.group("obj-schema-Exponential", () {
    unittest.test("to-json--from-json", () {
      var o = buildExponential();
      var od = new api.Exponential.fromJson(o.toJson());
      checkExponential(od);
    });
  });

  unittest.group("obj-schema-Field", () {
    unittest.test("to-json--from-json", () {
      var o = buildField();
      var od = new api.Field.fromJson(o.toJson());
      checkField(od);
    });
  });

  unittest.group("obj-schema-GetNotificationChannelVerificationCodeRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGetNotificationChannelVerificationCodeRequest();
      var od = new api.GetNotificationChannelVerificationCodeRequest.fromJson(
          o.toJson());
      checkGetNotificationChannelVerificationCodeRequest(od);
    });
  });

  unittest.group("obj-schema-GetNotificationChannelVerificationCodeResponse",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGetNotificationChannelVerificationCodeResponse();
      var od = new api.GetNotificationChannelVerificationCodeResponse.fromJson(
          o.toJson());
      checkGetNotificationChannelVerificationCodeResponse(od);
    });
  });

  unittest.group("obj-schema-Group", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroup();
      var od = new api.Group.fromJson(o.toJson());
      checkGroup(od);
    });
  });

  unittest.group("obj-schema-HttpCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpCheck();
      var od = new api.HttpCheck.fromJson(o.toJson());
      checkHttpCheck(od);
    });
  });

  unittest.group("obj-schema-InternalChecker", () {
    unittest.test("to-json--from-json", () {
      var o = buildInternalChecker();
      var od = new api.InternalChecker.fromJson(o.toJson());
      checkInternalChecker(od);
    });
  });

  unittest.group("obj-schema-LabelDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildLabelDescriptor();
      var od = new api.LabelDescriptor.fromJson(o.toJson());
      checkLabelDescriptor(od);
    });
  });

  unittest.group("obj-schema-Linear", () {
    unittest.test("to-json--from-json", () {
      var o = buildLinear();
      var od = new api.Linear.fromJson(o.toJson());
      checkLinear(od);
    });
  });

  unittest.group("obj-schema-ListAlertPoliciesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAlertPoliciesResponse();
      var od = new api.ListAlertPoliciesResponse.fromJson(o.toJson());
      checkListAlertPoliciesResponse(od);
    });
  });

  unittest.group("obj-schema-ListGroupMembersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListGroupMembersResponse();
      var od = new api.ListGroupMembersResponse.fromJson(o.toJson());
      checkListGroupMembersResponse(od);
    });
  });

  unittest.group("obj-schema-ListGroupsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListGroupsResponse();
      var od = new api.ListGroupsResponse.fromJson(o.toJson());
      checkListGroupsResponse(od);
    });
  });

  unittest.group("obj-schema-ListMetricDescriptorsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListMetricDescriptorsResponse();
      var od = new api.ListMetricDescriptorsResponse.fromJson(o.toJson());
      checkListMetricDescriptorsResponse(od);
    });
  });

  unittest.group("obj-schema-ListMonitoredResourceDescriptorsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListMonitoredResourceDescriptorsResponse();
      var od =
          new api.ListMonitoredResourceDescriptorsResponse.fromJson(o.toJson());
      checkListMonitoredResourceDescriptorsResponse(od);
    });
  });

  unittest.group("obj-schema-ListNotificationChannelDescriptorsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListNotificationChannelDescriptorsResponse();
      var od = new api.ListNotificationChannelDescriptorsResponse.fromJson(
          o.toJson());
      checkListNotificationChannelDescriptorsResponse(od);
    });
  });

  unittest.group("obj-schema-ListNotificationChannelsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListNotificationChannelsResponse();
      var od = new api.ListNotificationChannelsResponse.fromJson(o.toJson());
      checkListNotificationChannelsResponse(od);
    });
  });

  unittest.group("obj-schema-ListTimeSeriesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTimeSeriesResponse();
      var od = new api.ListTimeSeriesResponse.fromJson(o.toJson());
      checkListTimeSeriesResponse(od);
    });
  });

  unittest.group("obj-schema-ListUptimeCheckConfigsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListUptimeCheckConfigsResponse();
      var od = new api.ListUptimeCheckConfigsResponse.fromJson(o.toJson());
      checkListUptimeCheckConfigsResponse(od);
    });
  });

  unittest.group("obj-schema-ListUptimeCheckIpsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListUptimeCheckIpsResponse();
      var od = new api.ListUptimeCheckIpsResponse.fromJson(o.toJson());
      checkListUptimeCheckIpsResponse(od);
    });
  });

  unittest.group("obj-schema-Metric", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetric();
      var od = new api.Metric.fromJson(o.toJson());
      checkMetric(od);
    });
  });

  unittest.group("obj-schema-MetricAbsence", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricAbsence();
      var od = new api.MetricAbsence.fromJson(o.toJson());
      checkMetricAbsence(od);
    });
  });

  unittest.group("obj-schema-MetricDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricDescriptor();
      var od = new api.MetricDescriptor.fromJson(o.toJson());
      checkMetricDescriptor(od);
    });
  });

  unittest.group("obj-schema-MetricDescriptorMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricDescriptorMetadata();
      var od = new api.MetricDescriptorMetadata.fromJson(o.toJson());
      checkMetricDescriptorMetadata(od);
    });
  });

  unittest.group("obj-schema-MetricThreshold", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricThreshold();
      var od = new api.MetricThreshold.fromJson(o.toJson());
      checkMetricThreshold(od);
    });
  });

  unittest.group("obj-schema-MonitoredResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildMonitoredResource();
      var od = new api.MonitoredResource.fromJson(o.toJson());
      checkMonitoredResource(od);
    });
  });

  unittest.group("obj-schema-MonitoredResourceDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildMonitoredResourceDescriptor();
      var od = new api.MonitoredResourceDescriptor.fromJson(o.toJson());
      checkMonitoredResourceDescriptor(od);
    });
  });

  unittest.group("obj-schema-MonitoredResourceMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildMonitoredResourceMetadata();
      var od = new api.MonitoredResourceMetadata.fromJson(o.toJson());
      checkMonitoredResourceMetadata(od);
    });
  });

  unittest.group("obj-schema-MutationRecord", () {
    unittest.test("to-json--from-json", () {
      var o = buildMutationRecord();
      var od = new api.MutationRecord.fromJson(o.toJson());
      checkMutationRecord(od);
    });
  });

  unittest.group("obj-schema-NotificationChannel", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotificationChannel();
      var od = new api.NotificationChannel.fromJson(o.toJson());
      checkNotificationChannel(od);
    });
  });

  unittest.group("obj-schema-NotificationChannelDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotificationChannelDescriptor();
      var od = new api.NotificationChannelDescriptor.fromJson(o.toJson());
      checkNotificationChannelDescriptor(od);
    });
  });

  unittest.group("obj-schema-Option", () {
    unittest.test("to-json--from-json", () {
      var o = buildOption();
      var od = new api.Option.fromJson(o.toJson());
      checkOption(od);
    });
  });

  unittest.group("obj-schema-Point", () {
    unittest.test("to-json--from-json", () {
      var o = buildPoint();
      var od = new api.Point.fromJson(o.toJson());
      checkPoint(od);
    });
  });

  unittest.group("obj-schema-Range", () {
    unittest.test("to-json--from-json", () {
      var o = buildRange();
      var od = new api.Range.fromJson(o.toJson());
      checkRange(od);
    });
  });

  unittest.group("obj-schema-ResourceGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceGroup();
      var od = new api.ResourceGroup.fromJson(o.toJson());
      checkResourceGroup(od);
    });
  });

  unittest.group("obj-schema-SendNotificationChannelVerificationCodeRequest",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildSendNotificationChannelVerificationCodeRequest();
      var od = new api.SendNotificationChannelVerificationCodeRequest.fromJson(
          o.toJson());
      checkSendNotificationChannelVerificationCodeRequest(od);
    });
  });

  unittest.group("obj-schema-SourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceContext();
      var od = new api.SourceContext.fromJson(o.toJson());
      checkSourceContext(od);
    });
  });

  unittest.group("obj-schema-SpanContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpanContext();
      var od = new api.SpanContext.fromJson(o.toJson());
      checkSpanContext(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-TcpCheck", () {
    unittest.test("to-json--from-json", () {
      var o = buildTcpCheck();
      var od = new api.TcpCheck.fromJson(o.toJson());
      checkTcpCheck(od);
    });
  });

  unittest.group("obj-schema-TimeInterval", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeInterval();
      var od = new api.TimeInterval.fromJson(o.toJson());
      checkTimeInterval(od);
    });
  });

  unittest.group("obj-schema-TimeSeries", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeSeries();
      var od = new api.TimeSeries.fromJson(o.toJson());
      checkTimeSeries(od);
    });
  });

  unittest.group("obj-schema-Trigger", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrigger();
      var od = new api.Trigger.fromJson(o.toJson());
      checkTrigger(od);
    });
  });

  unittest.group("obj-schema-Type", () {
    unittest.test("to-json--from-json", () {
      var o = buildType();
      var od = new api.Type.fromJson(o.toJson());
      checkType(od);
    });
  });

  unittest.group("obj-schema-TypedValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildTypedValue();
      var od = new api.TypedValue.fromJson(o.toJson());
      checkTypedValue(od);
    });
  });

  unittest.group("obj-schema-UptimeCheckConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildUptimeCheckConfig();
      var od = new api.UptimeCheckConfig.fromJson(o.toJson());
      checkUptimeCheckConfig(od);
    });
  });

  unittest.group("obj-schema-UptimeCheckIp", () {
    unittest.test("to-json--from-json", () {
      var o = buildUptimeCheckIp();
      var od = new api.UptimeCheckIp.fromJson(o.toJson());
      checkUptimeCheckIp(od);
    });
  });

  unittest.group("obj-schema-VerifyNotificationChannelRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildVerifyNotificationChannelRequest();
      var od = new api.VerifyNotificationChannelRequest.fromJson(o.toJson());
      checkVerifyNotificationChannelRequest(od);
    });
  });

  unittest.group("resource-ProjectsAlertPoliciesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAlertPoliciesResourceApi res =
          new api.MonitoringApi(mock).projects.alertPolicies;
      var arg_request = buildAlertPolicy();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AlertPolicy.fromJson(json);
        checkAlertPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAlertPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlertPolicy(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAlertPoliciesResourceApi res =
          new api.MonitoringApi(mock).projects.alertPolicies;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAlertPoliciesResourceApi res =
          new api.MonitoringApi(mock).projects.alertPolicies;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAlertPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlertPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAlertPoliciesResourceApi res =
          new api.MonitoringApi(mock).projects.alertPolicies;
      var arg_name = "foo";
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListAlertPoliciesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAlertPoliciesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAlertPoliciesResourceApi res =
          new api.MonitoringApi(mock).projects.alertPolicies;
      var arg_request = buildAlertPolicy();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AlertPolicy.fromJson(json);
        checkAlertPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAlertPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAlertPolicy(response);
      })));
    });
  });

  unittest.group("resource-ProjectsCollectdTimeSeriesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsCollectdTimeSeriesResourceApi res =
          new api.MonitoringApi(mock).projects.collectdTimeSeries;
      var arg_request = buildCreateCollectdTimeSeriesRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateCollectdTimeSeriesRequest.fromJson(json);
        checkCreateCollectdTimeSeriesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCreateCollectdTimeSeriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreateCollectdTimeSeriesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsGroupsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsGroupsResourceApi res =
          new api.MonitoringApi(mock).projects.groups;
      var arg_request = buildGroup();
      var arg_name = "foo";
      var arg_validateOnly = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["validateOnly"].first,
            unittest.equals("$arg_validateOnly"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name,
              validateOnly: arg_validateOnly, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsGroupsResourceApi res =
          new api.MonitoringApi(mock).projects.groups;
      var arg_name = "foo";
      var arg_recursive = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["recursive"].first, unittest.equals("$arg_recursive"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, recursive: arg_recursive, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsGroupsResourceApi res =
          new api.MonitoringApi(mock).projects.groups;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsGroupsResourceApi res =
          new api.MonitoringApi(mock).projects.groups;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_ancestorsOfGroup = "foo";
      var arg_childrenOfGroup = "foo";
      var arg_descendantsOfGroup = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["ancestorsOfGroup"].first,
            unittest.equals(arg_ancestorsOfGroup));
        unittest.expect(queryMap["childrenOfGroup"].first,
            unittest.equals(arg_childrenOfGroup));
        unittest.expect(queryMap["descendantsOfGroup"].first,
            unittest.equals(arg_descendantsOfGroup));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListGroupsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              ancestorsOfGroup: arg_ancestorsOfGroup,
              childrenOfGroup: arg_childrenOfGroup,
              descendantsOfGroup: arg_descendantsOfGroup,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGroupsResponse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsGroupsResourceApi res =
          new api.MonitoringApi(mock).projects.groups;
      var arg_request = buildGroup();
      var arg_name = "foo";
      var arg_validateOnly = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Group.fromJson(json);
        checkGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["validateOnly"].first,
            unittest.equals("$arg_validateOnly"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGroup());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name,
              validateOnly: arg_validateOnly, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroup(response);
      })));
    });
  });

  unittest.group("resource-ProjectsGroupsMembersResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsGroupsMembersResourceApi res =
          new api.MonitoringApi(mock).projects.groups.members;
      var arg_name = "foo";
      var arg_interval_endTime = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_interval_startTime = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["interval.endTime"].first,
            unittest.equals(arg_interval_endTime));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["interval.startTime"].first,
            unittest.equals(arg_interval_startTime));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListGroupMembersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              interval_endTime: arg_interval_endTime,
              filter: arg_filter,
              pageToken: arg_pageToken,
              interval_startTime: arg_interval_startTime,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListGroupMembersResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsMetricDescriptorsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsMetricDescriptorsResourceApi res =
          new api.MonitoringApi(mock).projects.metricDescriptors;
      var arg_request = buildMetricDescriptor();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.MetricDescriptor.fromJson(json);
        checkMetricDescriptor(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMetricDescriptor());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMetricDescriptor(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsMetricDescriptorsResourceApi res =
          new api.MonitoringApi(mock).projects.metricDescriptors;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsMetricDescriptorsResourceApi res =
          new api.MonitoringApi(mock).projects.metricDescriptors;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMetricDescriptor());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMetricDescriptor(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsMetricDescriptorsResourceApi res =
          new api.MonitoringApi(mock).projects.metricDescriptors;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListMetricDescriptorsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListMetricDescriptorsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsMonitoredResourceDescriptorsResourceApi",
      () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsMonitoredResourceDescriptorsResourceApi res =
          new api.MonitoringApi(mock).projects.monitoredResourceDescriptors;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMonitoredResourceDescriptor());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMonitoredResourceDescriptor(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsMonitoredResourceDescriptorsResourceApi res =
          new api.MonitoringApi(mock).projects.monitoredResourceDescriptors;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildListMonitoredResourceDescriptorsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListMonitoredResourceDescriptorsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsNotificationChannelDescriptorsResourceApi",
      () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsNotificationChannelDescriptorsResourceApi res =
          new api.MonitoringApi(mock).projects.notificationChannelDescriptors;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNotificationChannelDescriptor());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotificationChannelDescriptor(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsNotificationChannelDescriptorsResourceApi res =
          new api.MonitoringApi(mock).projects.notificationChannelDescriptors;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildListNotificationChannelDescriptorsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNotificationChannelDescriptorsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsNotificationChannelsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsNotificationChannelsResourceApi res =
          new api.MonitoringApi(mock).projects.notificationChannels;
      var arg_request = buildNotificationChannel();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.NotificationChannel.fromJson(json);
        checkNotificationChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNotificationChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotificationChannel(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsNotificationChannelsResourceApi res =
          new api.MonitoringApi(mock).projects.notificationChannels;
      var arg_name = "foo";
      var arg_force = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, force: arg_force, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsNotificationChannelsResourceApi res =
          new api.MonitoringApi(mock).projects.notificationChannels;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNotificationChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotificationChannel(response);
      })));
    });

    unittest.test("method--getVerificationCode", () {
      var mock = new HttpServerMock();
      api.ProjectsNotificationChannelsResourceApi res =
          new api.MonitoringApi(mock).projects.notificationChannels;
      var arg_request = buildGetNotificationChannelVerificationCodeRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GetNotificationChannelVerificationCodeRequest.fromJson(
                json);
        checkGetNotificationChannelVerificationCodeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json
            .encode(buildGetNotificationChannelVerificationCodeResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getVerificationCode(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetNotificationChannelVerificationCodeResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsNotificationChannelsResourceApi res =
          new api.MonitoringApi(mock).projects.notificationChannels;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListNotificationChannelsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListNotificationChannelsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsNotificationChannelsResourceApi res =
          new api.MonitoringApi(mock).projects.notificationChannels;
      var arg_request = buildNotificationChannel();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.NotificationChannel.fromJson(json);
        checkNotificationChannel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNotificationChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotificationChannel(response);
      })));
    });

    unittest.test("method--sendVerificationCode", () {
      var mock = new HttpServerMock();
      api.ProjectsNotificationChannelsResourceApi res =
          new api.MonitoringApi(mock).projects.notificationChannels;
      var arg_request = buildSendNotificationChannelVerificationCodeRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.SendNotificationChannelVerificationCodeRequest.fromJson(
                json);
        checkSendNotificationChannelVerificationCodeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sendVerificationCode(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--verify", () {
      var mock = new HttpServerMock();
      api.ProjectsNotificationChannelsResourceApi res =
          new api.MonitoringApi(mock).projects.notificationChannels;
      var arg_request = buildVerifyNotificationChannelRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.VerifyNotificationChannelRequest.fromJson(json);
        checkVerifyNotificationChannelRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildNotificationChannel());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verify(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkNotificationChannel(response);
      })));
    });
  });

  unittest.group("resource-ProjectsTimeSeriesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsTimeSeriesResourceApi res =
          new api.MonitoringApi(mock).projects.timeSeries;
      var arg_request = buildCreateTimeSeriesRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateTimeSeriesRequest.fromJson(json);
        checkCreateTimeSeriesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsTimeSeriesResourceApi res =
          new api.MonitoringApi(mock).projects.timeSeries;
      var arg_name = "foo";
      var arg_view = "foo";
      var arg_aggregation_groupByFields = buildUnnamed3521();
      var arg_interval_endTime = "foo";
      var arg_aggregation_alignmentPeriod = "foo";
      var arg_pageSize = 42;
      var arg_orderBy = "foo";
      var arg_aggregation_crossSeriesReducer = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_aggregation_perSeriesAligner = "foo";
      var arg_interval_startTime = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["aggregation.groupByFields"],
            unittest.equals(arg_aggregation_groupByFields));
        unittest.expect(queryMap["interval.endTime"].first,
            unittest.equals(arg_interval_endTime));
        unittest.expect(queryMap["aggregation.alignmentPeriod"].first,
            unittest.equals(arg_aggregation_alignmentPeriod));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["aggregation.crossSeriesReducer"].first,
            unittest.equals(arg_aggregation_crossSeriesReducer));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["aggregation.perSeriesAligner"].first,
            unittest.equals(arg_aggregation_perSeriesAligner));
        unittest.expect(queryMap["interval.startTime"].first,
            unittest.equals(arg_interval_startTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListTimeSeriesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              view: arg_view,
              aggregation_groupByFields: arg_aggregation_groupByFields,
              interval_endTime: arg_interval_endTime,
              aggregation_alignmentPeriod: arg_aggregation_alignmentPeriod,
              pageSize: arg_pageSize,
              orderBy: arg_orderBy,
              aggregation_crossSeriesReducer:
                  arg_aggregation_crossSeriesReducer,
              filter: arg_filter,
              pageToken: arg_pageToken,
              aggregation_perSeriesAligner: arg_aggregation_perSeriesAligner,
              interval_startTime: arg_interval_startTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTimeSeriesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsUptimeCheckConfigsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsUptimeCheckConfigsResourceApi res =
          new api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      var arg_request = buildUptimeCheckConfig();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UptimeCheckConfig.fromJson(json);
        checkUptimeCheckConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildUptimeCheckConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUptimeCheckConfig(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsUptimeCheckConfigsResourceApi res =
          new api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsUptimeCheckConfigsResourceApi res =
          new api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildUptimeCheckConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUptimeCheckConfig(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsUptimeCheckConfigsResourceApi res =
          new api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListUptimeCheckConfigsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListUptimeCheckConfigsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsUptimeCheckConfigsResourceApi res =
          new api.MonitoringApi(mock).projects.uptimeCheckConfigs;
      var arg_request = buildUptimeCheckConfig();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UptimeCheckConfig.fromJson(json);
        checkUptimeCheckConfig(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildUptimeCheckConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUptimeCheckConfig(response);
      })));
    });
  });

  unittest.group("resource-UptimeCheckIpsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UptimeCheckIpsResourceApi res =
          new api.MonitoringApi(mock).uptimeCheckIps;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v3/uptimeCheckIps"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListUptimeCheckIpsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListUptimeCheckIpsResponse(response);
      })));
    });
  });
}
