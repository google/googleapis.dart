library googleapis_beta.dataproc.v1beta1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/dataproc/v1beta1.dart' as api;

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

core.int buildCounterCancelJobRequest = 0;
buildCancelJobRequest() {
  var o = new api.CancelJobRequest();
  buildCounterCancelJobRequest++;
  if (buildCounterCancelJobRequest < 3) {
  }
  buildCounterCancelJobRequest--;
  return o;
}

checkCancelJobRequest(api.CancelJobRequest o) {
  buildCounterCancelJobRequest++;
  if (buildCounterCancelJobRequest < 3) {
  }
  buildCounterCancelJobRequest--;
}

core.int buildCounterCancelOperationRequest = 0;
buildCancelOperationRequest() {
  var o = new api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {
  }
  buildCounterCancelOperationRequest--;
  return o;
}

checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {
  }
  buildCounterCancelOperationRequest--;
}

buildUnnamed3131() {
  var o = new core.List<api.ClusterStatus>();
  o.add(buildClusterStatus());
  o.add(buildClusterStatus());
  return o;
}

checkUnnamed3131(core.List<api.ClusterStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterStatus(o[0]);
  checkClusterStatus(o[1]);
}

core.int buildCounterCluster = 0;
buildCluster() {
  var o = new api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.clusterName = "foo";
    o.clusterUuid = "foo";
    o.configuration = buildClusterConfiguration();
    o.projectId = "foo";
    o.status = buildClusterStatus();
    o.statusHistory = buildUnnamed3131();
  }
  buildCounterCluster--;
  return o;
}

checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.clusterUuid, unittest.equals('foo'));
    checkClusterConfiguration(o.configuration);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkClusterStatus(o.status);
    checkUnnamed3131(o.statusHistory);
  }
  buildCounterCluster--;
}

buildUnnamed3132() {
  var o = new core.List<api.NodeInitializationAction>();
  o.add(buildNodeInitializationAction());
  o.add(buildNodeInitializationAction());
  return o;
}

checkUnnamed3132(core.List<api.NodeInitializationAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeInitializationAction(o[0]);
  checkNodeInitializationAction(o[1]);
}

core.int buildCounterClusterConfiguration = 0;
buildClusterConfiguration() {
  var o = new api.ClusterConfiguration();
  buildCounterClusterConfiguration++;
  if (buildCounterClusterConfiguration < 3) {
    o.configurationBucket = "foo";
    o.gceClusterConfiguration = buildGceClusterConfiguration();
    o.initializationActions = buildUnnamed3132();
    o.masterConfiguration = buildInstanceGroupConfiguration();
    o.secondaryWorkerConfiguration = buildInstanceGroupConfiguration();
    o.softwareConfiguration = buildSoftwareConfiguration();
    o.workerConfiguration = buildInstanceGroupConfiguration();
  }
  buildCounterClusterConfiguration--;
  return o;
}

checkClusterConfiguration(api.ClusterConfiguration o) {
  buildCounterClusterConfiguration++;
  if (buildCounterClusterConfiguration < 3) {
    unittest.expect(o.configurationBucket, unittest.equals('foo'));
    checkGceClusterConfiguration(o.gceClusterConfiguration);
    checkUnnamed3132(o.initializationActions);
    checkInstanceGroupConfiguration(o.masterConfiguration);
    checkInstanceGroupConfiguration(o.secondaryWorkerConfiguration);
    checkSoftwareConfiguration(o.softwareConfiguration);
    checkInstanceGroupConfiguration(o.workerConfiguration);
  }
  buildCounterClusterConfiguration--;
}

buildUnnamed3133() {
  var o = new core.List<api.ClusterOperationStatus>();
  o.add(buildClusterOperationStatus());
  o.add(buildClusterOperationStatus());
  return o;
}

checkUnnamed3133(core.List<api.ClusterOperationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterOperationStatus(o[0]);
  checkClusterOperationStatus(o[1]);
}

core.int buildCounterClusterOperationMetadata = 0;
buildClusterOperationMetadata() {
  var o = new api.ClusterOperationMetadata();
  buildCounterClusterOperationMetadata++;
  if (buildCounterClusterOperationMetadata < 3) {
    o.clusterName = "foo";
    o.clusterUuid = "foo";
    o.description = "foo";
    o.operationType = "foo";
    o.status = buildClusterOperationStatus();
    o.statusHistory = buildUnnamed3133();
  }
  buildCounterClusterOperationMetadata--;
  return o;
}

checkClusterOperationMetadata(api.ClusterOperationMetadata o) {
  buildCounterClusterOperationMetadata++;
  if (buildCounterClusterOperationMetadata < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.clusterUuid, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    checkClusterOperationStatus(o.status);
    checkUnnamed3133(o.statusHistory);
  }
  buildCounterClusterOperationMetadata--;
}

core.int buildCounterClusterOperationStatus = 0;
buildClusterOperationStatus() {
  var o = new api.ClusterOperationStatus();
  buildCounterClusterOperationStatus++;
  if (buildCounterClusterOperationStatus < 3) {
    o.details = "foo";
    o.innerState = "foo";
    o.state = "foo";
    o.stateStartTime = "foo";
  }
  buildCounterClusterOperationStatus--;
  return o;
}

