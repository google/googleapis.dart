library googleapis_beta.ml.v1beta1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/ml/v1beta1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterGoogleApiHttpBody = 0;
buildGoogleApiHttpBody() {
  var o = new api.GoogleApiHttpBody();
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    o.contentType = "foo";
    o.data = "foo";
  }
  buildCounterGoogleApiHttpBody--;
  return o;
}

checkGoogleApiHttpBody(api.GoogleApiHttpBody o) {
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
  }
  buildCounterGoogleApiHttpBody--;
}

core.int buildCounterGoogleCloudMlV1OperationMetadata = 0;
buildGoogleCloudMlV1OperationMetadata() {
  var o = new api.GoogleCloudMlV1OperationMetadata();
  buildCounterGoogleCloudMlV1OperationMetadata++;
  if (buildCounterGoogleCloudMlV1OperationMetadata < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.isCancellationRequested = true;
    o.modelName = "foo";
    o.operationType = "foo";
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
    unittest.expect(o.modelName, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkGoogleCloudMlV1Version(o.version);
  }
  buildCounterGoogleCloudMlV1OperationMetadata--;
}

core.int buildCounterGoogleCloudMlV1Version = 0;
buildGoogleCloudMlV1Version() {
  var o = new api.GoogleCloudMlV1Version();
  buildCounterGoogleCloudMlV1Version++;
  if (buildCounterGoogleCloudMlV1Version < 3) {
    o.createTime = "foo";
    o.deploymentUri = "foo";
    o.description = "foo";
    o.isDefault = true;
    o.lastUseTime = "foo";
    o.name = "foo";
    o.runtimeVersion = "foo";
  }
  buildCounterGoogleCloudMlV1Version--;
  return o;
}

checkGoogleCloudMlV1Version(api.GoogleCloudMlV1Version o) {
  buildCounterGoogleCloudMlV1Version++;
  if (buildCounterGoogleCloudMlV1Version < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.deploymentUri, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.isDefault, unittest.isTrue);
    unittest.expect(o.lastUseTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.runtimeVersion, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1Version--;
}

core.int buildCounterGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric = 0;
buildGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric() {
  var o = new api.GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric();
  buildCounterGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric++;
  if (buildCounterGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric < 3) {
    o.objectiveValue = 42.0;
    o.trainingStep = "foo";
  }
  buildCounterGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric--;
  return o;
}

checkGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric(api.GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric o) {
  buildCounterGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric++;
  if (buildCounterGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric < 3) {
    unittest.expect(o.objectiveValue, unittest.equals(42.0));
    unittest.expect(o.trainingStep, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric--;
}

core.int buildCounterGoogleCloudMlV1beta1CancelJobRequest = 0;
buildGoogleCloudMlV1beta1CancelJobRequest() {
  var o = new api.GoogleCloudMlV1beta1CancelJobRequest();
  buildCounterGoogleCloudMlV1beta1CancelJobRequest++;
  if (buildCounterGoogleCloudMlV1beta1CancelJobRequest < 3) {
  }
  buildCounterGoogleCloudMlV1beta1CancelJobRequest--;
  return o;
}

checkGoogleCloudMlV1beta1CancelJobRequest(api.GoogleCloudMlV1beta1CancelJobRequest o) {
  buildCounterGoogleCloudMlV1beta1CancelJobRequest++;
  if (buildCounterGoogleCloudMlV1beta1CancelJobRequest < 3) {
  }
  buildCounterGoogleCloudMlV1beta1CancelJobRequest--;
}

core.int buildCounterGoogleCloudMlV1beta1GetConfigResponse = 0;
buildGoogleCloudMlV1beta1GetConfigResponse() {
  var o = new api.GoogleCloudMlV1beta1GetConfigResponse();
  buildCounterGoogleCloudMlV1beta1GetConfigResponse++;
  if (buildCounterGoogleCloudMlV1beta1GetConfigResponse < 3) {
    o.serviceAccount = "foo";
    o.serviceAccountProject = "foo";
  }
  buildCounterGoogleCloudMlV1beta1GetConfigResponse--;
  return o;
}

checkGoogleCloudMlV1beta1GetConfigResponse(api.GoogleCloudMlV1beta1GetConfigResponse o) {
  buildCounterGoogleCloudMlV1beta1GetConfigResponse++;
  if (buildCounterGoogleCloudMlV1beta1GetConfigResponse < 3) {
    unittest.expect(o.serviceAccount, unittest.equals('foo'));
    unittest.expect(o.serviceAccountProject, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1beta1GetConfigResponse--;
}

buildUnnamed3222() {
  var o = new core.List<api.GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric>();
  o.add(buildGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric());
  o.add(buildGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric());
  return o;
}

checkUnnamed3222(core.List<api.GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric(o[0]);
  checkGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric(o[1]);
}

buildUnnamed3223() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3223(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1beta1HyperparameterOutput = 0;
buildGoogleCloudMlV1beta1HyperparameterOutput() {
  var o = new api.GoogleCloudMlV1beta1HyperparameterOutput();
  buildCounterGoogleCloudMlV1beta1HyperparameterOutput++;
  if (buildCounterGoogleCloudMlV1beta1HyperparameterOutput < 3) {
    o.allMetrics = buildUnnamed3222();
    o.finalMetric = buildGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric();
    o.hyperparameters = buildUnnamed3223();
    o.trialId = "foo";
  }
  buildCounterGoogleCloudMlV1beta1HyperparameterOutput--;
  return o;
}

checkGoogleCloudMlV1beta1HyperparameterOutput(api.GoogleCloudMlV1beta1HyperparameterOutput o) {
  buildCounterGoogleCloudMlV1beta1HyperparameterOutput++;
  if (buildCounterGoogleCloudMlV1beta1HyperparameterOutput < 3) {
    checkUnnamed3222(o.allMetrics);
    checkGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric(o.finalMetric);
    checkUnnamed3223(o.hyperparameters);
    unittest.expect(o.trialId, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1beta1HyperparameterOutput--;
}

buildUnnamed3224() {
  var o = new core.List<api.GoogleCloudMlV1beta1ParameterSpec>();
  o.add(buildGoogleCloudMlV1beta1ParameterSpec());
  o.add(buildGoogleCloudMlV1beta1ParameterSpec());
  return o;
}

checkUnnamed3224(core.List<api.GoogleCloudMlV1beta1ParameterSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1beta1ParameterSpec(o[0]);
  checkGoogleCloudMlV1beta1ParameterSpec(o[1]);
}

core.int buildCounterGoogleCloudMlV1beta1HyperparameterSpec = 0;
buildGoogleCloudMlV1beta1HyperparameterSpec() {
  var o = new api.GoogleCloudMlV1beta1HyperparameterSpec();
  buildCounterGoogleCloudMlV1beta1HyperparameterSpec++;
  if (buildCounterGoogleCloudMlV1beta1HyperparameterSpec < 3) {
    o.goal = "foo";
    o.hyperparameterMetricTag = "foo";
    o.maxParallelTrials = 42;
    o.maxTrials = 42;
    o.params = buildUnnamed3224();
  }
  buildCounterGoogleCloudMlV1beta1HyperparameterSpec--;
  return o;
}

checkGoogleCloudMlV1beta1HyperparameterSpec(api.GoogleCloudMlV1beta1HyperparameterSpec o) {
  buildCounterGoogleCloudMlV1beta1HyperparameterSpec++;
  if (buildCounterGoogleCloudMlV1beta1HyperparameterSpec < 3) {
    unittest.expect(o.goal, unittest.equals('foo'));
    unittest.expect(o.hyperparameterMetricTag, unittest.equals('foo'));
    unittest.expect(o.maxParallelTrials, unittest.equals(42));
    unittest.expect(o.maxTrials, unittest.equals(42));
    checkUnnamed3224(o.params);
  }
  buildCounterGoogleCloudMlV1beta1HyperparameterSpec--;
}

core.int buildCounterGoogleCloudMlV1beta1Job = 0;
buildGoogleCloudMlV1beta1Job() {
  var o = new api.GoogleCloudMlV1beta1Job();
  buildCounterGoogleCloudMlV1beta1Job++;
  if (buildCounterGoogleCloudMlV1beta1Job < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.errorMessage = "foo";
    o.jobId = "foo";
    o.predictionInput = buildGoogleCloudMlV1beta1PredictionInput();
    o.predictionOutput = buildGoogleCloudMlV1beta1PredictionOutput();
    o.startTime = "foo";
    o.state = "foo";
    o.trainingInput = buildGoogleCloudMlV1beta1TrainingInput();
    o.trainingOutput = buildGoogleCloudMlV1beta1TrainingOutput();
  }
  buildCounterGoogleCloudMlV1beta1Job--;
  return o;
}

checkGoogleCloudMlV1beta1Job(api.GoogleCloudMlV1beta1Job o) {
  buildCounterGoogleCloudMlV1beta1Job++;
  if (buildCounterGoogleCloudMlV1beta1Job < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    unittest.expect(o.jobId, unittest.equals('foo'));
    checkGoogleCloudMlV1beta1PredictionInput(o.predictionInput);
    checkGoogleCloudMlV1beta1PredictionOutput(o.predictionOutput);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkGoogleCloudMlV1beta1TrainingInput(o.trainingInput);
    checkGoogleCloudMlV1beta1TrainingOutput(o.trainingOutput);
  }
  buildCounterGoogleCloudMlV1beta1Job--;
}

buildUnnamed3225() {
  var o = new core.List<api.GoogleCloudMlV1beta1Job>();
  o.add(buildGoogleCloudMlV1beta1Job());
  o.add(buildGoogleCloudMlV1beta1Job());
  return o;
}

checkUnnamed3225(core.List<api.GoogleCloudMlV1beta1Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1beta1Job(o[0]);
  checkGoogleCloudMlV1beta1Job(o[1]);
}

core.int buildCounterGoogleCloudMlV1beta1ListJobsResponse = 0;
buildGoogleCloudMlV1beta1ListJobsResponse() {
  var o = new api.GoogleCloudMlV1beta1ListJobsResponse();
  buildCounterGoogleCloudMlV1beta1ListJobsResponse++;
  if (buildCounterGoogleCloudMlV1beta1ListJobsResponse < 3) {
    o.jobs = buildUnnamed3225();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudMlV1beta1ListJobsResponse--;
  return o;
}

checkGoogleCloudMlV1beta1ListJobsResponse(api.GoogleCloudMlV1beta1ListJobsResponse o) {
  buildCounterGoogleCloudMlV1beta1ListJobsResponse++;
  if (buildCounterGoogleCloudMlV1beta1ListJobsResponse < 3) {
    checkUnnamed3225(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1beta1ListJobsResponse--;
}

buildUnnamed3226() {
  var o = new core.List<api.GoogleCloudMlV1beta1Model>();
  o.add(buildGoogleCloudMlV1beta1Model());
  o.add(buildGoogleCloudMlV1beta1Model());
  return o;
}

checkUnnamed3226(core.List<api.GoogleCloudMlV1beta1Model> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1beta1Model(o[0]);
  checkGoogleCloudMlV1beta1Model(o[1]);
}

core.int buildCounterGoogleCloudMlV1beta1ListModelsResponse = 0;
buildGoogleCloudMlV1beta1ListModelsResponse() {
  var o = new api.GoogleCloudMlV1beta1ListModelsResponse();
  buildCounterGoogleCloudMlV1beta1ListModelsResponse++;
  if (buildCounterGoogleCloudMlV1beta1ListModelsResponse < 3) {
    o.models = buildUnnamed3226();
    o.nextPageToken = "foo";
  }
  buildCounterGoogleCloudMlV1beta1ListModelsResponse--;
  return o;
}

checkGoogleCloudMlV1beta1ListModelsResponse(api.GoogleCloudMlV1beta1ListModelsResponse o) {
  buildCounterGoogleCloudMlV1beta1ListModelsResponse++;
  if (buildCounterGoogleCloudMlV1beta1ListModelsResponse < 3) {
    checkUnnamed3226(o.models);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1beta1ListModelsResponse--;
}

buildUnnamed3227() {
  var o = new core.List<api.GoogleCloudMlV1beta1Version>();
  o.add(buildGoogleCloudMlV1beta1Version());
  o.add(buildGoogleCloudMlV1beta1Version());
  return o;
}

checkUnnamed3227(core.List<api.GoogleCloudMlV1beta1Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1beta1Version(o[0]);
  checkGoogleCloudMlV1beta1Version(o[1]);
}

core.int buildCounterGoogleCloudMlV1beta1ListVersionsResponse = 0;
buildGoogleCloudMlV1beta1ListVersionsResponse() {
  var o = new api.GoogleCloudMlV1beta1ListVersionsResponse();
  buildCounterGoogleCloudMlV1beta1ListVersionsResponse++;
  if (buildCounterGoogleCloudMlV1beta1ListVersionsResponse < 3) {
    o.nextPageToken = "foo";
    o.versions = buildUnnamed3227();
  }
  buildCounterGoogleCloudMlV1beta1ListVersionsResponse--;
  return o;
}

checkGoogleCloudMlV1beta1ListVersionsResponse(api.GoogleCloudMlV1beta1ListVersionsResponse o) {
  buildCounterGoogleCloudMlV1beta1ListVersionsResponse++;
  if (buildCounterGoogleCloudMlV1beta1ListVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3227(o.versions);
  }
  buildCounterGoogleCloudMlV1beta1ListVersionsResponse--;
}

buildUnnamed3228() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3228(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1beta1Model = 0;
buildGoogleCloudMlV1beta1Model() {
  var o = new api.GoogleCloudMlV1beta1Model();
  buildCounterGoogleCloudMlV1beta1Model++;
  if (buildCounterGoogleCloudMlV1beta1Model < 3) {
    o.defaultVersion = buildGoogleCloudMlV1beta1Version();
    o.description = "foo";
    o.name = "foo";
    o.onlinePredictionLogging = true;
    o.regions = buildUnnamed3228();
  }
  buildCounterGoogleCloudMlV1beta1Model--;
  return o;
}

checkGoogleCloudMlV1beta1Model(api.GoogleCloudMlV1beta1Model o) {
  buildCounterGoogleCloudMlV1beta1Model++;
  if (buildCounterGoogleCloudMlV1beta1Model < 3) {
    checkGoogleCloudMlV1beta1Version(o.defaultVersion);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.onlinePredictionLogging, unittest.isTrue);
    checkUnnamed3228(o.regions);
  }
  buildCounterGoogleCloudMlV1beta1Model--;
}

core.int buildCounterGoogleCloudMlV1beta1OperationMetadata = 0;
buildGoogleCloudMlV1beta1OperationMetadata() {
  var o = new api.GoogleCloudMlV1beta1OperationMetadata();
  buildCounterGoogleCloudMlV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudMlV1beta1OperationMetadata < 3) {
    o.createTime = "foo";
    o.endTime = "foo";
    o.isCancellationRequested = true;
    o.modelName = "foo";
    o.operationType = "foo";
    o.startTime = "foo";
    o.version = buildGoogleCloudMlV1beta1Version();
  }
  buildCounterGoogleCloudMlV1beta1OperationMetadata--;
  return o;
}

checkGoogleCloudMlV1beta1OperationMetadata(api.GoogleCloudMlV1beta1OperationMetadata o) {
  buildCounterGoogleCloudMlV1beta1OperationMetadata++;
  if (buildCounterGoogleCloudMlV1beta1OperationMetadata < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.isCancellationRequested, unittest.isTrue);
    unittest.expect(o.modelName, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkGoogleCloudMlV1beta1Version(o.version);
  }
  buildCounterGoogleCloudMlV1beta1OperationMetadata--;
}

buildUnnamed3229() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3229(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3230() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed3230(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterGoogleCloudMlV1beta1ParameterSpec = 0;
buildGoogleCloudMlV1beta1ParameterSpec() {
  var o = new api.GoogleCloudMlV1beta1ParameterSpec();
  buildCounterGoogleCloudMlV1beta1ParameterSpec++;
  if (buildCounterGoogleCloudMlV1beta1ParameterSpec < 3) {
    o.categoricalValues = buildUnnamed3229();
    o.discreteValues = buildUnnamed3230();
    o.maxValue = 42.0;
    o.minValue = 42.0;
    o.parameterName = "foo";
    o.scaleType = "foo";
    o.type = "foo";
  }
  buildCounterGoogleCloudMlV1beta1ParameterSpec--;
  return o;
}

checkGoogleCloudMlV1beta1ParameterSpec(api.GoogleCloudMlV1beta1ParameterSpec o) {
  buildCounterGoogleCloudMlV1beta1ParameterSpec++;
  if (buildCounterGoogleCloudMlV1beta1ParameterSpec < 3) {
    checkUnnamed3229(o.categoricalValues);
    checkUnnamed3230(o.discreteValues);
    unittest.expect(o.maxValue, unittest.equals(42.0));
    unittest.expect(o.minValue, unittest.equals(42.0));
    unittest.expect(o.parameterName, unittest.equals('foo'));
    unittest.expect(o.scaleType, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1beta1ParameterSpec--;
}

core.int buildCounterGoogleCloudMlV1beta1PredictRequest = 0;
buildGoogleCloudMlV1beta1PredictRequest() {
  var o = new api.GoogleCloudMlV1beta1PredictRequest();
  buildCounterGoogleCloudMlV1beta1PredictRequest++;
  if (buildCounterGoogleCloudMlV1beta1PredictRequest < 3) {
    o.httpBody = buildGoogleApiHttpBody();
  }
  buildCounterGoogleCloudMlV1beta1PredictRequest--;
  return o;
}

checkGoogleCloudMlV1beta1PredictRequest(api.GoogleCloudMlV1beta1PredictRequest o) {
  buildCounterGoogleCloudMlV1beta1PredictRequest++;
  if (buildCounterGoogleCloudMlV1beta1PredictRequest < 3) {
    checkGoogleApiHttpBody(o.httpBody);
  }
  buildCounterGoogleCloudMlV1beta1PredictRequest--;
}

buildUnnamed3231() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3231(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1beta1PredictionInput = 0;
buildGoogleCloudMlV1beta1PredictionInput() {
  var o = new api.GoogleCloudMlV1beta1PredictionInput();
  buildCounterGoogleCloudMlV1beta1PredictionInput++;
  if (buildCounterGoogleCloudMlV1beta1PredictionInput < 3) {
    o.dataFormat = "foo";
    o.inputPaths = buildUnnamed3231();
    o.maxWorkerCount = "foo";
    o.modelName = "foo";
    o.outputPath = "foo";
    o.region = "foo";
    o.runtimeVersion = "foo";
    o.uri = "foo";
    o.versionName = "foo";
  }
  buildCounterGoogleCloudMlV1beta1PredictionInput--;
  return o;
}

checkGoogleCloudMlV1beta1PredictionInput(api.GoogleCloudMlV1beta1PredictionInput o) {
  buildCounterGoogleCloudMlV1beta1PredictionInput++;
  if (buildCounterGoogleCloudMlV1beta1PredictionInput < 3) {
    unittest.expect(o.dataFormat, unittest.equals('foo'));
    checkUnnamed3231(o.inputPaths);
    unittest.expect(o.maxWorkerCount, unittest.equals('foo'));
    unittest.expect(o.modelName, unittest.equals('foo'));
    unittest.expect(o.outputPath, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.runtimeVersion, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1beta1PredictionInput--;
}

core.int buildCounterGoogleCloudMlV1beta1PredictionOutput = 0;
buildGoogleCloudMlV1beta1PredictionOutput() {
  var o = new api.GoogleCloudMlV1beta1PredictionOutput();
  buildCounterGoogleCloudMlV1beta1PredictionOutput++;
  if (buildCounterGoogleCloudMlV1beta1PredictionOutput < 3) {
    o.errorCount = "foo";
    o.nodeHours = 42.0;
    o.outputPath = "foo";
    o.predictionCount = "foo";
  }
  buildCounterGoogleCloudMlV1beta1PredictionOutput--;
  return o;
}

checkGoogleCloudMlV1beta1PredictionOutput(api.GoogleCloudMlV1beta1PredictionOutput o) {
  buildCounterGoogleCloudMlV1beta1PredictionOutput++;
  if (buildCounterGoogleCloudMlV1beta1PredictionOutput < 3) {
    unittest.expect(o.errorCount, unittest.equals('foo'));
    unittest.expect(o.nodeHours, unittest.equals(42.0));
    unittest.expect(o.outputPath, unittest.equals('foo'));
    unittest.expect(o.predictionCount, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1beta1PredictionOutput--;
}

core.int buildCounterGoogleCloudMlV1beta1SetDefaultVersionRequest = 0;
buildGoogleCloudMlV1beta1SetDefaultVersionRequest() {
  var o = new api.GoogleCloudMlV1beta1SetDefaultVersionRequest();
  buildCounterGoogleCloudMlV1beta1SetDefaultVersionRequest++;
  if (buildCounterGoogleCloudMlV1beta1SetDefaultVersionRequest < 3) {
  }
  buildCounterGoogleCloudMlV1beta1SetDefaultVersionRequest--;
  return o;
}

checkGoogleCloudMlV1beta1SetDefaultVersionRequest(api.GoogleCloudMlV1beta1SetDefaultVersionRequest o) {
  buildCounterGoogleCloudMlV1beta1SetDefaultVersionRequest++;
  if (buildCounterGoogleCloudMlV1beta1SetDefaultVersionRequest < 3) {
  }
  buildCounterGoogleCloudMlV1beta1SetDefaultVersionRequest--;
}

buildUnnamed3232() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3232(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3233() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3233(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudMlV1beta1TrainingInput = 0;
buildGoogleCloudMlV1beta1TrainingInput() {
  var o = new api.GoogleCloudMlV1beta1TrainingInput();
  buildCounterGoogleCloudMlV1beta1TrainingInput++;
  if (buildCounterGoogleCloudMlV1beta1TrainingInput < 3) {
    o.args = buildUnnamed3232();
    o.hyperparameters = buildGoogleCloudMlV1beta1HyperparameterSpec();
    o.jobDir = "foo";
    o.masterType = "foo";
    o.packageUris = buildUnnamed3233();
    o.parameterServerCount = "foo";
    o.parameterServerType = "foo";
    o.pythonModule = "foo";
    o.region = "foo";
    o.runtimeVersion = "foo";
    o.scaleTier = "foo";
    o.workerCount = "foo";
    o.workerType = "foo";
  }
  buildCounterGoogleCloudMlV1beta1TrainingInput--;
  return o;
}

checkGoogleCloudMlV1beta1TrainingInput(api.GoogleCloudMlV1beta1TrainingInput o) {
  buildCounterGoogleCloudMlV1beta1TrainingInput++;
  if (buildCounterGoogleCloudMlV1beta1TrainingInput < 3) {
    checkUnnamed3232(o.args);
    checkGoogleCloudMlV1beta1HyperparameterSpec(o.hyperparameters);
    unittest.expect(o.jobDir, unittest.equals('foo'));
    unittest.expect(o.masterType, unittest.equals('foo'));
    checkUnnamed3233(o.packageUris);
    unittest.expect(o.parameterServerCount, unittest.equals('foo'));
    unittest.expect(o.parameterServerType, unittest.equals('foo'));
    unittest.expect(o.pythonModule, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.runtimeVersion, unittest.equals('foo'));
    unittest.expect(o.scaleTier, unittest.equals('foo'));
    unittest.expect(o.workerCount, unittest.equals('foo'));
    unittest.expect(o.workerType, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1beta1TrainingInput--;
}

buildUnnamed3234() {
  var o = new core.List<api.GoogleCloudMlV1beta1HyperparameterOutput>();
  o.add(buildGoogleCloudMlV1beta1HyperparameterOutput());
  o.add(buildGoogleCloudMlV1beta1HyperparameterOutput());
  return o;
}

checkUnnamed3234(core.List<api.GoogleCloudMlV1beta1HyperparameterOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudMlV1beta1HyperparameterOutput(o[0]);
  checkGoogleCloudMlV1beta1HyperparameterOutput(o[1]);
}

core.int buildCounterGoogleCloudMlV1beta1TrainingOutput = 0;
buildGoogleCloudMlV1beta1TrainingOutput() {
  var o = new api.GoogleCloudMlV1beta1TrainingOutput();
  buildCounterGoogleCloudMlV1beta1TrainingOutput++;
  if (buildCounterGoogleCloudMlV1beta1TrainingOutput < 3) {
    o.completedTrialCount = "foo";
    o.consumedMLUnits = 42.0;
    o.isHyperparameterTuningJob = true;
    o.trials = buildUnnamed3234();
  }
  buildCounterGoogleCloudMlV1beta1TrainingOutput--;
  return o;
}

checkGoogleCloudMlV1beta1TrainingOutput(api.GoogleCloudMlV1beta1TrainingOutput o) {
  buildCounterGoogleCloudMlV1beta1TrainingOutput++;
  if (buildCounterGoogleCloudMlV1beta1TrainingOutput < 3) {
    unittest.expect(o.completedTrialCount, unittest.equals('foo'));
    unittest.expect(o.consumedMLUnits, unittest.equals(42.0));
    unittest.expect(o.isHyperparameterTuningJob, unittest.isTrue);
    checkUnnamed3234(o.trials);
  }
  buildCounterGoogleCloudMlV1beta1TrainingOutput--;
}

core.int buildCounterGoogleCloudMlV1beta1Version = 0;
buildGoogleCloudMlV1beta1Version() {
  var o = new api.GoogleCloudMlV1beta1Version();
  buildCounterGoogleCloudMlV1beta1Version++;
  if (buildCounterGoogleCloudMlV1beta1Version < 3) {
    o.createTime = "foo";
    o.deploymentUri = "foo";
    o.description = "foo";
    o.isDefault = true;
    o.lastUseTime = "foo";
    o.name = "foo";
    o.runtimeVersion = "foo";
  }
  buildCounterGoogleCloudMlV1beta1Version--;
  return o;
}

checkGoogleCloudMlV1beta1Version(api.GoogleCloudMlV1beta1Version o) {
  buildCounterGoogleCloudMlV1beta1Version++;
  if (buildCounterGoogleCloudMlV1beta1Version < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.deploymentUri, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.isDefault, unittest.isTrue);
    unittest.expect(o.lastUseTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.runtimeVersion, unittest.equals('foo'));
  }
  buildCounterGoogleCloudMlV1beta1Version--;
}

buildUnnamed3235() {
  var o = new core.List<api.GoogleLongrunningOperation>();
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

checkUnnamed3235(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed3235();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

checkGoogleLongrunningListOperationsResponse(api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3235(o.operations);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

buildUnnamed3236() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3236(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed3237() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3237(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o["y"]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

core.int buildCounterGoogleLongrunningOperation = 0;
buildGoogleLongrunningOperation() {
  var o = new api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed3236();
    o.name = "foo";
    o.response = buildUnnamed3237();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error);
    checkUnnamed3236(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3237(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
buildGoogleProtobufEmpty() {
  var o = new api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {
  }
  buildCounterGoogleProtobufEmpty--;
  return o;
}

checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {
  }
  buildCounterGoogleProtobufEmpty--;
}

buildUnnamed3238() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3238(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed3239() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3238());
  o.add(buildUnnamed3238());
  return o;
}

checkUnnamed3239(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3238(o[0]);
  checkUnnamed3238(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
buildGoogleRpcStatus() {
  var o = new api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3239();
    o.message = "foo";
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3239(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}


main() {
  unittest.group("obj-schema-GoogleApiHttpBody", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleApiHttpBody();
      var od = new api.GoogleApiHttpBody.fromJson(o.toJson());
      checkGoogleApiHttpBody(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1OperationMetadata();
      var od = new api.GoogleCloudMlV1OperationMetadata.fromJson(o.toJson());
      checkGoogleCloudMlV1OperationMetadata(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1Version();
      var od = new api.GoogleCloudMlV1Version.fromJson(o.toJson());
      checkGoogleCloudMlV1Version(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric();
      var od = new api.GoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1HyperparameterOutputHyperparameterMetric(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1CancelJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1CancelJobRequest();
      var od = new api.GoogleCloudMlV1beta1CancelJobRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1CancelJobRequest(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1GetConfigResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1GetConfigResponse();
      var od = new api.GoogleCloudMlV1beta1GetConfigResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1GetConfigResponse(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1HyperparameterOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1HyperparameterOutput();
      var od = new api.GoogleCloudMlV1beta1HyperparameterOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1HyperparameterOutput(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1HyperparameterSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1HyperparameterSpec();
      var od = new api.GoogleCloudMlV1beta1HyperparameterSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1HyperparameterSpec(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1Job();
      var od = new api.GoogleCloudMlV1beta1Job.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1Job(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1ListJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1ListJobsResponse();
      var od = new api.GoogleCloudMlV1beta1ListJobsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1ListJobsResponse(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1ListModelsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1ListModelsResponse();
      var od = new api.GoogleCloudMlV1beta1ListModelsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1ListModelsResponse(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1ListVersionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1ListVersionsResponse();
      var od = new api.GoogleCloudMlV1beta1ListVersionsResponse.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1ListVersionsResponse(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1Model", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1Model();
      var od = new api.GoogleCloudMlV1beta1Model.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1Model(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1OperationMetadata();
      var od = new api.GoogleCloudMlV1beta1OperationMetadata.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1OperationMetadata(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1ParameterSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1ParameterSpec();
      var od = new api.GoogleCloudMlV1beta1ParameterSpec.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1ParameterSpec(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1PredictRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1PredictRequest();
      var od = new api.GoogleCloudMlV1beta1PredictRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1PredictRequest(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1PredictionInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1PredictionInput();
      var od = new api.GoogleCloudMlV1beta1PredictionInput.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1PredictionInput(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1PredictionOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1PredictionOutput();
      var od = new api.GoogleCloudMlV1beta1PredictionOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1PredictionOutput(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1SetDefaultVersionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1SetDefaultVersionRequest();
      var od = new api.GoogleCloudMlV1beta1SetDefaultVersionRequest.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1SetDefaultVersionRequest(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1TrainingInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1TrainingInput();
      var od = new api.GoogleCloudMlV1beta1TrainingInput.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1TrainingInput(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1TrainingOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1TrainingOutput();
      var od = new api.GoogleCloudMlV1beta1TrainingOutput.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1TrainingOutput(od);
    });
  });


  unittest.group("obj-schema-GoogleCloudMlV1beta1Version", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudMlV1beta1Version();
      var od = new api.GoogleCloudMlV1beta1Version.fromJson(o.toJson());
      checkGoogleCloudMlV1beta1Version(od);
    });
  });


  unittest.group("obj-schema-GoogleLongrunningListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od = new api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
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


  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--getConfig", () {

      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.MlApi(mock).projects;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1beta1GetConfigResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getConfig(arg_name).then(unittest.expectAsync(((api.GoogleCloudMlV1beta1GetConfigResponse response) {
        checkGoogleCloudMlV1beta1GetConfigResponse(response);
      })));
    });

    unittest.test("method--predict", () {

      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.MlApi(mock).projects;
      var arg_request = buildGoogleCloudMlV1beta1PredictRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1beta1PredictRequest.fromJson(json);
        checkGoogleCloudMlV1beta1PredictRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleApiHttpBody());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.predict(arg_request, arg_name).then(unittest.expectAsync(((api.GoogleApiHttpBody response) {
        checkGoogleApiHttpBody(response);
      })));
    });

  });


  unittest.group("resource-ProjectsJobsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleCloudMlV1beta1CancelJobRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1beta1CancelJobRequest.fromJson(json);
        checkGoogleCloudMlV1beta1CancelJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_request, arg_name).then(unittest.expectAsync(((api.GoogleProtobufEmpty response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_request = buildGoogleCloudMlV1beta1Job();
      var arg_parent = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1beta1Job.fromJson(json);
        checkGoogleCloudMlV1beta1Job(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1beta1Job());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_parent).then(unittest.expectAsync(((api.GoogleCloudMlV1beta1Job response) {
        checkGoogleCloudMlV1beta1Job(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1beta1Job());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync(((api.GoogleCloudMlV1beta1Job response) {
        checkGoogleCloudMlV1beta1Job(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.MlApi(mock).projects.jobs;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1beta1ListJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, filter: arg_filter, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.GoogleCloudMlV1beta1ListJobsResponse response) {
        checkGoogleCloudMlV1beta1ListJobsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsModelsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_request = buildGoogleCloudMlV1beta1Model();
      var arg_parent = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1beta1Model.fromJson(json);
        checkGoogleCloudMlV1beta1Model(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1beta1Model());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_parent).then(unittest.expectAsync(((api.GoogleCloudMlV1beta1Model response) {
        checkGoogleCloudMlV1beta1Model(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1beta1Model());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync(((api.GoogleCloudMlV1beta1Model response) {
        checkGoogleCloudMlV1beta1Model(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsResourceApi res = new api.MlApi(mock).projects.models;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1beta1ListModelsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.GoogleCloudMlV1beta1ListModelsResponse response) {
        checkGoogleCloudMlV1beta1ListModelsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsModelsVersionsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res = new api.MlApi(mock).projects.models.versions;
      var arg_request = buildGoogleCloudMlV1beta1Version();
      var arg_parent = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1beta1Version.fromJson(json);
        checkGoogleCloudMlV1beta1Version(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_parent).then(unittest.expectAsync(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res = new api.MlApi(mock).projects.models.versions;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res = new api.MlApi(mock).projects.models.versions;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1beta1Version());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync(((api.GoogleCloudMlV1beta1Version response) {
        checkGoogleCloudMlV1beta1Version(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res = new api.MlApi(mock).projects.models.versions;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1beta1ListVersionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_parent, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.GoogleCloudMlV1beta1ListVersionsResponse response) {
        checkGoogleCloudMlV1beta1ListVersionsResponse(response);
      })));
    });

    unittest.test("method--setDefault", () {

      var mock = new HttpServerMock();
      api.ProjectsModelsVersionsResourceApi res = new api.MlApi(mock).projects.models.versions;
      var arg_request = buildGoogleCloudMlV1beta1SetDefaultVersionRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.GoogleCloudMlV1beta1SetDefaultVersionRequest.fromJson(json);
        checkGoogleCloudMlV1beta1SetDefaultVersionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleCloudMlV1beta1Version());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.setDefault(arg_request, arg_name).then(unittest.expectAsync(((api.GoogleCloudMlV1beta1Version response) {
        checkGoogleCloudMlV1beta1Version(response);
      })));
    });

  });


  unittest.group("resource-ProjectsOperationsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res = new api.MlApi(mock).projects.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_name).then(unittest.expectAsync(((api.GoogleProtobufEmpty response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res = new api.MlApi(mock).projects.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleProtobufEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync(((api.GoogleProtobufEmpty response) {
        checkGoogleProtobufEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res = new api.MlApi(mock).projects.operations;
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleLongrunningOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync(((api.GoogleLongrunningOperation response) {
        checkGoogleLongrunningOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsOperationsResourceApi res = new api.MlApi(mock).projects.operations;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("v1beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGoogleLongrunningListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_name, filter: arg_filter, pageToken: arg_pageToken, pageSize: arg_pageSize).then(unittest.expectAsync(((api.GoogleLongrunningListOperationsResponse response) {
        checkGoogleLongrunningListOperationsResponse(response);
      })));
    });

  });


}

