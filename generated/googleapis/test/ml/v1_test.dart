library googleapis.ml.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/ml/v1.dart' as api;

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

buildUnnamed3427() {
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

checkUnnamed3427(core.Map<core.String, core.Object> o) {
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

buildUnnamed3428() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3427());
  o.add(buildUnnamed3427());
  return o;
}

checkUnnamed3428(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3427(o[0]);
  checkUnnamed3427(o[1]);
}

core.int buildCounterGoogleApiHttpBody = 0;
buildGoogleApiHttpBody() {
  var o = new api.GoogleApiHttpBody();
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    o.contentType = "foo";
    o.data = "foo";
    o.extensions = buildUnnamed3428();
  }
  buildCounterGoogleApiHttpBody--;
  return o;
}

checkGoogleApiHttpBody(api.GoogleApiHttpBody o) {
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    checkUnnamed3428(o.extensions);
  }
  buildCounterGoogleApiHttpBody--;
}

core.int
    buildCounterGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig =
    0;
buildGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig() {
  var o = new api
      .GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig();
  buildCounterGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig++;
  if (buildCounterGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig <
      3) {
    o.useElapsedTime = true;
  }
  buildCounterGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig--;
  return o;
}

checkGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig(
    api.GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig
        o) {
  buildCounterGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig++;
  if (buildCounterGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig <
      3) {
    unittest.expect(o.useElapsedTime, unittest.isTrue);
  }
  buildCounterGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig--;
}

core.int
    buildCounterGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig =
    0;
buildGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig() {
  var o = new api
      .GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig();
  buildCounterGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig++;
  if (buildCounterGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig <
      3) {
    o.useElapsedTime = true;
  }
  buildCounterGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig--;
  return o;
}

checkGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig(
    api.GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig o) {
  buildCounterGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig++;
  if (buildCounterGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig <
      3) {
    unittest.expect(o.useElapsedTime, unittest.isTrue);
  }
  buildCounterGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig--;
}

core.int buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric =
    0;
buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric() {
  var o = new api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric();
  buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric++;
  if (buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric < 3) {
    o.objectiveValue = 42.0;
    o.trainingStep = "foo";
  }
  buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric--;
  return o;
}

checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(
    api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric o) {
  buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric++;
  if (buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric < 3) {
    unittest.expect(o.objectiveValue, unittest.equals(42.0));
    unittest.expect(o.trainingStep, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric--;
}

core.int buildCounterGoogleCloudMlV1MeasurementMetric = 0;
buildGoogleCloudMlV1MeasurementMetric() {
  var o = new api.GoogleCloudMlV1MeasurementMetric();
  buildCounterGoogleCloudMlV1MeasurementMetric++;
  if (buildCounterGoogleCloudMlV1MeasurementMetric < 3) {
    o.metric = "foo";
    o.value = 42.0;
  }
  buildCounterGoogleCloudMlV1MeasurementMetric--;
  return o;
}

checkGoogleCloudMlV1MeasurementMetric(api.GoogleCloudMlV1MeasurementMetric o) {
  buildCounterGoogleCloudMlV1MeasurementMetric++;
  if (buildCounterGoogleCloudMlV1MeasurementMetric < 3) {
    unittest.expect(o.metric, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterGoogleCloudMlV1MeasurementMetric--;
}

buildUnnamed3429() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3429(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec = 0;
buildGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec() {
  var o = new api.GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec <
      3) {
    o.values = buildUnnamed3429();
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec--;
  return o;
}

checkGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec <
      3) {
    checkUnnamed3429(o.values);
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec--;
}

buildUnnamed3430() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed3430(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec =
    0;
buildGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec() {
  var o = new api.GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec <
      3) {
    o.values = buildUnnamed3430();
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec--;
  return o;
}

checkGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec <
      3) {
    checkUnnamed3430(o.values);
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec--;
}

core.int buildCounterGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec = 0;
buildGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec() {
  var o = new api.GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec < 3) {
    o.maxValue = 42.0;
    o.minValue = 42.0;
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec--;
  return o;
}

checkGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec < 3) {
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec--;
}

core.int buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec =
    0;
buildGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec() {
  var o = new api.GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec < 3) {
    o.maxValue = "foo";
    o.minValue = "foo";
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec--;
  return o;
}

checkGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec < 3) {
    unittest.expect(o.maxValue, unittest.equals('foo'));
    unittest.expect(o.minValue, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec--;
}

buildUnnamed3431() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3431(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec =
    0;
buildGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec() {
  var o = new api
      .GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec <
      3) {
    o.values = buildUnnamed3431();
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec--;
  return o;
}

checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec
        o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec <
      3) {
    checkUnnamed3431(o.values);
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec--;
}

buildUnnamed3432() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed3432(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int
    buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec =
    0;
buildGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec() {
  var o = new api
      .GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec <
      3) {
    o.values = buildUnnamed3432();
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec--;
  return o;
}

checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec
        o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec <
      3) {
    checkUnnamed3432(o.values);
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec--;
}

buildUnnamed3433() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3433(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec =
    0;
buildGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec() {
  var o = new api
      .GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec <
      3) {
    o.values = buildUnnamed3433();
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec--;
  return o;
}

checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec <
      3) {
    checkUnnamed3433(o.values);
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec--;
}

core.int buildCounterGoogleCloudMlV1StudyConfigMetricSpec = 0;
buildGoogleCloudMlV1StudyConfigMetricSpec() {
  var o = new api.GoogleCloudMlV1StudyConfigMetricSpec();
  buildCounterGoogleCloudMlV1StudyConfigMetricSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigMetricSpec < 3) {
    o.goal = "foo";
    o.metric = "foo";
  }
  buildCounterGoogleCloudMlV1StudyConfigMetricSpec--;
  return o;
}

checkGoogleCloudMlV1StudyConfigMetricSpec(
    api.GoogleCloudMlV1StudyConfigMetricSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigMetricSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigMetricSpec < 3) {
    unittest.expect(o.goal, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1StudyConfigMetricSpec--;
}

buildUnnamed3434() {
  var o = new core.List<api.GoogleCloudMlV1StudyConfigParameterSpec>();
  o.add(buildGoogleCloudMlV1StudyConfigParameterSpec());
  o.add(buildGoogleCloudMlV1StudyConfigParameterSpec());
  return o;
}

checkUnnamed3434(core.List<api.GoogleCloudMlV1StudyConfigParameterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1StudyConfigParameterSpec(o[0]);
  checkGoogleCloudMlV1StudyConfigParameterSpec(o[1]);
}

core.int buildCounterGoogleCloudMlV1StudyConfigParameterSpec = 0;
buildGoogleCloudMlV1StudyConfigParameterSpec() {
  var o = new api.GoogleCloudMlV1StudyConfigParameterSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpec < 3) {
    o.categoricalValueSpec =
        buildGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec();
    o.childParameterSpecs = buildUnnamed3434();
    o.discreteValueSpec =
        buildGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec();
    o.doubleValueSpec =
        buildGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec();
    o.integerValueSpec =
        buildGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec();
    o.parameter = "foo";
    o.parentCategoricalValues =
        buildGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec();
    o.parentDiscreteValues =
        buildGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec();
    o.parentIntValues =
        buildGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec();
    o.scaleType = "foo";
    o.type = "foo";
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpec--;
  return o;
}

checkGoogleCloudMlV1StudyConfigParameterSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpec < 3) {
    checkGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec(
        o.categoricalValueSpec);
    checkUnnamed3434(o.childParameterSpecs);
    checkGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec(
        o.discreteValueSpec);
    checkGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec(
        o.doubleValueSpec);
    checkGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec(
        o.integerValueSpec);
    unittest.expect(o.parameter, unittest.equals('foo'));
    checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec(
        o.parentCategoricalValues);
    checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec(
        o.parentDiscreteValues);
    checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec(
        o.parentIntValues);
    unittest.expect(o.scaleType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpec--;
}

core.int buildCounterGoogleCloudMlV1TrialParameter = 0;
buildGoogleCloudMlV1TrialParameter() {
  var o = new api.GoogleCloudMlV1TrialParameter();
  buildCounterGoogleCloudMlV1TrialParameter++;
  if (buildCounterGoogleCloudMlV1TrialParameter < 3) {
    o.floatValue = 42.0;
    o.intValue = "foo";
    o.parameter = "foo";
    o.stringValue = "foo";
  }
  buildCounterGoogleCloudMlV1TrialParameter--;
  return o;
}

checkGoogleCloudMlV1TrialParameter(api.GoogleCloudMlV1TrialParameter o) {
  buildCounterGoogleCloudMlV1TrialParameter++;
  if (buildCounterGoogleCloudMlV1TrialParameter < 3) {
    unittest.expect(o.floatValue, unittest.equals(42.0));
    unittest.expect(o.intValue, unittest.equals('foo'));
    unittest.expect(o.parameter, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1TrialParameter--;
}

core.int buildCounterGoogleCloudMlV1AcceleratorConfig = 0;
buildGoogleCloudMlV1AcceleratorConfig() {
  var o = new api.GoogleCloudMlV1AcceleratorConfig();
  buildCounterGoogleCloudMlV1AcceleratorConfig++;
  if (buildCounterGoogleCloudMlV1AcceleratorConfig < 3) {
    o.count = "foo";
    o.type = "foo";
  }
  buildCounterGoogleCloudMlV1AcceleratorConfig--;
  return o;
}

checkGoogleCloudMlV1AcceleratorConfig(api.GoogleCloudMlV1AcceleratorConfig o) {
  buildCounterGoogleCloudMlV1AcceleratorConfig++;
  if (buildCounterGoogleCloudMlV1AcceleratorConfig < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1AcceleratorConfig--;
}

core.int buildCounterGoogleCloudMlV1AddTrialMeasurementRequest = 0;
buildGoogleCloudMlV1AddTrialMeasurementRequest() {
  var o = new api.GoogleCloudMlV1AddTrialMeasurementRequest();
  buildCounterGoogleCloudMlV1AddTrialMeasurementRequest++;
  if (buildCounterGoogleCloudMlV1AddTrialMeasurementRequest < 3) {
    o.measurement = buildGoogleCloudMlV1Measurement();
  }
  buildCounterGoogleCloudMlV1AddTrialMeasurementRequest--;
  return o;
}

checkGoogleCloudMlV1AddTrialMeasurementRequest(
    api.GoogleCloudMlV1AddTrialMeasurementRequest o) {
  buildCounterGoogleCloudMlV1AddTrialMeasurementRequest++;
  if (buildCounterGoogleCloudMlV1AddTrialMeasurementRequest < 3) {
    checkGoogleCloudMlV1Measurement(o.measurement);
  }
  buildCounterGoogleCloudMlV1AddTrialMeasurementRequest--;
}

core.int buildCounterGoogleCloudMlV1AutoScaling = 0;
buildGoogleCloudMlV1AutoScaling() {
  var o = new api.GoogleCloudMlV1AutoScaling();
  buildCounterGoogleCloudMlV1AutoScaling++;
  if (buildCounterGoogleCloudMlV1AutoScaling < 3) {
    o.minNodes = 42;
  }
  buildCounterGoogleCloudMlV1AutoScaling--;
  return o;
}

checkGoogleCloudMlV1AutoScaling(api.GoogleCloudMlV1AutoScaling o) {
  buildCounterGoogleCloudMlV1AutoScaling++;
  if (buildCounterGoogleCloudMlV1AutoScaling < 3) {
    unittest.expect(o.minNodes, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1AutoScaling--;
}

core.int buildCounterGoogleCloudMlV1AutomatedStoppingConfig = 0;
buildGoogleCloudMlV1AutomatedStoppingConfig() {
  var o = new api.GoogleCloudMlV1AutomatedStoppingConfig();
  buildCounterGoogleCloudMlV1AutomatedStoppingConfig++;
  if (buildCounterGoogleCloudMlV1AutomatedStoppingConfig < 3) {
    o.decayCurveStoppingConfig =
        buildGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig();
    o.medianAutomatedStoppingConfig =
        buildGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig();
  }
  buildCounterGoogleCloudMlV1AutomatedStoppingConfig--;
  return o;
}

checkGoogleCloudMlV1AutomatedStoppingConfig(
    api.GoogleCloudMlV1AutomatedStoppingConfig o) {
  buildCounterGoogleCloudMlV1AutomatedStoppingConfig++;
  if (buildCounterGoogleCloudMlV1AutomatedStoppingConfig < 3) {
    checkGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig(
        o.decayCurveStoppingConfig);
    checkGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig(
        o.medianAutomatedStoppingConfig);
  }
  buildCounterGoogleCloudMlV1AutomatedStoppingConfig--;
}

core.int buildCounterGoogleCloudMlV1BuiltInAlgorithmOutput = 0;
buildGoogleCloudMlV1BuiltInAlgorithmOutput() {
  var o = new api.GoogleCloudMlV1BuiltInAlgorithmOutput();
  buildCounterGoogleCloudMlV1BuiltInAlgorithmOutput++;
  if (buildCounterGoogleCloudMlV1BuiltInAlgorithmOutput < 3) {
    o.framework = "foo";
    o.modelPath = "foo";
    o.pythonVersion = "foo";
    o.runtimeVersion = "foo";
  }
  buildCounterGoogleCloudMlV1BuiltInAlgorithmOutput--;
  return o;
}

checkGoogleCloudMlV1BuiltInAlgorithmOutput(
    api.GoogleCloudMlV1BuiltInAlgorithmOutput o) {
  buildCounterGoogleCloudMlV1BuiltInAlgorithmOutput++;
  if (buildCounterGoogleCloudMlV1BuiltInAlgorithmOutput < 3) {
    unittest.expect(o.framework, unittest.equals('foo'));
    unittest.expect(o.modelPath, unittest.equals('foo'));
    unittest.expect(o.pythonVersion, unittest.equals('foo'));
    unittest.expect(o.runtimeVersion, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1BuiltInAlgorithmOutput--;
}

core.int buildCounterGoogleCloudMlV1CancelJobRequest = 0;
buildGoogleCloudMlV1CancelJobRequest() {
  var o = new api.GoogleCloudMlV1CancelJobRequest();
  buildCounterGoogleCloudMlV1CancelJobRequest++;
  if (buildCounterGoogleCloudMlV1CancelJobRequest < 3) {}
  buildCounterGoogleCloudMlV1CancelJobRequest--;
  return o;
}

checkGoogleCloudMlV1CancelJobRequest(api.GoogleCloudMlV1CancelJobRequest o) {
  buildCounterGoogleCloudMlV1CancelJobRequest++;
  if (buildCounterGoogleCloudMlV1CancelJobRequest < 3) {}
  buildCounterGoogleCloudMlV1CancelJobRequest--;
}

buildUnnamed3435() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3435(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1Capability = 0;
buildGoogleCloudMlV1Capability() {
  var o = new api.GoogleCloudMlV1Capability();
  buildCounterGoogleCloudMlV1Capability++;
  if (buildCounterGoogleCloudMlV1Capability < 3) {
    o.availableAccelerators = buildUnnamed3435();
    o.type = "foo";
  }
  buildCounterGoogleCloudMlV1Capability--;
  return o;
}

checkGoogleCloudMlV1Capability(api.GoogleCloudMlV1Capability o) {
  buildCounterGoogleCloudMlV1Capability++;
  if (buildCounterGoogleCloudMlV1Capability < 3) {
    checkUnnamed3435(o.availableAccelerators);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Capability--;
}

core.int buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata = 0;
buildGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata() {
  var o = new api.GoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata();
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata++;
  if (buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata < 3) {
    o.createTime = "foo";
    o.study = "foo";
    o.trial = "foo";
  }
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata--;
  return o;
}

checkGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata(
    api.GoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata o) {
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata++;
  if (buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.study, unittest.equals('foo'));
    unittest.expect(o.trial, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata--;
}

core.int buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest = 0;
buildGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest() {
  var o = new api.GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest();
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest++;
  if (buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest < 3) {}
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest--;
  return o;
}

checkGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest(
    api.GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest o) {
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest++;
  if (buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest < 3) {}
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest--;
}

core.int buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse = 0;
buildGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse() {
  var o = new api.GoogleCloudMlV1CheckTrialEarlyStoppingStateResponse();
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse++;
  if (buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse < 3) {
    o.endTime = "foo";
    o.shouldStop = true;
    o.startTime = "foo";
  }
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse--;
  return o;
}

checkGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse(
    api.GoogleCloudMlV1CheckTrialEarlyStoppingStateResponse o) {
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse++;
  if (buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.shouldStop, unittest.isTrue);
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse--;
}

core.int buildCounterGoogleCloudMlV1CompleteTrialRequest = 0;
buildGoogleCloudMlV1CompleteTrialRequest() {
  var o = new api.GoogleCloudMlV1CompleteTrialRequest();
  buildCounterGoogleCloudMlV1CompleteTrialRequest++;
  if (buildCounterGoogleCloudMlV1CompleteTrialRequest < 3) {
    o.finalMeasurement = buildGoogleCloudMlV1Measurement();
    o.infeasibleReason = "foo";
    o.trialInfeasible = true;
  }
  buildCounterGoogleCloudMlV1CompleteTrialRequest--;
  return o;
}

checkGoogleCloudMlV1CompleteTrialRequest(
    api.GoogleCloudMlV1CompleteTrialRequest o) {
  buildCounterGoogleCloudMlV1CompleteTrialRequest++;
  if (buildCounterGoogleCloudMlV1CompleteTrialRequest < 3) {
    checkGoogleCloudMlV1Measurement(o.finalMeasurement);
    unittest.expect(o.infeasibleReason, unittest.equals('foo'));
    unittest.expect(o.trialInfeasible, unittest.isTrue);
  }
  buildCounterGoogleCloudMlV1CompleteTrialRequest--;
}

core.int buildCounterGoogleCloudMlV1Config = 0;
buildGoogleCloudMlV1Config() {
  var o = new api.GoogleCloudMlV1Config();
  buildCounterGoogleCloudMlV1Config++;
  if (buildCounterGoogleCloudMlV1Config < 3) {
    o.tpuServiceAccount = "foo";
  }
  buildCounterGoogleCloudMlV1Config--;
  return o;
}

checkGoogleCloudMlV1Config(api.GoogleCloudMlV1Config o) {
  buildCounterGoogleCloudMlV1Config++;
  if (buildCounterGoogleCloudMlV1Config < 3) {
    unittest.expect(o.tpuServiceAccount, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Config--;
}

core.int buildCounterGoogleCloudMlV1ContainerPort = 0;
buildGoogleCloudMlV1ContainerPort() {
  var o = new api.GoogleCloudMlV1ContainerPort();
  buildCounterGoogleCloudMlV1ContainerPort++;
  if (buildCounterGoogleCloudMlV1ContainerPort < 3) {
    o.containerPort = 42;
  }
  buildCounterGoogleCloudMlV1ContainerPort--;
  return o;
}

checkGoogleCloudMlV1ContainerPort(api.GoogleCloudMlV1ContainerPort o) {
  buildCounterGoogleCloudMlV1ContainerPort++;
  if (buildCounterGoogleCloudMlV1ContainerPort < 3) {
    unittest.expect(o.containerPort, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1ContainerPort--;
}

buildUnnamed3436() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3436(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3437() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3437(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3438() {
  var o = new core.List<api.GoogleCloudMlV1EnvVar>();
  o.add(buildGoogleCloudMlV1EnvVar());
  o.add(buildGoogleCloudMlV1EnvVar());
  return o;
}

checkUnnamed3438(core.List<api.GoogleCloudMlV1EnvVar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1EnvVar(o[0]);
  checkGoogleCloudMlV1EnvVar(o[1]);
}

buildUnnamed3439() {
  var o = new core.List<api.GoogleCloudMlV1ContainerPort>();
  o.add(buildGoogleCloudMlV1ContainerPort());
  o.add(buildGoogleCloudMlV1ContainerPort());
  return o;
}

checkUnnamed3439(core.List<api.GoogleCloudMlV1ContainerPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1ContainerPort(o[0]);
  checkGoogleCloudMlV1ContainerPort(o[1]);
}

core.int buildCounterGoogleCloudMlV1ContainerSpec = 0;
buildGoogleCloudMlV1ContainerSpec() {
  var o = new api.GoogleCloudMlV1ContainerSpec();
  buildCounterGoogleCloudMlV1ContainerSpec++;
  if (buildCounterGoogleCloudMlV1ContainerSpec < 3) {
    o.args = buildUnnamed3436();
    o.command = buildUnnamed3437();
    o.env = buildUnnamed3438();
    o.image = "foo";
    o.ports = buildUnnamed3439();
  }
  buildCounterGoogleCloudMlV1ContainerSpec--;
  return o;
}

checkGoogleCloudMlV1ContainerSpec(api.GoogleCloudMlV1ContainerSpec o) {
  buildCounterGoogleCloudMlV1ContainerSpec++;
  if (buildCounterGoogleCloudMlV1ContainerSpec < 3) {
    checkUnnamed3436(o.args);
    checkUnnamed3437(o.command);
    checkUnnamed3438(o.env);
    unittest.expect(o.image, unittest.equals('foo'));
    checkUnnamed3439(o.ports);
  }
  buildCounterGoogleCloudMlV1ContainerSpec--;
}

core.int buildCounterGoogleCloudMlV1EncryptionConfig = 0;
buildGoogleCloudMlV1EncryptionConfig() {
  var o = new api.GoogleCloudMlV1EncryptionConfig();
  buildCounterGoogleCloudMlV1EncryptionConfig++;
  if (buildCounterGoogleCloudMlV1EncryptionConfig < 3) {
    o.kmsKeyName = "foo";
  }
  buildCounterGoogleCloudMlV1EncryptionConfig--;
  return o;
}

checkGoogleCloudMlV1EncryptionConfig(api.GoogleCloudMlV1EncryptionConfig o) {
  buildCounterGoogleCloudMlV1EncryptionConfig++;
  if (buildCounterGoogleCloudMlV1EncryptionConfig < 3) {
    unittest.expect(o.kmsKeyName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1EncryptionConfig--;
}

core.int buildCounterGoogleCloudMlV1EnvVar = 0;
buildGoogleCloudMlV1EnvVar() {
  var o = new api.GoogleCloudMlV1EnvVar();
  buildCounterGoogleCloudMlV1EnvVar++;
  if (buildCounterGoogleCloudMlV1EnvVar < 3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudMlV1EnvVar--;
  return o;
}

checkGoogleCloudMlV1EnvVar(api.GoogleCloudMlV1EnvVar o) {
  buildCounterGoogleCloudMlV1EnvVar++;
  if (buildCounterGoogleCloudMlV1EnvVar < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1EnvVar--;
}

core.int buildCounterGoogleCloudMlV1ExplainRequest = 0;
buildGoogleCloudMlV1ExplainRequest() {
  var o = new api.GoogleCloudMlV1ExplainRequest();
  buildCounterGoogleCloudMlV1ExplainRequest++;
  if (buildCounterGoogleCloudMlV1ExplainRequest < 3) {
    o.httpBody = buildGoogleApiHttpBody();
  }
  buildCounterGoogleCloudMlV1ExplainRequest--;
  return o;
}

checkGoogleCloudMlV1ExplainRequest(api.GoogleCloudMlV1ExplainRequest o) {
  buildCounterGoogleCloudMlV1ExplainRequest++;
  if (buildCounterGoogleCloudMlV1ExplainRequest < 3) {
    checkGoogleApiHttpBody(o.httpBody);
  }
  buildCounterGoogleCloudMlV1ExplainRequest--;
}

core.int buildCounterGoogleCloudMlV1ExplanationConfig = 0;
buildGoogleCloudMlV1ExplanationConfig() {
  var o = new api.GoogleCloudMlV1ExplanationConfig();
  buildCounterGoogleCloudMlV1ExplanationConfig++;
  if (buildCounterGoogleCloudMlV1ExplanationConfig < 3) {
    o.integratedGradientsAttribution =
        buildGoogleCloudMlV1IntegratedGradientsAttribution();
    o.sampledShapleyAttribution =
        buildGoogleCloudMlV1SampledShapleyAttribution();
    o.xraiAttribution = buildGoogleCloudMlV1XraiAttribution();
  }
  buildCounterGoogleCloudMlV1ExplanationConfig--;
  return o;
}

checkGoogleCloudMlV1ExplanationConfig(api.GoogleCloudMlV1ExplanationConfig o) {
  buildCounterGoogleCloudMlV1ExplanationConfig++;
  if (buildCounterGoogleCloudMlV1ExplanationConfig < 3) {
    checkGoogleCloudMlV1IntegratedGradientsAttribution(
        o.integratedGradientsAttribution);
    checkGoogleCloudMlV1SampledShapleyAttribution(o.sampledShapleyAttribution);
    checkGoogleCloudMlV1XraiAttribution(o.xraiAttribution);
  }
  buildCounterGoogleCloudMlV1ExplanationConfig--;
}

core.int buildCounterGoogleCloudMlV1GetConfigResponse = 0;
buildGoogleCloudMlV1GetConfigResponse() {
  var o = new api.GoogleCloudMlV1GetConfigResponse();
  buildCounterGoogleCloudMlV1GetConfigResponse++;
  if (buildCounterGoogleCloudMlV1GetConfigResponse < 3) {
    o.config = buildGoogleCloudMlV1Config();
    o.serviceAccount = "foo";
    o.serviceAccountProject = "foo";
  }
  buildCounterGoogleCloudMlV1GetConfigResponse--;
  return o;
}

checkGoogleCloudMlV1GetConfigResponse(api.GoogleCloudMlV1GetConfigResponse o) {
  buildCounterGoogleCloudMlV1GetConfigResponse++;
  if (buildCounterGoogleCloudMlV1GetConfigResponse < 3) {
    checkGoogleCloudMlV1Config(o.config);
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    unittest.expect(o.serviceAccountProject, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1GetConfigResponse--;
}

buildUnnamed3440() {
  var o = new core
      .List<api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric>();
  o.add(buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric());
  o.add(buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric());
  return o;
}

checkUnnamed3440(
    core.List<api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(o[0]);
  checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(o[1]);
}

buildUnnamed3441() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3441(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1HyperparameterOutput = 0;
buildGoogleCloudMlV1HyperparameterOutput() {
  var o = new api.GoogleCloudMlV1HyperparameterOutput();
  buildCounterGoogleCloudMlV1HyperparameterOutput++;
  if (buildCounterGoogleCloudMlV1HyperparameterOutput < 3) {
    o.allMetrics = buildUnnamed3440();
    o.builtInAlgorithmOutput = buildGoogleCloudMlV1BuiltInAlgorithmOutput();
    o.endTime = "foo";
    o.finalMetric =
        buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric();
    o.hyperparameters = buildUnnamed3441();
    o.isTrialStoppedEarly = true;
    o.startTime = "foo";
    o.state = "foo";
    o.trialId = "foo";
  }
  buildCounterGoogleCloudMlV1HyperparameterOutput--;
  return o;
}

checkGoogleCloudMlV1HyperparameterOutput(
    api.GoogleCloudMlV1HyperparameterOutput o) {
  buildCounterGoogleCloudMlV1HyperparameterOutput++;
  if (buildCounterGoogleCloudMlV1HyperparameterOutput < 3) {
    checkUnnamed3440(o.allMetrics);
    checkGoogleCloudMlV1BuiltInAlgorithmOutput(o.builtInAlgorithmOutput);
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(o.finalMetric);
    checkUnnamed3441(o.hyperparameters);
    unittest.expect(o.isTrialStoppedEarly, unittest.isTrue);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.trialId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1HyperparameterOutput--;
}

buildUnnamed3442() {
  var o = new core.List<api.GoogleCloudMlV1ParameterSpec>();
  o.add(buildGoogleCloudMlV1ParameterSpec());
  o.add(buildGoogleCloudMlV1ParameterSpec());
  return o;
}

checkUnnamed3442(core.List<api.GoogleCloudMlV1ParameterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1ParameterSpec(o[0]);
  checkGoogleCloudMlV1ParameterSpec(o[1]);
}

core.int buildCounterGoogleCloudMlV1HyperparameterSpec = 0;
buildGoogleCloudMlV1HyperparameterSpec() {
  var o = new api.GoogleCloudMlV1HyperparameterSpec();
  buildCounterGoogleCloudMlV1HyperparameterSpec++;
  if (buildCounterGoogleCloudMlV1HyperparameterSpec < 3) {
    o.algorithm = "foo";
    o.enableTrialEarlyStopping = true;
    o.goal = "foo";
    o.hyperparameterMetricTag = "foo";
    o.maxFailedTrials = 42;
    o.maxParallelTrials = 42;
    o.maxTrials = 42;
    o.params = buildUnnamed3442();
    o.resumePreviousJobId = "foo";
  }
  buildCounterGoogleCloudMlV1HyperparameterSpec--;
  return o;
}

checkGoogleCloudMlV1HyperparameterSpec(
    api.GoogleCloudMlV1HyperparameterSpec o) {
  buildCounterGoogleCloudMlV1HyperparameterSpec++;
  if (buildCounterGoogleCloudMlV1HyperparameterSpec < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.enableTrialEarlyStopping, unittest.isTrue);
    unittest.expect(o.goal, unittest.equals('foo'));
    unittest.expect(o.hyperparameterMetricTag, unittest.equals('foo'));
    unittest.expect(o.maxFailedTrials, unittest.equals(42));
    unittest.expect(o.maxParallelTrials, unittest.equals(42));
    unittest.expect(o.maxTrials, unittest.equals(42));
    checkUnnamed3442(o.params);
    unittest.expect(o.resumePreviousJobId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1HyperparameterSpec--;
}

core.int buildCounterGoogleCloudMlV1IntegratedGradientsAttribution = 0;
buildGoogleCloudMlV1IntegratedGradientsAttribution() {
  var o = new api.GoogleCloudMlV1IntegratedGradientsAttribution();
  buildCounterGoogleCloudMlV1IntegratedGradientsAttribution++;
  if (buildCounterGoogleCloudMlV1IntegratedGradientsAttribution < 3) {
    o.numIntegralSteps = 42;
  }
  buildCounterGoogleCloudMlV1IntegratedGradientsAttribution--;
  return o;
}

checkGoogleCloudMlV1IntegratedGradientsAttribution(
    api.GoogleCloudMlV1IntegratedGradientsAttribution o) {
  buildCounterGoogleCloudMlV1IntegratedGradientsAttribution++;
  if (buildCounterGoogleCloudMlV1IntegratedGradientsAttribution < 3) {
    unittest.expect(o.numIntegralSteps, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1IntegratedGradientsAttribution--;
}

buildUnnamed3443() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3443(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1Job = 0;
buildGoogleCloudMlV1Job() {
  var o = new api.GoogleCloudMlV1Job();
  buildCounterGoogleCloudMlV1Job++;
  if (buildCounterGoogleCloudMlV1Job < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.errorMessage = "foo";
    o.etag = "foo";
    o.jobId = "foo";
    o.labels = buildUnnamed3443();
    o.predictionInput = buildGoogleCloudMlV1PredictionInput();
    o.predictionOutput = buildGoogleCloudMlV1PredictionOutput();
    o.startTime = "foo";
    o.state = "foo";
    o.trainingInput = buildGoogleCloudMlV1TrainingInput();
    o.trainingOutput = buildGoogleCloudMlV1TrainingOutput();
  }
  buildCounterGoogleCloudMlV1Job--;
  return o;
}

checkGoogleCloudMlV1Job(api.GoogleCloudMlV1Job o) {
  buildCounterGoogleCloudMlV1Job++;
  if (buildCounterGoogleCloudMlV1Job < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.jobId, unittest.equals('foo'));
    checkUnnamed3443(o.labels);
    checkGoogleCloudMlV1PredictionInput(o.predictionInput);
    checkGoogleCloudMlV1PredictionOutput(o.predictionOutput);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkGoogleCloudMlV1TrainingInput(o.trainingInput);
    checkGoogleCloudMlV1TrainingOutput(o.trainingOutput);
  }
  buildCounterGoogleCloudMlV1Job--;
}

buildUnnamed3444() {
  var o = new core.List<api.GoogleCloudMlV1Job>();
  o.add(buildGoogleCloudMlV1Job());
  o.add(buildGoogleCloudMlV1Job());
  return o;
}

checkUnnamed3444(core.List<api.GoogleCloudMlV1Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Job(o[0]);
  checkGoogleCloudMlV1Job(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListJobsResponse = 0;
buildGoogleCloudMlV1ListJobsResponse() {
  var o = new api.GoogleCloudMlV1ListJobsResponse();
  buildCounterGoogleCloudMlV1ListJobsResponse++;
  if (buildCounterGoogleCloudMlV1ListJobsResponse < 3) {
    o.jobs = buildUnnamed3444();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudMlV1ListJobsResponse--;
  return o;
}

checkGoogleCloudMlV1ListJobsResponse(api.GoogleCloudMlV1ListJobsResponse o) {
  buildCounterGoogleCloudMlV1ListJobsResponse++;
  if (buildCounterGoogleCloudMlV1ListJobsResponse < 3) {
    checkUnnamed3444(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ListJobsResponse--;
}

buildUnnamed3445() {
  var o = new core.List<api.GoogleCloudMlV1Location>();
  o.add(buildGoogleCloudMlV1Location());
  o.add(buildGoogleCloudMlV1Location());
  return o;
}

checkUnnamed3445(core.List<api.GoogleCloudMlV1Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Location(o[0]);
  checkGoogleCloudMlV1Location(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListLocationsResponse = 0;
buildGoogleCloudMlV1ListLocationsResponse() {
  var o = new api.GoogleCloudMlV1ListLocationsResponse();
  buildCounterGoogleCloudMlV1ListLocationsResponse++;
  if (buildCounterGoogleCloudMlV1ListLocationsResponse < 3) {
    o.locations = buildUnnamed3445();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudMlV1ListLocationsResponse--;
  return o;
}

checkGoogleCloudMlV1ListLocationsResponse(
    api.GoogleCloudMlV1ListLocationsResponse o) {
  buildCounterGoogleCloudMlV1ListLocationsResponse++;
  if (buildCounterGoogleCloudMlV1ListLocationsResponse < 3) {
    checkUnnamed3445(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ListLocationsResponse--;
}

buildUnnamed3446() {
  var o = new core.List<api.GoogleCloudMlV1Model>();
  o.add(buildGoogleCloudMlV1Model());
  o.add(buildGoogleCloudMlV1Model());
  return o;
}

checkUnnamed3446(core.List<api.GoogleCloudMlV1Model> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Model(o[0]);
  checkGoogleCloudMlV1Model(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListModelsResponse = 0;
buildGoogleCloudMlV1ListModelsResponse() {
  var o = new api.GoogleCloudMlV1ListModelsResponse();
  buildCounterGoogleCloudMlV1ListModelsResponse++;
  if (buildCounterGoogleCloudMlV1ListModelsResponse < 3) {
    o.models = buildUnnamed3446();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudMlV1ListModelsResponse--;
  return o;
}

checkGoogleCloudMlV1ListModelsResponse(
    api.GoogleCloudMlV1ListModelsResponse o) {
  buildCounterGoogleCloudMlV1ListModelsResponse++;
  if (buildCounterGoogleCloudMlV1ListModelsResponse < 3) {
    checkUnnamed3446(o.models);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ListModelsResponse--;
}

buildUnnamed3447() {
  var o = new core.List<api.GoogleCloudMlV1Study>();
  o.add(buildGoogleCloudMlV1Study());
  o.add(buildGoogleCloudMlV1Study());
  return o;
}

checkUnnamed3447(core.List<api.GoogleCloudMlV1Study> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Study(o[0]);
  checkGoogleCloudMlV1Study(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListStudiesResponse = 0;
buildGoogleCloudMlV1ListStudiesResponse() {
  var o = new api.GoogleCloudMlV1ListStudiesResponse();
  buildCounterGoogleCloudMlV1ListStudiesResponse++;
  if (buildCounterGoogleCloudMlV1ListStudiesResponse < 3) {
    o.studies = buildUnnamed3447();
  }
  buildCounterGoogleCloudMlV1ListStudiesResponse--;
  return o;
}

checkGoogleCloudMlV1ListStudiesResponse(
    api.GoogleCloudMlV1ListStudiesResponse o) {
  buildCounterGoogleCloudMlV1ListStudiesResponse++;
  if (buildCounterGoogleCloudMlV1ListStudiesResponse < 3) {
    checkUnnamed3447(o.studies);
  }
  buildCounterGoogleCloudMlV1ListStudiesResponse--;
}

buildUnnamed3448() {
  var o = new core.List<api.GoogleCloudMlV1Trial>();
  o.add(buildGoogleCloudMlV1Trial());
  o.add(buildGoogleCloudMlV1Trial());
  return o;
}

checkUnnamed3448(core.List<api.GoogleCloudMlV1Trial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Trial(o[0]);
  checkGoogleCloudMlV1Trial(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListTrialsResponse = 0;
buildGoogleCloudMlV1ListTrialsResponse() {
  var o = new api.GoogleCloudMlV1ListTrialsResponse();
  buildCounterGoogleCloudMlV1ListTrialsResponse++;
  if (buildCounterGoogleCloudMlV1ListTrialsResponse < 3) {
    o.trials = buildUnnamed3448();
  }
  buildCounterGoogleCloudMlV1ListTrialsResponse--;
  return o;
}

checkGoogleCloudMlV1ListTrialsResponse(
    api.GoogleCloudMlV1ListTrialsResponse o) {
  buildCounterGoogleCloudMlV1ListTrialsResponse++;
  if (buildCounterGoogleCloudMlV1ListTrialsResponse < 3) {
    checkUnnamed3448(o.trials);
  }
  buildCounterGoogleCloudMlV1ListTrialsResponse--;
}

buildUnnamed3449() {
  var o = new core.List<api.GoogleCloudMlV1Version>();
  o.add(buildGoogleCloudMlV1Version());
  o.add(buildGoogleCloudMlV1Version());
  return o;
}

checkUnnamed3449(core.List<api.GoogleCloudMlV1Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Version(o[0]);
  checkGoogleCloudMlV1Version(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListVersionsResponse = 0;
buildGoogleCloudMlV1ListVersionsResponse() {
  var o = new api.GoogleCloudMlV1ListVersionsResponse();
  buildCounterGoogleCloudMlV1ListVersionsResponse++;
  if (buildCounterGoogleCloudMlV1ListVersionsResponse < 3) {
    o.nextPageToken = "foo";
    o.versions = buildUnnamed3449();
  }
  buildCounterGoogleCloudMlV1ListVersionsResponse--;
  return o;
}

checkGoogleCloudMlV1ListVersionsResponse(
    api.GoogleCloudMlV1ListVersionsResponse o) {
  buildCounterGoogleCloudMlV1ListVersionsResponse++;
  if (buildCounterGoogleCloudMlV1ListVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3449(o.versions);
  }
  buildCounterGoogleCloudMlV1ListVersionsResponse--;
}

buildUnnamed3450() {
  var o = new core.List<api.GoogleCloudMlV1Capability>();
  o.add(buildGoogleCloudMlV1Capability());
  o.add(buildGoogleCloudMlV1Capability());
  return o;
}

checkUnnamed3450(core.List<api.GoogleCloudMlV1Capability> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Capability(o[0]);
  checkGoogleCloudMlV1Capability(o[1]);
}

core.int buildCounterGoogleCloudMlV1Location = 0;
buildGoogleCloudMlV1Location() {
  var o = new api.GoogleCloudMlV1Location();
  buildCounterGoogleCloudMlV1Location++;
  if (buildCounterGoogleCloudMlV1Location < 3) {
    o.capabilities = buildUnnamed3450();
    o.name = "foo";
  }
  buildCounterGoogleCloudMlV1Location--;
  return o;
}

checkGoogleCloudMlV1Location(api.GoogleCloudMlV1Location o) {
  buildCounterGoogleCloudMlV1Location++;
  if (buildCounterGoogleCloudMlV1Location < 3) {
    checkUnnamed3450(o.capabilities);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Location--;
}

core.int buildCounterGoogleCloudMlV1ManualScaling = 0;
buildGoogleCloudMlV1ManualScaling() {
  var o = new api.GoogleCloudMlV1ManualScaling();
  buildCounterGoogleCloudMlV1ManualScaling++;
  if (buildCounterGoogleCloudMlV1ManualScaling < 3) {
    o.nodes = 42;
  }
  buildCounterGoogleCloudMlV1ManualScaling--;
  return o;
}

checkGoogleCloudMlV1ManualScaling(api.GoogleCloudMlV1ManualScaling o) {
  buildCounterGoogleCloudMlV1ManualScaling++;
  if (buildCounterGoogleCloudMlV1ManualScaling < 3) {
    unittest.expect(o.nodes, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1ManualScaling--;
}

buildUnnamed3451() {
  var o = new core.List<api.GoogleCloudMlV1MeasurementMetric>();
  o.add(buildGoogleCloudMlV1MeasurementMetric());
  o.add(buildGoogleCloudMlV1MeasurementMetric());
  return o;
}

checkUnnamed3451(core.List<api.GoogleCloudMlV1MeasurementMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1MeasurementMetric(o[0]);
  checkGoogleCloudMlV1MeasurementMetric(o[1]);
}

core.int buildCounterGoogleCloudMlV1Measurement = 0;
buildGoogleCloudMlV1Measurement() {
  var o = new api.GoogleCloudMlV1Measurement();
  buildCounterGoogleCloudMlV1Measurement++;
  if (buildCounterGoogleCloudMlV1Measurement < 3) {
    o.elapsedTime = "foo";
    o.metrics = buildUnnamed3451();
    o.stepCount = "foo";
  }
  buildCounterGoogleCloudMlV1Measurement--;
  return o;
}

checkGoogleCloudMlV1Measurement(api.GoogleCloudMlV1Measurement o) {
  buildCounterGoogleCloudMlV1Measurement++;
  if (buildCounterGoogleCloudMlV1Measurement < 3) {
    unittest.expect(o.elapsedTime, unittest.equals('foo'));
    checkUnnamed3451(o.metrics);
    unittest.expect(o.stepCount, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Measurement--;
}

buildUnnamed3452() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3452(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3453() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3453(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1Model = 0;
buildGoogleCloudMlV1Model() {
  var o = new api.GoogleCloudMlV1Model();
  buildCounterGoogleCloudMlV1Model++;
  if (buildCounterGoogleCloudMlV1Model < 3) {
    o.defaultVersion = buildGoogleCloudMlV1Version();
    o.description = "foo";
    o.etag = "foo";
    o.labels = buildUnnamed3452();
    o.name = "foo";
    o.onlinePredictionConsoleLogging = true;
    o.onlinePredictionLogging = true;
    o.regions = buildUnnamed3453();
  }
  buildCounterGoogleCloudMlV1Model--;
  return o;
}

checkGoogleCloudMlV1Model(api.GoogleCloudMlV1Model o) {
  buildCounterGoogleCloudMlV1Model++;
  if (buildCounterGoogleCloudMlV1Model < 3) {
    checkGoogleCloudMlV1Version(o.defaultVersion);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed3452(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.onlinePredictionConsoleLogging, unittest.isTrue);
    unittest.expect(o.onlinePredictionLogging, unittest.isTrue);
    checkUnnamed3453(o.regions);
  }
  buildCounterGoogleCloudMlV1Model--;
}

buildUnnamed3454() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3454(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1OperationMetadata = 0;
buildGoogleCloudMlV1OperationMetadata() {
  var o = new api.GoogleCloudMlV1OperationMetadata();
  buildCounterGoogleCloudMlV1OperationMetadata++;
  if (buildCounterGoogleCloudMlV1OperationMetadata < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.isCancellationRequested = true;
    o.labels = buildUnnamed3454();
    o.modelName = "foo";
    o.operationType = "foo";
    o.projectNumber = "foo";
    o.startTime = "foo";
    o.version = buildGoogleCloudMlV1Version();
  }
  buildCounterGoogleCloudMlV1OperationMetadata--;
  return o;
}

checkGoogleCloudMlV1OperationMetadata(api.GoogleCloudMlV1OperationMetadata o) {
  buildCounterGoogleCloudMlV1OperationMetadata++;
  if (buildCounterGoogleCloudMlV1OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.isCancellationRequested, unittest.isTrue);
    checkUnnamed3454(o.labels);
    unittest.expect(o.modelName, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkGoogleCloudMlV1Version(o.version);
  }
  buildCounterGoogleCloudMlV1OperationMetadata--;
}

buildUnnamed3455() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3455(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3456() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed3456(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterGoogleCloudMlV1ParameterSpec = 0;
buildGoogleCloudMlV1ParameterSpec() {
  var o = new api.GoogleCloudMlV1ParameterSpec();
  buildCounterGoogleCloudMlV1ParameterSpec++;
  if (buildCounterGoogleCloudMlV1ParameterSpec < 3) {
    o.categoricalValues = buildUnnamed3455();
    o.discreteValues = buildUnnamed3456();
    o.maxValue = 42.0;
    o.minValue = 42.0;
    o.parameterName = "foo";
    o.scaleType = "foo";
    o.type = "foo";
  }
  buildCounterGoogleCloudMlV1ParameterSpec--;
  return o;
}

checkGoogleCloudMlV1ParameterSpec(api.GoogleCloudMlV1ParameterSpec o) {
  buildCounterGoogleCloudMlV1ParameterSpec++;
  if (buildCounterGoogleCloudMlV1ParameterSpec < 3) {
    checkUnnamed3455(o.categoricalValues);
    checkUnnamed3456(o.discreteValues);
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
    unittest.expect(o.parameterName, unittest.equals('foo'));
    unittest.expect(o.scaleType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ParameterSpec--;
}

core.int buildCounterGoogleCloudMlV1PredictRequest = 0;
buildGoogleCloudMlV1PredictRequest() {
  var o = new api.GoogleCloudMlV1PredictRequest();
  buildCounterGoogleCloudMlV1PredictRequest++;
  if (buildCounterGoogleCloudMlV1PredictRequest < 3) {
    o.httpBody = buildGoogleApiHttpBody();
  }
  buildCounterGoogleCloudMlV1PredictRequest--;
  return o;
}

checkGoogleCloudMlV1PredictRequest(api.GoogleCloudMlV1PredictRequest o) {
  buildCounterGoogleCloudMlV1PredictRequest++;
  if (buildCounterGoogleCloudMlV1PredictRequest < 3) {
    checkGoogleApiHttpBody(o.httpBody);
  }
  buildCounterGoogleCloudMlV1PredictRequest--;
}

buildUnnamed3457() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3457(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1PredictionInput = 0;
buildGoogleCloudMlV1PredictionInput() {
  var o = new api.GoogleCloudMlV1PredictionInput();
  buildCounterGoogleCloudMlV1PredictionInput++;
  if (buildCounterGoogleCloudMlV1PredictionInput < 3) {
    o.batchSize = "foo";
    o.dataFormat = "foo";
    o.inputPaths = buildUnnamed3457();
    o.maxWorkerCount = "foo";
    o.modelName = "foo";
    o.outputDataFormat = "foo";
    o.outputPath = "foo";
    o.region = "foo";
    o.runtimeVersion = "foo";
    o.signatureName = "foo";
    o.uri = "foo";
    o.versionName = "foo";
  }
  buildCounterGoogleCloudMlV1PredictionInput--;
  return o;
}

checkGoogleCloudMlV1PredictionInput(api.GoogleCloudMlV1PredictionInput o) {
  buildCounterGoogleCloudMlV1PredictionInput++;
  if (buildCounterGoogleCloudMlV1PredictionInput < 3) {
    unittest.expect(o.batchSize, unittest.equals('foo'));
    unittest.expect(o.dataFormat, unittest.equals('foo'));
    checkUnnamed3457(o.inputPaths);
    unittest.expect(o.maxWorkerCount, unittest.equals('foo'));
    unittest.expect(o.modelName, unittest.equals('foo'));
    unittest.expect(o.outputDataFormat, unittest.equals('foo'));
    unittest.expect(o.outputPath, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.runtimeVersion, unittest.equals('foo'));
    unittest.expect(o.signatureName, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1PredictionInput--;
}

core.int buildCounterGoogleCloudMlV1PredictionOutput = 0;
buildGoogleCloudMlV1PredictionOutput() {
  var o = new api.GoogleCloudMlV1PredictionOutput();
  buildCounterGoogleCloudMlV1PredictionOutput++;
  if (buildCounterGoogleCloudMlV1PredictionOutput < 3) {
    o.errorCount = "foo";
    o.nodeHours = 42.0;
    o.outputPath = "foo";
    o.predictionCount = "foo";
  }
  buildCounterGoogleCloudMlV1PredictionOutput--;
  return o;
}

checkGoogleCloudMlV1PredictionOutput(api.GoogleCloudMlV1PredictionOutput o) {
  buildCounterGoogleCloudMlV1PredictionOutput++;
  if (buildCounterGoogleCloudMlV1PredictionOutput < 3) {
    unittest.expect(o.errorCount, unittest.equals('foo'));
    unittest.expect(o.nodeHours, unittest.equals(42.0));
    unittest.expect(o.outputPath, unittest.equals('foo'));
    unittest.expect(o.predictionCount, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1PredictionOutput--;
}

buildUnnamed3458() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3458(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3459() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3459(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1ReplicaConfig = 0;
buildGoogleCloudMlV1ReplicaConfig() {
  var o = new api.GoogleCloudMlV1ReplicaConfig();
  buildCounterGoogleCloudMlV1ReplicaConfig++;
  if (buildCounterGoogleCloudMlV1ReplicaConfig < 3) {
    o.acceleratorConfig = buildGoogleCloudMlV1AcceleratorConfig();
    o.containerArgs = buildUnnamed3458();
    o.containerCommand = buildUnnamed3459();
    o.imageUri = "foo";
    o.tpuTfVersion = "foo";
  }
  buildCounterGoogleCloudMlV1ReplicaConfig--;
  return o;
}

checkGoogleCloudMlV1ReplicaConfig(api.GoogleCloudMlV1ReplicaConfig o) {
  buildCounterGoogleCloudMlV1ReplicaConfig++;
  if (buildCounterGoogleCloudMlV1ReplicaConfig < 3) {
    checkGoogleCloudMlV1AcceleratorConfig(o.acceleratorConfig);
    checkUnnamed3458(o.containerArgs);
    checkUnnamed3459(o.containerCommand);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    unittest.expect(o.tpuTfVersion, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ReplicaConfig--;
}

core.int buildCounterGoogleCloudMlV1RequestLoggingConfig = 0;
buildGoogleCloudMlV1RequestLoggingConfig() {
  var o = new api.GoogleCloudMlV1RequestLoggingConfig();
  buildCounterGoogleCloudMlV1RequestLoggingConfig++;
  if (buildCounterGoogleCloudMlV1RequestLoggingConfig < 3) {
    o.bigqueryTableName = "foo";
    o.samplingPercentage = 42.0;
  }
  buildCounterGoogleCloudMlV1RequestLoggingConfig--;
  return o;
}

checkGoogleCloudMlV1RequestLoggingConfig(
    api.GoogleCloudMlV1RequestLoggingConfig o) {
  buildCounterGoogleCloudMlV1RequestLoggingConfig++;
  if (buildCounterGoogleCloudMlV1RequestLoggingConfig < 3) {
    unittest.expect(o.bigqueryTableName, unittest.equals('foo'));
    unittest.expect(o.samplingPercentage, unittest.equals(42.0));
  }
  buildCounterGoogleCloudMlV1RequestLoggingConfig--;
}

core.int buildCounterGoogleCloudMlV1RouteMap = 0;
buildGoogleCloudMlV1RouteMap() {
  var o = new api.GoogleCloudMlV1RouteMap();
  buildCounterGoogleCloudMlV1RouteMap++;
  if (buildCounterGoogleCloudMlV1RouteMap < 3) {
    o.health = "foo";
    o.predict = "foo";
  }
  buildCounterGoogleCloudMlV1RouteMap--;
  return o;
}

checkGoogleCloudMlV1RouteMap(api.GoogleCloudMlV1RouteMap o) {
  buildCounterGoogleCloudMlV1RouteMap++;
  if (buildCounterGoogleCloudMlV1RouteMap < 3) {
    unittest.expect(o.health, unittest.equals('foo'));
    unittest.expect(o.predict, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1RouteMap--;
}

core.int buildCounterGoogleCloudMlV1SampledShapleyAttribution = 0;
buildGoogleCloudMlV1SampledShapleyAttribution() {
  var o = new api.GoogleCloudMlV1SampledShapleyAttribution();
  buildCounterGoogleCloudMlV1SampledShapleyAttribution++;
  if (buildCounterGoogleCloudMlV1SampledShapleyAttribution < 3) {
    o.numPaths = 42;
  }
  buildCounterGoogleCloudMlV1SampledShapleyAttribution--;
  return o;
}

checkGoogleCloudMlV1SampledShapleyAttribution(
    api.GoogleCloudMlV1SampledShapleyAttribution o) {
  buildCounterGoogleCloudMlV1SampledShapleyAttribution++;
  if (buildCounterGoogleCloudMlV1SampledShapleyAttribution < 3) {
    unittest.expect(o.numPaths, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1SampledShapleyAttribution--;
}

core.int buildCounterGoogleCloudMlV1Scheduling = 0;
buildGoogleCloudMlV1Scheduling() {
  var o = new api.GoogleCloudMlV1Scheduling();
  buildCounterGoogleCloudMlV1Scheduling++;
  if (buildCounterGoogleCloudMlV1Scheduling < 3) {
    o.maxRunningTime = "foo";
    o.maxWaitTime = "foo";
  }
  buildCounterGoogleCloudMlV1Scheduling--;
  return o;
}

checkGoogleCloudMlV1Scheduling(api.GoogleCloudMlV1Scheduling o) {
  buildCounterGoogleCloudMlV1Scheduling++;
  if (buildCounterGoogleCloudMlV1Scheduling < 3) {
    unittest.expect(o.maxRunningTime, unittest.equals('foo'));
    unittest.expect(o.maxWaitTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Scheduling--;
}

core.int buildCounterGoogleCloudMlV1SetDefaultVersionRequest = 0;
buildGoogleCloudMlV1SetDefaultVersionRequest() {
  var o = new api.GoogleCloudMlV1SetDefaultVersionRequest();
  buildCounterGoogleCloudMlV1SetDefaultVersionRequest++;
  if (buildCounterGoogleCloudMlV1SetDefaultVersionRequest < 3) {}
  buildCounterGoogleCloudMlV1SetDefaultVersionRequest--;
  return o;
}

checkGoogleCloudMlV1SetDefaultVersionRequest(
    api.GoogleCloudMlV1SetDefaultVersionRequest o) {
  buildCounterGoogleCloudMlV1SetDefaultVersionRequest++;
  if (buildCounterGoogleCloudMlV1SetDefaultVersionRequest < 3) {}
  buildCounterGoogleCloudMlV1SetDefaultVersionRequest--;
}

core.int buildCounterGoogleCloudMlV1StopTrialRequest = 0;
buildGoogleCloudMlV1StopTrialRequest() {
  var o = new api.GoogleCloudMlV1StopTrialRequest();
  buildCounterGoogleCloudMlV1StopTrialRequest++;
  if (buildCounterGoogleCloudMlV1StopTrialRequest < 3) {}
  buildCounterGoogleCloudMlV1StopTrialRequest--;
  return o;
}

checkGoogleCloudMlV1StopTrialRequest(api.GoogleCloudMlV1StopTrialRequest o) {
  buildCounterGoogleCloudMlV1StopTrialRequest++;
  if (buildCounterGoogleCloudMlV1StopTrialRequest < 3) {}
  buildCounterGoogleCloudMlV1StopTrialRequest--;
}

core.int buildCounterGoogleCloudMlV1Study = 0;
buildGoogleCloudMlV1Study() {
  var o = new api.GoogleCloudMlV1Study();
  buildCounterGoogleCloudMlV1Study++;
  if (buildCounterGoogleCloudMlV1Study < 3) {
    o.createTime = "foo";
    o.inactiveReason = "foo";
    o.name = "foo";
    o.state = "foo";
    o.studyConfig = buildGoogleCloudMlV1StudyConfig();
  }
  buildCounterGoogleCloudMlV1Study--;
  return o;
}

checkGoogleCloudMlV1Study(api.GoogleCloudMlV1Study o) {
  buildCounterGoogleCloudMlV1Study++;
  if (buildCounterGoogleCloudMlV1Study < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.inactiveReason, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkGoogleCloudMlV1StudyConfig(o.studyConfig);
  }
  buildCounterGoogleCloudMlV1Study--;
}

buildUnnamed3460() {
  var o = new core.List<api.GoogleCloudMlV1StudyConfigMetricSpec>();
  o.add(buildGoogleCloudMlV1StudyConfigMetricSpec());
  o.add(buildGoogleCloudMlV1StudyConfigMetricSpec());
  return o;
}

checkUnnamed3460(core.List<api.GoogleCloudMlV1StudyConfigMetricSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1StudyConfigMetricSpec(o[0]);
  checkGoogleCloudMlV1StudyConfigMetricSpec(o[1]);
}

buildUnnamed3461() {
  var o = new core.List<api.GoogleCloudMlV1StudyConfigParameterSpec>();
  o.add(buildGoogleCloudMlV1StudyConfigParameterSpec());
  o.add(buildGoogleCloudMlV1StudyConfigParameterSpec());
  return o;
}

checkUnnamed3461(core.List<api.GoogleCloudMlV1StudyConfigParameterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1StudyConfigParameterSpec(o[0]);
  checkGoogleCloudMlV1StudyConfigParameterSpec(o[1]);
}

core.int buildCounterGoogleCloudMlV1StudyConfig = 0;
buildGoogleCloudMlV1StudyConfig() {
  var o = new api.GoogleCloudMlV1StudyConfig();
  buildCounterGoogleCloudMlV1StudyConfig++;
  if (buildCounterGoogleCloudMlV1StudyConfig < 3) {
    o.algorithm = "foo";
    o.automatedStoppingConfig = buildGoogleCloudMlV1AutomatedStoppingConfig();
    o.metrics = buildUnnamed3460();
    o.parameters = buildUnnamed3461();
  }
  buildCounterGoogleCloudMlV1StudyConfig--;
  return o;
}

checkGoogleCloudMlV1StudyConfig(api.GoogleCloudMlV1StudyConfig o) {
  buildCounterGoogleCloudMlV1StudyConfig++;
  if (buildCounterGoogleCloudMlV1StudyConfig < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    checkGoogleCloudMlV1AutomatedStoppingConfig(o.automatedStoppingConfig);
    checkUnnamed3460(o.metrics);
    checkUnnamed3461(o.parameters);
  }
  buildCounterGoogleCloudMlV1StudyConfig--;
}

core.int buildCounterGoogleCloudMlV1SuggestTrialsMetadata = 0;
buildGoogleCloudMlV1SuggestTrialsMetadata() {
  var o = new api.GoogleCloudMlV1SuggestTrialsMetadata();
  buildCounterGoogleCloudMlV1SuggestTrialsMetadata++;
  if (buildCounterGoogleCloudMlV1SuggestTrialsMetadata < 3) {
    o.clientId = "foo";
    o.createTime = "foo";
    o.study = "foo";
    o.suggestionCount = 42;
  }
  buildCounterGoogleCloudMlV1SuggestTrialsMetadata--;
  return o;
}

checkGoogleCloudMlV1SuggestTrialsMetadata(
    api.GoogleCloudMlV1SuggestTrialsMetadata o) {
  buildCounterGoogleCloudMlV1SuggestTrialsMetadata++;
  if (buildCounterGoogleCloudMlV1SuggestTrialsMetadata < 3) {
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.study, unittest.equals('foo'));
    unittest.expect(o.suggestionCount, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1SuggestTrialsMetadata--;
}

core.int buildCounterGoogleCloudMlV1SuggestTrialsRequest = 0;
buildGoogleCloudMlV1SuggestTrialsRequest() {
  var o = new api.GoogleCloudMlV1SuggestTrialsRequest();
  buildCounterGoogleCloudMlV1SuggestTrialsRequest++;
  if (buildCounterGoogleCloudMlV1SuggestTrialsRequest < 3) {
    o.clientId = "foo";
    o.suggestionCount = 42;
  }
  buildCounterGoogleCloudMlV1SuggestTrialsRequest--;
  return o;
}

checkGoogleCloudMlV1SuggestTrialsRequest(
    api.GoogleCloudMlV1SuggestTrialsRequest o) {
  buildCounterGoogleCloudMlV1SuggestTrialsRequest++;
  if (buildCounterGoogleCloudMlV1SuggestTrialsRequest < 3) {
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.suggestionCount, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1SuggestTrialsRequest--;
}

buildUnnamed3462() {
  var o = new core.List<api.GoogleCloudMlV1Trial>();
  o.add(buildGoogleCloudMlV1Trial());
  o.add(buildGoogleCloudMlV1Trial());
  return o;
}

checkUnnamed3462(core.List<api.GoogleCloudMlV1Trial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Trial(o[0]);
  checkGoogleCloudMlV1Trial(o[1]);
}

core.int buildCounterGoogleCloudMlV1SuggestTrialsResponse = 0;
buildGoogleCloudMlV1SuggestTrialsResponse() {
  var o = new api.GoogleCloudMlV1SuggestTrialsResponse();
  buildCounterGoogleCloudMlV1SuggestTrialsResponse++;
  if (buildCounterGoogleCloudMlV1SuggestTrialsResponse < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
    o.studyState = "foo";
    o.trials = buildUnnamed3462();
  }
  buildCounterGoogleCloudMlV1SuggestTrialsResponse--;
  return o;
}

checkGoogleCloudMlV1SuggestTrialsResponse(
    api.GoogleCloudMlV1SuggestTrialsResponse o) {
  buildCounterGoogleCloudMlV1SuggestTrialsResponse++;
  if (buildCounterGoogleCloudMlV1SuggestTrialsResponse < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.studyState, unittest.equals('foo'));
    checkUnnamed3462(o.trials);
  }
  buildCounterGoogleCloudMlV1SuggestTrialsResponse--;
}

buildUnnamed3463() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3463(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3464() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3464(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1TrainingInput = 0;
buildGoogleCloudMlV1TrainingInput() {
  var o = new api.GoogleCloudMlV1TrainingInput();
  buildCounterGoogleCloudMlV1TrainingInput++;
  if (buildCounterGoogleCloudMlV1TrainingInput < 3) {
    o.args = buildUnnamed3463();
    o.encryptionConfig = buildGoogleCloudMlV1EncryptionConfig();
    o.evaluatorConfig = buildGoogleCloudMlV1ReplicaConfig();
    o.evaluatorCount = "foo";
    o.evaluatorType = "foo";
    o.hyperparameters = buildGoogleCloudMlV1HyperparameterSpec();
    o.jobDir = "foo";
    o.masterConfig = buildGoogleCloudMlV1ReplicaConfig();
    o.masterType = "foo";
    o.network = "foo";
    o.packageUris = buildUnnamed3464();
    o.parameterServerConfig = buildGoogleCloudMlV1ReplicaConfig();
    o.parameterServerCount = "foo";
    o.parameterServerType = "foo";
    o.pythonModule = "foo";
    o.pythonVersion = "foo";
    o.region = "foo";
    o.runtimeVersion = "foo";
    o.scaleTier = "foo";
    o.scheduling = buildGoogleCloudMlV1Scheduling();
    o.serviceAccount = "foo";
    o.useChiefInTfConfig = true;
    o.workerConfig = buildGoogleCloudMlV1ReplicaConfig();
    o.workerCount = "foo";
    o.workerType = "foo";
  }
  buildCounterGoogleCloudMlV1TrainingInput--;
  return o;
}

checkGoogleCloudMlV1TrainingInput(api.GoogleCloudMlV1TrainingInput o) {
  buildCounterGoogleCloudMlV1TrainingInput++;
  if (buildCounterGoogleCloudMlV1TrainingInput < 3) {
    checkUnnamed3463(o.args);
    checkGoogleCloudMlV1EncryptionConfig(o.encryptionConfig);
    checkGoogleCloudMlV1ReplicaConfig(o.evaluatorConfig);
    unittest.expect(o.evaluatorCount, unittest.equals('foo'));
    unittest.expect(o.evaluatorType, unittest.equals('foo'));
    checkGoogleCloudMlV1HyperparameterSpec(o.hyperparameters);
    unittest.expect(o.jobDir, unittest.equals('foo'));
    checkGoogleCloudMlV1ReplicaConfig(o.masterConfig);
    unittest.expect(o.masterType, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    checkUnnamed3464(o.packageUris);
    checkGoogleCloudMlV1ReplicaConfig(o.parameterServerConfig);
    unittest.expect(o.parameterServerCount, unittest.equals('foo'));
    unittest.expect(o.parameterServerType, unittest.equals('foo'));
    unittest.expect(o.pythonModule, unittest.equals('foo'));
    unittest.expect(o.pythonVersion, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.runtimeVersion, unittest.equals('foo'));
    unittest.expect(o.scaleTier, unittest.equals('foo'));
    checkGoogleCloudMlV1Scheduling(o.scheduling);
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    unittest.expect(o.useChiefInTfConfig, unittest.isTrue);
    checkGoogleCloudMlV1ReplicaConfig(o.workerConfig);
    unittest.expect(o.workerCount, unittest.equals('foo'));
    unittest.expect(o.workerType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1TrainingInput--;
}

buildUnnamed3465() {
  var o = new core.List<api.GoogleCloudMlV1HyperparameterOutput>();
  o.add(buildGoogleCloudMlV1HyperparameterOutput());
  o.add(buildGoogleCloudMlV1HyperparameterOutput());
  return o;
}

checkUnnamed3465(core.List<api.GoogleCloudMlV1HyperparameterOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1HyperparameterOutput(o[0]);
  checkGoogleCloudMlV1HyperparameterOutput(o[1]);
}

core.int buildCounterGoogleCloudMlV1TrainingOutput = 0;
buildGoogleCloudMlV1TrainingOutput() {
  var o = new api.GoogleCloudMlV1TrainingOutput();
  buildCounterGoogleCloudMlV1TrainingOutput++;
  if (buildCounterGoogleCloudMlV1TrainingOutput < 3) {
    o.builtInAlgorithmOutput = buildGoogleCloudMlV1BuiltInAlgorithmOutput();
    o.completedTrialCount = "foo";
    o.consumedMLUnits = 42.0;
    o.hyperparameterMetricTag = "foo";
    o.isBuiltInAlgorithmJob = true;
    o.isHyperparameterTuningJob = true;
    o.trials = buildUnnamed3465();
  }
  buildCounterGoogleCloudMlV1TrainingOutput--;
  return o;
}

checkGoogleCloudMlV1TrainingOutput(api.GoogleCloudMlV1TrainingOutput o) {
  buildCounterGoogleCloudMlV1TrainingOutput++;
  if (buildCounterGoogleCloudMlV1TrainingOutput < 3) {
    checkGoogleCloudMlV1BuiltInAlgorithmOutput(o.builtInAlgorithmOutput);
    unittest.expect(o.completedTrialCount, unittest.equals('foo'));
    unittest.expect(o.consumedMLUnits, unittest.equals(42.0));
    unittest.expect(o.hyperparameterMetricTag, unittest.equals('foo'));
    unittest.expect(o.isBuiltInAlgorithmJob, unittest.isTrue);
    unittest.expect(o.isHyperparameterTuningJob, unittest.isTrue);
    checkUnnamed3465(o.trials);
  }
  buildCounterGoogleCloudMlV1TrainingOutput--;
}

buildUnnamed3466() {
  var o = new core.List<api.GoogleCloudMlV1Measurement>();
  o.add(buildGoogleCloudMlV1Measurement());
  o.add(buildGoogleCloudMlV1Measurement());
  return o;
}

checkUnnamed3466(core.List<api.GoogleCloudMlV1Measurement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Measurement(o[0]);
  checkGoogleCloudMlV1Measurement(o[1]);
}

buildUnnamed3467() {
  var o = new core.List<api.GoogleCloudMlV1TrialParameter>();
  o.add(buildGoogleCloudMlV1TrialParameter());
  o.add(buildGoogleCloudMlV1TrialParameter());
  return o;
}

checkUnnamed3467(core.List<api.GoogleCloudMlV1TrialParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1TrialParameter(o[0]);
  checkGoogleCloudMlV1TrialParameter(o[1]);
}

core.int buildCounterGoogleCloudMlV1Trial = 0;
buildGoogleCloudMlV1Trial() {
  var o = new api.GoogleCloudMlV1Trial();
  buildCounterGoogleCloudMlV1Trial++;
  if (buildCounterGoogleCloudMlV1Trial < 3) {
    o.clientId = "foo";
    o.endTime = "foo";
    o.finalMeasurement = buildGoogleCloudMlV1Measurement();
    o.infeasibleReason = "foo";
    o.measurements = buildUnnamed3466();
    o.name = "foo";
    o.parameters = buildUnnamed3467();
    o.startTime = "foo";
    o.state = "foo";
    o.trialInfeasible = true;
  }
  buildCounterGoogleCloudMlV1Trial--;
  return o;
}

checkGoogleCloudMlV1Trial(api.GoogleCloudMlV1Trial o) {
  buildCounterGoogleCloudMlV1Trial++;
  if (buildCounterGoogleCloudMlV1Trial < 3) {
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkGoogleCloudMlV1Measurement(o.finalMeasurement);
    unittest.expect(o.infeasibleReason, unittest.equals('foo'));
    checkUnnamed3466(o.measurements);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3467(o.parameters);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.trialInfeasible, unittest.isTrue);
  }
  buildCounterGoogleCloudMlV1Trial--;
}

buildUnnamed3468() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3468(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
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

core.int buildCounterGoogleCloudMlV1Version = 0;
buildGoogleCloudMlV1Version() {
  var o = new api.GoogleCloudMlV1Version();
  buildCounterGoogleCloudMlV1Version++;
  if (buildCounterGoogleCloudMlV1Version < 3) {
    o.acceleratorConfig = buildGoogleCloudMlV1AcceleratorConfig();
    o.autoScaling = buildGoogleCloudMlV1AutoScaling();
    o.container = buildGoogleCloudMlV1ContainerSpec();
    o.createTime = "foo";
    o.deploymentUri = "foo";
    o.description = "foo";
    o.errorMessage = "foo";
    o.etag = "foo";
    o.explanationConfig = buildGoogleCloudMlV1ExplanationConfig();
    o.framework = "foo";
    o.isDefault = true;
    o.labels = buildUnnamed3468();
    o.lastUseTime = "foo";
    o.machineType = "foo";
    o.manualScaling = buildGoogleCloudMlV1ManualScaling();
    o.name = "foo";
    o.packageUris = buildUnnamed3469();
    o.predictionClass = "foo";
    o.pythonVersion = "foo";
    o.requestLoggingConfig = buildGoogleCloudMlV1RequestLoggingConfig();
    o.routes = buildGoogleCloudMlV1RouteMap();
    o.runtimeVersion = "foo";
    o.serviceAccount = "foo";
    o.state = "foo";
  }
  buildCounterGoogleCloudMlV1Version--;
  return o;
}

checkGoogleCloudMlV1Version(api.GoogleCloudMlV1Version o) {
  buildCounterGoogleCloudMlV1Version++;
  if (buildCounterGoogleCloudMlV1Version < 3) {
    checkGoogleCloudMlV1AcceleratorConfig(o.acceleratorConfig);
    checkGoogleCloudMlV1AutoScaling(o.autoScaling);
    checkGoogleCloudMlV1ContainerSpec(o.container);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.deploymentUri, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkGoogleCloudMlV1ExplanationConfig(o.explanationConfig);
    unittest.expect(o.framework, unittest.equals('foo'));
    unittest.expect(o.isDefault, unittest.isTrue);
    checkUnnamed3468(o.labels);
    unittest.expect(o.lastUseTime, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkGoogleCloudMlV1ManualScaling(o.manualScaling);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3469(o.packageUris);
    unittest.expect(o.predictionClass, unittest.equals('foo'));
    unittest.expect(o.pythonVersion, unittest.equals('foo'));
    checkGoogleCloudMlV1RequestLoggingConfig(o.requestLoggingConfig);
    checkGoogleCloudMlV1RouteMap(o.routes);
    unittest.expect(o.runtimeVersion, unittest.equals('foo'));
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Version--;
}

core.int buildCounterGoogleCloudMlV1XraiAttribution = 0;
buildGoogleCloudMlV1XraiAttribution() {
  var o = new api.GoogleCloudMlV1XraiAttribution();
  buildCounterGoogleCloudMlV1XraiAttribution++;
  if (buildCounterGoogleCloudMlV1XraiAttribution < 3) {
    o.numIntegralSteps = 42;
  }
  buildCounterGoogleCloudMlV1XraiAttribution--;
  return o;
}

checkGoogleCloudMlV1XraiAttribution(api.GoogleCloudMlV1XraiAttribution o) {
  buildCounterGoogleCloudMlV1XraiAttribution++;
  if (buildCounterGoogleCloudMlV1XraiAttribution < 3) {
    unittest.expect(o.numIntegralSteps, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1XraiAttribution--;
}

buildUnnamed3470() {
  var o = new core.List<api.GoogleIamV1AuditLogConfig>();
  o.add(buildGoogleIamV1AuditLogConfig());
  o.add(buildGoogleIamV1AuditLogConfig());
  return o;
}

checkUnnamed3470(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
buildGoogleIamV1AuditConfig() {
  var o = new api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed3470();
    o.service = "foo";
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed3470(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
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

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
buildGoogleIamV1AuditLogConfig() {
  var o = new api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed3471();
    o.logType = "foo";
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed3471(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

buildUnnamed3472() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3472(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
buildGoogleIamV1Binding() {
  var o = new api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.bindingId = "foo";
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed3472();
    o.role = "foo";
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    unittest.expect(o.bindingId, unittest.equals('foo'));
    checkGoogleTypeExpr(o.condition);
    checkUnnamed3472(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

buildUnnamed3473() {
  var o = new core.List<api.GoogleIamV1AuditConfig>();
  o.add(buildGoogleIamV1AuditConfig());
  o.add(buildGoogleIamV1AuditConfig());
  return o;
}

checkUnnamed3473(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

buildUnnamed3474() {
  var o = new core.List<api.GoogleIamV1Binding>();
  o.add(buildGoogleIamV1Binding());
  o.add(buildGoogleIamV1Binding());
  return o;
}

checkUnnamed3474(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
buildGoogleIamV1Policy() {
  var o = new api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed3473();
    o.bindings = buildUnnamed3474();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed3473(o.auditConfigs);
    checkUnnamed3474(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.int buildCounterGoogleIamV1SetIamPolicyRequest = 0;
buildGoogleIamV1SetIamPolicyRequest() {
  var o = new api.GoogleIamV1SetIamPolicyRequest();
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    o.policy = buildGoogleIamV1Policy();
    o.updateMask = "foo";
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
  return o;
}

checkGoogleIamV1SetIamPolicyRequest(api.GoogleIamV1SetIamPolicyRequest o) {
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    checkGoogleIamV1Policy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
}

buildUnnamed3475() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3475(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsRequest = 0;
buildGoogleIamV1TestIamPermissionsRequest() {
  var o = new api.GoogleIamV1TestIamPermissionsRequest();
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed3475();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

checkGoogleIamV1TestIamPermissionsRequest(
    api.GoogleIamV1TestIamPermissionsRequest o) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed3475(o.permissions);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

buildUnnamed3476() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3476(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsResponse = 0;
buildGoogleIamV1TestIamPermissionsResponse() {
  var o = new api.GoogleIamV1TestIamPermissionsResponse();
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed3476();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

checkGoogleIamV1TestIamPermissionsResponse(
    api.GoogleIamV1TestIamPermissionsResponse o) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed3476(o.permissions);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
}

buildUnnamed3477() {
  var o = new core.List<api.GoogleLongrunningOperation>();
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

checkUnnamed3477(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
buildGoogleLongrunningListOperationsResponse() {
  var o = new api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed3477();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3477(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

buildUnnamed3478() {
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

checkUnnamed3478(core.Map<core.String, core.Object> o) {
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

buildUnnamed3479() {
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

checkUnnamed3479(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed3478();
    o.name = "foo";
    o.response = buildUnnamed3479();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed3478(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3479(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
buildGoogleProtobufEmpty() {
  var o = new api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

buildUnnamed3480() {
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

checkUnnamed3480(core.Map<core.String, core.Object> o) {
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

buildUnnamed3481() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3480());
  o.add(buildUnnamed3480());
  return o;
}

checkUnnamed3481(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3480(o[0]);
  checkUnnamed3480(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3481();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3481(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeExpr = 0;
buildGoogleTypeExpr() {
  var o = new api.GoogleTypeExpr();
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterGoogleTypeExpr--;
  return o;
}

checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleTypeExpr--;
}

main() {
  unittest.group("obj-schema-GoogleApiHttpBody", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleApiHttpBody();
      var od = new api.GoogleApiHttpBody.fromJson(o.toJson());
      checkGoogleApiHttpBody(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig();
      var od = new api
              .GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig.fromJson(
          o.toJson());
      checkGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig();
      var od = new api
              .GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig.fromJson(
          o.toJson());
      checkGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1HyperparameterOutputHyperparameterMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric();
      var od = new api
              .GoogleCloudMlV1HyperparameterOutputHyperparameterMetric.fromJson(
          o.toJson());
      checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1MeasurementMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1MeasurementMetric();
      var od = new api.GoogleCloudMlV1MeasurementMetric.fromJson(o.toJson());
      checkGoogleCloudMlV1MeasurementMetric(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec();
      var od = new api
              .GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec.fromJson(
          o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec();
      var od = new api
              .GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec.fromJson(
          o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec();
      var od = new api
              .GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec.fromJson(
          o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec();
      var od = new api
              .GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec.fromJson(
          o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec();
      var od = new api
              .GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec.fromJson(
          o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec();
      var od = new api
              .GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec.fromJson(
          o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec();
      var od = new api
              .GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec.fromJson(
          o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec(
          od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1StudyConfigMetricSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StudyConfigMetricSpec();
      var od =
          new api.GoogleCloudMlV1StudyConfigMetricSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1StudyConfigMetricSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1StudyConfigParameterSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StudyConfigParameterSpec();
      var od =
          new api.GoogleCloudMlV1StudyConfigParameterSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1TrialParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1TrialParameter();
      var od = new api.GoogleCloudMlV1TrialParameter.fromJson(o.toJson());
      checkGoogleCloudMlV1TrialParameter(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1AcceleratorConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1AcceleratorConfig();
      var od = new api.GoogleCloudMlV1AcceleratorConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1AcceleratorConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1AddTrialMeasurementRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1AddTrialMeasurementRequest();
      var od = new api.GoogleCloudMlV1AddTrialMeasurementRequest.fromJson(
          o.toJson());
      checkGoogleCloudMlV1AddTrialMeasurementRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1AutoScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1AutoScaling();
      var od = new api.GoogleCloudMlV1AutoScaling.fromJson(o.toJson());
      checkGoogleCloudMlV1AutoScaling(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1AutomatedStoppingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1AutomatedStoppingConfig();
      var od =
          new api.GoogleCloudMlV1AutomatedStoppingConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1AutomatedStoppingConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1BuiltInAlgorithmOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1BuiltInAlgorithmOutput();
      var od =
          new api.GoogleCloudMlV1BuiltInAlgorithmOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1BuiltInAlgorithmOutput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1CancelJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1CancelJobRequest();
      var od = new api.GoogleCloudMlV1CancelJobRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1CancelJobRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Capability", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Capability();
      var od = new api.GoogleCloudMlV1Capability.fromJson(o.toJson());
      checkGoogleCloudMlV1Capability(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata();
      var od =
          new api.GoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata.fromJson(
              o.toJson());
      checkGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest();
      var od =
          new api.GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest.fromJson(
              o.toJson());
      checkGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1CheckTrialEarlyStoppingStateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse();
      var od =
          new api.GoogleCloudMlV1CheckTrialEarlyStoppingStateResponse.fromJson(
              o.toJson());
      checkGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1CompleteTrialRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1CompleteTrialRequest();
      var od = new api.GoogleCloudMlV1CompleteTrialRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1CompleteTrialRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Config", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Config();
      var od = new api.GoogleCloudMlV1Config.fromJson(o.toJson());
      checkGoogleCloudMlV1Config(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ContainerPort", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ContainerPort();
      var od = new api.GoogleCloudMlV1ContainerPort.fromJson(o.toJson());
      checkGoogleCloudMlV1ContainerPort(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ContainerSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ContainerSpec();
      var od = new api.GoogleCloudMlV1ContainerSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1ContainerSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1EncryptionConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1EncryptionConfig();
      var od = new api.GoogleCloudMlV1EncryptionConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1EncryptionConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1EnvVar", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1EnvVar();
      var od = new api.GoogleCloudMlV1EnvVar.fromJson(o.toJson());
      checkGoogleCloudMlV1EnvVar(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ExplainRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ExplainRequest();
      var od = new api.GoogleCloudMlV1ExplainRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1ExplainRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ExplanationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ExplanationConfig();
      var od = new api.GoogleCloudMlV1ExplanationConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1ExplanationConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1GetConfigResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1GetConfigResponse();
      var od = new api.GoogleCloudMlV1GetConfigResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1GetConfigResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1HyperparameterOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1HyperparameterOutput();
      var od = new api.GoogleCloudMlV1HyperparameterOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1HyperparameterOutput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1HyperparameterSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1HyperparameterSpec();
      var od = new api.GoogleCloudMlV1HyperparameterSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1HyperparameterSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1IntegratedGradientsAttribution",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1IntegratedGradientsAttribution();
      var od = new api.GoogleCloudMlV1IntegratedGradientsAttribution.fromJson(
          o.toJson());
      checkGoogleCloudMlV1IntegratedGradientsAttribution(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Job();
      var od = new api.GoogleCloudMlV1Job.fromJson(o.toJson());
      checkGoogleCloudMlV1Job(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ListJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListJobsResponse();
      var od = new api.GoogleCloudMlV1ListJobsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListJobsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListLocationsResponse();
      var od =
          new api.GoogleCloudMlV1ListLocationsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ListModelsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListModelsResponse();
      var od = new api.GoogleCloudMlV1ListModelsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListModelsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ListStudiesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListStudiesResponse();
      var od = new api.GoogleCloudMlV1ListStudiesResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListStudiesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ListTrialsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListTrialsResponse();
      var od = new api.GoogleCloudMlV1ListTrialsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListTrialsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ListVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListVersionsResponse();
      var od = new api.GoogleCloudMlV1ListVersionsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListVersionsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Location();
      var od = new api.GoogleCloudMlV1Location.fromJson(o.toJson());
      checkGoogleCloudMlV1Location(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ManualScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ManualScaling();
      var od = new api.GoogleCloudMlV1ManualScaling.fromJson(o.toJson());
      checkGoogleCloudMlV1ManualScaling(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Measurement", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Measurement();
      var od = new api.GoogleCloudMlV1Measurement.fromJson(o.toJson());
      checkGoogleCloudMlV1Measurement(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Model", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Model();
      var od = new api.GoogleCloudMlV1Model.fromJson(o.toJson());
      checkGoogleCloudMlV1Model(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1OperationMetadata();
      var od = new api.GoogleCloudMlV1OperationMetadata.fromJson(o.toJson());
      checkGoogleCloudMlV1OperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ParameterSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ParameterSpec();
      var od = new api.GoogleCloudMlV1ParameterSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1ParameterSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1PredictRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1PredictRequest();
      var od = new api.GoogleCloudMlV1PredictRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1PredictRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1PredictionInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1PredictionInput();
      var od = new api.GoogleCloudMlV1PredictionInput.fromJson(o.toJson());
      checkGoogleCloudMlV1PredictionInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1PredictionOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1PredictionOutput();
      var od = new api.GoogleCloudMlV1PredictionOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1PredictionOutput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ReplicaConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ReplicaConfig();
      var od = new api.GoogleCloudMlV1ReplicaConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1ReplicaConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1RequestLoggingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1RequestLoggingConfig();
      var od = new api.GoogleCloudMlV1RequestLoggingConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1RequestLoggingConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1RouteMap", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1RouteMap();
      var od = new api.GoogleCloudMlV1RouteMap.fromJson(o.toJson());
      checkGoogleCloudMlV1RouteMap(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1SampledShapleyAttribution", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1SampledShapleyAttribution();
      var od =
          new api.GoogleCloudMlV1SampledShapleyAttribution.fromJson(o.toJson());
      checkGoogleCloudMlV1SampledShapleyAttribution(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Scheduling", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Scheduling();
      var od = new api.GoogleCloudMlV1Scheduling.fromJson(o.toJson());
      checkGoogleCloudMlV1Scheduling(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1SetDefaultVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1SetDefaultVersionRequest();
      var od =
          new api.GoogleCloudMlV1SetDefaultVersionRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1SetDefaultVersionRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1StopTrialRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StopTrialRequest();
      var od = new api.GoogleCloudMlV1StopTrialRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1StopTrialRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Study", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Study();
      var od = new api.GoogleCloudMlV1Study.fromJson(o.toJson());
      checkGoogleCloudMlV1Study(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1StudyConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StudyConfig();
      var od = new api.GoogleCloudMlV1StudyConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1StudyConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1SuggestTrialsMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1SuggestTrialsMetadata();
      var od =
          new api.GoogleCloudMlV1SuggestTrialsMetadata.fromJson(o.toJson());
      checkGoogleCloudMlV1SuggestTrialsMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1SuggestTrialsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1SuggestTrialsRequest();
      var od = new api.GoogleCloudMlV1SuggestTrialsRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1SuggestTrialsRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1SuggestTrialsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1SuggestTrialsResponse();
      var od =
          new api.GoogleCloudMlV1SuggestTrialsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1SuggestTrialsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1TrainingInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1TrainingInput();
      var od = new api.GoogleCloudMlV1TrainingInput.fromJson(o.toJson());
      checkGoogleCloudMlV1TrainingInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1TrainingOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1TrainingOutput();
      var od = new api.GoogleCloudMlV1TrainingOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1TrainingOutput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Trial", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Trial();
      var od = new api.GoogleCloudMlV1Trial.fromJson(o.toJson());
      checkGoogleCloudMlV1Trial(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Version();
      var od = new api.GoogleCloudMlV1Version.fromJson(o.toJson());
      checkGoogleCloudMlV1Version(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1XraiAttribution", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1XraiAttribution();
      var od = new api.GoogleCloudMlV1XraiAttribution.fromJson(o.toJson());
      checkGoogleCloudMlV1XraiAttribution(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1AuditConfig();
      var od = new api.GoogleIamV1AuditConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1AuditLogConfig();
      var od = new api.GoogleIamV1AuditLogConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1Binding();
      var od = new api.GoogleIamV1Binding.fromJson(o.toJson());
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1Policy();
      var od = new api.GoogleIamV1Policy.fromJson(o.toJson());
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1SetIamPolicyRequest();
      var od = new api.GoogleIamV1SetIamPolicyRequest.fromJson(o.toJson());
      checkGoogleIamV1SetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1TestIamPermissionsRequest();
      var od =
          new api.GoogleIamV1TestIamPermissionsRequest.fromJson(o.toJson());
      checkGoogleIamV1TestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1TestIamPermissionsResponse();
      var od =
          new api.GoogleIamV1TestIamPermissionsResponse.fromJson(o.toJson());
      checkGoogleIamV1TestIamPermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od =
          new api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = new api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group("obj-schema-GoogleProtobufEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleProtobufEmpty();
      var od = new api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group("obj-schema-GoogleRpcStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleRpcStatus();
      var od = new api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeExpr", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeExpr();
      var od = new api.GoogleTypeExpr.fromJson(o.toJson());
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--explain", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.MlApi(mock).projects;
      var arg_request = buildGoogleCloudMlV1ExplainRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1ExplainRequest.fromJson(json);
        checkGoogleCloudMlV1ExplainRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .explain(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response);
      })));
    });

    unittest.test("method--getConfig", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.MlApi(mock).projects;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1GetConfigResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getConfig(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1GetConfigResponse(response);
      })));
    });

    unittest.test("method--predict", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.MlApi(mock).projects;
      var arg_request = buildGoogleCloudMlV1PredictRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1PredictRequest.fromJson(json);
        checkGoogleCloudMlV1PredictRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .predict(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response);
      })));
    });
  });

  unittest.group("resource-ProjectsJobsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleCloudMlV1CancelJobRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1CancelJobRequest.fromJson(json);
        checkGoogleCloudMlV1CancelJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleCloudMlV1Job();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1Job.fromJson(json);
        checkGoogleCloudMlV1Job(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Job());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Job(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Job());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Job(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleIamV1Policy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1Policy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_parent = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1ListJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1ListJobsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleCloudMlV1Job();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1Job.fromJson(json);
        checkGoogleCloudMlV1Job(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Job());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Job(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleIamV1SetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleIamV1SetIamPolicyRequest.fromJson(json);
        checkGoogleIamV1SetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleIamV1Policy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1Policy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleIamV1TestIamPermissionsRequest.fromJson(json);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1TestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.MlApi(mock).projects.locations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Location());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Location(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.MlApi(mock).projects.locations;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudMlV1ListLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1ListLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.MlApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          new api.MlApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsStudiesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesResourceApi res =
          new api.MlApi(mock).projects.locations.studies;
      var arg_request = buildGoogleCloudMlV1Study();
      var arg_parent = "foo";
      var arg_studyId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1Study.fromJson(json);
        checkGoogleCloudMlV1Study(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
            queryMap["studyId"].first, unittest.equals(arg_studyId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Study());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              studyId: arg_studyId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Study(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesResourceApi res =
          new api.MlApi(mock).projects.locations.studies;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesResourceApi res =
          new api.MlApi(mock).projects.locations.studies;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Study());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Study(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesResourceApi res =
          new api.MlApi(mock).projects.locations.studies;
      var arg_parent = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp =
            convert.json.encode(buildGoogleCloudMlV1ListStudiesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1ListStudiesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsStudiesTrialsResourceApi", () {
    unittest.test("method--addMeasurement", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          new api.MlApi(mock).projects.locations.studies.trials;
      var arg_request = buildGoogleCloudMlV1AddTrialMeasurementRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudMlV1AddTrialMeasurementRequest.fromJson(json);
        checkGoogleCloudMlV1AddTrialMeasurementRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Trial());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addMeasurement(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Trial(response);
      })));
    });

    unittest.test("method--checkEarlyStoppingState", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          new api.MlApi(mock).projects.locations.studies.trials;
      var arg_request =
          buildGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest.fromJson(
                json);
        checkGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .checkEarlyStoppingState(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--complete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          new api.MlApi(mock).projects.locations.studies.trials;
      var arg_request = buildGoogleCloudMlV1CompleteTrialRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1CompleteTrialRequest.fromJson(json);
        checkGoogleCloudMlV1CompleteTrialRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Trial());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .complete(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Trial(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          new api.MlApi(mock).projects.locations.studies.trials;
      var arg_request = buildGoogleCloudMlV1Trial();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1Trial.fromJson(json);
        checkGoogleCloudMlV1Trial(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Trial());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Trial(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          new api.MlApi(mock).projects.locations.studies.trials;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          new api.MlApi(mock).projects.locations.studies.trials;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Trial());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Trial(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          new api.MlApi(mock).projects.locations.studies.trials;
      var arg_parent = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp =
            convert.json.encode(buildGoogleCloudMlV1ListTrialsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1ListTrialsResponse(response);
      })));
    });

    unittest.test("method--stop", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          new api.MlApi(mock).projects.locations.studies.trials;
      var arg_request = buildGoogleCloudMlV1StopTrialRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1StopTrialRequest.fromJson(json);
        checkGoogleCloudMlV1StopTrialRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Trial());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Trial(response);
      })));
    });

    unittest.test("method--suggest", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          new api.MlApi(mock).projects.locations.studies.trials;
      var arg_request = buildGoogleCloudMlV1SuggestTrialsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1SuggestTrialsRequest.fromJson(json);
        checkGoogleCloudMlV1SuggestTrialsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .suggest(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsModelsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_request = buildGoogleCloudMlV1Model();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1Model.fromJson(json);
        checkGoogleCloudMlV1Model(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Model());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Model(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Model());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Model(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
            core.int.parse(queryMap["options.requestedPolicyVersion"].first),
            unittest.equals(arg_options_requestedPolicyVersion));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleIamV1Policy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_resource,
              options_requestedPolicyVersion:
                  arg_options_requestedPolicyVersion,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1Policy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudMlV1ListModelsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1ListModelsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_request = buildGoogleCloudMlV1Model();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1Model.fromJson(json);
        checkGoogleCloudMlV1Model(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_request = buildGoogleIamV1SetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleIamV1SetIamPolicyRequest.fromJson(json);
        checkGoogleIamV1SetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleIamV1Policy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1Policy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleIamV1TestIamPermissionsRequest.fromJson(json);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1TestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsModelsVersionsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res =
          new api.MlApi(mock).projects.models.versions;
      var arg_request = buildGoogleCloudMlV1Version();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1Version.fromJson(json);
        checkGoogleCloudMlV1Version(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res =
          new api.MlApi(mock).projects.models.versions;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res =
          new api.MlApi(mock).projects.models.versions;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Version());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Version(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res =
          new api.MlApi(mock).projects.models.versions;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_pageToken = "foo";
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudMlV1ListVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              filter: arg_filter,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1ListVersionsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res =
          new api.MlApi(mock).projects.models.versions;
      var arg_request = buildGoogleCloudMlV1Version();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1Version.fromJson(json);
        checkGoogleCloudMlV1Version(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--setDefault", () {
      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res =
          new api.MlApi(mock).projects.models.versions;
      var arg_request = buildGoogleCloudMlV1SetDefaultVersionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.GoogleCloudMlV1SetDefaultVersionRequest.fromJson(json);
        checkGoogleCloudMlV1SetDefaultVersionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleCloudMlV1Version());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setDefault(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Version(response);
      })));
    });
  });

  unittest.group("resource-ProjectsOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.MlApi(mock).projects.operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.MlApi(mock).projects.operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          new api.MlApi(mock).projects.operations;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
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
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });
}