checkClusterOperationStatus(api.ClusterOperationStatus o) {
  buildCounterClusterOperationStatus++;
  if (buildCounterClusterOperationStatus < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.innerState, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateStartTime, unittest.equals('foo'));
  }
  buildCounterClusterOperationStatus--;
}

core.int buildCounterClusterStatus = 0;
buildClusterStatus() {
  var o = new api.ClusterStatus();
  buildCounterClusterStatus++;
  if (buildCounterClusterStatus < 3) {
    o.detail = "foo";
    o.state = "foo";
    o.stateStartTime = "foo";
  }
  buildCounterClusterStatus--;
  return o;
}

checkClusterStatus(api.ClusterStatus o) {
  buildCounterClusterStatus++;
  if (buildCounterClusterStatus < 3) {
    unittest.expect(o.detail, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateStartTime, unittest.equals('foo'));
  }
  buildCounterClusterStatus--;
}

core.int buildCounterDiagnoseClusterOutputLocation = 0;
buildDiagnoseClusterOutputLocation() {
  var o = new api.DiagnoseClusterOutputLocation();
  buildCounterDiagnoseClusterOutputLocation++;
  if (buildCounterDiagnoseClusterOutputLocation < 3) {
    o.outputUri = "foo";
  }
  buildCounterDiagnoseClusterOutputLocation--;
  return o;
}

checkDiagnoseClusterOutputLocation(api.DiagnoseClusterOutputLocation o) {
  buildCounterDiagnoseClusterOutputLocation++;
  if (buildCounterDiagnoseClusterOutputLocation < 3) {
    unittest.expect(o.outputUri, unittest.equals('foo'));
  }
  buildCounterDiagnoseClusterOutputLocation--;
}

core.int buildCounterDiagnoseClusterRequest = 0;
buildDiagnoseClusterRequest() {
  var o = new api.DiagnoseClusterRequest();
  buildCounterDiagnoseClusterRequest++;
  if (buildCounterDiagnoseClusterRequest < 3) {
  }
  buildCounterDiagnoseClusterRequest--;
  return o;
}

checkDiagnoseClusterRequest(api.DiagnoseClusterRequest o) {
  buildCounterDiagnoseClusterRequest++;
  if (buildCounterDiagnoseClusterRequest < 3) {
  }
  buildCounterDiagnoseClusterRequest--;
}

core.int buildCounterDiagnoseClusterResults = 0;
buildDiagnoseClusterResults() {
  var o = new api.DiagnoseClusterResults();
  buildCounterDiagnoseClusterResults++;
  if (buildCounterDiagnoseClusterResults < 3) {
    o.outputUri = "foo";
  }
  buildCounterDiagnoseClusterResults--;
  return o;
}

checkDiagnoseClusterResults(api.DiagnoseClusterResults o) {
  buildCounterDiagnoseClusterResults++;
  if (buildCounterDiagnoseClusterResults < 3) {
    unittest.expect(o.outputUri, unittest.equals('foo'));
  }
  buildCounterDiagnoseClusterResults--;
}

core.int buildCounterDiskConfiguration = 0;
buildDiskConfiguration() {
  var o = new api.DiskConfiguration();
  buildCounterDiskConfiguration++;
  if (buildCounterDiskConfiguration < 3) {
    o.bootDiskSizeGb = 42;
    o.numLocalSsds = 42;
  }
  buildCounterDiskConfiguration--;
  return o;
}

checkDiskConfiguration(api.DiskConfiguration o) {
  buildCounterDiskConfiguration++;
  if (buildCounterDiskConfiguration < 3) {
    unittest.expect(o.bootDiskSizeGb, unittest.equals(42));
    unittest.expect(o.numLocalSsds, unittest.equals(42));
  }
  buildCounterDiskConfiguration--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
}

