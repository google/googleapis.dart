library googleapis_beta.dataflow.v1beta3;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import "package:crypto/crypto.dart" as crypto;
import 'package:http/http.dart' as http;
import '../src/common_internal.dart' as common_internal;
import '../common/common.dart' as common;

export '../common/common.dart' show ApiRequestError;
export '../common/common.dart' show DetailedApiRequestError;

/** Google Dataflow API. */
class DataflowApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** View your email address */
  static const UserinfoEmailScope = "https://www.googleapis.com/auth/userinfo.email";


  final common_internal.ApiRequester _requester;

  V1b3ResourceApi get v1b3 => new V1b3ResourceApi(_requester);

  DataflowApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "dataflow/v1b3/projects/"}) :
      _requester = new common_internal.ApiRequester(client, rootUrl, servicePath);
}


/** Not documented yet. */
class V1b3ResourceApi {
  final common_internal.ApiRequester _requester;

  V1b3ProjectsResourceApi get projects => new V1b3ProjectsResourceApi(_requester);

  V1b3ResourceApi(common_internal.ApiRequester client) : 
      _requester = client;
}


/** Not documented yet. */
class V1b3ProjectsResourceApi {
  final common_internal.ApiRequester _requester;

  V1b3ProjectsJobsResourceApi get jobs => new V1b3ProjectsJobsResourceApi(_requester);

  V1b3ProjectsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;
}


/** Not documented yet. */
class V1b3ProjectsJobsResourceApi {
  final common_internal.ApiRequester _requester;

  V1b3ProjectsJobsMessagesResourceApi get messages => new V1b3ProjectsJobsMessagesResourceApi(_requester);
  V1b3ProjectsJobsWorkItemsResourceApi get workItems => new V1b3ProjectsJobsWorkItemsResourceApi(_requester);

