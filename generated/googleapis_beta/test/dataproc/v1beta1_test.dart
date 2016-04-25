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

buildUnnamed3266() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3266(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.members = buildUnnamed3266();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkUnnamed3266(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
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

buildUnnamed3267() {
  var o = new core.List<api.ClusterStatus>();
  o.add(buildClusterStatus());
  o.add(buildClusterStatus());
  return o;
}

checkUnnamed3267(core.List<api.ClusterStatus> o) {
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
    o.statusHistory = buildUnnamed3267();
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
    checkUnnamed3267(o.statusHistory);
  }
  buildCounterCluster--;
}

buildUnnamed3268() {
  var o = new core.List<api.NodeInitializationAction>();
  o.add(buildNodeInitializationAction());
  o.add(buildNodeInitializationAction());
  return o;
}

checkUnnamed3268(core.List<api.NodeInitializationAction> o) {
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
    o.initializationActions = buildUnnamed3268();
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
    checkUnnamed3268(o.initializationActions);
    checkInstanceGroupConfiguration(o.masterConfiguration);
    checkInstanceGroupConfiguration(o.secondaryWorkerConfiguration);
    checkSoftwareConfiguration(o.softwareConfiguration);
    checkInstanceGroupConfiguration(o.workerConfiguration);
  }
  buildCounterClusterConfiguration--;
}

buildUnnamed3269() {
  var o = new core.List<api.ClusterOperationStatus>();
  o.add(buildClusterOperationStatus());
  o.add(buildClusterOperationStatus());
  return o;
}