buildUnnamed3134() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3134(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3135() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3135(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3136() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3136(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGceClusterConfiguration = 0;
buildGceClusterConfiguration() {
  var o = new api.GceClusterConfiguration();
  buildCounterGceClusterConfiguration++;
  if (buildCounterGceClusterConfiguration < 3) {
    o.metadata = buildUnnamed3134();
    o.networkUri = "foo";
    o.serviceAccountScopes = buildUnnamed3135();
    o.subnetworkUri = "foo";
    o.tags = buildUnnamed3136();
    o.zoneUri = "foo";
  }
  buildCounterGceClusterConfiguration--;
  return o;
}

checkGceClusterConfiguration(api.GceClusterConfiguration o) {
  buildCounterGceClusterConfiguration++;
  if (buildCounterGceClusterConfiguration < 3) {
    checkUnnamed3134(o.metadata);
    unittest.expect(o.networkUri, unittest.equals('foo'));
    checkUnnamed3135(o.serviceAccountScopes);
    unittest.expect(o.subnetworkUri, unittest.equals('foo'));
    checkUnnamed3136(o.tags);
    unittest.expect(o.zoneUri, unittest.equals('foo'));
  }
  buildCounterGceClusterConfiguration--;
}

buildUnnamed3137() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3137(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3138() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3138(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3139() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3139(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3140() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3140(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3141() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3141(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterHadoopJob = 0;
buildHadoopJob() {
  var o = new api.HadoopJob();
  buildCounterHadoopJob++;
  if (buildCounterHadoopJob < 3) {
    o.archiveUris = buildUnnamed3137();
    o.args = buildUnnamed3138();
    o.fileUris = buildUnnamed3139();
    o.jarFileUris = buildUnnamed3140();
    o.loggingConfiguration = buildLoggingConfiguration();
    o.mainClass = "foo";
    o.mainJarFileUri = "foo";
    o.properties = buildUnnamed3141();
  }
  buildCounterHadoopJob--;
  return o;
}

checkHadoopJob(api.HadoopJob o) {
  buildCounterHadoopJob++;
  if (buildCounterHadoopJob < 3) {
    checkUnnamed3137(o.archiveUris);
    checkUnnamed3138(o.args);
    checkUnnamed3139(o.fileUris);
    checkUnnamed3140(o.jarFileUris);
    checkLoggingConfiguration(o.loggingConfiguration);
    unittest.expect(o.mainClass, unittest.equals('foo'));
    unittest.expect(o.mainJarFileUri, unittest.equals('foo'));
    checkUnnamed3141(o.properties);
  }
  buildCounterHadoopJob--;
}

buildUnnamed3142() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3142(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3143() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3143(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3144() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3144(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterHiveJob = 0;
buildHiveJob() {
  var o = new api.HiveJob();
  buildCounterHiveJob++;
  if (buildCounterHiveJob < 3) {
    o.continueOnFailure = true;
    o.jarFileUris = buildUnnamed3142();
    o.properties = buildUnnamed3143();
    o.queryFileUri = "foo";
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed3144();
  }
  buildCounterHiveJob--;
  return o;
}

checkHiveJob(api.HiveJob o) {
  buildCounterHiveJob++;
  if (buildCounterHiveJob < 3) {
    unittest.expect(o.continueOnFailure, unittest.isTrue);
    checkUnnamed3142(o.jarFileUris);
    checkUnnamed3143(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
    checkUnnamed3144(o.scriptVariables);
  }
  buildCounterHiveJob--;
}

buildUnnamed3145() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3145(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceGroupConfiguration = 0;
buildInstanceGroupConfiguration() {
  var o = new api.InstanceGroupConfiguration();
  buildCounterInstanceGroupConfiguration++;
  if (buildCounterInstanceGroupConfiguration < 3) {
    o.diskConfiguration = buildDiskConfiguration();
    o.imageUri = "foo";
    o.instanceNames = buildUnnamed3145();
    o.isPreemptible = true;
    o.machineTypeUri = "foo";
    o.managedGroupConfiguration = buildManagedGroupConfiguration();
    o.numInstances = 42;
  }
  buildCounterInstanceGroupConfiguration--;
  return o;
}

checkInstanceGroupConfiguration(api.InstanceGroupConfiguration o) {
  buildCounterInstanceGroupConfiguration++;
  if (buildCounterInstanceGroupConfiguration < 3) {
    checkDiskConfiguration(o.diskConfiguration);
    unittest.expect(o.imageUri, unittest.equals('foo'));
    checkUnnamed3145(o.instanceNames);
    unittest.expect(o.isPreemptible, unittest.isTrue);
    unittest.expect(o.machineTypeUri, unittest.equals('foo'));
    checkManagedGroupConfiguration(o.managedGroupConfiguration);
    unittest.expect(o.numInstances, unittest.equals(42));
  }
  buildCounterInstanceGroupConfiguration--;
}

buildUnnamed3146() {
  var o = new core.List<api.JobStatus>();
  o.add(buildJobStatus());
  o.add(buildJobStatus());
  return o;
}

checkUnnamed3146(core.List<api.JobStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatus(o[0]);
  checkJobStatus(o[1]);
}

buildUnnamed3147() {
  var o = new core.List<api.YarnApplication>();
  o.add(buildYarnApplication());
  o.add(buildYarnApplication());
  return o;
}

checkUnnamed3147(core.List<api.YarnApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYarnApplication(o[0]);
  checkYarnApplication(o[1]);
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.driverControlFilesUri = "foo";
    o.driverInputResourceUri = "foo";
    o.driverOutputResourceUri = "foo";
    o.hadoopJob = buildHadoopJob();
    o.hiveJob = buildHiveJob();
    o.interactive = true;
    o.pigJob = buildPigJob();
    o.placement = buildJobPlacement();
    o.pysparkJob = buildPySparkJob();
    o.reference = buildJobReference();
    o.sparkJob = buildSparkJob();
    o.sparkSqlJob = buildSparkSqlJob();
    o.status = buildJobStatus();
    o.statusHistory = buildUnnamed3146();
    o.submittedBy = "foo";
    o.yarnApplications = buildUnnamed3147();
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.driverControlFilesUri, unittest.equals('foo'));
    unittest.expect(o.driverInputResourceUri, unittest.equals('foo'));
    unittest.expect(o.driverOutputResourceUri, unittest.equals('foo'));
    checkHadoopJob(o.hadoopJob);
    checkHiveJob(o.hiveJob);
    unittest.expect(o.interactive, unittest.isTrue);
    checkPigJob(o.pigJob);
    checkJobPlacement(o.placement);
    checkPySparkJob(o.pysparkJob);
    checkJobReference(o.reference);
    checkSparkJob(o.sparkJob);
    checkSparkSqlJob(o.sparkSqlJob);
    checkJobStatus(o.status);
    checkUnnamed3146(o.statusHistory);
    unittest.expect(o.submittedBy, unittest.equals('foo'));
    checkUnnamed3147(o.yarnApplications);
  }
  buildCounterJob--;
}

core.int buildCounterJobPlacement = 0;
buildJobPlacement() {
  var o = new api.JobPlacement();
  buildCounterJobPlacement++;
  if (buildCounterJobPlacement < 3) {
    o.clusterName = "foo";
    o.clusterUuid = "foo";
  }
  buildCounterJobPlacement--;
  return o;
}

checkJobPlacement(api.JobPlacement o) {
  buildCounterJobPlacement++;
  if (buildCounterJobPlacement < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.clusterUuid, unittest.equals('foo'));
  }
  buildCounterJobPlacement--;
}

core.int buildCounterJobReference = 0;
buildJobReference() {
  var o = new api.JobReference();
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    o.jobId = "foo";
    o.projectId = "foo";
  }
  buildCounterJobReference--;
  return o;
}

checkJobReference(api.JobReference o) {
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterJobReference--;
}

core.int buildCounterJobStatus = 0;
buildJobStatus() {
  var o = new api.JobStatus();
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    o.details = "foo";
    o.state = "foo";
    o.stateStartTime = "foo";
  }
  buildCounterJobStatus--;
  return o;
}

checkJobStatus(api.JobStatus o) {
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateStartTime, unittest.equals('foo'));
  }
  buildCounterJobStatus--;
}

buildUnnamed3148() {
  var o = new core.List<api.Cluster>();
  o.add(buildCluster());
  o.add(buildCluster());
  return o;
}

checkUnnamed3148(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.int buildCounterListClustersResponse = 0;
buildListClustersResponse() {
  var o = new api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed3148();
    o.nextPageToken = "foo";
  }
  buildCounterListClustersResponse--;
  return o;
}

checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed3148(o.clusters);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListClustersResponse--;
}

buildUnnamed3149() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed3149(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
buildListJobsResponse() {
  var o = new api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed3149();
    o.nextPageToken = "foo";
  }
  buildCounterListJobsResponse--;
  return o;
}

checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed3149(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

buildUnnamed3150() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed3150(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed3150();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3150(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed3151() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3151(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterLoggingConfiguration = 0;
buildLoggingConfiguration() {
  var o = new api.LoggingConfiguration();
  buildCounterLoggingConfiguration++;
  if (buildCounterLoggingConfiguration < 3) {
    o.driverLogLevels = buildUnnamed3151();
  }
  buildCounterLoggingConfiguration--;
  return o;
}

checkLoggingConfiguration(api.LoggingConfiguration o) {
  buildCounterLoggingConfiguration++;
  if (buildCounterLoggingConfiguration < 3) {
    checkUnnamed3151(o.driverLogLevels);
  }
  buildCounterLoggingConfiguration--;
}

core.int buildCounterManagedGroupConfiguration = 0;
buildManagedGroupConfiguration() {
  var o = new api.ManagedGroupConfiguration();
  buildCounterManagedGroupConfiguration++;
  if (buildCounterManagedGroupConfiguration < 3) {
    o.instanceGroupManagerName = "foo";
    o.instanceTemplateName = "foo";
  }
  buildCounterManagedGroupConfiguration--;
  return o;
}

checkManagedGroupConfiguration(api.ManagedGroupConfiguration o) {
  buildCounterManagedGroupConfiguration++;
  if (buildCounterManagedGroupConfiguration < 3) {
    unittest.expect(o.instanceGroupManagerName, unittest.equals('foo'));
    unittest.expect(o.instanceTemplateName, unittest.equals('foo'));
  }
  buildCounterManagedGroupConfiguration--;
}

core.int buildCounterNodeInitializationAction = 0;
buildNodeInitializationAction() {
  var o = new api.NodeInitializationAction();
  buildCounterNodeInitializationAction++;
  if (buildCounterNodeInitializationAction < 3) {
    o.executableFile = "foo";
    o.executionTimeout = "foo";
  }
  buildCounterNodeInitializationAction--;
  return o;
}

checkNodeInitializationAction(api.NodeInitializationAction o) {
  buildCounterNodeInitializationAction++;
  if (buildCounterNodeInitializationAction < 3) {
    unittest.expect(o.executableFile, unittest.equals('foo'));
    unittest.expect(o.executionTimeout, unittest.equals('foo'));
  }
  buildCounterNodeInitializationAction--;
}

buildUnnamed3152() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3152(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed3153() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3153(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o["y"]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed3152();
    o.name = "foo";
    o.response = buildUnnamed3153();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed3152(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3153(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed3154() {
  var o = new core.List<api.OperationStatus>();
  o.add(buildOperationStatus());
  o.add(buildOperationStatus());
  return o;
}

checkUnnamed3154(core.List<api.OperationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationStatus(o[0]);
  checkOperationStatus(o[1]);
}

core.int buildCounterOperationMetadata = 0;
buildOperationMetadata() {
  var o = new api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.clusterName = "foo";
    o.clusterUuid = "foo";
    o.description = "foo";
    o.details = "foo";
    o.endTime = "foo";
    o.innerState = "foo";
    o.insertTime = "foo";
    o.operationType = "foo";
    o.startTime = "foo";
    o.state = "foo";
    o.status = buildOperationStatus();
    o.statusHistory = buildUnnamed3154();
  }
  buildCounterOperationMetadata--;
  return o;
}

checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.clusterName, unittest.equals('foo'));
    unittest.expect(o.clusterUuid, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.innerState, unittest.equals('foo'));
    unittest.expect(o.insertTime, unittest.equals('foo'));
    unittest.expect(o.operationType, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkOperationStatus(o.status);
    checkUnnamed3154(o.statusHistory);
  }
  buildCounterOperationMetadata--;
}

core.int buildCounterOperationStatus = 0;
buildOperationStatus() {
  var o = new api.OperationStatus();
  buildCounterOperationStatus++;
  if (buildCounterOperationStatus < 3) {
    o.details = "foo";
    o.innerState = "foo";
    o.state = "foo";
    o.stateStartTime = "foo";
  }
  buildCounterOperationStatus--;
  return o;
}

checkOperationStatus(api.OperationStatus o) {
  buildCounterOperationStatus++;
  if (buildCounterOperationStatus < 3) {
    unittest.expect(o.details, unittest.equals('foo'));
    unittest.expect(o.innerState, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateStartTime, unittest.equals('foo'));
  }
  buildCounterOperationStatus--;
}

buildUnnamed3155() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3155(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3156() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3156(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3157() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3157(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterPigJob = 0;
buildPigJob() {
  var o = new api.PigJob();
  buildCounterPigJob++;
  if (buildCounterPigJob < 3) {
    o.continueOnFailure = true;
    o.jarFileUris = buildUnnamed3155();
    o.loggingConfiguration = buildLoggingConfiguration();
    o.properties = buildUnnamed3156();
    o.queryFileUri = "foo";
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed3157();
  }
  buildCounterPigJob--;
  return o;
}

checkPigJob(api.PigJob o) {
  buildCounterPigJob++;
  if (buildCounterPigJob < 3) {
    unittest.expect(o.continueOnFailure, unittest.isTrue);
    checkUnnamed3155(o.jarFileUris);
    checkLoggingConfiguration(o.loggingConfiguration);
    checkUnnamed3156(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
    checkUnnamed3157(o.scriptVariables);
  }
  buildCounterPigJob--;
}

buildUnnamed3158() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3158(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3159() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3159(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3160() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3160(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3161() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3161(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3162() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3162(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3163() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3163(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPySparkJob = 0;
buildPySparkJob() {
  var o = new api.PySparkJob();
  buildCounterPySparkJob++;
  if (buildCounterPySparkJob < 3) {
    o.archiveUris = buildUnnamed3158();
    o.args = buildUnnamed3159();
    o.fileUris = buildUnnamed3160();
    o.jarFileUris = buildUnnamed3161();
    o.loggingConfiguration = buildLoggingConfiguration();
    o.mainPythonFileUri = "foo";
    o.properties = buildUnnamed3162();
    o.pythonFileUris = buildUnnamed3163();
  }
  buildCounterPySparkJob--;
  return o;
}

checkPySparkJob(api.PySparkJob o) {
  buildCounterPySparkJob++;
  if (buildCounterPySparkJob < 3) {
    checkUnnamed3158(o.archiveUris);
    checkUnnamed3159(o.args);
    checkUnnamed3160(o.fileUris);
    checkUnnamed3161(o.jarFileUris);
    checkLoggingConfiguration(o.loggingConfiguration);
    unittest.expect(o.mainPythonFileUri, unittest.equals('foo'));
    checkUnnamed3162(o.properties);
    checkUnnamed3163(o.pythonFileUris);
  }
  buildCounterPySparkJob--;
}

buildUnnamed3164() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3164(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterQueryList = 0;
buildQueryList() {
  var o = new api.QueryList();
  buildCounterQueryList++;
  if (buildCounterQueryList < 3) {
    o.queries = buildUnnamed3164();
  }
  buildCounterQueryList--;
  return o;
}

checkQueryList(api.QueryList o) {
  buildCounterQueryList++;
  if (buildCounterQueryList < 3) {
    checkUnnamed3164(o.queries);
  }
  buildCounterQueryList--;
}

buildUnnamed3165() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3165(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSoftwareConfiguration = 0;
buildSoftwareConfiguration() {
  var o = new api.SoftwareConfiguration();
  buildCounterSoftwareConfiguration++;
  if (buildCounterSoftwareConfiguration < 3) {
    o.imageVersion = "foo";
    o.properties = buildUnnamed3165();
  }
  buildCounterSoftwareConfiguration--;
  return o;
}

checkSoftwareConfiguration(api.SoftwareConfiguration o) {
  buildCounterSoftwareConfiguration++;
  if (buildCounterSoftwareConfiguration < 3) {
    unittest.expect(o.imageVersion, unittest.equals('foo'));
    checkUnnamed3165(o.properties);
  }
  buildCounterSoftwareConfiguration--;
}

buildUnnamed3166() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3166(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3167() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3167(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3168() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3168(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3169() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3169(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3170() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3170(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSparkJob = 0;
buildSparkJob() {
  var o = new api.SparkJob();
  buildCounterSparkJob++;
  if (buildCounterSparkJob < 3) {
    o.archiveUris = buildUnnamed3166();
    o.args = buildUnnamed3167();
    o.fileUris = buildUnnamed3168();
    o.jarFileUris = buildUnnamed3169();
    o.loggingConfiguration = buildLoggingConfiguration();
    o.mainClass = "foo";
    o.mainJarFileUri = "foo";
    o.properties = buildUnnamed3170();
  }
  buildCounterSparkJob--;
  return o;
}

checkSparkJob(api.SparkJob o) {
  buildCounterSparkJob++;
  if (buildCounterSparkJob < 3) {
    checkUnnamed3166(o.archiveUris);
    checkUnnamed3167(o.args);
    checkUnnamed3168(o.fileUris);
    checkUnnamed3169(o.jarFileUris);
    checkLoggingConfiguration(o.loggingConfiguration);
    unittest.expect(o.mainClass, unittest.equals('foo'));
    unittest.expect(o.mainJarFileUri, unittest.equals('foo'));
    checkUnnamed3170(o.properties);
  }
  buildCounterSparkJob--;
}

buildUnnamed3171() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3171(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3172() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3172(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3173() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3173(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSparkSqlJob = 0;
buildSparkSqlJob() {
  var o = new api.SparkSqlJob();
  buildCounterSparkSqlJob++;
  if (buildCounterSparkSqlJob < 3) {
    o.jarFileUris = buildUnnamed3171();
    o.loggingConfiguration = buildLoggingConfiguration();
    o.properties = buildUnnamed3172();
    o.queryFileUri = "foo";
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed3173();
  }
  buildCounterSparkSqlJob--;
  return o;
}

checkSparkSqlJob(api.SparkSqlJob o) {
  buildCounterSparkSqlJob++;
  if (buildCounterSparkSqlJob < 3) {
    checkUnnamed3171(o.jarFileUris);
    checkLoggingConfiguration(o.loggingConfiguration);
    checkUnnamed3172(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
    checkUnnamed3173(o.scriptVariables);
  }
  buildCounterSparkSqlJob--;
}

buildUnnamed3174() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3174(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed3175() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3174());
  o.add(buildUnnamed3174());
  return o;
}

checkUnnamed3175(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3174(o[0]);
  checkUnnamed3174(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3175();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3175(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSubmitJobRequest = 0;
buildSubmitJobRequest() {
  var o = new api.SubmitJobRequest();
  buildCounterSubmitJobRequest++;
  if (buildCounterSubmitJobRequest < 3) {
    o.job = buildJob();
  }
  buildCounterSubmitJobRequest--;
  return o;
}

checkSubmitJobRequest(api.SubmitJobRequest o) {
  buildCounterSubmitJobRequest++;
  if (buildCounterSubmitJobRequest < 3) {
    checkJob(o.job);
  }
  buildCounterSubmitJobRequest--;
}

core.int buildCounterYarnApplication = 0;
buildYarnApplication() {
  var o = new api.YarnApplication();
  buildCounterYarnApplication++;
  if (buildCounterYarnApplication < 3) {
    o.name = "foo";
    o.progress = 42.0;
    o.state = "foo";
    o.trackingUrl = "foo";
  }
  buildCounterYarnApplication--;
  return o;
}

checkYarnApplication(api.YarnApplication o) {
  buildCounterYarnApplication++;
  if (buildCounterYarnApplication < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.progress, unittest.equals(42.0));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.trackingUrl, unittest.equals('foo'));
  }
  buildCounterYarnApplication--;
}


main() {
  unittest.group("obj-schema-CancelJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelJobRequest();
      var od = new api.CancelJobRequest.fromJson(o.toJson());
      checkCancelJobRequest(od);
    });
  });


  unittest.group("obj-schema-CancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelOperationRequest();
      var od = new api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });


  unittest.group("obj-schema-Cluster", () {
    unittest.test("to-json--from-json", () {
      var o = buildCluster();
      var od = new api.Cluster.fromJson(o.toJson());
      checkCluster(od);
    });
  });


  unittest.group("obj-schema-ClusterConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusterConfiguration();
      var od = new api.ClusterConfiguration.fromJson(o.toJson());
      checkClusterConfiguration(od);
    });
  });


  unittest.group("obj-schema-ClusterOperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusterOperationMetadata();
      var od = new api.ClusterOperationMetadata.fromJson(o.toJson());
      checkClusterOperationMetadata(od);
    });
  });


  unittest.group("obj-schema-ClusterOperationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusterOperationStatus();
      var od = new api.ClusterOperationStatus.fromJson(o.toJson());
      checkClusterOperationStatus(od);
    });
  });


  unittest.group("obj-schema-ClusterStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildClusterStatus();
      var od = new api.ClusterStatus.fromJson(o.toJson());
      checkClusterStatus(od);
    });
  });


  unittest.group("obj-schema-DiagnoseClusterOutputLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiagnoseClusterOutputLocation();
      var od = new api.DiagnoseClusterOutputLocation.fromJson(o.toJson());
      checkDiagnoseClusterOutputLocation(od);
    });
  });


  unittest.group("obj-schema-DiagnoseClusterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiagnoseClusterRequest();
      var od = new api.DiagnoseClusterRequest.fromJson(o.toJson());
      checkDiagnoseClusterRequest(od);
    });
  });


  unittest.group("obj-schema-DiagnoseClusterResults", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiagnoseClusterResults();
      var od = new api.DiagnoseClusterResults.fromJson(o.toJson());
      checkDiagnoseClusterResults(od);
    });
  });


  unittest.group("obj-schema-DiskConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiskConfiguration();
      var od = new api.DiskConfiguration.fromJson(o.toJson());
      checkDiskConfiguration(od);
    });
  });


  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });


  unittest.group("obj-schema-GceClusterConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildGceClusterConfiguration();
      var od = new api.GceClusterConfiguration.fromJson(o.toJson());
      checkGceClusterConfiguration(od);
    });
  });


  unittest.group("obj-schema-HadoopJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildHadoopJob();
      var od = new api.HadoopJob.fromJson(o.toJson());
      checkHadoopJob(od);
    });
  });


  unittest.group("obj-schema-HiveJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildHiveJob();
      var od = new api.HiveJob.fromJson(o.toJson());
      checkHiveJob(od);
    });
  });


  unittest.group("obj-schema-InstanceGroupConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstanceGroupConfiguration();
      var od = new api.InstanceGroupConfiguration.fromJson(o.toJson());
      checkInstanceGroupConfiguration(od);
    });
  });


  unittest.group("obj-schema-Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildJob();
      var od = new api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });


  unittest.group("obj-schema-JobPlacement", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobPlacement();
      var od = new api.JobPlacement.fromJson(o.toJson());
      checkJobPlacement(od);
    });
  });


  unittest.group("obj-schema-JobReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobReference();
      var od = new api.JobReference.fromJson(o.toJson());
      checkJobReference(od);
    });
  });


  unittest.group("obj-schema-JobStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobStatus();
      var od = new api.JobStatus.fromJson(o.toJson());
      checkJobStatus(od);
    });
  });


  unittest.group("obj-schema-ListClustersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListClustersResponse();
      var od = new api.ListClustersResponse.fromJson(o.toJson());
      checkListClustersResponse(od);
    });
  });


  unittest.group("obj-schema-ListJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListJobsResponse();
      var od = new api.ListJobsResponse.fromJson(o.toJson());
      checkListJobsResponse(od);
    });
  });


  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });


  unittest.group("obj-schema-LoggingConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildLoggingConfiguration();
      var od = new api.LoggingConfiguration.fromJson(o.toJson());
      checkLoggingConfiguration(od);
    });
  });


  unittest.group("obj-schema-ManagedGroupConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedGroupConfiguration();
      var od = new api.ManagedGroupConfiguration.fromJson(o.toJson());
      checkManagedGroupConfiguration(od);
    });
  });


  unittest.group("obj-schema-NodeInitializationAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildNodeInitializationAction();
      var od = new api.NodeInitializationAction.fromJson(o.toJson());
      checkNodeInitializationAction(od);
    });
  });


  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });


  unittest.group("obj-schema-OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadata();
      var od = new api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od);
    });
  });


  unittest.group("obj-schema-OperationStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationStatus();
      var od = new api.OperationStatus.fromJson(o.toJson());
      checkOperationStatus(od);
    });
  });


  unittest.group("obj-schema-PigJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildPigJob();
      var od = new api.PigJob.fromJson(o.toJson());
      checkPigJob(od);
    });
  });


  unittest.group("obj-schema-PySparkJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildPySparkJob();
      var od = new api.PySparkJob.fromJson(o.toJson());
      checkPySparkJob(od);
    });
  });


  unittest.group("obj-schema-QueryList", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryList();
      var od = new api.QueryList.fromJson(o.toJson());
      checkQueryList(od);
    });
  });


  unittest.group("obj-schema-SoftwareConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildSoftwareConfiguration();
      var od = new api.SoftwareConfiguration.fromJson(o.toJson());
      checkSoftwareConfiguration(od);
    });
  });


  unittest.group("obj-schema-SparkJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildSparkJob();
      var od = new api.SparkJob.fromJson(o.toJson());
      checkSparkJob(od);
    });
  });


  unittest.group("obj-schema-SparkSqlJob", () {
    unittest.test("to-json--from-json", () {
      var o = buildSparkSqlJob();
      var od = new api.SparkSqlJob.fromJson(o.toJson());
      checkSparkSqlJob(od);
    });
  });


  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });


  unittest.group("obj-schema-SubmitJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubmitJobRequest();
      var od = new api.SubmitJobRequest.fromJson(o.toJson());
      checkSubmitJobRequest(od);
    });
  });


  unittest.group("obj-schema-YarnApplication", () {
    unittest.test("to-json--from-json", () {
      var o = buildYarnApplication();
      var od = new api.YarnApplication.fromJson(o.toJson());
      checkYarnApplication(od);
    });
  });


  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.DataprocApi(mock).operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_request, arg_name).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.DataprocApi(mock).operations;
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_name).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.DataprocApi(mock).operations;
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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_name).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.DataprocApi(mock).operations;
      var arg_name = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_name, filter: arg_filter, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListOperationsResponse response) {
        checkListOperationsResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsClustersResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ProjectsClustersResourceApi res = new api.DataprocApi(mock).projects.clusters;
      var arg_request = buildCluster();
      var arg_projectId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Cluster.fromJson(json);
        checkCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta1/projects/"));
        pathOffset += 17;
        index = path.indexOf("/clusters", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/clusters"));
        pathOffset += 9;

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectId).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsClustersResourceApi res = new api.DataprocApi(mock).projects.clusters;
      var arg_projectId = "foo";
      var arg_clusterName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta1/projects/"));
        pathOffset += 17;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterName"));

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectId, arg_clusterName).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--diagnose", () {

      var mock = new HttpServerMock();
      api.ProjectsClustersResourceApi res = new api.DataprocApi(mock).projects.clusters;
      var arg_request = buildDiagnoseClusterRequest();
      var arg_projectId = "foo";
      var arg_clusterName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.DiagnoseClusterRequest.fromJson(json);
        checkDiagnoseClusterRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta1/projects/"));
        pathOffset += 17;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/clusters/"));
        pathOffset += 10;
        index = path.indexOf(":diagnose", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_clusterName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals(":diagnose"));
        pathOffset += 9;

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
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.diagnose(arg_request, arg_projectId, arg_clusterName).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsClustersResourceApi res = new api.DataprocApi(mock).projects.clusters;
      var arg_projectId = "foo";
      var arg_clusterName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta1/projects/"));
        pathOffset += 17;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterName"));

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
        var resp = convert.JSON.encode(buildCluster());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_clusterName).then(unittest.expectAsync(((api.Cluster response) {
        checkCluster(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsClustersResourceApi res = new api.DataprocApi(mock).projects.clusters;
      var arg_projectId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta1/projects/"));
        pathOffset += 17;
        index = path.indexOf("/clusters", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/clusters"));
        pathOffset += 9;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListClustersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListClustersResponse response) {
        checkListClustersResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.ProjectsClustersResourceApi res = new api.DataprocApi(mock).projects.clusters;
      var arg_request = buildCluster();
      var arg_projectId = "foo";
      var arg_clusterName = "foo";
      var arg_updateMask = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Cluster.fromJson(json);
        checkCluster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta1/projects/"));
        pathOffset += 17;
        index = path.indexOf("/clusters/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/clusters/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_clusterName"));

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
        unittest.expect(queryMap["updateMask"].first, unittest.equals(arg_updateMask));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_projectId, arg_clusterName, updateMask: arg_updateMask).then(unittest.expectAsync(((api.Operation response) {
        checkOperation(response);
      })));
    });

  });


  unittest.group("resource-ProjectsJobsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataprocApi(mock).projects.jobs;
      var arg_request = buildCancelJobRequest();
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CancelJobRequest.fromJson(json);
        checkCancelJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta1/projects/"));
        pathOffset += 17;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf(":cancel", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals(":cancel"));
        pathOffset += 7;

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
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_request, arg_projectId, arg_jobId).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataprocApi(mock).projects.jobs;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta1/projects/"));
        pathOffset += 17;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_projectId, arg_jobId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataprocApi(mock).projects.jobs;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta1/projects/"));
        pathOffset += 17;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

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
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_jobId).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataprocApi(mock).projects.jobs;
      var arg_projectId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_clusterName = "foo";
      var arg_jobStateMatcher = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta1/projects/"));
        pathOffset += 17;
        index = path.indexOf("/jobs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/jobs"));
        pathOffset += 5;

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
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["clusterName"].first, unittest.equals(arg_clusterName));
        unittest.expect(queryMap["jobStateMatcher"].first, unittest.equals(arg_jobStateMatcher));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, pageSize: arg_pageSize, pageToken: arg_pageToken, clusterName: arg_clusterName, jobStateMatcher: arg_jobStateMatcher).then(unittest.expectAsync(((api.ListJobsResponse response) {
        checkListJobsResponse(response);
      })));
    });

    unittest.test("method--submit", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataprocApi(mock).projects.jobs;
      var arg_request = buildSubmitJobRequest();
      var arg_projectId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SubmitJobRequest.fromJson(json);
        checkSubmitJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("v1beta1/projects/"));
        pathOffset += 17;
        index = path.indexOf("/jobs:submit", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/jobs:submit"));
        pathOffset += 12;

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
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.submit(arg_request, arg_projectId).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

  });


}