  V1b3ProjectsJobsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a dataflow job.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [view] - null
   * Possible string values are:
   * - "JOB_VIEW_ALL"
   * - "JOB_VIEW_SUMMARY"
   * - "JOB_VIEW_UNKNOWN"
   *
   * Completes with a [Job].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Job> create(Job request, core.String projectId, {core.String view}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/jobs';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /**
   * Gets the state of the specified dataflow job.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [jobId] - null
   *
   * [view] - null
   * Possible string values are:
   * - "JOB_VIEW_ALL"
   * - "JOB_VIEW_SUMMARY"
   * - "JOB_VIEW_UNKNOWN"
   *
   * Completes with a [Job].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Job> get(core.String projectId, core.String jobId, {core.String view}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/jobs/' + common_internal.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /**
   * Request the job status.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [jobId] - null
   *
   * [startTime] - null
   *
   * Completes with a [JobMetrics].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<JobMetrics> getMetrics(core.String projectId, core.String jobId, {core.String startTime}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/jobs/' + common_internal.Escaper.ecapeVariable('$jobId') + '/metrics';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new JobMetrics.fromJson(data));
  }

  /**
   * List the jobs of a project
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [pageSize] - null
   *
   * [pageToken] - null
   *
   * [view] - null
   * Possible string values are:
   * - "JOB_VIEW_ALL"
   * - "JOB_VIEW_SUMMARY"
   * - "JOB_VIEW_UNKNOWN"
   *
   * Completes with a [ListJobsResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListJobsResponse> list(core.String projectId, {core.int pageSize, core.String pageToken, core.String view}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/jobs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListJobsResponse.fromJson(data));
  }

  /**
   * Updates the state of an existing dataflow job. This method supports patch
   * semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [jobId] - null
   *
   * Completes with a [Job].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Job> patch(Job request, core.String projectId, core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/jobs/' + common_internal.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /**
   * Updates the state of an existing dataflow job.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [jobId] - null
   *
   * Completes with a [Job].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Job> update(Job request, core.String projectId, core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/jobs/' + common_internal.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

}


/** Not documented yet. */
class V1b3ProjectsJobsMessagesResourceApi {
  final common_internal.ApiRequester _requester;

  V1b3ProjectsJobsMessagesResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Request the job status.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [jobId] - null
   *
   * [endTime] - null
   *
   * [minimumImportance] - null
   * Possible string values are:
   * - "JOB_MESSAGE_DEBUG"
   * - "JOB_MESSAGE_DETAILED"
   * - "JOB_MESSAGE_ERROR"
   * - "JOB_MESSAGE_IMPORTANCE_UNKNOWN"
   * - "JOB_MESSAGE_WARNING"
   *
   * [pageSize] - null
   *
   * [pageToken] - null
   *
   * [startTime] - null
   *
   * Completes with a [ListJobMessagesResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListJobMessagesResponse> list(core.String projectId, core.String jobId, {core.String endTime, core.String minimumImportance, core.int pageSize, core.String pageToken, core.String startTime}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if (endTime != null) {
      _queryParams["endTime"] = [endTime];
    }
    if (minimumImportance != null) {
      _queryParams["minimumImportance"] = [minimumImportance];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/jobs/' + common_internal.Escaper.ecapeVariable('$jobId') + '/messages';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListJobMessagesResponse.fromJson(data));
  }

}


/** Not documented yet. */
class V1b3ProjectsJobsWorkItemsResourceApi {
  final common_internal.ApiRequester _requester;

  V1b3ProjectsJobsWorkItemsResourceApi(common_internal.ApiRequester client) : 
      _requester = client;

  /**
   * Leases a dataflow WorkItem to run.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [jobId] - null
   *
   * Completes with a [LeaseWorkItemResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<LeaseWorkItemResponse> lease(LeaseWorkItemRequest request, core.String projectId, core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/jobs/' + common_internal.Escaper.ecapeVariable('$jobId') + '/workItems:lease';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LeaseWorkItemResponse.fromJson(data));
  }

  /**
   * Reports the status of dataflow WorkItems leased by a worker.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - null
   *
   * [jobId] - null
   *
   * Completes with a [ReportWorkItemStatusResponse].
   *
   * Completes with a [common.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ReportWorkItemStatusResponse> reportStatus(ReportWorkItemStatusRequest request, core.String projectId, core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = common.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }


    _url = common_internal.Escaper.ecapeVariable('$projectId') + '/jobs/' + common_internal.Escaper.ecapeVariable('$jobId') + '/workItems:reportStatus';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ReportWorkItemStatusResponse.fromJson(data));
  }

}



/** Not documented yet. */
class ApproximateProgress {
  /** Not documented yet. */
  core.double percentComplete;

  /** Not documented yet. */
  Position position;

  /** Not documented yet. */
  core.String remainingTime;


  ApproximateProgress();

  ApproximateProgress.fromJson(core.Map _json) {
    if (_json.containsKey("percentComplete")) {
      percentComplete = _json["percentComplete"];
    }
    if (_json.containsKey("position")) {
      position = new Position.fromJson(_json["position"]);
    }
    if (_json.containsKey("remainingTime")) {
      remainingTime = _json["remainingTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (percentComplete != null) {
      _json["percentComplete"] = percentComplete;
    }
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    if (remainingTime != null) {
      _json["remainingTime"] = remainingTime;
    }
    return _json;
  }
}


/** Not documented yet. */
class AutoscalingSettings {
  /**
   * Not documented yet.
   * Possible string values are:
   * - "AUTOSCALING_ALGORITHM_BASIC"
   * - "AUTOSCALING_ALGORITHM_NONE"
   * - "AUTOSCALING_ALGORITHM_UNKNOWN"
   */
  core.String algorithm;

  /** Not documented yet. */
  core.int maxNumWorkers;


  AutoscalingSettings();

  AutoscalingSettings.fromJson(core.Map _json) {
    if (_json.containsKey("algorithm")) {
      algorithm = _json["algorithm"];
    }
    if (_json.containsKey("maxNumWorkers")) {
      maxNumWorkers = _json["maxNumWorkers"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (algorithm != null) {
      _json["algorithm"] = algorithm;
    }
    if (maxNumWorkers != null) {
      _json["maxNumWorkers"] = maxNumWorkers;
    }
    return _json;
  }
}


/** Not documented yet. */
class ComputationTopology {
  /** Not documented yet. */
  core.String computationId;

  /** Not documented yet. */
  core.List<StreamLocation> inputs;

  /** Not documented yet. */
  core.List<KeyRangeLocation> keyRanges;

  /** Not documented yet. */
  core.List<StreamLocation> outputs;


  ComputationTopology();

  ComputationTopology.fromJson(core.Map _json) {
    if (_json.containsKey("computationId")) {
      computationId = _json["computationId"];
    }
    if (_json.containsKey("inputs")) {
      inputs = _json["inputs"].map((value) => new StreamLocation.fromJson(value)).toList();
    }
    if (_json.containsKey("keyRanges")) {
      keyRanges = _json["keyRanges"].map((value) => new KeyRangeLocation.fromJson(value)).toList();
    }
    if (_json.containsKey("outputs")) {
      outputs = _json["outputs"].map((value) => new StreamLocation.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (computationId != null) {
      _json["computationId"] = computationId;
    }
    if (inputs != null) {
      _json["inputs"] = inputs.map((value) => (value).toJson()).toList();
    }
    if (keyRanges != null) {
      _json["keyRanges"] = keyRanges.map((value) => (value).toJson()).toList();
    }
    if (outputs != null) {
      _json["outputs"] = outputs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class DataDiskAssignment {
  /** Not documented yet. */
  core.List<core.String> dataDisks;

  /** Not documented yet. */
  core.String vmInstance;


  DataDiskAssignment();

  DataDiskAssignment.fromJson(core.Map _json) {
    if (_json.containsKey("dataDisks")) {
      dataDisks = _json["dataDisks"];
    }
    if (_json.containsKey("vmInstance")) {
      vmInstance = _json["vmInstance"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dataDisks != null) {
      _json["dataDisks"] = dataDisks;
    }
    if (vmInstance != null) {
      _json["vmInstance"] = vmInstance;
    }
    return _json;
  }
}


/** Not documented yet. */
class Disk {
  /** Not documented yet. */
  core.String diskType;

  /** Not documented yet. */
  core.String mountPoint;

  /** Not documented yet. */
  core.int sizeGb;


  Disk();

  Disk.fromJson(core.Map _json) {
    if (_json.containsKey("diskType")) {
      diskType = _json["diskType"];
    }
    if (_json.containsKey("mountPoint")) {
      mountPoint = _json["mountPoint"];
    }
    if (_json.containsKey("sizeGb")) {
      sizeGb = _json["sizeGb"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (diskType != null) {
      _json["diskType"] = diskType;
    }
    if (mountPoint != null) {
      _json["mountPoint"] = mountPoint;
    }
    if (sizeGb != null) {
      _json["sizeGb"] = sizeGb;
    }
    return _json;
  }
}


/** Not documented yet. */
class Environment {
  /** Not documented yet. */
  core.String clusterManagerApiService;

  /** Not documented yet. */
  core.String dataset;

  /** Not documented yet. */
  core.List<core.String> experiments;

  /** Not documented yet. */
  core.String tempStoragePrefix;

  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> userAgent;

  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> version;

  /** Not documented yet. */
  core.List<WorkerPool> workerPools;


  Environment();

  Environment.fromJson(core.Map _json) {
    if (_json.containsKey("clusterManagerApiService")) {
      clusterManagerApiService = _json["clusterManagerApiService"];
    }
    if (_json.containsKey("dataset")) {
      dataset = _json["dataset"];
    }
    if (_json.containsKey("experiments")) {
      experiments = _json["experiments"];
    }
    if (_json.containsKey("tempStoragePrefix")) {
      tempStoragePrefix = _json["tempStoragePrefix"];
    }
    if (_json.containsKey("userAgent")) {
      userAgent = _json["userAgent"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
    if (_json.containsKey("workerPools")) {
      workerPools = _json["workerPools"].map((value) => new WorkerPool.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clusterManagerApiService != null) {
      _json["clusterManagerApiService"] = clusterManagerApiService;
    }
    if (dataset != null) {
      _json["dataset"] = dataset;
    }
    if (experiments != null) {
      _json["experiments"] = experiments;
    }
    if (tempStoragePrefix != null) {
      _json["tempStoragePrefix"] = tempStoragePrefix;
    }
    if (userAgent != null) {
      _json["userAgent"] = userAgent;
    }
    if (version != null) {
      _json["version"] = version;
    }
    if (workerPools != null) {
      _json["workerPools"] = workerPools.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class FlattenInstruction {
  /** Not documented yet. */
  core.List<InstructionInput> inputs;


  FlattenInstruction();

  FlattenInstruction.fromJson(core.Map _json) {
    if (_json.containsKey("inputs")) {
      inputs = _json["inputs"].map((value) => new InstructionInput.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (inputs != null) {
      _json["inputs"] = inputs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class InstructionInput {
  /** Not documented yet. */
  core.int outputNum;

  /** Not documented yet. */
  core.int producerInstructionIndex;


  InstructionInput();

  InstructionInput.fromJson(core.Map _json) {
    if (_json.containsKey("outputNum")) {
      outputNum = _json["outputNum"];
    }
    if (_json.containsKey("producerInstructionIndex")) {
      producerInstructionIndex = _json["producerInstructionIndex"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (outputNum != null) {
      _json["outputNum"] = outputNum;
    }
    if (producerInstructionIndex != null) {
      _json["producerInstructionIndex"] = producerInstructionIndex;
    }
    return _json;
  }
}


/** Not documented yet. */
class InstructionOutput {
  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> codec;

  /** Not documented yet. */
  core.String name;


  InstructionOutput();

  InstructionOutput.fromJson(core.Map _json) {
    if (_json.containsKey("codec")) {
      codec = _json["codec"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (codec != null) {
      _json["codec"] = codec;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/** Not documented yet. */
class Job {
  /** Not documented yet. */
  core.String createTime;

  /**
   * Not documented yet.
   * Possible string values are:
   * - "JOB_STATE_CANCELLED"
   * - "JOB_STATE_DONE"
   * - "JOB_STATE_FAILED"
   * - "JOB_STATE_RUNNING"
   * - "JOB_STATE_STOPPED"
   * - "JOB_STATE_UNKNOWN"
   */
  core.String currentState;

  /** Not documented yet. */
  core.String currentStateTime;

  /** Not documented yet. */
  Environment environment;

  /** Not documented yet. */
  JobExecutionInfo executionInfo;

  /** Not documented yet. */
  core.String id;

  /** Not documented yet. */
  core.String name;

  /** Not documented yet. */
  core.String projectId;

  /**
   * Not documented yet.
   * Possible string values are:
   * - "JOB_STATE_CANCELLED"
   * - "JOB_STATE_DONE"
   * - "JOB_STATE_FAILED"
   * - "JOB_STATE_RUNNING"
   * - "JOB_STATE_STOPPED"
   * - "JOB_STATE_UNKNOWN"
   */
  core.String requestedState;

  /** Not documented yet. */
  core.List<Step> steps;

  /**
   * Not documented yet.
   * Possible string values are:
   * - "JOB_TYPE_BATCH"
   * - "JOB_TYPE_STREAMING"
   * - "JOB_TYPE_UNKNOWN"
   */
  core.String type;


  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("currentState")) {
      currentState = _json["currentState"];
    }
    if (_json.containsKey("currentStateTime")) {
      currentStateTime = _json["currentStateTime"];
    }
    if (_json.containsKey("environment")) {
      environment = new Environment.fromJson(_json["environment"]);
    }
    if (_json.containsKey("executionInfo")) {
      executionInfo = new JobExecutionInfo.fromJson(_json["executionInfo"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("requestedState")) {
      requestedState = _json["requestedState"];
    }
    if (_json.containsKey("steps")) {
      steps = _json["steps"].map((value) => new Step.fromJson(value)).toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (currentState != null) {
      _json["currentState"] = currentState;
    }
    if (currentStateTime != null) {
      _json["currentStateTime"] = currentStateTime;
    }
    if (environment != null) {
      _json["environment"] = (environment).toJson();
    }
    if (executionInfo != null) {
      _json["executionInfo"] = (executionInfo).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (requestedState != null) {
      _json["requestedState"] = requestedState;
    }
    if (steps != null) {
      _json["steps"] = steps.map((value) => (value).toJson()).toList();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}


/** Not documented yet. */
class JobExecutionInfo {
  /** Not documented yet. */
  core.Map<core.String, JobExecutionStageInfo> stages;


  JobExecutionInfo();

  JobExecutionInfo.fromJson(core.Map _json) {
    if (_json.containsKey("stages")) {
      stages = common_internal.mapMap(_json["stages"], (item) => new JobExecutionStageInfo.fromJson(item));
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (stages != null) {
      _json["stages"] = common_internal.mapMap(stages, (item) => (item).toJson());
    }
    return _json;
  }
}


/** Not documented yet. */
class JobExecutionStageInfo {
  /** Not documented yet. */
  core.List<core.String> stepName;


  JobExecutionStageInfo();

  JobExecutionStageInfo.fromJson(core.Map _json) {
    if (_json.containsKey("stepName")) {
      stepName = _json["stepName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (stepName != null) {
      _json["stepName"] = stepName;
    }
    return _json;
  }
}


/** Not documented yet. */
class JobMessage {
  /** Not documented yet. */
  core.String id;

  /**
   * Not documented yet.
   * Possible string values are:
   * - "JOB_MESSAGE_DEBUG"
   * - "JOB_MESSAGE_DETAILED"
   * - "JOB_MESSAGE_ERROR"
   * - "JOB_MESSAGE_IMPORTANCE_UNKNOWN"
   * - "JOB_MESSAGE_WARNING"
   */
  core.String messageImportance;

  /** Not documented yet. */
  core.String messageText;

  /** Not documented yet. */
  core.String time;


  JobMessage();

  JobMessage.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("messageImportance")) {
      messageImportance = _json["messageImportance"];
    }
    if (_json.containsKey("messageText")) {
      messageText = _json["messageText"];
    }
    if (_json.containsKey("time")) {
      time = _json["time"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (messageImportance != null) {
      _json["messageImportance"] = messageImportance;
    }
    if (messageText != null) {
      _json["messageText"] = messageText;
    }
    if (time != null) {
      _json["time"] = time;
    }
    return _json;
  }
}


/** Not documented yet. */
class JobMetrics {
  /** Not documented yet. */
  core.String metricTime;

  /** Not documented yet. */
  core.List<MetricUpdate> metrics;


  JobMetrics();

  JobMetrics.fromJson(core.Map _json) {
    if (_json.containsKey("metricTime")) {
      metricTime = _json["metricTime"];
    }
    if (_json.containsKey("metrics")) {
      metrics = _json["metrics"].map((value) => new MetricUpdate.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (metricTime != null) {
      _json["metricTime"] = metricTime;
    }
    if (metrics != null) {
      _json["metrics"] = metrics.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class KeyRangeLocation {
  /** Not documented yet. */
  core.String dataDisk;

  /** Not documented yet. */
  core.String deliveryEndpoint;

  /** Not documented yet. */
  core.String end;

  /** Not documented yet. */
  core.String persistentDirectory;

  /** Not documented yet. */
  core.String start;


  KeyRangeLocation();

  KeyRangeLocation.fromJson(core.Map _json) {
    if (_json.containsKey("dataDisk")) {
      dataDisk = _json["dataDisk"];
    }
    if (_json.containsKey("deliveryEndpoint")) {
      deliveryEndpoint = _json["deliveryEndpoint"];
    }
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("persistentDirectory")) {
      persistentDirectory = _json["persistentDirectory"];
    }
    if (_json.containsKey("start")) {
      start = _json["start"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dataDisk != null) {
      _json["dataDisk"] = dataDisk;
    }
    if (deliveryEndpoint != null) {
      _json["deliveryEndpoint"] = deliveryEndpoint;
    }
    if (end != null) {
      _json["end"] = end;
    }
    if (persistentDirectory != null) {
      _json["persistentDirectory"] = persistentDirectory;
    }
    if (start != null) {
      _json["start"] = start;
    }
    return _json;
  }
}


/** Not documented yet. */
class LeaseWorkItemRequest {
  /** Not documented yet. */
  core.String currentWorkerTime;

  /** Not documented yet. */
  core.String requestedLeaseDuration;

  /** Not documented yet. */
  core.List<core.String> workItemTypes;

  /** Not documented yet. */
  core.List<core.String> workerCapabilities;

  /** Not documented yet. */
  core.String workerId;


  LeaseWorkItemRequest();

  LeaseWorkItemRequest.fromJson(core.Map _json) {
    if (_json.containsKey("currentWorkerTime")) {
      currentWorkerTime = _json["currentWorkerTime"];
    }
    if (_json.containsKey("requestedLeaseDuration")) {
      requestedLeaseDuration = _json["requestedLeaseDuration"];
    }
    if (_json.containsKey("workItemTypes")) {
      workItemTypes = _json["workItemTypes"];
    }
    if (_json.containsKey("workerCapabilities")) {
      workerCapabilities = _json["workerCapabilities"];
    }
    if (_json.containsKey("workerId")) {
      workerId = _json["workerId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (currentWorkerTime != null) {
      _json["currentWorkerTime"] = currentWorkerTime;
    }
    if (requestedLeaseDuration != null) {
      _json["requestedLeaseDuration"] = requestedLeaseDuration;
    }
    if (workItemTypes != null) {
      _json["workItemTypes"] = workItemTypes;
    }
    if (workerCapabilities != null) {
      _json["workerCapabilities"] = workerCapabilities;
    }
    if (workerId != null) {
      _json["workerId"] = workerId;
    }
    return _json;
  }
}


/** Not documented yet. */
class LeaseWorkItemResponse {
  /** Not documented yet. */
  core.List<WorkItem> workItems;


  LeaseWorkItemResponse();

  LeaseWorkItemResponse.fromJson(core.Map _json) {
    if (_json.containsKey("workItems")) {
      workItems = _json["workItems"].map((value) => new WorkItem.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (workItems != null) {
      _json["workItems"] = workItems.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class ListJobMessagesResponse {
  /** Not documented yet. */
  core.List<JobMessage> jobMessages;

  /** Not documented yet. */
  core.String nextPageToken;


  ListJobMessagesResponse();

  ListJobMessagesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobMessages")) {
      jobMessages = _json["jobMessages"].map((value) => new JobMessage.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jobMessages != null) {
      _json["jobMessages"] = jobMessages.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** Not documented yet. */
class ListJobsResponse {
  /** Not documented yet. */
  core.List<Job> jobs;

  /** Not documented yet. */
  core.String nextPageToken;


  ListJobsResponse();

  ListJobsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobs")) {
      jobs = _json["jobs"].map((value) => new Job.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jobs != null) {
      _json["jobs"] = jobs.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** Not documented yet. */
class MapTask {
  /** Not documented yet. */
  core.List<ParallelInstruction> instructions;

  /** Not documented yet. */
  core.String stageName;

  /** Not documented yet. */
  core.String systemName;


  MapTask();

  MapTask.fromJson(core.Map _json) {
    if (_json.containsKey("instructions")) {
      instructions = _json["instructions"].map((value) => new ParallelInstruction.fromJson(value)).toList();
    }
    if (_json.containsKey("stageName")) {
      stageName = _json["stageName"];
    }
    if (_json.containsKey("systemName")) {
      systemName = _json["systemName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (instructions != null) {
      _json["instructions"] = instructions.map((value) => (value).toJson()).toList();
    }
    if (stageName != null) {
      _json["stageName"] = stageName;
    }
    if (systemName != null) {
      _json["systemName"] = systemName;
    }
    return _json;
  }
}


/** Not documented yet. */
class MetricStructuredName {
  /** Not documented yet. */
  core.Map<core.String, core.String> context;

  /** Not documented yet. */
  core.String name;

  /** Not documented yet. */
  core.String origin;


  MetricStructuredName();

  MetricStructuredName.fromJson(core.Map _json) {
    if (_json.containsKey("context")) {
      context = _json["context"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("origin")) {
      origin = _json["origin"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (context != null) {
      _json["context"] = context;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (origin != null) {
      _json["origin"] = origin;
    }
    return _json;
  }
}


/** Not documented yet. */
class MetricUpdate {
  /** Not documented yet. */
  core.bool cumulative;

  /** Not documented yet. */
  core.Object internal;

  /** Not documented yet. */
  core.String kind;

  /** Not documented yet. */
  core.Object meanCount;

  /** Not documented yet. */
  core.Object meanSum;

  /** Not documented yet. */
  MetricStructuredName name;

  /** Not documented yet. */
  core.Object scalar;

  /** Not documented yet. */
  core.Object set;

  /** Not documented yet. */
  core.String updateTime;


  MetricUpdate();

  MetricUpdate.fromJson(core.Map _json) {
    if (_json.containsKey("cumulative")) {
      cumulative = _json["cumulative"];
    }
    if (_json.containsKey("internal")) {
      internal = _json["internal"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("meanCount")) {
      meanCount = _json["meanCount"];
    }
    if (_json.containsKey("meanSum")) {
      meanSum = _json["meanSum"];
    }
    if (_json.containsKey("name")) {
      name = new MetricStructuredName.fromJson(_json["name"]);
    }
    if (_json.containsKey("scalar")) {
      scalar = _json["scalar"];
    }
    if (_json.containsKey("set")) {
      set = _json["set"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cumulative != null) {
      _json["cumulative"] = cumulative;
    }
    if (internal != null) {
      _json["internal"] = internal;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (meanCount != null) {
      _json["meanCount"] = meanCount;
    }
    if (meanSum != null) {
      _json["meanSum"] = meanSum;
    }
    if (name != null) {
      _json["name"] = (name).toJson();
    }
    if (scalar != null) {
      _json["scalar"] = scalar;
    }
    if (set != null) {
      _json["set"] = set;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}


/** Not documented yet. */
class MultiOutputInfo {
  /** Not documented yet. */
  core.String tag;


  MultiOutputInfo();

  MultiOutputInfo.fromJson(core.Map _json) {
    if (_json.containsKey("tag")) {
      tag = _json["tag"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (tag != null) {
      _json["tag"] = tag;
    }
    return _json;
  }
}


/** Not documented yet. */
class Package {
  /** Not documented yet. */
  core.String location;

  /** Not documented yet. */
  core.String name;


  Package();

  Package.fromJson(core.Map _json) {
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (location != null) {
      _json["location"] = location;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/** Not documented yet. */
class ParDoInstruction {
  /** Not documented yet. */
  InstructionInput input;

  /** Not documented yet. */
  core.List<MultiOutputInfo> multiOutputInfos;

  /** Not documented yet. */
  core.int numOutputs;

  /** Not documented yet. */
  core.List<SideInputInfo> sideInputs;

  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> userFn;


  ParDoInstruction();

  ParDoInstruction.fromJson(core.Map _json) {
    if (_json.containsKey("input")) {
      input = new InstructionInput.fromJson(_json["input"]);
    }
    if (_json.containsKey("multiOutputInfos")) {
      multiOutputInfos = _json["multiOutputInfos"].map((value) => new MultiOutputInfo.fromJson(value)).toList();
    }
    if (_json.containsKey("numOutputs")) {
      numOutputs = _json["numOutputs"];
    }
    if (_json.containsKey("sideInputs")) {
      sideInputs = _json["sideInputs"].map((value) => new SideInputInfo.fromJson(value)).toList();
    }
    if (_json.containsKey("userFn")) {
      userFn = _json["userFn"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (input != null) {
      _json["input"] = (input).toJson();
    }
    if (multiOutputInfos != null) {
      _json["multiOutputInfos"] = multiOutputInfos.map((value) => (value).toJson()).toList();
    }
    if (numOutputs != null) {
      _json["numOutputs"] = numOutputs;
    }
    if (sideInputs != null) {
      _json["sideInputs"] = sideInputs.map((value) => (value).toJson()).toList();
    }
    if (userFn != null) {
      _json["userFn"] = userFn;
    }
    return _json;
  }
}


/** Not documented yet. */
class ParallelInstruction {
  /** Not documented yet. */
  FlattenInstruction flatten;

  /** Not documented yet. */
  core.String name;

  /** Not documented yet. */
  core.List<InstructionOutput> outputs;

  /** Not documented yet. */
  ParDoInstruction parDo;

  /** Not documented yet. */
  PartialGroupByKeyInstruction partialGroupByKey;

  /** Not documented yet. */
  ReadInstruction read;

  /** Not documented yet. */
  core.String systemName;

  /** Not documented yet. */
  WriteInstruction write;


  ParallelInstruction();

  ParallelInstruction.fromJson(core.Map _json) {
    if (_json.containsKey("flatten")) {
      flatten = new FlattenInstruction.fromJson(_json["flatten"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("outputs")) {
      outputs = _json["outputs"].map((value) => new InstructionOutput.fromJson(value)).toList();
    }
    if (_json.containsKey("parDo")) {
      parDo = new ParDoInstruction.fromJson(_json["parDo"]);
    }
    if (_json.containsKey("partialGroupByKey")) {
      partialGroupByKey = new PartialGroupByKeyInstruction.fromJson(_json["partialGroupByKey"]);
    }
    if (_json.containsKey("read")) {
      read = new ReadInstruction.fromJson(_json["read"]);
    }
    if (_json.containsKey("systemName")) {
      systemName = _json["systemName"];
    }
    if (_json.containsKey("write")) {
      write = new WriteInstruction.fromJson(_json["write"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (flatten != null) {
      _json["flatten"] = (flatten).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (outputs != null) {
      _json["outputs"] = outputs.map((value) => (value).toJson()).toList();
    }
    if (parDo != null) {
      _json["parDo"] = (parDo).toJson();
    }
    if (partialGroupByKey != null) {
      _json["partialGroupByKey"] = (partialGroupByKey).toJson();
    }
    if (read != null) {
      _json["read"] = (read).toJson();
    }
    if (systemName != null) {
      _json["systemName"] = systemName;
    }
    if (write != null) {
      _json["write"] = (write).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class PartialGroupByKeyInstruction {
  /** Not documented yet. */
  InstructionInput input;

  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> inputElementCodec;


  PartialGroupByKeyInstruction();

  PartialGroupByKeyInstruction.fromJson(core.Map _json) {
    if (_json.containsKey("input")) {
      input = new InstructionInput.fromJson(_json["input"]);
    }
    if (_json.containsKey("inputElementCodec")) {
      inputElementCodec = _json["inputElementCodec"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (input != null) {
      _json["input"] = (input).toJson();
    }
    if (inputElementCodec != null) {
      _json["inputElementCodec"] = inputElementCodec;
    }
    return _json;
  }
}


/** Not documented yet. */
class Position {
  /** Not documented yet. */
  core.String byteOffset;

  /** Not documented yet. */
  core.bool end;

  /** Not documented yet. */
  core.String key;

  /** Not documented yet. */
  core.String recordIndex;

  /** Not documented yet. */
  core.String shufflePosition;


  Position();

  Position.fromJson(core.Map _json) {
    if (_json.containsKey("byteOffset")) {
      byteOffset = _json["byteOffset"];
    }
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("recordIndex")) {
      recordIndex = _json["recordIndex"];
    }
    if (_json.containsKey("shufflePosition")) {
      shufflePosition = _json["shufflePosition"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (byteOffset != null) {
      _json["byteOffset"] = byteOffset;
    }
    if (end != null) {
      _json["end"] = end;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (recordIndex != null) {
      _json["recordIndex"] = recordIndex;
    }
    if (shufflePosition != null) {
      _json["shufflePosition"] = shufflePosition;
    }
    return _json;
  }
}


/** Not documented yet. */
class PubsubLocation {
  /** Not documented yet. */
  core.String subscription;

  /** Not documented yet. */
  core.String topic;


  PubsubLocation();

  PubsubLocation.fromJson(core.Map _json) {
    if (_json.containsKey("subscription")) {
      subscription = _json["subscription"];
    }
    if (_json.containsKey("topic")) {
      topic = _json["topic"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (subscription != null) {
      _json["subscription"] = subscription;
    }
    if (topic != null) {
      _json["topic"] = topic;
    }
    return _json;
  }
}


/** Not documented yet. */
class ReadInstruction {
  /** Not documented yet. */
  Source source;


  ReadInstruction();

  ReadInstruction.fromJson(core.Map _json) {
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class ReportWorkItemStatusRequest {
  /** Not documented yet. */
  core.String currentWorkerTime;

  /** Not documented yet. */
  core.List<WorkItemStatus> workItemStatuses;

  /** Not documented yet. */
  core.String workerId;


  ReportWorkItemStatusRequest();

  ReportWorkItemStatusRequest.fromJson(core.Map _json) {
    if (_json.containsKey("currentWorkerTime")) {
      currentWorkerTime = _json["currentWorkerTime"];
    }
    if (_json.containsKey("workItemStatuses")) {
      workItemStatuses = _json["workItemStatuses"].map((value) => new WorkItemStatus.fromJson(value)).toList();
    }
    if (_json.containsKey("workerId")) {
      workerId = _json["workerId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (currentWorkerTime != null) {
      _json["currentWorkerTime"] = currentWorkerTime;
    }
    if (workItemStatuses != null) {
      _json["workItemStatuses"] = workItemStatuses.map((value) => (value).toJson()).toList();
    }
    if (workerId != null) {
      _json["workerId"] = workerId;
    }
    return _json;
  }
}


/** Not documented yet. */
class ReportWorkItemStatusResponse {
  /** Not documented yet. */
  core.List<WorkItemServiceState> workItemServiceStates;


  ReportWorkItemStatusResponse();

  ReportWorkItemStatusResponse.fromJson(core.Map _json) {
    if (_json.containsKey("workItemServiceStates")) {
      workItemServiceStates = _json["workItemServiceStates"].map((value) => new WorkItemServiceState.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (workItemServiceStates != null) {
      _json["workItemServiceStates"] = workItemServiceStates.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class SeqMapTask {
  /** Not documented yet. */
  core.List<SideInputInfo> inputs;

  /** Not documented yet. */
  core.String name;

  /** Not documented yet. */
  core.List<SeqMapTaskOutputInfo> outputInfos;

  /** Not documented yet. */
  core.String stageName;

  /** Not documented yet. */
  core.String systemName;

  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> userFn;


  SeqMapTask();

  SeqMapTask.fromJson(core.Map _json) {
    if (_json.containsKey("inputs")) {
      inputs = _json["inputs"].map((value) => new SideInputInfo.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("outputInfos")) {
      outputInfos = _json["outputInfos"].map((value) => new SeqMapTaskOutputInfo.fromJson(value)).toList();
    }
    if (_json.containsKey("stageName")) {
      stageName = _json["stageName"];
    }
    if (_json.containsKey("systemName")) {
      systemName = _json["systemName"];
    }
    if (_json.containsKey("userFn")) {
      userFn = _json["userFn"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (inputs != null) {
      _json["inputs"] = inputs.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (outputInfos != null) {
      _json["outputInfos"] = outputInfos.map((value) => (value).toJson()).toList();
    }
    if (stageName != null) {
      _json["stageName"] = stageName;
    }
    if (systemName != null) {
      _json["systemName"] = systemName;
    }
    if (userFn != null) {
      _json["userFn"] = userFn;
    }
    return _json;
  }
}


/** Not documented yet. */
class SeqMapTaskOutputInfo {
  /** Not documented yet. */
  Sink sink;

  /** Not documented yet. */
  core.String tag;


  SeqMapTaskOutputInfo();

  SeqMapTaskOutputInfo.fromJson(core.Map _json) {
    if (_json.containsKey("sink")) {
      sink = new Sink.fromJson(_json["sink"]);
    }
    if (_json.containsKey("tag")) {
      tag = _json["tag"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (sink != null) {
      _json["sink"] = (sink).toJson();
    }
    if (tag != null) {
      _json["tag"] = tag;
    }
    return _json;
  }
}


/** Not documented yet. */
class ShellTask {
  /** Not documented yet. */
  core.String command;

  /** Not documented yet. */
  core.int exitCode;


  ShellTask();

  ShellTask.fromJson(core.Map _json) {
    if (_json.containsKey("command")) {
      command = _json["command"];
    }
    if (_json.containsKey("exitCode")) {
      exitCode = _json["exitCode"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (command != null) {
      _json["command"] = command;
    }
    if (exitCode != null) {
      _json["exitCode"] = exitCode;
    }
    return _json;
  }
}


/** Not documented yet. */
class SideInputInfo {
  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> kind;

  /** Not documented yet. */
  core.List<Source> sources;

  /** Not documented yet. */
  core.String tag;


  SideInputInfo();

  SideInputInfo.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("sources")) {
      sources = _json["sources"].map((value) => new Source.fromJson(value)).toList();
    }
    if (_json.containsKey("tag")) {
      tag = _json["tag"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (sources != null) {
      _json["sources"] = sources.map((value) => (value).toJson()).toList();
    }
    if (tag != null) {
      _json["tag"] = tag;
    }
    return _json;
  }
}


/** Not documented yet. */
class Sink {
  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> codec;

  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> spec;


  Sink();

  Sink.fromJson(core.Map _json) {
    if (_json.containsKey("codec")) {
      codec = _json["codec"];
    }
    if (_json.containsKey("spec")) {
      spec = _json["spec"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (codec != null) {
      _json["codec"] = codec;
    }
    if (spec != null) {
      _json["spec"] = spec;
    }
    return _json;
  }
}


/** Not documented yet. */
class Source {
  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> baseSpecs;

  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> codec;

  /** Not documented yet. */
  core.bool doesNotNeedSplitting;

  /** Not documented yet. */
  SourceMetadata metadata;

  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> spec;


  Source();

  Source.fromJson(core.Map _json) {
    if (_json.containsKey("baseSpecs")) {
      baseSpecs = _json["baseSpecs"];
    }
    if (_json.containsKey("codec")) {
      codec = _json["codec"];
    }
    if (_json.containsKey("doesNotNeedSplitting")) {
      doesNotNeedSplitting = _json["doesNotNeedSplitting"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new SourceMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("spec")) {
      spec = _json["spec"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (baseSpecs != null) {
      _json["baseSpecs"] = baseSpecs;
    }
    if (codec != null) {
      _json["codec"] = codec;
    }
    if (doesNotNeedSplitting != null) {
      _json["doesNotNeedSplitting"] = doesNotNeedSplitting;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (spec != null) {
      _json["spec"] = spec;
    }
    return _json;
  }
}


/** Not documented yet. */
class SourceGetMetadataRequest {
  /** Not documented yet. */
  Source source;


  SourceGetMetadataRequest();

  SourceGetMetadataRequest.fromJson(core.Map _json) {
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class SourceGetMetadataResponse {
  /** Not documented yet. */
  SourceMetadata metadata;


  SourceGetMetadataResponse();

  SourceGetMetadataResponse.fromJson(core.Map _json) {
    if (_json.containsKey("metadata")) {
      metadata = new SourceMetadata.fromJson(_json["metadata"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class SourceMetadata {
  /** Not documented yet. */
  core.String estimatedSizeBytes;

  /** Not documented yet. */
  core.bool infinite;

  /** Not documented yet. */
  core.bool producesSortedKeys;


  SourceMetadata();

  SourceMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("estimatedSizeBytes")) {
      estimatedSizeBytes = _json["estimatedSizeBytes"];
    }
    if (_json.containsKey("infinite")) {
      infinite = _json["infinite"];
    }
    if (_json.containsKey("producesSortedKeys")) {
      producesSortedKeys = _json["producesSortedKeys"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (estimatedSizeBytes != null) {
      _json["estimatedSizeBytes"] = estimatedSizeBytes;
    }
    if (infinite != null) {
      _json["infinite"] = infinite;
    }
    if (producesSortedKeys != null) {
      _json["producesSortedKeys"] = producesSortedKeys;
    }
    return _json;
  }
}


/** Not documented yet. */
class SourceOperationRequest {
  /** Not documented yet. */
  SourceGetMetadataRequest getMetadata;

  /** Not documented yet. */
  SourceSplitRequest split;


  SourceOperationRequest();

  SourceOperationRequest.fromJson(core.Map _json) {
    if (_json.containsKey("getMetadata")) {
      getMetadata = new SourceGetMetadataRequest.fromJson(_json["getMetadata"]);
    }
    if (_json.containsKey("split")) {
      split = new SourceSplitRequest.fromJson(_json["split"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (getMetadata != null) {
      _json["getMetadata"] = (getMetadata).toJson();
    }
    if (split != null) {
      _json["split"] = (split).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class SourceOperationResponse {
  /** Not documented yet. */
  SourceGetMetadataResponse getMetadata;

  /** Not documented yet. */
  SourceSplitResponse split;


  SourceOperationResponse();

  SourceOperationResponse.fromJson(core.Map _json) {
    if (_json.containsKey("getMetadata")) {
      getMetadata = new SourceGetMetadataResponse.fromJson(_json["getMetadata"]);
    }
    if (_json.containsKey("split")) {
      split = new SourceSplitResponse.fromJson(_json["split"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (getMetadata != null) {
      _json["getMetadata"] = (getMetadata).toJson();
    }
    if (split != null) {
      _json["split"] = (split).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class SourceSplitOptions {
  /** Not documented yet. */
  core.String desiredShardSizeBytes;


  SourceSplitOptions();

  SourceSplitOptions.fromJson(core.Map _json) {
    if (_json.containsKey("desiredShardSizeBytes")) {
      desiredShardSizeBytes = _json["desiredShardSizeBytes"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (desiredShardSizeBytes != null) {
      _json["desiredShardSizeBytes"] = desiredShardSizeBytes;
    }
    return _json;
  }
}


/** Not documented yet. */
class SourceSplitRequest {
  /** Not documented yet. */
  SourceSplitOptions options;

  /** Not documented yet. */
  Source source;


  SourceSplitRequest();

  SourceSplitRequest.fromJson(core.Map _json) {
    if (_json.containsKey("options")) {
      options = new SourceSplitOptions.fromJson(_json["options"]);
    }
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (options != null) {
      _json["options"] = (options).toJson();
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class SourceSplitResponse {
  /**
   * Not documented yet.
   * Possible string values are:
   * - "SOURCE_SPLIT_OUTCOME_SPLITTING_HAPPENED"
   * - "SOURCE_SPLIT_OUTCOME_UNKNOWN"
   * - "SOURCE_SPLIT_OUTCOME_USE_CURRENT"
   */
  core.String outcome;

  /** Not documented yet. */
  core.List<SourceSplitShard> shards;


  SourceSplitResponse();

  SourceSplitResponse.fromJson(core.Map _json) {
    if (_json.containsKey("outcome")) {
      outcome = _json["outcome"];
    }
    if (_json.containsKey("shards")) {
      shards = _json["shards"].map((value) => new SourceSplitShard.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (outcome != null) {
      _json["outcome"] = outcome;
    }
    if (shards != null) {
      _json["shards"] = shards.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class SourceSplitShard {
  /**
   * Not documented yet.
   * Possible string values are:
   * - "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT"
   * - "SOURCE_DERIVATION_MODE_INDEPENDENT"
   * - "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT"
   * - "SOURCE_DERIVATION_MODE_UNKNOWN"
   */
  core.String derivationMode;

  /** Not documented yet. */
  Source source;


  SourceSplitShard();

  SourceSplitShard.fromJson(core.Map _json) {
    if (_json.containsKey("derivationMode")) {
      derivationMode = _json["derivationMode"];
    }
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (derivationMode != null) {
      _json["derivationMode"] = derivationMode;
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class Status {
  /** Not documented yet. */
  core.int code;

  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> details;

  /** Not documented yet. */
  core.String message;


  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}


/** Not documented yet. */
class Step {
  /** Not documented yet. */
  core.String kind;

  /** Not documented yet. */
  core.String name;

  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> properties;


  Step();

  Step.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("properties")) {
      properties = _json["properties"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (properties != null) {
      _json["properties"] = properties;
    }
    return _json;
  }
}


/** Not documented yet. */
class StreamLocation {
  /** Not documented yet. */
  PubsubLocation pubsubLocation;

  /** Not documented yet. */
  StreamingStageLocation streamingStageLocation;


  StreamLocation();

  StreamLocation.fromJson(core.Map _json) {
    if (_json.containsKey("pubsubLocation")) {
      pubsubLocation = new PubsubLocation.fromJson(_json["pubsubLocation"]);
    }
    if (_json.containsKey("streamingStageLocation")) {
      streamingStageLocation = new StreamingStageLocation.fromJson(_json["streamingStageLocation"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (pubsubLocation != null) {
      _json["pubsubLocation"] = (pubsubLocation).toJson();
    }
    if (streamingStageLocation != null) {
      _json["streamingStageLocation"] = (streamingStageLocation).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class StreamingSetupTask {
  /** Not documented yet. */
  core.int receiveWorkPort;

  /** Not documented yet. */
  TopologyConfig streamingComputationTopology;

  /** Not documented yet. */
  core.int workerHarnessPort;


  StreamingSetupTask();

  StreamingSetupTask.fromJson(core.Map _json) {
    if (_json.containsKey("receiveWorkPort")) {
      receiveWorkPort = _json["receiveWorkPort"];
    }
    if (_json.containsKey("streamingComputationTopology")) {
      streamingComputationTopology = new TopologyConfig.fromJson(_json["streamingComputationTopology"]);
    }
    if (_json.containsKey("workerHarnessPort")) {
      workerHarnessPort = _json["workerHarnessPort"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (receiveWorkPort != null) {
      _json["receiveWorkPort"] = receiveWorkPort;
    }
    if (streamingComputationTopology != null) {
      _json["streamingComputationTopology"] = (streamingComputationTopology).toJson();
    }
    if (workerHarnessPort != null) {
      _json["workerHarnessPort"] = workerHarnessPort;
    }
    return _json;
  }
}


/** Not documented yet. */
class StreamingStageLocation {
  /** Not documented yet. */
  core.String streamId;


  StreamingStageLocation();

  StreamingStageLocation.fromJson(core.Map _json) {
    if (_json.containsKey("streamId")) {
      streamId = _json["streamId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (streamId != null) {
      _json["streamId"] = streamId;
    }
    return _json;
  }
}


/** Not documented yet. */
class TaskRunnerSettings {
  /** Not documented yet. */
  core.bool alsologtostderr;

  /** Not documented yet. */
  core.String baseTaskDir;

  /** Not documented yet. */
  core.String baseUrl;

  /** Not documented yet. */
  core.String commandlinesFileName;

  /** Not documented yet. */
  core.bool continueOnException;

  /** Not documented yet. */
  core.String dataflowApiVersion;

  /** Not documented yet. */
  core.String harnessCommand;

  /** Not documented yet. */
  core.String languageHint;

  /** Not documented yet. */
  core.String logDir;

  /** Not documented yet. */
  core.bool logToSerialconsole;

  /** Not documented yet. */
  core.String logUploadLocation;

  /** Not documented yet. */
  core.List<core.String> oauthScopes;

  /** Not documented yet. */
  WorkerSettings parallelWorkerSettings;

  /** Not documented yet. */
  core.String streamingWorkerMainClass;

  /** Not documented yet. */
  core.String taskGroup;

  /** Not documented yet. */
  core.String taskUser;

  /** Not documented yet. */
  core.String tempStoragePrefix;

  /** Not documented yet. */
  core.String vmId;

  /** Not documented yet. */
  core.String workflowFileName;


  TaskRunnerSettings();

  TaskRunnerSettings.fromJson(core.Map _json) {
    if (_json.containsKey("alsologtostderr")) {
      alsologtostderr = _json["alsologtostderr"];
    }
    if (_json.containsKey("baseTaskDir")) {
      baseTaskDir = _json["baseTaskDir"];
    }
    if (_json.containsKey("baseUrl")) {
      baseUrl = _json["baseUrl"];
    }
    if (_json.containsKey("commandlinesFileName")) {
      commandlinesFileName = _json["commandlinesFileName"];
    }
    if (_json.containsKey("continueOnException")) {
      continueOnException = _json["continueOnException"];
    }
    if (_json.containsKey("dataflowApiVersion")) {
      dataflowApiVersion = _json["dataflowApiVersion"];
    }
    if (_json.containsKey("harnessCommand")) {
      harnessCommand = _json["harnessCommand"];
    }
    if (_json.containsKey("languageHint")) {
      languageHint = _json["languageHint"];
    }
    if (_json.containsKey("logDir")) {
      logDir = _json["logDir"];
    }
    if (_json.containsKey("logToSerialconsole")) {
      logToSerialconsole = _json["logToSerialconsole"];
    }
    if (_json.containsKey("logUploadLocation")) {
      logUploadLocation = _json["logUploadLocation"];
    }
    if (_json.containsKey("oauthScopes")) {
      oauthScopes = _json["oauthScopes"];
    }
    if (_json.containsKey("parallelWorkerSettings")) {
      parallelWorkerSettings = new WorkerSettings.fromJson(_json["parallelWorkerSettings"]);
    }
    if (_json.containsKey("streamingWorkerMainClass")) {
      streamingWorkerMainClass = _json["streamingWorkerMainClass"];
    }
    if (_json.containsKey("taskGroup")) {
      taskGroup = _json["taskGroup"];
    }
    if (_json.containsKey("taskUser")) {
      taskUser = _json["taskUser"];
    }
    if (_json.containsKey("tempStoragePrefix")) {
      tempStoragePrefix = _json["tempStoragePrefix"];
    }
    if (_json.containsKey("vmId")) {
      vmId = _json["vmId"];
    }
    if (_json.containsKey("workflowFileName")) {
      workflowFileName = _json["workflowFileName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (alsologtostderr != null) {
      _json["alsologtostderr"] = alsologtostderr;
    }
    if (baseTaskDir != null) {
      _json["baseTaskDir"] = baseTaskDir;
    }
    if (baseUrl != null) {
      _json["baseUrl"] = baseUrl;
    }
    if (commandlinesFileName != null) {
      _json["commandlinesFileName"] = commandlinesFileName;
    }
    if (continueOnException != null) {
      _json["continueOnException"] = continueOnException;
    }
    if (dataflowApiVersion != null) {
      _json["dataflowApiVersion"] = dataflowApiVersion;
    }
    if (harnessCommand != null) {
      _json["harnessCommand"] = harnessCommand;
    }
    if (languageHint != null) {
      _json["languageHint"] = languageHint;
    }
    if (logDir != null) {
      _json["logDir"] = logDir;
    }
    if (logToSerialconsole != null) {
      _json["logToSerialconsole"] = logToSerialconsole;
    }
    if (logUploadLocation != null) {
      _json["logUploadLocation"] = logUploadLocation;
    }
    if (oauthScopes != null) {
      _json["oauthScopes"] = oauthScopes;
    }
    if (parallelWorkerSettings != null) {
      _json["parallelWorkerSettings"] = (parallelWorkerSettings).toJson();
    }
    if (streamingWorkerMainClass != null) {
      _json["streamingWorkerMainClass"] = streamingWorkerMainClass;
    }
    if (taskGroup != null) {
      _json["taskGroup"] = taskGroup;
    }
    if (taskUser != null) {
      _json["taskUser"] = taskUser;
    }
    if (tempStoragePrefix != null) {
      _json["tempStoragePrefix"] = tempStoragePrefix;
    }
    if (vmId != null) {
      _json["vmId"] = vmId;
    }
    if (workflowFileName != null) {
      _json["workflowFileName"] = workflowFileName;
    }
    return _json;
  }
}


/** Not documented yet. */
class TopologyConfig {
  /** Not documented yet. */
  core.List<ComputationTopology> computations;

  /** Not documented yet. */
  core.List<DataDiskAssignment> dataDiskAssignments;


  TopologyConfig();

  TopologyConfig.fromJson(core.Map _json) {
    if (_json.containsKey("computations")) {
      computations = _json["computations"].map((value) => new ComputationTopology.fromJson(value)).toList();
    }
    if (_json.containsKey("dataDiskAssignments")) {
      dataDiskAssignments = _json["dataDiskAssignments"].map((value) => new DataDiskAssignment.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (computations != null) {
      _json["computations"] = computations.map((value) => (value).toJson()).toList();
    }
    if (dataDiskAssignments != null) {
      _json["dataDiskAssignments"] = dataDiskAssignments.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Not documented yet. */
class WorkItem {
  /** Not documented yet. */
  core.String configuration;

  /** Not documented yet. */
  core.String id;

  /** Not documented yet. */
  core.String jobId;

  /** Not documented yet. */
  core.String leaseExpireTime;

  /** Not documented yet. */
  MapTask mapTask;

  /** Not documented yet. */
  core.List<Package> packages;

  /** Not documented yet. */
  core.String projectId;

  /** Not documented yet. */
  core.String reportStatusInterval;

  /** Not documented yet. */
  SeqMapTask seqMapTask;

  /** Not documented yet. */
  ShellTask shellTask;

  /** Not documented yet. */
  SourceOperationRequest sourceOperationTask;

  /** Not documented yet. */
  StreamingSetupTask streamingSetupTask;


  WorkItem();

  WorkItem.fromJson(core.Map _json) {
    if (_json.containsKey("configuration")) {
      configuration = _json["configuration"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("jobId")) {
      jobId = _json["jobId"];
    }
    if (_json.containsKey("leaseExpireTime")) {
      leaseExpireTime = _json["leaseExpireTime"];
    }
    if (_json.containsKey("mapTask")) {
      mapTask = new MapTask.fromJson(_json["mapTask"]);
    }
    if (_json.containsKey("packages")) {
      packages = _json["packages"].map((value) => new Package.fromJson(value)).toList();
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("reportStatusInterval")) {
      reportStatusInterval = _json["reportStatusInterval"];
    }
    if (_json.containsKey("seqMapTask")) {
      seqMapTask = new SeqMapTask.fromJson(_json["seqMapTask"]);
    }
    if (_json.containsKey("shellTask")) {
      shellTask = new ShellTask.fromJson(_json["shellTask"]);
    }
    if (_json.containsKey("sourceOperationTask")) {
      sourceOperationTask = new SourceOperationRequest.fromJson(_json["sourceOperationTask"]);
    }
    if (_json.containsKey("streamingSetupTask")) {
      streamingSetupTask = new StreamingSetupTask.fromJson(_json["streamingSetupTask"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (configuration != null) {
      _json["configuration"] = configuration;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (jobId != null) {
      _json["jobId"] = jobId;
    }
    if (leaseExpireTime != null) {
      _json["leaseExpireTime"] = leaseExpireTime;
    }
    if (mapTask != null) {
      _json["mapTask"] = (mapTask).toJson();
    }
    if (packages != null) {
      _json["packages"] = packages.map((value) => (value).toJson()).toList();
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (reportStatusInterval != null) {
      _json["reportStatusInterval"] = reportStatusInterval;
    }
    if (seqMapTask != null) {
      _json["seqMapTask"] = (seqMapTask).toJson();
    }
    if (shellTask != null) {
      _json["shellTask"] = (shellTask).toJson();
    }
    if (sourceOperationTask != null) {
      _json["sourceOperationTask"] = (sourceOperationTask).toJson();
    }
    if (streamingSetupTask != null) {
      _json["streamingSetupTask"] = (streamingSetupTask).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class WorkItemServiceState {
  /**
   * Not documented yet.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> harnessData;

  /** Not documented yet. */
  core.String leaseExpireTime;

  /** Not documented yet. */
  core.String reportStatusInterval;

  /** Not documented yet. */
  ApproximateProgress suggestedStopPoint;

  /** Not documented yet. */
  Position suggestedStopPosition;


  WorkItemServiceState();

  WorkItemServiceState.fromJson(core.Map _json) {
    if (_json.containsKey("harnessData")) {
      harnessData = _json["harnessData"];
    }
    if (_json.containsKey("leaseExpireTime")) {
      leaseExpireTime = _json["leaseExpireTime"];
    }
    if (_json.containsKey("reportStatusInterval")) {
      reportStatusInterval = _json["reportStatusInterval"];
    }
    if (_json.containsKey("suggestedStopPoint")) {
      suggestedStopPoint = new ApproximateProgress.fromJson(_json["suggestedStopPoint"]);
    }
    if (_json.containsKey("suggestedStopPosition")) {
      suggestedStopPosition = new Position.fromJson(_json["suggestedStopPosition"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (harnessData != null) {
      _json["harnessData"] = harnessData;
    }
    if (leaseExpireTime != null) {
      _json["leaseExpireTime"] = leaseExpireTime;
    }
    if (reportStatusInterval != null) {
      _json["reportStatusInterval"] = reportStatusInterval;
    }
    if (suggestedStopPoint != null) {
      _json["suggestedStopPoint"] = (suggestedStopPoint).toJson();
    }
    if (suggestedStopPosition != null) {
      _json["suggestedStopPosition"] = (suggestedStopPosition).toJson();
    }
    return _json;
  }
}


/** Not documented yet. */
class WorkItemStatus {
  /** Not documented yet. */
  core.bool completed;

  /** Not documented yet. */
  core.List<Status> errors;

  /** Not documented yet. */
  core.List<MetricUpdate> metricUpdates;

  /** Not documented yet. */
  ApproximateProgress progress;

  /** Not documented yet. */
  core.String reportIndex;

  /** Not documented yet. */
  core.String requestedLeaseDuration;

  /** Not documented yet. */
  SourceOperationResponse sourceOperationResponse;

  /** Not documented yet. */
  Position stopPosition;

  /** Not documented yet. */
  core.String workItemId;


  WorkItemStatus();

  WorkItemStatus.fromJson(core.Map _json) {
    if (_json.containsKey("completed")) {
      completed = _json["completed"];
    }
    if (_json.containsKey("errors")) {
      errors = _json["errors"].map((value) => new Status.fromJson(value)).toList();
    }
    if (_json.containsKey("metricUpdates")) {
      metricUpdates = _json["metricUpdates"].map((value) => new MetricUpdate.fromJson(value)).toList();
    }
    if (_json.containsKey("progress")) {
      progress = new ApproximateProgress.fromJson(_json["progress"]);
    }
    if (_json.containsKey("reportIndex")) {
      reportIndex = _json["reportIndex"];
    }
    if (_json.containsKey("requestedLeaseDuration")) {
      requestedLeaseDuration = _json["requestedLeaseDuration"];
    }
    if (_json.containsKey("sourceOperationResponse")) {
      sourceOperationResponse = new SourceOperationResponse.fromJson(_json["sourceOperationResponse"]);
    }
    if (_json.containsKey("stopPosition")) {
      stopPosition = new Position.fromJson(_json["stopPosition"]);
    }
    if (_json.containsKey("workItemId")) {
      workItemId = _json["workItemId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (completed != null) {
      _json["completed"] = completed;
    }
    if (errors != null) {
      _json["errors"] = errors.map((value) => (value).toJson()).toList();
    }
    if (metricUpdates != null) {
      _json["metricUpdates"] = metricUpdates.map((value) => (value).toJson()).toList();
    }
    if (progress != null) {
      _json["progress"] = (progress).toJson();
    }
    if (reportIndex != null) {
      _json["reportIndex"] = reportIndex;
    }
    if (requestedLeaseDuration != null) {
      _json["requestedLeaseDuration"] = requestedLeaseDuration;
    }
    if (sourceOperationResponse != null) {
      _json["sourceOperationResponse"] = (sourceOperationResponse).toJson();
    }
    if (stopPosition != null) {
      _json["stopPosition"] = (stopPosition).toJson();
    }
    if (workItemId != null) {
      _json["workItemId"] = workItemId;
    }
    return _json;
  }
}


/** Not documented yet. */
class WorkerPool {
  /** Not documented yet. */
  AutoscalingSettings autoscalingSettings;

  /** Not documented yet. */
  core.List<Disk> dataDisks;

  /**
   * Not documented yet.
   * Possible string values are:
   * - "DEFAULT_PACKAGE_SET_JAVA"
   * - "DEFAULT_PACKAGE_SET_NONE"
   * - "DEFAULT_PACKAGE_SET_PYTHON"
   * - "DEFAULT_PACKAGE_SET_UNKNOWN"
   */
  core.String defaultPackageSet;

  /** Not documented yet. */
  core.int diskSizeGb;

  /** Not documented yet. */
  core.String diskSourceImage;

  /** Not documented yet. */
  core.String kind;

  /** Not documented yet. */
  core.String machineType;

  /** Not documented yet. */
  core.Map<core.String, core.String> metadata;

  /** Not documented yet. */
  core.int numWorkers;

  /** Not documented yet. */
  core.String onHostMaintenance;

  /** Not documented yet. */
  core.List<Package> packages;

  /** Not documented yet. */
  TaskRunnerSettings taskrunnerSettings;

  /**
   * Not documented yet.
   * Possible string values are:
   * - "TEARDOWN_ALWAYS"
   * - "TEARDOWN_NEVER"
   * - "TEARDOWN_ON_SUCCESS"
   * - "TEARDOWN_POLICY_UNKNOWN"
   */
  core.String teardownPolicy;

  /** Not documented yet. */
  core.String zone;


  WorkerPool();

  WorkerPool.fromJson(core.Map _json) {
    if (_json.containsKey("autoscalingSettings")) {
      autoscalingSettings = new AutoscalingSettings.fromJson(_json["autoscalingSettings"]);
    }
    if (_json.containsKey("dataDisks")) {
      dataDisks = _json["dataDisks"].map((value) => new Disk.fromJson(value)).toList();
    }
    if (_json.containsKey("defaultPackageSet")) {
      defaultPackageSet = _json["defaultPackageSet"];
    }
    if (_json.containsKey("diskSizeGb")) {
      diskSizeGb = _json["diskSizeGb"];
    }
    if (_json.containsKey("diskSourceImage")) {
      diskSourceImage = _json["diskSourceImage"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("machineType")) {
      machineType = _json["machineType"];
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("numWorkers")) {
      numWorkers = _json["numWorkers"];
    }
    if (_json.containsKey("onHostMaintenance")) {
      onHostMaintenance = _json["onHostMaintenance"];
    }
    if (_json.containsKey("packages")) {
      packages = _json["packages"].map((value) => new Package.fromJson(value)).toList();
    }
    if (_json.containsKey("taskrunnerSettings")) {
      taskrunnerSettings = new TaskRunnerSettings.fromJson(_json["taskrunnerSettings"]);
    }
    if (_json.containsKey("teardownPolicy")) {
      teardownPolicy = _json["teardownPolicy"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autoscalingSettings != null) {
      _json["autoscalingSettings"] = (autoscalingSettings).toJson();
    }
    if (dataDisks != null) {
      _json["dataDisks"] = dataDisks.map((value) => (value).toJson()).toList();
    }
    if (defaultPackageSet != null) {
      _json["defaultPackageSet"] = defaultPackageSet;
    }
    if (diskSizeGb != null) {
      _json["diskSizeGb"] = diskSizeGb;
    }
    if (diskSourceImage != null) {
      _json["diskSourceImage"] = diskSourceImage;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (machineType != null) {
      _json["machineType"] = machineType;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (numWorkers != null) {
      _json["numWorkers"] = numWorkers;
    }
    if (onHostMaintenance != null) {
      _json["onHostMaintenance"] = onHostMaintenance;
    }
    if (packages != null) {
      _json["packages"] = packages.map((value) => (value).toJson()).toList();
    }
    if (taskrunnerSettings != null) {
      _json["taskrunnerSettings"] = (taskrunnerSettings).toJson();
    }
    if (teardownPolicy != null) {
      _json["teardownPolicy"] = teardownPolicy;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}


/** Not documented yet. */
class WorkerSettings {
  /** Not documented yet. */
  core.String baseUrl;

  /** Not documented yet. */
  core.bool reportingEnabled;

  /** Not documented yet. */
  core.String servicePath;

  /** Not documented yet. */
  core.String shuffleServicePath;

  /** Not documented yet. */
  core.String tempStoragePrefix;

  /** Not documented yet. */
  core.String workerId;


  WorkerSettings();

  WorkerSettings.fromJson(core.Map _json) {
    if (_json.containsKey("baseUrl")) {
      baseUrl = _json["baseUrl"];
    }
    if (_json.containsKey("reportingEnabled")) {
      reportingEnabled = _json["reportingEnabled"];
    }
    if (_json.containsKey("servicePath")) {
      servicePath = _json["servicePath"];
    }
    if (_json.containsKey("shuffleServicePath")) {
      shuffleServicePath = _json["shuffleServicePath"];
    }
    if (_json.containsKey("tempStoragePrefix")) {
      tempStoragePrefix = _json["tempStoragePrefix"];
    }
    if (_json.containsKey("workerId")) {
      workerId = _json["workerId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (baseUrl != null) {
      _json["baseUrl"] = baseUrl;
    }
    if (reportingEnabled != null) {
      _json["reportingEnabled"] = reportingEnabled;
    }
    if (servicePath != null) {
      _json["servicePath"] = servicePath;
    }
    if (shuffleServicePath != null) {
      _json["shuffleServicePath"] = shuffleServicePath;
    }
    if (tempStoragePrefix != null) {
      _json["tempStoragePrefix"] = tempStoragePrefix;
    }
    if (workerId != null) {
      _json["workerId"] = workerId;
    }
    return _json;
  }
}


/** Not documented yet. */
class WriteInstruction {
  /** Not documented yet. */
  InstructionInput input;

  /** Not documented yet. */
  Sink sink;


  WriteInstruction();

  WriteInstruction.fromJson(core.Map _json) {
    if (_json.containsKey("input")) {
      input = new InstructionInput.fromJson(_json["input"]);
    }
    if (_json.containsKey("sink")) {
      sink = new Sink.fromJson(_json["sink"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (input != null) {
      _json["input"] = (input).toJson();
    }
    if (sink != null) {
      _json["sink"] = (sink).toJson();
    }
    return _json;
  }
}