checkUnnamed3269(core.List<api.ClusterOperationStatus> o) {
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
    o.statusHistory = buildUnnamed3269();
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
    checkUnnamed3269(o.statusHistory);
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

buildUnnamed3270() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3270(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3271() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3271(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3272() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3272(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGceClusterConfiguration = 0;
buildGceClusterConfiguration() {
  var o = new api.GceClusterConfiguration();
  buildCounterGceClusterConfiguration++;
  if (buildCounterGceClusterConfiguration < 3) {
    o.metadata = buildUnnamed3270();
    o.networkUri = "foo";
    o.serviceAccountScopes = buildUnnamed3271();
    o.subnetworkUri = "foo";
    o.tags = buildUnnamed3272();
    o.zoneUri = "foo";
  }
  buildCounterGceClusterConfiguration--;
  return o;
}

checkGceClusterConfiguration(api.GceClusterConfiguration o) {
  buildCounterGceClusterConfiguration++;
  if (buildCounterGceClusterConfiguration < 3) {
    checkUnnamed3270(o.metadata);
    unittest.expect(o.networkUri, unittest.equals('foo'));
    checkUnnamed3271(o.serviceAccountScopes);
    unittest.expect(o.subnetworkUri, unittest.equals('foo'));
    checkUnnamed3272(o.tags);
    unittest.expect(o.zoneUri, unittest.equals('foo'));
  }
  buildCounterGceClusterConfiguration--;
}

buildUnnamed3273() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3273(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3274() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3274(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3275() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3275(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3276() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3276(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3277() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3277(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterHadoopJob = 0;
buildHadoopJob() {
  var o = new api.HadoopJob();
  buildCounterHadoopJob++;
  if (buildCounterHadoopJob < 3) {
    o.archiveUris = buildUnnamed3273();
    o.args = buildUnnamed3274();
    o.fileUris = buildUnnamed3275();
    o.jarFileUris = buildUnnamed3276();
    o.loggingConfiguration = buildLoggingConfiguration();
    o.mainClass = "foo";
    o.mainJarFileUri = "foo";
    o.properties = buildUnnamed3277();
  }
  buildCounterHadoopJob--;
  return o;
}

checkHadoopJob(api.HadoopJob o) {
  buildCounterHadoopJob++;
  if (buildCounterHadoopJob < 3) {
    checkUnnamed3273(o.archiveUris);
    checkUnnamed3274(o.args);
    checkUnnamed3275(o.fileUris);
    checkUnnamed3276(o.jarFileUris);
    checkLoggingConfiguration(o.loggingConfiguration);
    unittest.expect(o.mainClass, unittest.equals('foo'));
    unittest.expect(o.mainJarFileUri, unittest.equals('foo'));
    checkUnnamed3277(o.properties);
  }
  buildCounterHadoopJob--;
}

buildUnnamed3278() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3278(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3279() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3279(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3280() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3280(core.Map<core.String, core.String> o) {
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
    o.jarFileUris = buildUnnamed3278();
    o.properties = buildUnnamed3279();
    o.queryFileUri = "foo";
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed3280();
  }
  buildCounterHiveJob--;
  return o;
}

checkHiveJob(api.HiveJob o) {
  buildCounterHiveJob++;
  if (buildCounterHiveJob < 3) {
    unittest.expect(o.continueOnFailure, unittest.isTrue);
    checkUnnamed3278(o.jarFileUris);
    checkUnnamed3279(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
    checkUnnamed3280(o.scriptVariables);
  }
  buildCounterHiveJob--;
}

buildUnnamed3281() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3281(core.List<core.String> o) {
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
    o.instanceNames = buildUnnamed3281();
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
    checkUnnamed3281(o.instanceNames);
    unittest.expect(o.isPreemptible, unittest.isTrue);
    unittest.expect(o.machineTypeUri, unittest.equals('foo'));
    checkManagedGroupConfiguration(o.managedGroupConfiguration);
    unittest.expect(o.numInstances, unittest.equals(42));
  }
  buildCounterInstanceGroupConfiguration--;
}

buildUnnamed3282() {
  var o = new core.List<api.JobStatus>();
  o.add(buildJobStatus());
  o.add(buildJobStatus());
  return o;
}

checkUnnamed3282(core.List<api.JobStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatus(o[0]);
  checkJobStatus(o[1]);
}

buildUnnamed3283() {
  var o = new core.List<api.YarnApplication>();
  o.add(buildYarnApplication());
  o.add(buildYarnApplication());
  return o;
}

checkUnnamed3283(core.List<api.YarnApplication> o) {
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
    o.statusHistory = buildUnnamed3282();
    o.submittedBy = "foo";
    o.yarnApplications = buildUnnamed3283();
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
    checkUnnamed3282(o.statusHistory);
    unittest.expect(o.submittedBy, unittest.equals('foo'));
    checkUnnamed3283(o.yarnApplications);
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

buildUnnamed3284() {
  var o = new core.List<api.Cluster>();
  o.add(buildCluster());
  o.add(buildCluster());
  return o;
}

checkUnnamed3284(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.int buildCounterListClustersResponse = 0;
buildListClustersResponse() {
  var o = new api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed3284();
    o.nextPageToken = "foo";
  }
  buildCounterListClustersResponse--;
  return o;
}

checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed3284(o.clusters);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListClustersResponse--;
}

buildUnnamed3285() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed3285(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
buildListJobsResponse() {
  var o = new api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed3285();
    o.nextPageToken = "foo";
  }
  buildCounterListJobsResponse--;
  return o;
}

checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed3285(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

buildUnnamed3286() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed3286(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed3286();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3286(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed3287() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3287(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterLoggingConfiguration = 0;
buildLoggingConfiguration() {
  var o = new api.LoggingConfiguration();
  buildCounterLoggingConfiguration++;
  if (buildCounterLoggingConfiguration < 3) {
    o.driverLogLevels = buildUnnamed3287();
  }
  buildCounterLoggingConfiguration--;
  return o;
}

checkLoggingConfiguration(api.LoggingConfiguration o) {
  buildCounterLoggingConfiguration++;
  if (buildCounterLoggingConfiguration < 3) {
    checkUnnamed3287(o.driverLogLevels);
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

buildUnnamed3288() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3288(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed3289() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3289(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed3288();
    o.name = "foo";
    o.response = buildUnnamed3289();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed3288(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3289(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed3290() {
  var o = new core.List<api.OperationStatus>();
  o.add(buildOperationStatus());
  o.add(buildOperationStatus());
  return o;
}

checkUnnamed3290(core.List<api.OperationStatus> o) {
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
    o.statusHistory = buildUnnamed3290();
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
    checkUnnamed3290(o.statusHistory);
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

buildUnnamed3291() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3291(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3292() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3292(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3293() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3293(core.Map<core.String, core.String> o) {
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
    o.jarFileUris = buildUnnamed3291();
    o.loggingConfiguration = buildLoggingConfiguration();
    o.properties = buildUnnamed3292();
    o.queryFileUri = "foo";
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed3293();
  }
  buildCounterPigJob--;
  return o;
}

checkPigJob(api.PigJob o) {
  buildCounterPigJob++;
  if (buildCounterPigJob < 3) {
    unittest.expect(o.continueOnFailure, unittest.isTrue);
    checkUnnamed3291(o.jarFileUris);
    checkLoggingConfiguration(o.loggingConfiguration);
    checkUnnamed3292(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
    checkUnnamed3293(o.scriptVariables);
  }
  buildCounterPigJob--;
}

buildUnnamed3294() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed3294(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed3294();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed3294(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

buildUnnamed3295() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3295(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3296() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3296(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3297() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3297(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3298() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3298(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3299() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3299(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3300() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3300(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPySparkJob = 0;
buildPySparkJob() {
  var o = new api.PySparkJob();
  buildCounterPySparkJob++;
  if (buildCounterPySparkJob < 3) {
    o.archiveUris = buildUnnamed3295();
    o.args = buildUnnamed3296();
    o.fileUris = buildUnnamed3297();
    o.jarFileUris = buildUnnamed3298();
    o.loggingConfiguration = buildLoggingConfiguration();
    o.mainPythonFileUri = "foo";
    o.properties = buildUnnamed3299();
    o.pythonFileUris = buildUnnamed3300();
  }
  buildCounterPySparkJob--;
  return o;
}

checkPySparkJob(api.PySparkJob o) {
  buildCounterPySparkJob++;
  if (buildCounterPySparkJob < 3) {
    checkUnnamed3295(o.archiveUris);
    checkUnnamed3296(o.args);
    checkUnnamed3297(o.fileUris);
    checkUnnamed3298(o.jarFileUris);
    checkLoggingConfiguration(o.loggingConfiguration);
    unittest.expect(o.mainPythonFileUri, unittest.equals('foo'));
    checkUnnamed3299(o.properties);
    checkUnnamed3300(o.pythonFileUris);
  }
  buildCounterPySparkJob--;
}

buildUnnamed3301() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3301(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterQueryList = 0;
buildQueryList() {
  var o = new api.QueryList();
  buildCounterQueryList++;
  if (buildCounterQueryList < 3) {
    o.queries = buildUnnamed3301();
  }
  buildCounterQueryList--;
  return o;
}

checkQueryList(api.QueryList o) {
  buildCounterQueryList++;
  if (buildCounterQueryList < 3) {
    checkUnnamed3301(o.queries);
  }
  buildCounterQueryList--;
}

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
  }
  buildCounterSetIamPolicyRequest--;
}

buildUnnamed3302() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3302(core.Map<core.String, core.String> o) {
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
    o.properties = buildUnnamed3302();
  }
  buildCounterSoftwareConfiguration--;
  return o;
}

checkSoftwareConfiguration(api.SoftwareConfiguration o) {
  buildCounterSoftwareConfiguration++;
  if (buildCounterSoftwareConfiguration < 3) {
    unittest.expect(o.imageVersion, unittest.equals('foo'));
    checkUnnamed3302(o.properties);
  }
  buildCounterSoftwareConfiguration--;
}

buildUnnamed3303() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3303(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3304() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3304(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3305() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3305(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3306() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3306(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3307() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3307(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSparkJob = 0;
buildSparkJob() {
  var o = new api.SparkJob();
  buildCounterSparkJob++;
  if (buildCounterSparkJob < 3) {
    o.archiveUris = buildUnnamed3303();
    o.args = buildUnnamed3304();
    o.fileUris = buildUnnamed3305();
    o.jarFileUris = buildUnnamed3306();
    o.loggingConfiguration = buildLoggingConfiguration();
    o.mainClass = "foo";
    o.mainJarFileUri = "foo";
    o.properties = buildUnnamed3307();
  }
  buildCounterSparkJob--;
  return o;
}

checkSparkJob(api.SparkJob o) {
  buildCounterSparkJob++;
  if (buildCounterSparkJob < 3) {
    checkUnnamed3303(o.archiveUris);
    checkUnnamed3304(o.args);
    checkUnnamed3305(o.fileUris);
    checkUnnamed3306(o.jarFileUris);
    checkLoggingConfiguration(o.loggingConfiguration);
    unittest.expect(o.mainClass, unittest.equals('foo'));
    unittest.expect(o.mainJarFileUri, unittest.equals('foo'));
    checkUnnamed3307(o.properties);
  }
  buildCounterSparkJob--;
}

buildUnnamed3308() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3308(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3309() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3309(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed3310() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed3310(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterSparkSqlJob = 0;
buildSparkSqlJob() {
  var o = new api.SparkSqlJob();
  buildCounterSparkSqlJob++;
  if (buildCounterSparkSqlJob < 3) {
    o.jarFileUris = buildUnnamed3308();
    o.loggingConfiguration = buildLoggingConfiguration();
    o.properties = buildUnnamed3309();
    o.queryFileUri = "foo";
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed3310();
  }
  buildCounterSparkSqlJob--;
  return o;
}

checkSparkSqlJob(api.SparkSqlJob o) {
  buildCounterSparkSqlJob++;
  if (buildCounterSparkSqlJob < 3) {
    checkUnnamed3308(o.jarFileUris);
    checkLoggingConfiguration(o.loggingConfiguration);
    checkUnnamed3309(o.properties);
    unittest.expect(o.queryFileUri, unittest.equals('foo'));
    checkQueryList(o.queryList);
    checkUnnamed3310(o.scriptVariables);
  }
  buildCounterSparkSqlJob--;
}

buildUnnamed3311() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed3311(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed3312() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed3311());
  o.add(buildUnnamed3311());
  return o;
}

checkUnnamed3312(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3311(o[0]);
  checkUnnamed3311(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3312();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3312(o.details);
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

buildUnnamed3313() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3313(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed3313();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed3313(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed3314() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3314(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed3314();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed3314(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
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
  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });


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


  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
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


  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
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


  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });


  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
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

    unittest.test("method--getIamPolicy", () {

      var mock = new HttpServerMock();
      api.ProjectsClustersResourceApi res = new api.DataprocApi(mock).projects.clusters;
      var arg_resource = "foo";
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
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getIamPolicy(arg_resource).then(unittest.expectAsync(((api.Policy response) {
        checkPolicy(response);
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

    unittest.test("method--setIamPolicy", () {

      var mock = new HttpServerMock();
      api.ProjectsClustersResourceApi res = new api.DataprocApi(mock).projects.clusters;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.setIamPolicy(arg_request, arg_resource).then(unittest.expectAsync(((api.Policy response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {

      var mock = new HttpServerMock();
      api.ProjectsClustersResourceApi res = new api.DataprocApi(mock).projects.clusters;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        var resp = convert.JSON.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.testIamPermissions(arg_request, arg_resource).then(unittest.expectAsync(((api.TestIamPermissionsResponse response) {
        checkTestIamPermissionsResponse(response);
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

    unittest.test("method--getIamPolicy", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataprocApi(mock).projects.jobs;
      var arg_resource = "foo";
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
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getIamPolicy(arg_resource).then(unittest.expectAsync(((api.Policy response) {
        checkPolicy(response);
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

    unittest.test("method--setIamPolicy", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataprocApi(mock).projects.jobs;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        var resp = convert.JSON.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.setIamPolicy(arg_request, arg_resource).then(unittest.expectAsync(((api.Policy response) {
        checkPolicy(response);
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

    unittest.test("method--testIamPermissions", () {

      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataprocApi(mock).projects.jobs;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        var resp = convert.JSON.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.testIamPermissions(arg_request, arg_resource).then(unittest.expectAsync(((api.TestIamPermissionsResponse response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

  });


}

