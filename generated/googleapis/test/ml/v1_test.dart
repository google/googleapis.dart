// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

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

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.Map<core.String, core.Object> buildUnnamed5545() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed5545(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed5546() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5545());
  o.add(buildUnnamed5545());
  return o;
}

void checkUnnamed5546(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5545(o[0]);
  checkUnnamed5545(o[1]);
}

core.int buildCounterGoogleApiHttpBody = 0;
api.GoogleApiHttpBody buildGoogleApiHttpBody() {
  var o = api.GoogleApiHttpBody();
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    o.contentType = "foo";
    o.data = "foo";
    o.extensions = buildUnnamed5546();
  }
  buildCounterGoogleApiHttpBody--;
  return o;
}

void checkGoogleApiHttpBody(api.GoogleApiHttpBody o) {
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    checkUnnamed5546(o.extensions);
  }
  buildCounterGoogleApiHttpBody--;
}

core.int
    buildCounterGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig =
    0;
api.GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig
    buildGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig() {
  var o = api
      .GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig();
  buildCounterGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig++;
  if (buildCounterGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig <
      3) {
    o.useElapsedTime = true;
  }
  buildCounterGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig--;
  return o;
}

void checkGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig(
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
api.GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig
    buildGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig() {
  var o =
      api.GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig();
  buildCounterGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig++;
  if (buildCounterGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig <
      3) {
    o.useElapsedTime = true;
  }
  buildCounterGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig--;
  return o;
}

void checkGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig(
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
api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric
    buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric() {
  var o = api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric();
  buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric++;
  if (buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric < 3) {
    o.objectiveValue = 42.0;
    o.trainingStep = "foo";
  }
  buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric--;
  return o;
}

void checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(
    api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric o) {
  buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric++;
  if (buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric < 3) {
    unittest.expect(o.objectiveValue, unittest.equals(42.0));
    unittest.expect(o.trainingStep, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1HyperparameterOutputHyperparameterMetric--;
}

core.int buildCounterGoogleCloudMlV1MeasurementMetric = 0;
api.GoogleCloudMlV1MeasurementMetric buildGoogleCloudMlV1MeasurementMetric() {
  var o = api.GoogleCloudMlV1MeasurementMetric();
  buildCounterGoogleCloudMlV1MeasurementMetric++;
  if (buildCounterGoogleCloudMlV1MeasurementMetric < 3) {
    o.metric = "foo";
    o.value = 42.0;
  }
  buildCounterGoogleCloudMlV1MeasurementMetric--;
  return o;
}

void checkGoogleCloudMlV1MeasurementMetric(
    api.GoogleCloudMlV1MeasurementMetric o) {
  buildCounterGoogleCloudMlV1MeasurementMetric++;
  if (buildCounterGoogleCloudMlV1MeasurementMetric < 3) {
    unittest.expect(o.metric, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterGoogleCloudMlV1MeasurementMetric--;
}

core.List<core.String> buildUnnamed5547() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5547(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec = 0;
api.GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec
    buildGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec() {
  var o = api.GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec <
      3) {
    o.values = buildUnnamed5547();
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec--;
  return o;
}

void checkGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec <
      3) {
    checkUnnamed5547(o.values);
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec--;
}

core.List<core.double> buildUnnamed5548() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed5548(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec =
    0;
api.GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec
    buildGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec() {
  var o = api.GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec <
      3) {
    o.values = buildUnnamed5548();
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec--;
  return o;
}

void checkGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec <
      3) {
    checkUnnamed5548(o.values);
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec--;
}

core.int buildCounterGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec = 0;
api.GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec
    buildGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec() {
  var o = api.GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec < 3) {
    o.maxValue = 42.0;
    o.minValue = 42.0;
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec--;
  return o;
}

void checkGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec(
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
api.GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec
    buildGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec() {
  var o = api.GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec < 3) {
    o.maxValue = "foo";
    o.minValue = "foo";
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec--;
  return o;
}

void checkGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec < 3) {
    unittest.expect(o.maxValue, unittest.equals('foo'));
    unittest.expect(o.minValue, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec--;
}

core.List<core.String> buildUnnamed5549() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5549(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec =
    0;
api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec
    buildGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec() {
  var o = api
      .GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec <
      3) {
    o.values = buildUnnamed5549();
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec--;
  return o;
}

void checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec
        o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec <
      3) {
    checkUnnamed5549(o.values);
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec--;
}

core.List<core.double> buildUnnamed5550() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed5550(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int
    buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec =
    0;
api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec
    buildGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec() {
  var o = api
      .GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec <
      3) {
    o.values = buildUnnamed5550();
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec--;
  return o;
}

void checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec
        o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec <
      3) {
    checkUnnamed5550(o.values);
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec--;
}

core.List<core.String> buildUnnamed5551() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5551(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec =
    0;
api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec
    buildGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec() {
  var o =
      api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec <
      3) {
    o.values = buildUnnamed5551();
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec--;
  return o;
}

void checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec <
      3) {
    checkUnnamed5551(o.values);
  }
  buildCounterGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec--;
}

core.int buildCounterGoogleCloudMlV1StudyConfigMetricSpec = 0;
api.GoogleCloudMlV1StudyConfigMetricSpec
    buildGoogleCloudMlV1StudyConfigMetricSpec() {
  var o = api.GoogleCloudMlV1StudyConfigMetricSpec();
  buildCounterGoogleCloudMlV1StudyConfigMetricSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigMetricSpec < 3) {
    o.goal = "foo";
    o.metric = "foo";
  }
  buildCounterGoogleCloudMlV1StudyConfigMetricSpec--;
  return o;
}

void checkGoogleCloudMlV1StudyConfigMetricSpec(
    api.GoogleCloudMlV1StudyConfigMetricSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigMetricSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigMetricSpec < 3) {
    unittest.expect(o.goal, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1StudyConfigMetricSpec--;
}

core.List<api.GoogleCloudMlV1StudyConfigParameterSpec> buildUnnamed5552() {
  var o = <api.GoogleCloudMlV1StudyConfigParameterSpec>[];
  o.add(buildGoogleCloudMlV1StudyConfigParameterSpec());
  o.add(buildGoogleCloudMlV1StudyConfigParameterSpec());
  return o;
}

void checkUnnamed5552(
    core.List<api.GoogleCloudMlV1StudyConfigParameterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1StudyConfigParameterSpec(o[0]);
  checkGoogleCloudMlV1StudyConfigParameterSpec(o[1]);
}

core.int buildCounterGoogleCloudMlV1StudyConfigParameterSpec = 0;
api.GoogleCloudMlV1StudyConfigParameterSpec
    buildGoogleCloudMlV1StudyConfigParameterSpec() {
  var o = api.GoogleCloudMlV1StudyConfigParameterSpec();
  buildCounterGoogleCloudMlV1StudyConfigParameterSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpec < 3) {
    o.categoricalValueSpec =
        buildGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec();
    o.childParameterSpecs = buildUnnamed5552();
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

void checkGoogleCloudMlV1StudyConfigParameterSpec(
    api.GoogleCloudMlV1StudyConfigParameterSpec o) {
  buildCounterGoogleCloudMlV1StudyConfigParameterSpec++;
  if (buildCounterGoogleCloudMlV1StudyConfigParameterSpec < 3) {
    checkGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec(
        o.categoricalValueSpec);
    checkUnnamed5552(o.childParameterSpecs);
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
api.GoogleCloudMlV1TrialParameter buildGoogleCloudMlV1TrialParameter() {
  var o = api.GoogleCloudMlV1TrialParameter();
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

void checkGoogleCloudMlV1TrialParameter(api.GoogleCloudMlV1TrialParameter o) {
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
api.GoogleCloudMlV1AcceleratorConfig buildGoogleCloudMlV1AcceleratorConfig() {
  var o = api.GoogleCloudMlV1AcceleratorConfig();
  buildCounterGoogleCloudMlV1AcceleratorConfig++;
  if (buildCounterGoogleCloudMlV1AcceleratorConfig < 3) {
    o.count = "foo";
    o.type = "foo";
  }
  buildCounterGoogleCloudMlV1AcceleratorConfig--;
  return o;
}

void checkGoogleCloudMlV1AcceleratorConfig(
    api.GoogleCloudMlV1AcceleratorConfig o) {
  buildCounterGoogleCloudMlV1AcceleratorConfig++;
  if (buildCounterGoogleCloudMlV1AcceleratorConfig < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1AcceleratorConfig--;
}

core.int buildCounterGoogleCloudMlV1AddTrialMeasurementRequest = 0;
api.GoogleCloudMlV1AddTrialMeasurementRequest
    buildGoogleCloudMlV1AddTrialMeasurementRequest() {
  var o = api.GoogleCloudMlV1AddTrialMeasurementRequest();
  buildCounterGoogleCloudMlV1AddTrialMeasurementRequest++;
  if (buildCounterGoogleCloudMlV1AddTrialMeasurementRequest < 3) {
    o.measurement = buildGoogleCloudMlV1Measurement();
  }
  buildCounterGoogleCloudMlV1AddTrialMeasurementRequest--;
  return o;
}

void checkGoogleCloudMlV1AddTrialMeasurementRequest(
    api.GoogleCloudMlV1AddTrialMeasurementRequest o) {
  buildCounterGoogleCloudMlV1AddTrialMeasurementRequest++;
  if (buildCounterGoogleCloudMlV1AddTrialMeasurementRequest < 3) {
    checkGoogleCloudMlV1Measurement(o.measurement);
  }
  buildCounterGoogleCloudMlV1AddTrialMeasurementRequest--;
}

core.int buildCounterGoogleCloudMlV1AutoScaling = 0;
api.GoogleCloudMlV1AutoScaling buildGoogleCloudMlV1AutoScaling() {
  var o = api.GoogleCloudMlV1AutoScaling();
  buildCounterGoogleCloudMlV1AutoScaling++;
  if (buildCounterGoogleCloudMlV1AutoScaling < 3) {
    o.minNodes = 42;
  }
  buildCounterGoogleCloudMlV1AutoScaling--;
  return o;
}

void checkGoogleCloudMlV1AutoScaling(api.GoogleCloudMlV1AutoScaling o) {
  buildCounterGoogleCloudMlV1AutoScaling++;
  if (buildCounterGoogleCloudMlV1AutoScaling < 3) {
    unittest.expect(o.minNodes, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1AutoScaling--;
}

core.int buildCounterGoogleCloudMlV1AutomatedStoppingConfig = 0;
api.GoogleCloudMlV1AutomatedStoppingConfig
    buildGoogleCloudMlV1AutomatedStoppingConfig() {
  var o = api.GoogleCloudMlV1AutomatedStoppingConfig();
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

void checkGoogleCloudMlV1AutomatedStoppingConfig(
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
api.GoogleCloudMlV1BuiltInAlgorithmOutput
    buildGoogleCloudMlV1BuiltInAlgorithmOutput() {
  var o = api.GoogleCloudMlV1BuiltInAlgorithmOutput();
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

void checkGoogleCloudMlV1BuiltInAlgorithmOutput(
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
api.GoogleCloudMlV1CancelJobRequest buildGoogleCloudMlV1CancelJobRequest() {
  var o = api.GoogleCloudMlV1CancelJobRequest();
  buildCounterGoogleCloudMlV1CancelJobRequest++;
  if (buildCounterGoogleCloudMlV1CancelJobRequest < 3) {}
  buildCounterGoogleCloudMlV1CancelJobRequest--;
  return o;
}

void checkGoogleCloudMlV1CancelJobRequest(
    api.GoogleCloudMlV1CancelJobRequest o) {
  buildCounterGoogleCloudMlV1CancelJobRequest++;
  if (buildCounterGoogleCloudMlV1CancelJobRequest < 3) {}
  buildCounterGoogleCloudMlV1CancelJobRequest--;
}

core.List<core.String> buildUnnamed5553() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5553(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1Capability = 0;
api.GoogleCloudMlV1Capability buildGoogleCloudMlV1Capability() {
  var o = api.GoogleCloudMlV1Capability();
  buildCounterGoogleCloudMlV1Capability++;
  if (buildCounterGoogleCloudMlV1Capability < 3) {
    o.availableAccelerators = buildUnnamed5553();
    o.type = "foo";
  }
  buildCounterGoogleCloudMlV1Capability--;
  return o;
}

void checkGoogleCloudMlV1Capability(api.GoogleCloudMlV1Capability o) {
  buildCounterGoogleCloudMlV1Capability++;
  if (buildCounterGoogleCloudMlV1Capability < 3) {
    checkUnnamed5553(o.availableAccelerators);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Capability--;
}

core.int buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata = 0;
api.GoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata
    buildGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata() {
  var o = api.GoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata();
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata++;
  if (buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata < 3) {
    o.createTime = "foo";
    o.study = "foo";
    o.trial = "foo";
  }
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata--;
  return o;
}

void checkGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata(
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
api.GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest
    buildGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest() {
  var o = api.GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest();
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest++;
  if (buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest < 3) {}
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest--;
  return o;
}

void checkGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest(
    api.GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest o) {
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest++;
  if (buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest < 3) {}
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest--;
}

core.int buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse = 0;
api.GoogleCloudMlV1CheckTrialEarlyStoppingStateResponse
    buildGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse() {
  var o = api.GoogleCloudMlV1CheckTrialEarlyStoppingStateResponse();
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse++;
  if (buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse < 3) {
    o.endTime = "foo";
    o.shouldStop = true;
    o.startTime = "foo";
  }
  buildCounterGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse--;
  return o;
}

void checkGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse(
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
api.GoogleCloudMlV1CompleteTrialRequest
    buildGoogleCloudMlV1CompleteTrialRequest() {
  var o = api.GoogleCloudMlV1CompleteTrialRequest();
  buildCounterGoogleCloudMlV1CompleteTrialRequest++;
  if (buildCounterGoogleCloudMlV1CompleteTrialRequest < 3) {
    o.finalMeasurement = buildGoogleCloudMlV1Measurement();
    o.infeasibleReason = "foo";
    o.trialInfeasible = true;
  }
  buildCounterGoogleCloudMlV1CompleteTrialRequest--;
  return o;
}

void checkGoogleCloudMlV1CompleteTrialRequest(
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
api.GoogleCloudMlV1Config buildGoogleCloudMlV1Config() {
  var o = api.GoogleCloudMlV1Config();
  buildCounterGoogleCloudMlV1Config++;
  if (buildCounterGoogleCloudMlV1Config < 3) {
    o.tpuServiceAccount = "foo";
  }
  buildCounterGoogleCloudMlV1Config--;
  return o;
}

void checkGoogleCloudMlV1Config(api.GoogleCloudMlV1Config o) {
  buildCounterGoogleCloudMlV1Config++;
  if (buildCounterGoogleCloudMlV1Config < 3) {
    unittest.expect(o.tpuServiceAccount, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Config--;
}

core.int buildCounterGoogleCloudMlV1ContainerPort = 0;
api.GoogleCloudMlV1ContainerPort buildGoogleCloudMlV1ContainerPort() {
  var o = api.GoogleCloudMlV1ContainerPort();
  buildCounterGoogleCloudMlV1ContainerPort++;
  if (buildCounterGoogleCloudMlV1ContainerPort < 3) {
    o.containerPort = 42;
  }
  buildCounterGoogleCloudMlV1ContainerPort--;
  return o;
}

void checkGoogleCloudMlV1ContainerPort(api.GoogleCloudMlV1ContainerPort o) {
  buildCounterGoogleCloudMlV1ContainerPort++;
  if (buildCounterGoogleCloudMlV1ContainerPort < 3) {
    unittest.expect(o.containerPort, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1ContainerPort--;
}

core.List<core.String> buildUnnamed5554() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5554(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5555() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5555(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudMlV1EnvVar> buildUnnamed5556() {
  var o = <api.GoogleCloudMlV1EnvVar>[];
  o.add(buildGoogleCloudMlV1EnvVar());
  o.add(buildGoogleCloudMlV1EnvVar());
  return o;
}

void checkUnnamed5556(core.List<api.GoogleCloudMlV1EnvVar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1EnvVar(o[0]);
  checkGoogleCloudMlV1EnvVar(o[1]);
}

core.List<api.GoogleCloudMlV1ContainerPort> buildUnnamed5557() {
  var o = <api.GoogleCloudMlV1ContainerPort>[];
  o.add(buildGoogleCloudMlV1ContainerPort());
  o.add(buildGoogleCloudMlV1ContainerPort());
  return o;
}

void checkUnnamed5557(core.List<api.GoogleCloudMlV1ContainerPort> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1ContainerPort(o[0]);
  checkGoogleCloudMlV1ContainerPort(o[1]);
}

core.int buildCounterGoogleCloudMlV1ContainerSpec = 0;
api.GoogleCloudMlV1ContainerSpec buildGoogleCloudMlV1ContainerSpec() {
  var o = api.GoogleCloudMlV1ContainerSpec();
  buildCounterGoogleCloudMlV1ContainerSpec++;
  if (buildCounterGoogleCloudMlV1ContainerSpec < 3) {
    o.args = buildUnnamed5554();
    o.command = buildUnnamed5555();
    o.env = buildUnnamed5556();
    o.image = "foo";
    o.ports = buildUnnamed5557();
  }
  buildCounterGoogleCloudMlV1ContainerSpec--;
  return o;
}

void checkGoogleCloudMlV1ContainerSpec(api.GoogleCloudMlV1ContainerSpec o) {
  buildCounterGoogleCloudMlV1ContainerSpec++;
  if (buildCounterGoogleCloudMlV1ContainerSpec < 3) {
    checkUnnamed5554(o.args);
    checkUnnamed5555(o.command);
    checkUnnamed5556(o.env);
    unittest.expect(o.image, unittest.equals('foo'));
    checkUnnamed5557(o.ports);
  }
  buildCounterGoogleCloudMlV1ContainerSpec--;
}

core.int buildCounterGoogleCloudMlV1EncryptionConfig = 0;
api.GoogleCloudMlV1EncryptionConfig buildGoogleCloudMlV1EncryptionConfig() {
  var o = api.GoogleCloudMlV1EncryptionConfig();
  buildCounterGoogleCloudMlV1EncryptionConfig++;
  if (buildCounterGoogleCloudMlV1EncryptionConfig < 3) {
    o.kmsKeyName = "foo";
  }
  buildCounterGoogleCloudMlV1EncryptionConfig--;
  return o;
}

void checkGoogleCloudMlV1EncryptionConfig(
    api.GoogleCloudMlV1EncryptionConfig o) {
  buildCounterGoogleCloudMlV1EncryptionConfig++;
  if (buildCounterGoogleCloudMlV1EncryptionConfig < 3) {
    unittest.expect(o.kmsKeyName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1EncryptionConfig--;
}

core.int buildCounterGoogleCloudMlV1EnvVar = 0;
api.GoogleCloudMlV1EnvVar buildGoogleCloudMlV1EnvVar() {
  var o = api.GoogleCloudMlV1EnvVar();
  buildCounterGoogleCloudMlV1EnvVar++;
  if (buildCounterGoogleCloudMlV1EnvVar < 3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterGoogleCloudMlV1EnvVar--;
  return o;
}

void checkGoogleCloudMlV1EnvVar(api.GoogleCloudMlV1EnvVar o) {
  buildCounterGoogleCloudMlV1EnvVar++;
  if (buildCounterGoogleCloudMlV1EnvVar < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1EnvVar--;
}

core.int buildCounterGoogleCloudMlV1ExplainRequest = 0;
api.GoogleCloudMlV1ExplainRequest buildGoogleCloudMlV1ExplainRequest() {
  var o = api.GoogleCloudMlV1ExplainRequest();
  buildCounterGoogleCloudMlV1ExplainRequest++;
  if (buildCounterGoogleCloudMlV1ExplainRequest < 3) {
    o.httpBody = buildGoogleApiHttpBody();
  }
  buildCounterGoogleCloudMlV1ExplainRequest--;
  return o;
}

void checkGoogleCloudMlV1ExplainRequest(api.GoogleCloudMlV1ExplainRequest o) {
  buildCounterGoogleCloudMlV1ExplainRequest++;
  if (buildCounterGoogleCloudMlV1ExplainRequest < 3) {
    checkGoogleApiHttpBody(o.httpBody);
  }
  buildCounterGoogleCloudMlV1ExplainRequest--;
}

core.int buildCounterGoogleCloudMlV1ExplanationConfig = 0;
api.GoogleCloudMlV1ExplanationConfig buildGoogleCloudMlV1ExplanationConfig() {
  var o = api.GoogleCloudMlV1ExplanationConfig();
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

void checkGoogleCloudMlV1ExplanationConfig(
    api.GoogleCloudMlV1ExplanationConfig o) {
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
api.GoogleCloudMlV1GetConfigResponse buildGoogleCloudMlV1GetConfigResponse() {
  var o = api.GoogleCloudMlV1GetConfigResponse();
  buildCounterGoogleCloudMlV1GetConfigResponse++;
  if (buildCounterGoogleCloudMlV1GetConfigResponse < 3) {
    o.config = buildGoogleCloudMlV1Config();
    o.serviceAccount = "foo";
    o.serviceAccountProject = "foo";
  }
  buildCounterGoogleCloudMlV1GetConfigResponse--;
  return o;
}

void checkGoogleCloudMlV1GetConfigResponse(
    api.GoogleCloudMlV1GetConfigResponse o) {
  buildCounterGoogleCloudMlV1GetConfigResponse++;
  if (buildCounterGoogleCloudMlV1GetConfigResponse < 3) {
    checkGoogleCloudMlV1Config(o.config);
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    unittest.expect(o.serviceAccountProject, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1GetConfigResponse--;
}

core.List<api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric>
    buildUnnamed5558() {
  var o = <api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric>[];
  o.add(buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric());
  o.add(buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric());
  return o;
}

void checkUnnamed5558(
    core.List<api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(o[0]);
  checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(o[1]);
}

core.Map<core.String, core.String> buildUnnamed5559() {
  var o = <core.String, core.String>{};
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

void checkUnnamed5559(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1HyperparameterOutput = 0;
api.GoogleCloudMlV1HyperparameterOutput
    buildGoogleCloudMlV1HyperparameterOutput() {
  var o = api.GoogleCloudMlV1HyperparameterOutput();
  buildCounterGoogleCloudMlV1HyperparameterOutput++;
  if (buildCounterGoogleCloudMlV1HyperparameterOutput < 3) {
    o.allMetrics = buildUnnamed5558();
    o.builtInAlgorithmOutput = buildGoogleCloudMlV1BuiltInAlgorithmOutput();
    o.endTime = "foo";
    o.finalMetric =
        buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric();
    o.hyperparameters = buildUnnamed5559();
    o.isTrialStoppedEarly = true;
    o.startTime = "foo";
    o.state = "foo";
    o.trialId = "foo";
  }
  buildCounterGoogleCloudMlV1HyperparameterOutput--;
  return o;
}

void checkGoogleCloudMlV1HyperparameterOutput(
    api.GoogleCloudMlV1HyperparameterOutput o) {
  buildCounterGoogleCloudMlV1HyperparameterOutput++;
  if (buildCounterGoogleCloudMlV1HyperparameterOutput < 3) {
    checkUnnamed5558(o.allMetrics);
    checkGoogleCloudMlV1BuiltInAlgorithmOutput(o.builtInAlgorithmOutput);
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(o.finalMetric);
    checkUnnamed5559(o.hyperparameters);
    unittest.expect(o.isTrialStoppedEarly, unittest.isTrue);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.trialId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1HyperparameterOutput--;
}

core.List<api.GoogleCloudMlV1ParameterSpec> buildUnnamed5560() {
  var o = <api.GoogleCloudMlV1ParameterSpec>[];
  o.add(buildGoogleCloudMlV1ParameterSpec());
  o.add(buildGoogleCloudMlV1ParameterSpec());
  return o;
}

void checkUnnamed5560(core.List<api.GoogleCloudMlV1ParameterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1ParameterSpec(o[0]);
  checkGoogleCloudMlV1ParameterSpec(o[1]);
}

core.int buildCounterGoogleCloudMlV1HyperparameterSpec = 0;
api.GoogleCloudMlV1HyperparameterSpec buildGoogleCloudMlV1HyperparameterSpec() {
  var o = api.GoogleCloudMlV1HyperparameterSpec();
  buildCounterGoogleCloudMlV1HyperparameterSpec++;
  if (buildCounterGoogleCloudMlV1HyperparameterSpec < 3) {
    o.algorithm = "foo";
    o.enableTrialEarlyStopping = true;
    o.goal = "foo";
    o.hyperparameterMetricTag = "foo";
    o.maxFailedTrials = 42;
    o.maxParallelTrials = 42;
    o.maxTrials = 42;
    o.params = buildUnnamed5560();
    o.resumePreviousJobId = "foo";
  }
  buildCounterGoogleCloudMlV1HyperparameterSpec--;
  return o;
}

void checkGoogleCloudMlV1HyperparameterSpec(
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
    checkUnnamed5560(o.params);
    unittest.expect(o.resumePreviousJobId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1HyperparameterSpec--;
}

core.int buildCounterGoogleCloudMlV1IntegratedGradientsAttribution = 0;
api.GoogleCloudMlV1IntegratedGradientsAttribution
    buildGoogleCloudMlV1IntegratedGradientsAttribution() {
  var o = api.GoogleCloudMlV1IntegratedGradientsAttribution();
  buildCounterGoogleCloudMlV1IntegratedGradientsAttribution++;
  if (buildCounterGoogleCloudMlV1IntegratedGradientsAttribution < 3) {
    o.numIntegralSteps = 42;
  }
  buildCounterGoogleCloudMlV1IntegratedGradientsAttribution--;
  return o;
}

void checkGoogleCloudMlV1IntegratedGradientsAttribution(
    api.GoogleCloudMlV1IntegratedGradientsAttribution o) {
  buildCounterGoogleCloudMlV1IntegratedGradientsAttribution++;
  if (buildCounterGoogleCloudMlV1IntegratedGradientsAttribution < 3) {
    unittest.expect(o.numIntegralSteps, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1IntegratedGradientsAttribution--;
}

core.Map<core.String, core.String> buildUnnamed5561() {
  var o = <core.String, core.String>{};
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

void checkUnnamed5561(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1Job = 0;
api.GoogleCloudMlV1Job buildGoogleCloudMlV1Job() {
  var o = api.GoogleCloudMlV1Job();
  buildCounterGoogleCloudMlV1Job++;
  if (buildCounterGoogleCloudMlV1Job < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.errorMessage = "foo";
    o.etag = "foo";
    o.jobId = "foo";
    o.labels = buildUnnamed5561();
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

void checkGoogleCloudMlV1Job(api.GoogleCloudMlV1Job o) {
  buildCounterGoogleCloudMlV1Job++;
  if (buildCounterGoogleCloudMlV1Job < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.jobId, unittest.equals('foo'));
    checkUnnamed5561(o.labels);
    checkGoogleCloudMlV1PredictionInput(o.predictionInput);
    checkGoogleCloudMlV1PredictionOutput(o.predictionOutput);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkGoogleCloudMlV1TrainingInput(o.trainingInput);
    checkGoogleCloudMlV1TrainingOutput(o.trainingOutput);
  }
  buildCounterGoogleCloudMlV1Job--;
}

core.List<api.GoogleCloudMlV1Job> buildUnnamed5562() {
  var o = <api.GoogleCloudMlV1Job>[];
  o.add(buildGoogleCloudMlV1Job());
  o.add(buildGoogleCloudMlV1Job());
  return o;
}

void checkUnnamed5562(core.List<api.GoogleCloudMlV1Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Job(o[0]);
  checkGoogleCloudMlV1Job(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListJobsResponse = 0;
api.GoogleCloudMlV1ListJobsResponse buildGoogleCloudMlV1ListJobsResponse() {
  var o = api.GoogleCloudMlV1ListJobsResponse();
  buildCounterGoogleCloudMlV1ListJobsResponse++;
  if (buildCounterGoogleCloudMlV1ListJobsResponse < 3) {
    o.jobs = buildUnnamed5562();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudMlV1ListJobsResponse--;
  return o;
}

void checkGoogleCloudMlV1ListJobsResponse(
    api.GoogleCloudMlV1ListJobsResponse o) {
  buildCounterGoogleCloudMlV1ListJobsResponse++;
  if (buildCounterGoogleCloudMlV1ListJobsResponse < 3) {
    checkUnnamed5562(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ListJobsResponse--;
}

core.List<api.GoogleCloudMlV1Location> buildUnnamed5563() {
  var o = <api.GoogleCloudMlV1Location>[];
  o.add(buildGoogleCloudMlV1Location());
  o.add(buildGoogleCloudMlV1Location());
  return o;
}

void checkUnnamed5563(core.List<api.GoogleCloudMlV1Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Location(o[0]);
  checkGoogleCloudMlV1Location(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListLocationsResponse = 0;
api.GoogleCloudMlV1ListLocationsResponse
    buildGoogleCloudMlV1ListLocationsResponse() {
  var o = api.GoogleCloudMlV1ListLocationsResponse();
  buildCounterGoogleCloudMlV1ListLocationsResponse++;
  if (buildCounterGoogleCloudMlV1ListLocationsResponse < 3) {
    o.locations = buildUnnamed5563();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudMlV1ListLocationsResponse--;
  return o;
}

void checkGoogleCloudMlV1ListLocationsResponse(
    api.GoogleCloudMlV1ListLocationsResponse o) {
  buildCounterGoogleCloudMlV1ListLocationsResponse++;
  if (buildCounterGoogleCloudMlV1ListLocationsResponse < 3) {
    checkUnnamed5563(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ListLocationsResponse--;
}

core.List<api.GoogleCloudMlV1Model> buildUnnamed5564() {
  var o = <api.GoogleCloudMlV1Model>[];
  o.add(buildGoogleCloudMlV1Model());
  o.add(buildGoogleCloudMlV1Model());
  return o;
}

void checkUnnamed5564(core.List<api.GoogleCloudMlV1Model> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Model(o[0]);
  checkGoogleCloudMlV1Model(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListModelsResponse = 0;
api.GoogleCloudMlV1ListModelsResponse buildGoogleCloudMlV1ListModelsResponse() {
  var o = api.GoogleCloudMlV1ListModelsResponse();
  buildCounterGoogleCloudMlV1ListModelsResponse++;
  if (buildCounterGoogleCloudMlV1ListModelsResponse < 3) {
    o.models = buildUnnamed5564();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudMlV1ListModelsResponse--;
  return o;
}

void checkGoogleCloudMlV1ListModelsResponse(
    api.GoogleCloudMlV1ListModelsResponse o) {
  buildCounterGoogleCloudMlV1ListModelsResponse++;
  if (buildCounterGoogleCloudMlV1ListModelsResponse < 3) {
    checkUnnamed5564(o.models);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ListModelsResponse--;
}

core.List<api.GoogleCloudMlV1Study> buildUnnamed5565() {
  var o = <api.GoogleCloudMlV1Study>[];
  o.add(buildGoogleCloudMlV1Study());
  o.add(buildGoogleCloudMlV1Study());
  return o;
}

void checkUnnamed5565(core.List<api.GoogleCloudMlV1Study> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Study(o[0]);
  checkGoogleCloudMlV1Study(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListStudiesResponse = 0;
api.GoogleCloudMlV1ListStudiesResponse
    buildGoogleCloudMlV1ListStudiesResponse() {
  var o = api.GoogleCloudMlV1ListStudiesResponse();
  buildCounterGoogleCloudMlV1ListStudiesResponse++;
  if (buildCounterGoogleCloudMlV1ListStudiesResponse < 3) {
    o.studies = buildUnnamed5565();
  }
  buildCounterGoogleCloudMlV1ListStudiesResponse--;
  return o;
}

void checkGoogleCloudMlV1ListStudiesResponse(
    api.GoogleCloudMlV1ListStudiesResponse o) {
  buildCounterGoogleCloudMlV1ListStudiesResponse++;
  if (buildCounterGoogleCloudMlV1ListStudiesResponse < 3) {
    checkUnnamed5565(o.studies);
  }
  buildCounterGoogleCloudMlV1ListStudiesResponse--;
}

core.List<api.GoogleCloudMlV1Trial> buildUnnamed5566() {
  var o = <api.GoogleCloudMlV1Trial>[];
  o.add(buildGoogleCloudMlV1Trial());
  o.add(buildGoogleCloudMlV1Trial());
  return o;
}

void checkUnnamed5566(core.List<api.GoogleCloudMlV1Trial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Trial(o[0]);
  checkGoogleCloudMlV1Trial(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListTrialsResponse = 0;
api.GoogleCloudMlV1ListTrialsResponse buildGoogleCloudMlV1ListTrialsResponse() {
  var o = api.GoogleCloudMlV1ListTrialsResponse();
  buildCounterGoogleCloudMlV1ListTrialsResponse++;
  if (buildCounterGoogleCloudMlV1ListTrialsResponse < 3) {
    o.trials = buildUnnamed5566();
  }
  buildCounterGoogleCloudMlV1ListTrialsResponse--;
  return o;
}

void checkGoogleCloudMlV1ListTrialsResponse(
    api.GoogleCloudMlV1ListTrialsResponse o) {
  buildCounterGoogleCloudMlV1ListTrialsResponse++;
  if (buildCounterGoogleCloudMlV1ListTrialsResponse < 3) {
    checkUnnamed5566(o.trials);
  }
  buildCounterGoogleCloudMlV1ListTrialsResponse--;
}

core.List<api.GoogleCloudMlV1Version> buildUnnamed5567() {
  var o = <api.GoogleCloudMlV1Version>[];
  o.add(buildGoogleCloudMlV1Version());
  o.add(buildGoogleCloudMlV1Version());
  return o;
}

void checkUnnamed5567(core.List<api.GoogleCloudMlV1Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Version(o[0]);
  checkGoogleCloudMlV1Version(o[1]);
}

core.int buildCounterGoogleCloudMlV1ListVersionsResponse = 0;
api.GoogleCloudMlV1ListVersionsResponse
    buildGoogleCloudMlV1ListVersionsResponse() {
  var o = api.GoogleCloudMlV1ListVersionsResponse();
  buildCounterGoogleCloudMlV1ListVersionsResponse++;
  if (buildCounterGoogleCloudMlV1ListVersionsResponse < 3) {
    o.nextPageToken = "foo";
    o.versions = buildUnnamed5567();
  }
  buildCounterGoogleCloudMlV1ListVersionsResponse--;
  return o;
}

void checkGoogleCloudMlV1ListVersionsResponse(
    api.GoogleCloudMlV1ListVersionsResponse o) {
  buildCounterGoogleCloudMlV1ListVersionsResponse++;
  if (buildCounterGoogleCloudMlV1ListVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5567(o.versions);
  }
  buildCounterGoogleCloudMlV1ListVersionsResponse--;
}

core.List<api.GoogleCloudMlV1Capability> buildUnnamed5568() {
  var o = <api.GoogleCloudMlV1Capability>[];
  o.add(buildGoogleCloudMlV1Capability());
  o.add(buildGoogleCloudMlV1Capability());
  return o;
}

void checkUnnamed5568(core.List<api.GoogleCloudMlV1Capability> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Capability(o[0]);
  checkGoogleCloudMlV1Capability(o[1]);
}

core.int buildCounterGoogleCloudMlV1Location = 0;
api.GoogleCloudMlV1Location buildGoogleCloudMlV1Location() {
  var o = api.GoogleCloudMlV1Location();
  buildCounterGoogleCloudMlV1Location++;
  if (buildCounterGoogleCloudMlV1Location < 3) {
    o.capabilities = buildUnnamed5568();
    o.name = "foo";
  }
  buildCounterGoogleCloudMlV1Location--;
  return o;
}

void checkGoogleCloudMlV1Location(api.GoogleCloudMlV1Location o) {
  buildCounterGoogleCloudMlV1Location++;
  if (buildCounterGoogleCloudMlV1Location < 3) {
    checkUnnamed5568(o.capabilities);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Location--;
}

core.int buildCounterGoogleCloudMlV1ManualScaling = 0;
api.GoogleCloudMlV1ManualScaling buildGoogleCloudMlV1ManualScaling() {
  var o = api.GoogleCloudMlV1ManualScaling();
  buildCounterGoogleCloudMlV1ManualScaling++;
  if (buildCounterGoogleCloudMlV1ManualScaling < 3) {
    o.nodes = 42;
  }
  buildCounterGoogleCloudMlV1ManualScaling--;
  return o;
}

void checkGoogleCloudMlV1ManualScaling(api.GoogleCloudMlV1ManualScaling o) {
  buildCounterGoogleCloudMlV1ManualScaling++;
  if (buildCounterGoogleCloudMlV1ManualScaling < 3) {
    unittest.expect(o.nodes, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1ManualScaling--;
}

core.List<api.GoogleCloudMlV1MeasurementMetric> buildUnnamed5569() {
  var o = <api.GoogleCloudMlV1MeasurementMetric>[];
  o.add(buildGoogleCloudMlV1MeasurementMetric());
  o.add(buildGoogleCloudMlV1MeasurementMetric());
  return o;
}

void checkUnnamed5569(core.List<api.GoogleCloudMlV1MeasurementMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1MeasurementMetric(o[0]);
  checkGoogleCloudMlV1MeasurementMetric(o[1]);
}

core.int buildCounterGoogleCloudMlV1Measurement = 0;
api.GoogleCloudMlV1Measurement buildGoogleCloudMlV1Measurement() {
  var o = api.GoogleCloudMlV1Measurement();
  buildCounterGoogleCloudMlV1Measurement++;
  if (buildCounterGoogleCloudMlV1Measurement < 3) {
    o.elapsedTime = "foo";
    o.metrics = buildUnnamed5569();
    o.stepCount = "foo";
  }
  buildCounterGoogleCloudMlV1Measurement--;
  return o;
}

void checkGoogleCloudMlV1Measurement(api.GoogleCloudMlV1Measurement o) {
  buildCounterGoogleCloudMlV1Measurement++;
  if (buildCounterGoogleCloudMlV1Measurement < 3) {
    unittest.expect(o.elapsedTime, unittest.equals('foo'));
    checkUnnamed5569(o.metrics);
    unittest.expect(o.stepCount, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Measurement--;
}

core.Map<core.String, core.String> buildUnnamed5570() {
  var o = <core.String, core.String>{};
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

void checkUnnamed5570(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5571() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5571(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1Model = 0;
api.GoogleCloudMlV1Model buildGoogleCloudMlV1Model() {
  var o = api.GoogleCloudMlV1Model();
  buildCounterGoogleCloudMlV1Model++;
  if (buildCounterGoogleCloudMlV1Model < 3) {
    o.defaultVersion = buildGoogleCloudMlV1Version();
    o.description = "foo";
    o.etag = "foo";
    o.labels = buildUnnamed5570();
    o.name = "foo";
    o.onlinePredictionConsoleLogging = true;
    o.onlinePredictionLogging = true;
    o.regions = buildUnnamed5571();
  }
  buildCounterGoogleCloudMlV1Model--;
  return o;
}

void checkGoogleCloudMlV1Model(api.GoogleCloudMlV1Model o) {
  buildCounterGoogleCloudMlV1Model++;
  if (buildCounterGoogleCloudMlV1Model < 3) {
    checkGoogleCloudMlV1Version(o.defaultVersion);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed5570(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.onlinePredictionConsoleLogging, unittest.isTrue);
    unittest.expect(o.onlinePredictionLogging, unittest.isTrue);
    checkUnnamed5571(o.regions);
  }
  buildCounterGoogleCloudMlV1Model--;
}

core.Map<core.String, core.String> buildUnnamed5572() {
  var o = <core.String, core.String>{};
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

void checkUnnamed5572(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1OperationMetadata = 0;
api.GoogleCloudMlV1OperationMetadata buildGoogleCloudMlV1OperationMetadata() {
  var o = api.GoogleCloudMlV1OperationMetadata();
  buildCounterGoogleCloudMlV1OperationMetadata++;
  if (buildCounterGoogleCloudMlV1OperationMetadata < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.isCancellationRequested = true;
    o.labels = buildUnnamed5572();
    o.modelName = "foo";
    o.operationType = "foo";
    o.projectNumber = "foo";
    o.startTime = "foo";
    o.version = buildGoogleCloudMlV1Version();
  }
  buildCounterGoogleCloudMlV1OperationMetadata--;
  return o;
}

void checkGoogleCloudMlV1OperationMetadata(
    api.GoogleCloudMlV1OperationMetadata o) {
  buildCounterGoogleCloudMlV1OperationMetadata++;
  if (buildCounterGoogleCloudMlV1OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.isCancellationRequested, unittest.isTrue);
    checkUnnamed5572(o.labels);
    unittest.expect(o.modelName, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkGoogleCloudMlV1Version(o.version);
  }
  buildCounterGoogleCloudMlV1OperationMetadata--;
}

core.List<core.String> buildUnnamed5573() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5573(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.double> buildUnnamed5574() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed5574(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterGoogleCloudMlV1ParameterSpec = 0;
api.GoogleCloudMlV1ParameterSpec buildGoogleCloudMlV1ParameterSpec() {
  var o = api.GoogleCloudMlV1ParameterSpec();
  buildCounterGoogleCloudMlV1ParameterSpec++;
  if (buildCounterGoogleCloudMlV1ParameterSpec < 3) {
    o.categoricalValues = buildUnnamed5573();
    o.discreteValues = buildUnnamed5574();
    o.maxValue = 42.0;
    o.minValue = 42.0;
    o.parameterName = "foo";
    o.scaleType = "foo";
    o.type = "foo";
  }
  buildCounterGoogleCloudMlV1ParameterSpec--;
  return o;
}

void checkGoogleCloudMlV1ParameterSpec(api.GoogleCloudMlV1ParameterSpec o) {
  buildCounterGoogleCloudMlV1ParameterSpec++;
  if (buildCounterGoogleCloudMlV1ParameterSpec < 3) {
    checkUnnamed5573(o.categoricalValues);
    checkUnnamed5574(o.discreteValues);
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
    unittest.expect(o.parameterName, unittest.equals('foo'));
    unittest.expect(o.scaleType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ParameterSpec--;
}

core.int buildCounterGoogleCloudMlV1PredictRequest = 0;
api.GoogleCloudMlV1PredictRequest buildGoogleCloudMlV1PredictRequest() {
  var o = api.GoogleCloudMlV1PredictRequest();
  buildCounterGoogleCloudMlV1PredictRequest++;
  if (buildCounterGoogleCloudMlV1PredictRequest < 3) {
    o.httpBody = buildGoogleApiHttpBody();
  }
  buildCounterGoogleCloudMlV1PredictRequest--;
  return o;
}

void checkGoogleCloudMlV1PredictRequest(api.GoogleCloudMlV1PredictRequest o) {
  buildCounterGoogleCloudMlV1PredictRequest++;
  if (buildCounterGoogleCloudMlV1PredictRequest < 3) {
    checkGoogleApiHttpBody(o.httpBody);
  }
  buildCounterGoogleCloudMlV1PredictRequest--;
}

core.List<core.String> buildUnnamed5575() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5575(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1PredictionInput = 0;
api.GoogleCloudMlV1PredictionInput buildGoogleCloudMlV1PredictionInput() {
  var o = api.GoogleCloudMlV1PredictionInput();
  buildCounterGoogleCloudMlV1PredictionInput++;
  if (buildCounterGoogleCloudMlV1PredictionInput < 3) {
    o.batchSize = "foo";
    o.dataFormat = "foo";
    o.inputPaths = buildUnnamed5575();
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

void checkGoogleCloudMlV1PredictionInput(api.GoogleCloudMlV1PredictionInput o) {
  buildCounterGoogleCloudMlV1PredictionInput++;
  if (buildCounterGoogleCloudMlV1PredictionInput < 3) {
    unittest.expect(o.batchSize, unittest.equals('foo'));
    unittest.expect(o.dataFormat, unittest.equals('foo'));
    checkUnnamed5575(o.inputPaths);
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
api.GoogleCloudMlV1PredictionOutput buildGoogleCloudMlV1PredictionOutput() {
  var o = api.GoogleCloudMlV1PredictionOutput();
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

void checkGoogleCloudMlV1PredictionOutput(
    api.GoogleCloudMlV1PredictionOutput o) {
  buildCounterGoogleCloudMlV1PredictionOutput++;
  if (buildCounterGoogleCloudMlV1PredictionOutput < 3) {
    unittest.expect(o.errorCount, unittest.equals('foo'));
    unittest.expect(o.nodeHours, unittest.equals(42.0));
    unittest.expect(o.outputPath, unittest.equals('foo'));
    unittest.expect(o.predictionCount, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1PredictionOutput--;
}

core.List<core.String> buildUnnamed5576() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5576(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5577() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5577(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1ReplicaConfig = 0;
api.GoogleCloudMlV1ReplicaConfig buildGoogleCloudMlV1ReplicaConfig() {
  var o = api.GoogleCloudMlV1ReplicaConfig();
  buildCounterGoogleCloudMlV1ReplicaConfig++;
  if (buildCounterGoogleCloudMlV1ReplicaConfig < 3) {
    o.acceleratorConfig = buildGoogleCloudMlV1AcceleratorConfig();
    o.containerArgs = buildUnnamed5576();
    o.containerCommand = buildUnnamed5577();
    o.imageUri = "foo";
    o.tpuTfVersion = "foo";
  }
  buildCounterGoogleCloudMlV1ReplicaConfig--;
  return o;
}

void checkGoogleCloudMlV1ReplicaConfig(api.GoogleCloudMlV1ReplicaConfig o) {
  buildCounterGoogleCloudMlV1ReplicaConfig++;
  if (buildCounterGoogleCloudMlV1ReplicaConfig < 3) {
    checkGoogleCloudMlV1AcceleratorConfig(o.acceleratorConfig);
    checkUnnamed5576(o.containerArgs);
    checkUnnamed5577(o.containerCommand);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    unittest.expect(o.tpuTfVersion, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1ReplicaConfig--;
}

core.int buildCounterGoogleCloudMlV1RequestLoggingConfig = 0;
api.GoogleCloudMlV1RequestLoggingConfig
    buildGoogleCloudMlV1RequestLoggingConfig() {
  var o = api.GoogleCloudMlV1RequestLoggingConfig();
  buildCounterGoogleCloudMlV1RequestLoggingConfig++;
  if (buildCounterGoogleCloudMlV1RequestLoggingConfig < 3) {
    o.bigqueryTableName = "foo";
    o.samplingPercentage = 42.0;
  }
  buildCounterGoogleCloudMlV1RequestLoggingConfig--;
  return o;
}

void checkGoogleCloudMlV1RequestLoggingConfig(
    api.GoogleCloudMlV1RequestLoggingConfig o) {
  buildCounterGoogleCloudMlV1RequestLoggingConfig++;
  if (buildCounterGoogleCloudMlV1RequestLoggingConfig < 3) {
    unittest.expect(o.bigqueryTableName, unittest.equals('foo'));
    unittest.expect(o.samplingPercentage, unittest.equals(42.0));
  }
  buildCounterGoogleCloudMlV1RequestLoggingConfig--;
}

core.int buildCounterGoogleCloudMlV1RouteMap = 0;
api.GoogleCloudMlV1RouteMap buildGoogleCloudMlV1RouteMap() {
  var o = api.GoogleCloudMlV1RouteMap();
  buildCounterGoogleCloudMlV1RouteMap++;
  if (buildCounterGoogleCloudMlV1RouteMap < 3) {
    o.health = "foo";
    o.predict = "foo";
  }
  buildCounterGoogleCloudMlV1RouteMap--;
  return o;
}

void checkGoogleCloudMlV1RouteMap(api.GoogleCloudMlV1RouteMap o) {
  buildCounterGoogleCloudMlV1RouteMap++;
  if (buildCounterGoogleCloudMlV1RouteMap < 3) {
    unittest.expect(o.health, unittest.equals('foo'));
    unittest.expect(o.predict, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1RouteMap--;
}

core.int buildCounterGoogleCloudMlV1SampledShapleyAttribution = 0;
api.GoogleCloudMlV1SampledShapleyAttribution
    buildGoogleCloudMlV1SampledShapleyAttribution() {
  var o = api.GoogleCloudMlV1SampledShapleyAttribution();
  buildCounterGoogleCloudMlV1SampledShapleyAttribution++;
  if (buildCounterGoogleCloudMlV1SampledShapleyAttribution < 3) {
    o.numPaths = 42;
  }
  buildCounterGoogleCloudMlV1SampledShapleyAttribution--;
  return o;
}

void checkGoogleCloudMlV1SampledShapleyAttribution(
    api.GoogleCloudMlV1SampledShapleyAttribution o) {
  buildCounterGoogleCloudMlV1SampledShapleyAttribution++;
  if (buildCounterGoogleCloudMlV1SampledShapleyAttribution < 3) {
    unittest.expect(o.numPaths, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1SampledShapleyAttribution--;
}

core.int buildCounterGoogleCloudMlV1Scheduling = 0;
api.GoogleCloudMlV1Scheduling buildGoogleCloudMlV1Scheduling() {
  var o = api.GoogleCloudMlV1Scheduling();
  buildCounterGoogleCloudMlV1Scheduling++;
  if (buildCounterGoogleCloudMlV1Scheduling < 3) {
    o.maxRunningTime = "foo";
    o.maxWaitTime = "foo";
  }
  buildCounterGoogleCloudMlV1Scheduling--;
  return o;
}

void checkGoogleCloudMlV1Scheduling(api.GoogleCloudMlV1Scheduling o) {
  buildCounterGoogleCloudMlV1Scheduling++;
  if (buildCounterGoogleCloudMlV1Scheduling < 3) {
    unittest.expect(o.maxRunningTime, unittest.equals('foo'));
    unittest.expect(o.maxWaitTime, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Scheduling--;
}

core.int buildCounterGoogleCloudMlV1SetDefaultVersionRequest = 0;
api.GoogleCloudMlV1SetDefaultVersionRequest
    buildGoogleCloudMlV1SetDefaultVersionRequest() {
  var o = api.GoogleCloudMlV1SetDefaultVersionRequest();
  buildCounterGoogleCloudMlV1SetDefaultVersionRequest++;
  if (buildCounterGoogleCloudMlV1SetDefaultVersionRequest < 3) {}
  buildCounterGoogleCloudMlV1SetDefaultVersionRequest--;
  return o;
}

void checkGoogleCloudMlV1SetDefaultVersionRequest(
    api.GoogleCloudMlV1SetDefaultVersionRequest o) {
  buildCounterGoogleCloudMlV1SetDefaultVersionRequest++;
  if (buildCounterGoogleCloudMlV1SetDefaultVersionRequest < 3) {}
  buildCounterGoogleCloudMlV1SetDefaultVersionRequest--;
}

core.int buildCounterGoogleCloudMlV1StopTrialRequest = 0;
api.GoogleCloudMlV1StopTrialRequest buildGoogleCloudMlV1StopTrialRequest() {
  var o = api.GoogleCloudMlV1StopTrialRequest();
  buildCounterGoogleCloudMlV1StopTrialRequest++;
  if (buildCounterGoogleCloudMlV1StopTrialRequest < 3) {}
  buildCounterGoogleCloudMlV1StopTrialRequest--;
  return o;
}

void checkGoogleCloudMlV1StopTrialRequest(
    api.GoogleCloudMlV1StopTrialRequest o) {
  buildCounterGoogleCloudMlV1StopTrialRequest++;
  if (buildCounterGoogleCloudMlV1StopTrialRequest < 3) {}
  buildCounterGoogleCloudMlV1StopTrialRequest--;
}

core.int buildCounterGoogleCloudMlV1Study = 0;
api.GoogleCloudMlV1Study buildGoogleCloudMlV1Study() {
  var o = api.GoogleCloudMlV1Study();
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

void checkGoogleCloudMlV1Study(api.GoogleCloudMlV1Study o) {
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

core.List<api.GoogleCloudMlV1StudyConfigMetricSpec> buildUnnamed5578() {
  var o = <api.GoogleCloudMlV1StudyConfigMetricSpec>[];
  o.add(buildGoogleCloudMlV1StudyConfigMetricSpec());
  o.add(buildGoogleCloudMlV1StudyConfigMetricSpec());
  return o;
}

void checkUnnamed5578(core.List<api.GoogleCloudMlV1StudyConfigMetricSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1StudyConfigMetricSpec(o[0]);
  checkGoogleCloudMlV1StudyConfigMetricSpec(o[1]);
}

core.List<api.GoogleCloudMlV1StudyConfigParameterSpec> buildUnnamed5579() {
  var o = <api.GoogleCloudMlV1StudyConfigParameterSpec>[];
  o.add(buildGoogleCloudMlV1StudyConfigParameterSpec());
  o.add(buildGoogleCloudMlV1StudyConfigParameterSpec());
  return o;
}

void checkUnnamed5579(
    core.List<api.GoogleCloudMlV1StudyConfigParameterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1StudyConfigParameterSpec(o[0]);
  checkGoogleCloudMlV1StudyConfigParameterSpec(o[1]);
}

core.int buildCounterGoogleCloudMlV1StudyConfig = 0;
api.GoogleCloudMlV1StudyConfig buildGoogleCloudMlV1StudyConfig() {
  var o = api.GoogleCloudMlV1StudyConfig();
  buildCounterGoogleCloudMlV1StudyConfig++;
  if (buildCounterGoogleCloudMlV1StudyConfig < 3) {
    o.algorithm = "foo";
    o.automatedStoppingConfig = buildGoogleCloudMlV1AutomatedStoppingConfig();
    o.metrics = buildUnnamed5578();
    o.parameters = buildUnnamed5579();
  }
  buildCounterGoogleCloudMlV1StudyConfig--;
  return o;
}

void checkGoogleCloudMlV1StudyConfig(api.GoogleCloudMlV1StudyConfig o) {
  buildCounterGoogleCloudMlV1StudyConfig++;
  if (buildCounterGoogleCloudMlV1StudyConfig < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    checkGoogleCloudMlV1AutomatedStoppingConfig(o.automatedStoppingConfig);
    checkUnnamed5578(o.metrics);
    checkUnnamed5579(o.parameters);
  }
  buildCounterGoogleCloudMlV1StudyConfig--;
}

core.int buildCounterGoogleCloudMlV1SuggestTrialsMetadata = 0;
api.GoogleCloudMlV1SuggestTrialsMetadata
    buildGoogleCloudMlV1SuggestTrialsMetadata() {
  var o = api.GoogleCloudMlV1SuggestTrialsMetadata();
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

void checkGoogleCloudMlV1SuggestTrialsMetadata(
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
api.GoogleCloudMlV1SuggestTrialsRequest
    buildGoogleCloudMlV1SuggestTrialsRequest() {
  var o = api.GoogleCloudMlV1SuggestTrialsRequest();
  buildCounterGoogleCloudMlV1SuggestTrialsRequest++;
  if (buildCounterGoogleCloudMlV1SuggestTrialsRequest < 3) {
    o.clientId = "foo";
    o.suggestionCount = 42;
  }
  buildCounterGoogleCloudMlV1SuggestTrialsRequest--;
  return o;
}

void checkGoogleCloudMlV1SuggestTrialsRequest(
    api.GoogleCloudMlV1SuggestTrialsRequest o) {
  buildCounterGoogleCloudMlV1SuggestTrialsRequest++;
  if (buildCounterGoogleCloudMlV1SuggestTrialsRequest < 3) {
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.suggestionCount, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1SuggestTrialsRequest--;
}

core.List<api.GoogleCloudMlV1Trial> buildUnnamed5580() {
  var o = <api.GoogleCloudMlV1Trial>[];
  o.add(buildGoogleCloudMlV1Trial());
  o.add(buildGoogleCloudMlV1Trial());
  return o;
}

void checkUnnamed5580(core.List<api.GoogleCloudMlV1Trial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Trial(o[0]);
  checkGoogleCloudMlV1Trial(o[1]);
}

core.int buildCounterGoogleCloudMlV1SuggestTrialsResponse = 0;
api.GoogleCloudMlV1SuggestTrialsResponse
    buildGoogleCloudMlV1SuggestTrialsResponse() {
  var o = api.GoogleCloudMlV1SuggestTrialsResponse();
  buildCounterGoogleCloudMlV1SuggestTrialsResponse++;
  if (buildCounterGoogleCloudMlV1SuggestTrialsResponse < 3) {
    o.endTime = "foo";
    o.startTime = "foo";
    o.studyState = "foo";
    o.trials = buildUnnamed5580();
  }
  buildCounterGoogleCloudMlV1SuggestTrialsResponse--;
  return o;
}

void checkGoogleCloudMlV1SuggestTrialsResponse(
    api.GoogleCloudMlV1SuggestTrialsResponse o) {
  buildCounterGoogleCloudMlV1SuggestTrialsResponse++;
  if (buildCounterGoogleCloudMlV1SuggestTrialsResponse < 3) {
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.studyState, unittest.equals('foo'));
    checkUnnamed5580(o.trials);
  }
  buildCounterGoogleCloudMlV1SuggestTrialsResponse--;
}

core.List<core.String> buildUnnamed5581() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5581(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5582() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5582(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1TrainingInput = 0;
api.GoogleCloudMlV1TrainingInput buildGoogleCloudMlV1TrainingInput() {
  var o = api.GoogleCloudMlV1TrainingInput();
  buildCounterGoogleCloudMlV1TrainingInput++;
  if (buildCounterGoogleCloudMlV1TrainingInput < 3) {
    o.args = buildUnnamed5581();
    o.encryptionConfig = buildGoogleCloudMlV1EncryptionConfig();
    o.evaluatorConfig = buildGoogleCloudMlV1ReplicaConfig();
    o.evaluatorCount = "foo";
    o.evaluatorType = "foo";
    o.hyperparameters = buildGoogleCloudMlV1HyperparameterSpec();
    o.jobDir = "foo";
    o.masterConfig = buildGoogleCloudMlV1ReplicaConfig();
    o.masterType = "foo";
    o.network = "foo";
    o.packageUris = buildUnnamed5582();
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

void checkGoogleCloudMlV1TrainingInput(api.GoogleCloudMlV1TrainingInput o) {
  buildCounterGoogleCloudMlV1TrainingInput++;
  if (buildCounterGoogleCloudMlV1TrainingInput < 3) {
    checkUnnamed5581(o.args);
    checkGoogleCloudMlV1EncryptionConfig(o.encryptionConfig);
    checkGoogleCloudMlV1ReplicaConfig(o.evaluatorConfig);
    unittest.expect(o.evaluatorCount, unittest.equals('foo'));
    unittest.expect(o.evaluatorType, unittest.equals('foo'));
    checkGoogleCloudMlV1HyperparameterSpec(o.hyperparameters);
    unittest.expect(o.jobDir, unittest.equals('foo'));
    checkGoogleCloudMlV1ReplicaConfig(o.masterConfig);
    unittest.expect(o.masterType, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    checkUnnamed5582(o.packageUris);
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

core.List<api.GoogleCloudMlV1HyperparameterOutput> buildUnnamed5583() {
  var o = <api.GoogleCloudMlV1HyperparameterOutput>[];
  o.add(buildGoogleCloudMlV1HyperparameterOutput());
  o.add(buildGoogleCloudMlV1HyperparameterOutput());
  return o;
}

void checkUnnamed5583(core.List<api.GoogleCloudMlV1HyperparameterOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1HyperparameterOutput(o[0]);
  checkGoogleCloudMlV1HyperparameterOutput(o[1]);
}

core.int buildCounterGoogleCloudMlV1TrainingOutput = 0;
api.GoogleCloudMlV1TrainingOutput buildGoogleCloudMlV1TrainingOutput() {
  var o = api.GoogleCloudMlV1TrainingOutput();
  buildCounterGoogleCloudMlV1TrainingOutput++;
  if (buildCounterGoogleCloudMlV1TrainingOutput < 3) {
    o.builtInAlgorithmOutput = buildGoogleCloudMlV1BuiltInAlgorithmOutput();
    o.completedTrialCount = "foo";
    o.consumedMLUnits = 42.0;
    o.hyperparameterMetricTag = "foo";
    o.isBuiltInAlgorithmJob = true;
    o.isHyperparameterTuningJob = true;
    o.trials = buildUnnamed5583();
  }
  buildCounterGoogleCloudMlV1TrainingOutput--;
  return o;
}

void checkGoogleCloudMlV1TrainingOutput(api.GoogleCloudMlV1TrainingOutput o) {
  buildCounterGoogleCloudMlV1TrainingOutput++;
  if (buildCounterGoogleCloudMlV1TrainingOutput < 3) {
    checkGoogleCloudMlV1BuiltInAlgorithmOutput(o.builtInAlgorithmOutput);
    unittest.expect(o.completedTrialCount, unittest.equals('foo'));
    unittest.expect(o.consumedMLUnits, unittest.equals(42.0));
    unittest.expect(o.hyperparameterMetricTag, unittest.equals('foo'));
    unittest.expect(o.isBuiltInAlgorithmJob, unittest.isTrue);
    unittest.expect(o.isHyperparameterTuningJob, unittest.isTrue);
    checkUnnamed5583(o.trials);
  }
  buildCounterGoogleCloudMlV1TrainingOutput--;
}

core.List<api.GoogleCloudMlV1Measurement> buildUnnamed5584() {
  var o = <api.GoogleCloudMlV1Measurement>[];
  o.add(buildGoogleCloudMlV1Measurement());
  o.add(buildGoogleCloudMlV1Measurement());
  return o;
}

void checkUnnamed5584(core.List<api.GoogleCloudMlV1Measurement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1Measurement(o[0]);
  checkGoogleCloudMlV1Measurement(o[1]);
}

core.List<api.GoogleCloudMlV1TrialParameter> buildUnnamed5585() {
  var o = <api.GoogleCloudMlV1TrialParameter>[];
  o.add(buildGoogleCloudMlV1TrialParameter());
  o.add(buildGoogleCloudMlV1TrialParameter());
  return o;
}

void checkUnnamed5585(core.List<api.GoogleCloudMlV1TrialParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1TrialParameter(o[0]);
  checkGoogleCloudMlV1TrialParameter(o[1]);
}

core.int buildCounterGoogleCloudMlV1Trial = 0;
api.GoogleCloudMlV1Trial buildGoogleCloudMlV1Trial() {
  var o = api.GoogleCloudMlV1Trial();
  buildCounterGoogleCloudMlV1Trial++;
  if (buildCounterGoogleCloudMlV1Trial < 3) {
    o.clientId = "foo";
    o.endTime = "foo";
    o.finalMeasurement = buildGoogleCloudMlV1Measurement();
    o.infeasibleReason = "foo";
    o.measurements = buildUnnamed5584();
    o.name = "foo";
    o.parameters = buildUnnamed5585();
    o.startTime = "foo";
    o.state = "foo";
    o.trialInfeasible = true;
  }
  buildCounterGoogleCloudMlV1Trial--;
  return o;
}

void checkGoogleCloudMlV1Trial(api.GoogleCloudMlV1Trial o) {
  buildCounterGoogleCloudMlV1Trial++;
  if (buildCounterGoogleCloudMlV1Trial < 3) {
    unittest.expect(o.clientId, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkGoogleCloudMlV1Measurement(o.finalMeasurement);
    unittest.expect(o.infeasibleReason, unittest.equals('foo'));
    checkUnnamed5584(o.measurements);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5585(o.parameters);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.trialInfeasible, unittest.isTrue);
  }
  buildCounterGoogleCloudMlV1Trial--;
}

core.Map<core.String, core.String> buildUnnamed5586() {
  var o = <core.String, core.String>{};
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

void checkUnnamed5586(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5587() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5587(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1Version = 0;
api.GoogleCloudMlV1Version buildGoogleCloudMlV1Version() {
  var o = api.GoogleCloudMlV1Version();
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
    o.labels = buildUnnamed5586();
    o.lastUseTime = "foo";
    o.machineType = "foo";
    o.manualScaling = buildGoogleCloudMlV1ManualScaling();
    o.name = "foo";
    o.packageUris = buildUnnamed5587();
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

void checkGoogleCloudMlV1Version(api.GoogleCloudMlV1Version o) {
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
    checkUnnamed5586(o.labels);
    unittest.expect(o.lastUseTime, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkGoogleCloudMlV1ManualScaling(o.manualScaling);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5587(o.packageUris);
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
api.GoogleCloudMlV1XraiAttribution buildGoogleCloudMlV1XraiAttribution() {
  var o = api.GoogleCloudMlV1XraiAttribution();
  buildCounterGoogleCloudMlV1XraiAttribution++;
  if (buildCounterGoogleCloudMlV1XraiAttribution < 3) {
    o.numIntegralSteps = 42;
  }
  buildCounterGoogleCloudMlV1XraiAttribution--;
  return o;
}

void checkGoogleCloudMlV1XraiAttribution(api.GoogleCloudMlV1XraiAttribution o) {
  buildCounterGoogleCloudMlV1XraiAttribution++;
  if (buildCounterGoogleCloudMlV1XraiAttribution < 3) {
    unittest.expect(o.numIntegralSteps, unittest.equals(42));
  }
  buildCounterGoogleCloudMlV1XraiAttribution--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed5588() {
  var o = <api.GoogleIamV1AuditLogConfig>[];
  o.add(buildGoogleIamV1AuditLogConfig());
  o.add(buildGoogleIamV1AuditLogConfig());
  return o;
}

void checkUnnamed5588(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  var o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed5588();
    o.service = "foo";
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed5588(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed5589() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5589(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  var o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed5589();
    o.logType = "foo";
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed5589(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed5590() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5590(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  var o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.bindingId = "foo";
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed5590();
    o.role = "foo";
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    unittest.expect(o.bindingId, unittest.equals('foo'));
    checkGoogleTypeExpr(o.condition);
    checkUnnamed5590(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed5591() {
  var o = <api.GoogleIamV1AuditConfig>[];
  o.add(buildGoogleIamV1AuditConfig());
  o.add(buildGoogleIamV1AuditConfig());
  return o;
}

void checkUnnamed5591(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed5592() {
  var o = <api.GoogleIamV1Binding>[];
  o.add(buildGoogleIamV1Binding());
  o.add(buildGoogleIamV1Binding());
  return o;
}

void checkUnnamed5592(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  var o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed5591();
    o.bindings = buildUnnamed5592();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed5591(o.auditConfigs);
    checkUnnamed5592(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterGoogleIamV1Policy--;
}

core.int buildCounterGoogleIamV1SetIamPolicyRequest = 0;
api.GoogleIamV1SetIamPolicyRequest buildGoogleIamV1SetIamPolicyRequest() {
  var o = api.GoogleIamV1SetIamPolicyRequest();
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    o.policy = buildGoogleIamV1Policy();
    o.updateMask = "foo";
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
  return o;
}

void checkGoogleIamV1SetIamPolicyRequest(api.GoogleIamV1SetIamPolicyRequest o) {
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    checkGoogleIamV1Policy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed5593() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5593(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsRequest = 0;
api.GoogleIamV1TestIamPermissionsRequest
    buildGoogleIamV1TestIamPermissionsRequest() {
  var o = api.GoogleIamV1TestIamPermissionsRequest();
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed5593();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsRequest(
    api.GoogleIamV1TestIamPermissionsRequest o) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed5593(o.permissions);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed5594() {
  var o = <core.String>[];
  o.add("foo");
  o.add("foo");
  return o;
}

void checkUnnamed5594(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleIamV1TestIamPermissionsResponse = 0;
api.GoogleIamV1TestIamPermissionsResponse
    buildGoogleIamV1TestIamPermissionsResponse() {
  var o = api.GoogleIamV1TestIamPermissionsResponse();
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed5594();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsResponse(
    api.GoogleIamV1TestIamPermissionsResponse o) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed5594(o.permissions);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed5595() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed5595(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  var o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed5595();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5595(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5596() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed5596(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed5597() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed5597(core.Map<core.String, core.Object> o) {
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
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed5596();
    o.name = "foo";
    o.response = buildUnnamed5597();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed5596(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5597(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  var o = api.GoogleProtobufEmpty();
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

core.Map<core.String, core.Object> buildUnnamed5598() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed5598(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed5599() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5598());
  o.add(buildUnnamed5598());
  return o;
}

void checkUnnamed5599(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5598(o[0]);
  checkUnnamed5598(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5599();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5599(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeExpr = 0;
api.GoogleTypeExpr buildGoogleTypeExpr() {
  var o = api.GoogleTypeExpr();
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

void checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterGoogleTypeExpr--;
}

void main() {
  unittest.group("obj-schema-GoogleApiHttpBody", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleApiHttpBody();
      var od = api.GoogleApiHttpBody.fromJson(o.toJson());
      checkGoogleApiHttpBody(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig();
      var od =
          api.GoogleCloudMlV1AutomatedStoppingConfigDecayCurveAutomatedStoppingConfig
              .fromJson(o.toJson());
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
      var od =
          api.GoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig
              .fromJson(o.toJson());
      checkGoogleCloudMlV1AutomatedStoppingConfigMedianAutomatedStoppingConfig(
          od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1HyperparameterOutputHyperparameterMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1HyperparameterOutputHyperparameterMetric();
      var od =
          api.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric.fromJson(
              o.toJson());
      checkGoogleCloudMlV1HyperparameterOutputHyperparameterMetric(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1MeasurementMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1MeasurementMetric();
      var od = api.GoogleCloudMlV1MeasurementMetric.fromJson(o.toJson());
      checkGoogleCloudMlV1MeasurementMetric(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec",
      () {
    unittest.test("to-json--from-json", () {
      var o =
          buildGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec();
      var od = api.GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec
          .fromJson(o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec();
      var od =
          api.GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec.fromJson(
              o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec();
      var od =
          api.GoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec.fromJson(
              o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpecDoubleValueSpec(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec();
      var od =
          api.GoogleCloudMlV1StudyConfigParameterSpecIntegerValueSpec.fromJson(
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
      var od =
          api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpec
              .fromJson(o.toJson());
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
      var od =
          api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec
              .fromJson(o.toJson());
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
      var od =
          api.GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec
              .fromJson(o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec(
          od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1StudyConfigMetricSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StudyConfigMetricSpec();
      var od = api.GoogleCloudMlV1StudyConfigMetricSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1StudyConfigMetricSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1StudyConfigParameterSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StudyConfigParameterSpec();
      var od = api.GoogleCloudMlV1StudyConfigParameterSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1StudyConfigParameterSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1TrialParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1TrialParameter();
      var od = api.GoogleCloudMlV1TrialParameter.fromJson(o.toJson());
      checkGoogleCloudMlV1TrialParameter(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1AcceleratorConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1AcceleratorConfig();
      var od = api.GoogleCloudMlV1AcceleratorConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1AcceleratorConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1AddTrialMeasurementRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1AddTrialMeasurementRequest();
      var od =
          api.GoogleCloudMlV1AddTrialMeasurementRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1AddTrialMeasurementRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1AutoScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1AutoScaling();
      var od = api.GoogleCloudMlV1AutoScaling.fromJson(o.toJson());
      checkGoogleCloudMlV1AutoScaling(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1AutomatedStoppingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1AutomatedStoppingConfig();
      var od = api.GoogleCloudMlV1AutomatedStoppingConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1AutomatedStoppingConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1BuiltInAlgorithmOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1BuiltInAlgorithmOutput();
      var od = api.GoogleCloudMlV1BuiltInAlgorithmOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1BuiltInAlgorithmOutput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1CancelJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1CancelJobRequest();
      var od = api.GoogleCloudMlV1CancelJobRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1CancelJobRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Capability", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Capability();
      var od = api.GoogleCloudMlV1Capability.fromJson(o.toJson());
      checkGoogleCloudMlV1Capability(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata();
      var od =
          api.GoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata.fromJson(
              o.toJson());
      checkGoogleCloudMlV1CheckTrialEarlyStoppingStateMetatdata(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest();
      var od = api.GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest.fromJson(
          o.toJson());
      checkGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest(od);
    });
  });

  unittest.group(
      "obj-schema-GoogleCloudMlV1CheckTrialEarlyStoppingStateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse();
      var od = api.GoogleCloudMlV1CheckTrialEarlyStoppingStateResponse.fromJson(
          o.toJson());
      checkGoogleCloudMlV1CheckTrialEarlyStoppingStateResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1CompleteTrialRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1CompleteTrialRequest();
      var od = api.GoogleCloudMlV1CompleteTrialRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1CompleteTrialRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Config", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Config();
      var od = api.GoogleCloudMlV1Config.fromJson(o.toJson());
      checkGoogleCloudMlV1Config(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ContainerPort", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ContainerPort();
      var od = api.GoogleCloudMlV1ContainerPort.fromJson(o.toJson());
      checkGoogleCloudMlV1ContainerPort(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ContainerSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ContainerSpec();
      var od = api.GoogleCloudMlV1ContainerSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1ContainerSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1EncryptionConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1EncryptionConfig();
      var od = api.GoogleCloudMlV1EncryptionConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1EncryptionConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1EnvVar", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1EnvVar();
      var od = api.GoogleCloudMlV1EnvVar.fromJson(o.toJson());
      checkGoogleCloudMlV1EnvVar(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ExplainRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ExplainRequest();
      var od = api.GoogleCloudMlV1ExplainRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1ExplainRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ExplanationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ExplanationConfig();
      var od = api.GoogleCloudMlV1ExplanationConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1ExplanationConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1GetConfigResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1GetConfigResponse();
      var od = api.GoogleCloudMlV1GetConfigResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1GetConfigResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1HyperparameterOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1HyperparameterOutput();
      var od = api.GoogleCloudMlV1HyperparameterOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1HyperparameterOutput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1HyperparameterSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1HyperparameterSpec();
      var od = api.GoogleCloudMlV1HyperparameterSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1HyperparameterSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1IntegratedGradientsAttribution",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1IntegratedGradientsAttribution();
      var od = api.GoogleCloudMlV1IntegratedGradientsAttribution.fromJson(
          o.toJson());
      checkGoogleCloudMlV1IntegratedGradientsAttribution(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Job();
      var od = api.GoogleCloudMlV1Job.fromJson(o.toJson());
      checkGoogleCloudMlV1Job(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ListJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListJobsResponse();
      var od = api.GoogleCloudMlV1ListJobsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListJobsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ListLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListLocationsResponse();
      var od = api.GoogleCloudMlV1ListLocationsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ListModelsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListModelsResponse();
      var od = api.GoogleCloudMlV1ListModelsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListModelsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ListStudiesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListStudiesResponse();
      var od = api.GoogleCloudMlV1ListStudiesResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListStudiesResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ListTrialsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListTrialsResponse();
      var od = api.GoogleCloudMlV1ListTrialsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListTrialsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ListVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ListVersionsResponse();
      var od = api.GoogleCloudMlV1ListVersionsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1ListVersionsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Location();
      var od = api.GoogleCloudMlV1Location.fromJson(o.toJson());
      checkGoogleCloudMlV1Location(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ManualScaling", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ManualScaling();
      var od = api.GoogleCloudMlV1ManualScaling.fromJson(o.toJson());
      checkGoogleCloudMlV1ManualScaling(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Measurement", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Measurement();
      var od = api.GoogleCloudMlV1Measurement.fromJson(o.toJson());
      checkGoogleCloudMlV1Measurement(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Model", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Model();
      var od = api.GoogleCloudMlV1Model.fromJson(o.toJson());
      checkGoogleCloudMlV1Model(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1OperationMetadata();
      var od = api.GoogleCloudMlV1OperationMetadata.fromJson(o.toJson());
      checkGoogleCloudMlV1OperationMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ParameterSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ParameterSpec();
      var od = api.GoogleCloudMlV1ParameterSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1ParameterSpec(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1PredictRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1PredictRequest();
      var od = api.GoogleCloudMlV1PredictRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1PredictRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1PredictionInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1PredictionInput();
      var od = api.GoogleCloudMlV1PredictionInput.fromJson(o.toJson());
      checkGoogleCloudMlV1PredictionInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1PredictionOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1PredictionOutput();
      var od = api.GoogleCloudMlV1PredictionOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1PredictionOutput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1ReplicaConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1ReplicaConfig();
      var od = api.GoogleCloudMlV1ReplicaConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1ReplicaConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1RequestLoggingConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1RequestLoggingConfig();
      var od = api.GoogleCloudMlV1RequestLoggingConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1RequestLoggingConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1RouteMap", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1RouteMap();
      var od = api.GoogleCloudMlV1RouteMap.fromJson(o.toJson());
      checkGoogleCloudMlV1RouteMap(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1SampledShapleyAttribution", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1SampledShapleyAttribution();
      var od =
          api.GoogleCloudMlV1SampledShapleyAttribution.fromJson(o.toJson());
      checkGoogleCloudMlV1SampledShapleyAttribution(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Scheduling", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Scheduling();
      var od = api.GoogleCloudMlV1Scheduling.fromJson(o.toJson());
      checkGoogleCloudMlV1Scheduling(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1SetDefaultVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1SetDefaultVersionRequest();
      var od = api.GoogleCloudMlV1SetDefaultVersionRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1SetDefaultVersionRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1StopTrialRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StopTrialRequest();
      var od = api.GoogleCloudMlV1StopTrialRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1StopTrialRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Study", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Study();
      var od = api.GoogleCloudMlV1Study.fromJson(o.toJson());
      checkGoogleCloudMlV1Study(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1StudyConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1StudyConfig();
      var od = api.GoogleCloudMlV1StudyConfig.fromJson(o.toJson());
      checkGoogleCloudMlV1StudyConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1SuggestTrialsMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1SuggestTrialsMetadata();
      var od = api.GoogleCloudMlV1SuggestTrialsMetadata.fromJson(o.toJson());
      checkGoogleCloudMlV1SuggestTrialsMetadata(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1SuggestTrialsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1SuggestTrialsRequest();
      var od = api.GoogleCloudMlV1SuggestTrialsRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1SuggestTrialsRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1SuggestTrialsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1SuggestTrialsResponse();
      var od = api.GoogleCloudMlV1SuggestTrialsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1SuggestTrialsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1TrainingInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1TrainingInput();
      var od = api.GoogleCloudMlV1TrainingInput.fromJson(o.toJson());
      checkGoogleCloudMlV1TrainingInput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1TrainingOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1TrainingOutput();
      var od = api.GoogleCloudMlV1TrainingOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1TrainingOutput(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Trial", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Trial();
      var od = api.GoogleCloudMlV1Trial.fromJson(o.toJson());
      checkGoogleCloudMlV1Trial(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Version();
      var od = api.GoogleCloudMlV1Version.fromJson(o.toJson());
      checkGoogleCloudMlV1Version(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudMlV1XraiAttribution", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1XraiAttribution();
      var od = api.GoogleCloudMlV1XraiAttribution.fromJson(o.toJson());
      checkGoogleCloudMlV1XraiAttribution(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1AuditConfig();
      var od = api.GoogleIamV1AuditConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1AuditLogConfig();
      var od = api.GoogleIamV1AuditLogConfig.fromJson(o.toJson());
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1Binding();
      var od = api.GoogleIamV1Binding.fromJson(o.toJson());
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1Policy();
      var od = api.GoogleIamV1Policy.fromJson(o.toJson());
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1SetIamPolicyRequest();
      var od = api.GoogleIamV1SetIamPolicyRequest.fromJson(o.toJson());
      checkGoogleIamV1SetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1TestIamPermissionsRequest();
      var od = api.GoogleIamV1TestIamPermissionsRequest.fromJson(o.toJson());
      checkGoogleIamV1TestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-GoogleIamV1TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleIamV1TestIamPermissionsResponse();
      var od = api.GoogleIamV1TestIamPermissionsResponse.fromJson(o.toJson());
      checkGoogleIamV1TestIamPermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od = api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-GoogleLongrunningOperation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningOperation();
      var od = api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group("obj-schema-GoogleProtobufEmpty", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleProtobufEmpty();
      var od = api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group("obj-schema-GoogleRpcStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleRpcStatus();
      var od = api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group("obj-schema-GoogleTypeExpr", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleTypeExpr();
      var od = api.GoogleTypeExpr.fromJson(o.toJson());
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--explain", () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.MlApi(mock).projects;
      var arg_request = buildGoogleCloudMlV1ExplainRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1ExplainRequest.fromJson(json);
        checkGoogleCloudMlV1ExplainRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .explain(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleApiHttpBody(response);
      })));
    });

    unittest.test("method--getConfig", () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.MlApi(mock).projects;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1GetConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getConfig(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1GetConfigResponse(response);
      })));
    });

    unittest.test("method--predict", () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.MlApi(mock).projects;
      var arg_request = buildGoogleCloudMlV1PredictRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1PredictRequest.fromJson(json);
        checkGoogleCloudMlV1PredictRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleApiHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
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
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleCloudMlV1CancelJobRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1CancelJobRequest.fromJson(json);
        checkGoogleCloudMlV1CancelJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleCloudMlV1Job();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1Job.fromJson(json);
        checkGoogleCloudMlV1Job(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Job());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Job(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.MlApi(mock).projects.jobs;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Job());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Job(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.MlApi(mock).projects.jobs;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
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
        return async.Future.value(stringResponse(200, h, resp));
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
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.MlApi(mock).projects.jobs;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1ListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1ListJobsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleCloudMlV1Job();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1Job.fromJson(json);
        checkGoogleCloudMlV1Job(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Job());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Job(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleIamV1SetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(json);
        checkGoogleIamV1SetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1Policy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(json);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
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
      var mock = HttpServerMock();
      api.ProjectsLocationsResourceApi res = api.MlApi(mock).projects.locations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Location());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Location(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsResourceApi res = api.MlApi(mock).projects.locations;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudMlV1ListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
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
      var mock = HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          api.MlApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsOperationsResourceApi res =
          api.MlApi(mock).projects.locations.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
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
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesResourceApi res =
          api.MlApi(mock).projects.locations.studies;
      var arg_request = buildGoogleCloudMlV1Study();
      var arg_parent = "foo";
      var arg_studyId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1Study.fromJson(json);
        checkGoogleCloudMlV1Study(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["studyId"].first, unittest.equals(arg_studyId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Study());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              studyId: arg_studyId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Study(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesResourceApi res =
          api.MlApi(mock).projects.locations.studies;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesResourceApi res =
          api.MlApi(mock).projects.locations.studies;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Study());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Study(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesResourceApi res =
          api.MlApi(mock).projects.locations.studies;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudMlV1ListStudiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
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
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          api.MlApi(mock).projects.locations.studies.trials;
      var arg_request = buildGoogleCloudMlV1AddTrialMeasurementRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1AddTrialMeasurementRequest.fromJson(json);
        checkGoogleCloudMlV1AddTrialMeasurementRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Trial());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addMeasurement(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Trial(response);
      })));
    });

    unittest.test("method--checkEarlyStoppingState", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          api.MlApi(mock).projects.locations.studies.trials;
      var arg_request =
          buildGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudMlV1CheckTrialEarlyStoppingStateRequest.fromJson(
                json);
        checkGoogleCloudMlV1CheckTrialEarlyStoppingStateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .checkEarlyStoppingState(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--complete", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          api.MlApi(mock).projects.locations.studies.trials;
      var arg_request = buildGoogleCloudMlV1CompleteTrialRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1CompleteTrialRequest.fromJson(json);
        checkGoogleCloudMlV1CompleteTrialRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Trial());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .complete(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Trial(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          api.MlApi(mock).projects.locations.studies.trials;
      var arg_request = buildGoogleCloudMlV1Trial();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1Trial.fromJson(json);
        checkGoogleCloudMlV1Trial(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Trial());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Trial(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          api.MlApi(mock).projects.locations.studies.trials;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          api.MlApi(mock).projects.locations.studies.trials;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Trial());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Trial(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          api.MlApi(mock).projects.locations.studies.trials;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudMlV1ListTrialsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1ListTrialsResponse(response);
      })));
    });

    unittest.test("method--stop", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          api.MlApi(mock).projects.locations.studies.trials;
      var arg_request = buildGoogleCloudMlV1StopTrialRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1StopTrialRequest.fromJson(json);
        checkGoogleCloudMlV1StopTrialRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Trial());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .stop(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Trial(response);
      })));
    });

    unittest.test("method--suggest", () {
      var mock = HttpServerMock();
      api.ProjectsLocationsStudiesTrialsResourceApi res =
          api.MlApi(mock).projects.locations.studies.trials;
      var arg_request = buildGoogleCloudMlV1SuggestTrialsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1SuggestTrialsRequest.fromJson(json);
        checkGoogleCloudMlV1SuggestTrialsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
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
      var mock = HttpServerMock();
      api.ProjectsModelsResourceApi res = api.MlApi(mock).projects.models;
      var arg_request = buildGoogleCloudMlV1Model();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1Model.fromJson(json);
        checkGoogleCloudMlV1Model(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Model());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Model(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = HttpServerMock();
      api.ProjectsModelsResourceApi res = api.MlApi(mock).projects.models;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsModelsResourceApi res = api.MlApi(mock).projects.models;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Model());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Model(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = HttpServerMock();
      api.ProjectsModelsResourceApi res = api.MlApi(mock).projects.models;
      var arg_resource = "foo";
      var arg_options_requestedPolicyVersion = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
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
        return async.Future.value(stringResponse(200, h, resp));
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
      var mock = HttpServerMock();
      api.ProjectsModelsResourceApi res = api.MlApi(mock).projects.models;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
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
            convert.json.encode(buildGoogleCloudMlV1ListModelsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1ListModelsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = HttpServerMock();
      api.ProjectsModelsResourceApi res = api.MlApi(mock).projects.models;
      var arg_request = buildGoogleCloudMlV1Model();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1Model.fromJson(json);
        checkGoogleCloudMlV1Model(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = HttpServerMock();
      api.ProjectsModelsResourceApi res = api.MlApi(mock).projects.models;
      var arg_request = buildGoogleIamV1SetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(json);
        checkGoogleIamV1SetIamPolicyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleIamV1Policy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = HttpServerMock();
      api.ProjectsModelsResourceApi res = api.MlApi(mock).projects.models;
      var arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(json);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
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
      var mock = HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res =
          api.MlApi(mock).projects.models.versions;
      var arg_request = buildGoogleCloudMlV1Version();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1Version.fromJson(json);
        checkGoogleCloudMlV1Version(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res =
          api.MlApi(mock).projects.models.versions;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res =
          api.MlApi(mock).projects.models.versions;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Version());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1Version(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res =
          api.MlApi(mock).projects.models.versions;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleCloudMlV1ListVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              filter: arg_filter,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudMlV1ListVersionsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res =
          api.MlApi(mock).projects.models.versions;
      var arg_request = buildGoogleCloudMlV1Version();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1Version.fromJson(json);
        checkGoogleCloudMlV1Version(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
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
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--setDefault", () {
      var mock = HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res =
          api.MlApi(mock).projects.models.versions;
      var arg_request = buildGoogleCloudMlV1SetDefaultVersionRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudMlV1SetDefaultVersionRequest.fromJson(json);
        checkGoogleCloudMlV1SetDefaultVersionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleCloudMlV1Version());
        return async.Future.value(stringResponse(200, h, resp));
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
      var mock = HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          api.MlApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          api.MlApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = HttpServerMock();
      api.ProjectsOperationsResourceApi res =
          api.MlApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split("&")) {
            var keyValue = part.split("=");
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              filter: arg_filter,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });
  });
}
