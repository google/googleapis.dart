// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.dataflow.v1b3;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client dataflow/v1b3';

/** Google Dataflow API. */
class DataflowApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** View your email address */
  static const UserinfoEmailScope = "https://www.googleapis.com/auth/userinfo.email";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  DataflowApi(http.Client client, {core.String rootUrl: "https://dataflow.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsJobsResourceApi get jobs => new ProjectsJobsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Send a worker_message to the service.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The project to send the WorkerMessages to.
   *
   * Completes with a [SendWorkerMessagesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SendWorkerMessagesResponse> workerMessages(SendWorkerMessagesRequest request, core.String projectId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }

    _url = 'v1b3/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/WorkerMessages';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SendWorkerMessagesResponse.fromJson(data));
  }

}


class ProjectsJobsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsJobsMessagesResourceApi get messages => new ProjectsJobsMessagesResourceApi(_requester);
  ProjectsJobsWorkItemsResourceApi get workItems => new ProjectsJobsWorkItemsResourceApi(_requester);

  ProjectsJobsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a dataflow job.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The project which owns the job.
   *
   * [view] - Level of information requested in response.
   * Possible string values are:
   * - "JOB_VIEW_UNKNOWN" : A JOB_VIEW_UNKNOWN.
   * - "JOB_VIEW_SUMMARY" : A JOB_VIEW_SUMMARY.
   * - "JOB_VIEW_ALL" : A JOB_VIEW_ALL.
   *
   * [replaceJobId] - DEPRECATED. This field is now on the Job message.
   *
   * Completes with a [Job].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Job> create(Job request, core.String projectId, {core.String view, core.String replaceJobId}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
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
    if (replaceJobId != null) {
      _queryParams["replaceJobId"] = [replaceJobId];
    }

    _url = 'v1b3/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs';

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
   * [projectId] - The project which owns the job.
   *
   * [jobId] - Identifies a single job.
   *
   * [view] - Level of information requested in response.
   * Possible string values are:
   * - "JOB_VIEW_UNKNOWN" : A JOB_VIEW_UNKNOWN.
   * - "JOB_VIEW_SUMMARY" : A JOB_VIEW_SUMMARY.
   * - "JOB_VIEW_ALL" : A JOB_VIEW_ALL.
   *
   * Completes with a [Job].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Job> get(core.String projectId, core.String jobId, {core.String view}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
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

    _url = 'v1b3/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId');

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
   * [projectId] - A project id.
   *
   * [jobId] - The job to get messages for.
   *
   * [startTime] - Return only metric data that has changed since this time.
   * Default is to return all information about all metrics for the job.
   *
   * Completes with a [JobMetrics].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<JobMetrics> getMetrics(core.String projectId, core.String jobId, {core.String startTime}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
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

    _url = 'v1b3/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId') + '/metrics';

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
   * [projectId] - The project which owns the jobs.
   *
   * [view] - Level of information requested in response. Default is SUMMARY.
   * Possible string values are:
   * - "JOB_VIEW_UNKNOWN" : A JOB_VIEW_UNKNOWN.
   * - "JOB_VIEW_SUMMARY" : A JOB_VIEW_SUMMARY.
   * - "JOB_VIEW_ALL" : A JOB_VIEW_ALL.
   *
   * [pageSize] - If there are many jobs, limit response to at most this many.
   * The actual number of jobs returned will be the lesser of max_responses and
   * an unspecified server-defined limit.
   *
   * [pageToken] - Set this to the 'next_page_token' field of a previous
   * response to request additional results in a long list.
   *
   * Completes with a [ListJobsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListJobsResponse> list(core.String projectId, {core.String view, core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1b3/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs';

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
   * Updates the state of an existing dataflow job.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The project which owns the job.
   *
   * [jobId] - Identifies a single job.
   *
   * Completes with a [Job].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Job> update(Job request, core.String projectId, core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
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

    _url = 'v1b3/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId');

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


class ProjectsJobsMessagesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsJobsMessagesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Request the job status.
   *
   * Request parameters:
   *
   * [projectId] - A project id.
   *
   * [jobId] - The job to get messages about.
   *
   * [minimumImportance] - Filter to only get messages with importance >= level
   * Possible string values are:
   * - "JOB_MESSAGE_IMPORTANCE_UNKNOWN" : A JOB_MESSAGE_IMPORTANCE_UNKNOWN.
   * - "JOB_MESSAGE_DEBUG" : A JOB_MESSAGE_DEBUG.
   * - "JOB_MESSAGE_DETAILED" : A JOB_MESSAGE_DETAILED.
   * - "JOB_MESSAGE_BASIC" : A JOB_MESSAGE_BASIC.
   * - "JOB_MESSAGE_WARNING" : A JOB_MESSAGE_WARNING.
   * - "JOB_MESSAGE_ERROR" : A JOB_MESSAGE_ERROR.
   *
   * [pageSize] - If specified, determines the maximum number of messages to
   * return. If unspecified, the service may choose an appropriate default, or
   * may return an arbitrarily large number of results.
   *
   * [pageToken] - If supplied, this should be the value of next_page_token
   * returned by an earlier call. This will cause the next page of results to be
   * returned.
   *
   * [startTime] - If specified, return only messages with timestamps >=
   * start_time. The default is the job creation time (i.e. beginning of
   * messages).
   *
   * [endTime] - Return only messages with timestamps < end_time. The default is
   * now (i.e. return up to the latest messages available).
   *
   * Completes with a [ListJobMessagesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListJobMessagesResponse> list(core.String projectId, core.String jobId, {core.String minimumImportance, core.int pageSize, core.String pageToken, core.String startTime, core.String endTime}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
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
    if (endTime != null) {
      _queryParams["endTime"] = [endTime];
    }

    _url = 'v1b3/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId') + '/messages';

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


class ProjectsJobsWorkItemsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsJobsWorkItemsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Leases a dataflow WorkItem to run.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - Identifies the project this worker belongs to.
   *
   * [jobId] - Identifies the workflow job this worker belongs to.
   *
   * Completes with a [LeaseWorkItemResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LeaseWorkItemResponse> lease(LeaseWorkItemRequest request, core.String projectId, core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
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

    _url = 'v1b3/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId') + '/workItems:lease';

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
   * [projectId] - The project which owns the WorkItem's job.
   *
   * [jobId] - The job which the WorkItem is part of.
   *
   * Completes with a [ReportWorkItemStatusResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ReportWorkItemStatusResponse> reportStatus(ReportWorkItemStatusRequest request, core.String projectId, core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
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

    _url = 'v1b3/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId') + '/workItems:reportStatus';

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



/**
 * Obsolete in favor of ApproximateReportedProgress and ApproximateSplitRequest.
 */
class ApproximateProgress {
  /** Obsolete. */
  core.double percentComplete;
  /** Obsolete. */
  Position position;
  /** Obsolete. */
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

/** A progress measurement of a WorkItem by a worker. */
class ApproximateReportedProgress {
  /**
   * Completion as fraction of the input consumed, from 0.0 (beginning, nothing
   * consumed), to 1.0 (end of the input, entire input consumed).
   */
  core.double fractionConsumed;
  /** A Position within the work to represent a progress. */
  Position position;

  ApproximateReportedProgress();

  ApproximateReportedProgress.fromJson(core.Map _json) {
    if (_json.containsKey("fractionConsumed")) {
      fractionConsumed = _json["fractionConsumed"];
    }
    if (_json.containsKey("position")) {
      position = new Position.fromJson(_json["position"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fractionConsumed != null) {
      _json["fractionConsumed"] = fractionConsumed;
    }
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    return _json;
  }
}

/**
 * A suggestion by the service to the worker to dynamically split the WorkItem.
 */
class ApproximateSplitRequest {
  /**
   * A fraction at which to split the work item, from 0.0 (beginning of the
   * input) to 1.0 (end of the input).
   */
  core.double fractionConsumed;
  /** A Position at which to split the work item. */
  Position position;

  ApproximateSplitRequest();

  ApproximateSplitRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fractionConsumed")) {
      fractionConsumed = _json["fractionConsumed"];
    }
    if (_json.containsKey("position")) {
      position = new Position.fromJson(_json["position"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fractionConsumed != null) {
      _json["fractionConsumed"] = fractionConsumed;
    }
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    return _json;
  }
}

/** Settings for WorkerPool autoscaling. */
class AutoscalingSettings {
  /**
   * The algorithm to use for autoscaling.
   * Possible string values are:
   * - "AUTOSCALING_ALGORITHM_UNKNOWN" : A AUTOSCALING_ALGORITHM_UNKNOWN.
   * - "AUTOSCALING_ALGORITHM_NONE" : A AUTOSCALING_ALGORITHM_NONE.
   * - "AUTOSCALING_ALGORITHM_BASIC" : A AUTOSCALING_ALGORITHM_BASIC.
   */
  core.String algorithm;
  /** The maximum number of workers to cap scaling at. */
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

/** All configuration data for a particular Computation. */
class ComputationTopology {
  /** The ID of the computation. */
  core.String computationId;
  /** The inputs to the computation. */
  core.List<StreamLocation> inputs;
  /** The key ranges processed by the computation. */
  core.List<KeyRangeLocation> keyRanges;
  /** The outputs from the computation. */
  core.List<StreamLocation> outputs;
  /** The state family values. */
  core.List<StateFamilyConfig> stateFamilies;
  /** The system stage name. */
  core.String systemStageName;
  /** The user stage name. */
  core.String userStageName;

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
    if (_json.containsKey("stateFamilies")) {
      stateFamilies = _json["stateFamilies"].map((value) => new StateFamilyConfig.fromJson(value)).toList();
    }
    if (_json.containsKey("systemStageName")) {
      systemStageName = _json["systemStageName"];
    }
    if (_json.containsKey("userStageName")) {
      userStageName = _json["userStageName"];
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
    if (stateFamilies != null) {
      _json["stateFamilies"] = stateFamilies.map((value) => (value).toJson()).toList();
    }
    if (systemStageName != null) {
      _json["systemStageName"] = systemStageName;
    }
    if (userStageName != null) {
      _json["userStageName"] = userStageName;
    }
    return _json;
  }
}

/**
 * A position that encapsulates an inner position and an index for the inner
 * position. A ConcatPosition can be used by a reader of a source that
 * encapsulates a set of other sources.
 */
class ConcatPosition {
  /** Index of the inner source. */
  core.int index;
  /** Position within the inner source. */
  Position position;

  ConcatPosition();

  ConcatPosition.fromJson(core.Map _json) {
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("position")) {
      position = new Position.fromJson(_json["position"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (index != null) {
      _json["index"] = index;
    }
    if (position != null) {
      _json["position"] = (position).toJson();
    }
    return _json;
  }
}

/** Identifies the location of a custom souce. */
class CustomSourceLocation {
  /** Whether this source is stateful. */
  core.bool stateful;

  CustomSourceLocation();

  CustomSourceLocation.fromJson(core.Map _json) {
    if (_json.containsKey("stateful")) {
      stateful = _json["stateful"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (stateful != null) {
      _json["stateful"] = stateful;
    }
    return _json;
  }
}

/** Data disk assignment for a given VM instance. */
class DataDiskAssignment {
  /**
   * Mounted data disks. The order is important a data disk's 0-based index in
   * this list defines which persistent directory the disk is mounted to, for
   * example the list of { "myproject-1014-104817-4c2-harness-0-disk-0" }, {
   * "myproject-1014-104817-4c2-harness-0-disk-1" }.
   */
  core.List<core.String> dataDisks;
  /**
   * VM instance name the data disks mounted to, for example
   * "myproject-1014-104817-4c2-harness-0".
   */
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

/**
 * Specification of one of the bundles produced as a result of splitting a
 * Source (e.g. when executing a SourceSplitRequest, or when splitting an active
 * task using WorkItemStatus.dynamic_source_split), relative to the source being
 * split.
 */
class DerivedSource {
  /**
   * What source to base the produced source on (if any).
   * Possible string values are:
   * - "SOURCE_DERIVATION_MODE_UNKNOWN" : A SOURCE_DERIVATION_MODE_UNKNOWN.
   * - "SOURCE_DERIVATION_MODE_INDEPENDENT" : A
   * SOURCE_DERIVATION_MODE_INDEPENDENT.
   * - "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT" : A
   * SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT.
   * - "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT" : A
   * SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT.
   */
  core.String derivationMode;
  /** Specification of the source. */
  Source source;

  DerivedSource();

  DerivedSource.fromJson(core.Map _json) {
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

/** Describes the data disk used by a workflow job. */
class Disk {
  /**
   * Disk storage type, as defined by Google Compute Engine. This must be a disk
   * type appropriate to the project and zone in which the workers will run. If
   * unknown or unspecified, the service will attempt to choose a reasonable
   * default. For example, the standard persistent disk type is a resource name
   * typically ending in "pd-standard". If SSD persistent disks are available,
   * the resource name typically ends with "pd-ssd". The actual valid values are
   * defined the Google Compute Engine API, not by the Dataflow API; consult the
   * Google Compute Engine documentation for more information about determining
   * the set of available disk types for a particular project and zone. Google
   * Compute Engine Disk types are local to a particular project in a particular
   * zone, and so the resource name will typically look something like this:
   * compute.googleapis.com/projects/
   * /zones//diskTypes/pd-standard
   */
  core.String diskType;
  /** Directory in a VM where disk is mounted. */
  core.String mountPoint;
  /**
   * Size of disk in GB. If zero or unspecified, the service will attempt to
   * choose a reasonable default.
   */
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

/**
 * When a task splits using WorkItemStatus.dynamic_source_split, this message
 * describes the two parts of the split relative to the description of the
 * current task's input.
 */
class DynamicSourceSplit {
  /**
   * Primary part (continued to be processed by worker). Specified relative to
   * the previously-current source. Becomes current.
   */
  DerivedSource primary;
  /**
   * Residual part (returned to the pool of work). Specified relative to the
   * previously-current source.
   */
  DerivedSource residual;

  DynamicSourceSplit();

  DynamicSourceSplit.fromJson(core.Map _json) {
    if (_json.containsKey("primary")) {
      primary = new DerivedSource.fromJson(_json["primary"]);
    }
    if (_json.containsKey("residual")) {
      residual = new DerivedSource.fromJson(_json["residual"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (primary != null) {
      _json["primary"] = (primary).toJson();
    }
    if (residual != null) {
      _json["residual"] = (residual).toJson();
    }
    return _json;
  }
}

/** Describes the environment in which a Dataflow Job runs. */
class Environment {
  /**
   * The type of cluster manager API to use. If unknown or unspecified, the
   * service will attempt to choose a reasonable default. This should be in the
   * form of the API service name, e.g. "compute.googleapis.com".
   */
  core.String clusterManagerApiService;
  /**
   * The dataset for the current project where various workflow related tables
   * are stored. The supported resource type is: Google BigQuery:
   * bigquery.googleapis.com/{dataset}
   */
  core.String dataset;
  /** The list of experiments to enable. */
  core.List<core.String> experiments;
  /**
   * Experimental settings.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> internalExperiments;
  /**
   * The Dataflow SDK pipeline options specified by the user. These options are
   * passed through the service and are used to recreate the SDK pipeline
   * options on the worker in a language agnostic and platform independent way.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> sdkPipelineOptions;
  /**
   * The prefix of the resources the system should use for temporary storage.
   * The system will append the suffix "/temp-{JOBNAME} to this resource prefix,
   * where {JOBNAME} is the value of the job_name field. The resulting bucket
   * and object prefix is used as the prefix of the resources used to store
   * temporary data needed during the job execution. NOTE: This will override
   * the value in taskrunner_settings. The supported resource type is: Google
   * Cloud Storage: storage.googleapis.com/{bucket}/{object}
   * bucket.storage.googleapis.com/{object}
   */
  core.String tempStoragePrefix;
  /**
   * A description of the process that generated the request.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> userAgent;
  /**
   * A structure describing which components and their versions of the service
   * are required in order to run the job.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> version;
  /**
   * Worker pools. At least one "harness" worker pool must be specified in order
   * for the job to have workers.
   */
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
    if (_json.containsKey("internalExperiments")) {
      internalExperiments = _json["internalExperiments"];
    }
    if (_json.containsKey("sdkPipelineOptions")) {
      sdkPipelineOptions = _json["sdkPipelineOptions"];
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
    if (internalExperiments != null) {
      _json["internalExperiments"] = internalExperiments;
    }
    if (sdkPipelineOptions != null) {
      _json["sdkPipelineOptions"] = sdkPipelineOptions;
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

/**
 * An instruction that copies its inputs (zero or more) to its (single) output.
 */
class FlattenInstruction {
  /** Describes the inputs to the flatten instruction. */
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

/**
 * An input of an instruction, as a reference to an output of a producer
 * instruction.
 */
class InstructionInput {
  /** The output index (origin zero) within the producer. */
  core.int outputNum;
  /**
   * The index (origin zero) of the parallel instruction that produces the
   * output to be consumed by this input. This index is relative to the list of
   * instructions in this input's instruction's containing MapTask.
   */
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

/** An output of an instruction. */
class InstructionOutput {
  /**
   * The codec to use to encode data being written via this output.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> codec;
  /** The user-provided name of this output. */
  core.String name;
  /** System-defined name of this output. Unique across the workflow. */
  core.String systemName;

  InstructionOutput();

  InstructionOutput.fromJson(core.Map _json) {
    if (_json.containsKey("codec")) {
      codec = _json["codec"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("systemName")) {
      systemName = _json["systemName"];
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
    if (systemName != null) {
      _json["systemName"] = systemName;
    }
    return _json;
  }
}

/** Defines a job to be run by the Dataflow service. */
class Job {
  /**
   * Client's unique identifier of the job, re-used by SDK across retried
   * attempts. If this field is set, the service will ensure its uniqueness.
   * That is, the request to create a job will fail if the service has knowledge
   * of a previously submitted job with the same client's id and job name. The
   * caller may, for example, use this field to ensure idempotence of job
   * creation across retried attempts to create a job. By default, the field is
   * empty and, in that case, the service ignores it.
   */
  core.String clientRequestId;
  /**
   * Timestamp when job was initially created. Immutable, set by the Dataflow
   * service.
   */
  core.String createTime;
  /**
   * The current state of the job. Jobs are created in the JOB_STATE_STOPPED
   * state unless otherwise specified. A job in the JOB_STATE_RUNNING state may
   * asynchronously enter a terminal state. Once a job has reached a terminal
   * state, no further state updates may be made. This field may be mutated by
   * the Dataflow service; callers cannot mutate it.
   * Possible string values are:
   * - "JOB_STATE_UNKNOWN" : A JOB_STATE_UNKNOWN.
   * - "JOB_STATE_STOPPED" : A JOB_STATE_STOPPED.
   * - "JOB_STATE_RUNNING" : A JOB_STATE_RUNNING.
   * - "JOB_STATE_DONE" : A JOB_STATE_DONE.
   * - "JOB_STATE_FAILED" : A JOB_STATE_FAILED.
   * - "JOB_STATE_CANCELLED" : A JOB_STATE_CANCELLED.
   * - "JOB_STATE_UPDATED" : A JOB_STATE_UPDATED.
   */
  core.String currentState;
  /** The timestamp associated with the current state. */
  core.String currentStateTime;
  /** Environment for the job. */
  Environment environment;
  /** Information about how the Dataflow service will actually run the job. */
  JobExecutionInfo executionInfo;
  /**
   * The unique ID of this job. This field is set by the Dataflow service when
   * the Job is created, and is immutable for the life of the Job.
   */
  core.String id;
  /**
   * The user-specified Dataflow job name. Only one Job with a given name may
   * exist in a project at any given time. If a caller attempts to create a Job
   * with the same name as an already-existing Job, the attempt will return the
   * existing Job. The name must match the regular expression
   * [a-z]([-a-z0-9]{0,38}[a-z0-9])?
   */
  core.String name;
  /** The project which owns the job. */
  core.String projectId;
  /**
   * If this job is an update of an existing job, this field will be the ID of
   * the job it replaced. When sending a CreateJobRequest, you can update a job
   * by specifying it here. The job named here will be stopped, and its
   * intermediate state transferred to this job.
   */
  core.String replaceJobId;
  /**
   * If another job is an update of this job (and thus, this job is in
   * JOB_STATE_UPDATED), this field will contain the ID of that job.
   */
  core.String replacedByJobId;
  /**
   * The job's requested state. UpdateJob may be used to switch between the
   * JOB_STATE_STOPPED and JOB_STATE_RUNNING states, by setting requested_state.
   * UpdateJob may also be used to directly set a job's requested state to
   * JOB_STATE_CANCELLED or JOB_STATE_DONE, irrevocably terminating the job if
   * it has not already reached a terminal state.
   * Possible string values are:
   * - "JOB_STATE_UNKNOWN" : A JOB_STATE_UNKNOWN.
   * - "JOB_STATE_STOPPED" : A JOB_STATE_STOPPED.
   * - "JOB_STATE_RUNNING" : A JOB_STATE_RUNNING.
   * - "JOB_STATE_DONE" : A JOB_STATE_DONE.
   * - "JOB_STATE_FAILED" : A JOB_STATE_FAILED.
   * - "JOB_STATE_CANCELLED" : A JOB_STATE_CANCELLED.
   * - "JOB_STATE_UPDATED" : A JOB_STATE_UPDATED.
   */
  core.String requestedState;
  /** The top-level steps that constitute the entire job. */
  core.List<Step> steps;
  /**
   * A set of files the system should be aware of that are used for temporary
   * storage. These temporary files will be removed on job completion. No
   * duplicates are allowed. No file patterns are supported. The supported files
   * are: Google Cloud Storage: storage.googleapis.com/{bucket}/{object}
   * bucket.storage.googleapis.com/{object}
   */
  core.List<core.String> tempFiles;
  /**
   * Map of transform name prefixes of the job to be replaced to the
   * corresponding name prefixes of the new job.
   */
  core.Map<core.String, core.String> transformNameMapping;
  /**
   * The type of dataflow job.
   * Possible string values are:
   * - "JOB_TYPE_UNKNOWN" : A JOB_TYPE_UNKNOWN.
   * - "JOB_TYPE_BATCH" : A JOB_TYPE_BATCH.
   * - "JOB_TYPE_STREAMING" : A JOB_TYPE_STREAMING.
   */
  core.String type;

  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey("clientRequestId")) {
      clientRequestId = _json["clientRequestId"];
    }
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
    if (_json.containsKey("replaceJobId")) {
      replaceJobId = _json["replaceJobId"];
    }
    if (_json.containsKey("replacedByJobId")) {
      replacedByJobId = _json["replacedByJobId"];
    }
    if (_json.containsKey("requestedState")) {
      requestedState = _json["requestedState"];
    }
    if (_json.containsKey("steps")) {
      steps = _json["steps"].map((value) => new Step.fromJson(value)).toList();
    }
    if (_json.containsKey("tempFiles")) {
      tempFiles = _json["tempFiles"];
    }
    if (_json.containsKey("transformNameMapping")) {
      transformNameMapping = _json["transformNameMapping"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (clientRequestId != null) {
      _json["clientRequestId"] = clientRequestId;
    }
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
    if (replaceJobId != null) {
      _json["replaceJobId"] = replaceJobId;
    }
    if (replacedByJobId != null) {
      _json["replacedByJobId"] = replacedByJobId;
    }
    if (requestedState != null) {
      _json["requestedState"] = requestedState;
    }
    if (steps != null) {
      _json["steps"] = steps.map((value) => (value).toJson()).toList();
    }
    if (tempFiles != null) {
      _json["tempFiles"] = tempFiles;
    }
    if (transformNameMapping != null) {
      _json["transformNameMapping"] = transformNameMapping;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/**
 * Additional information about how a Dataflow job will be executed which isn’t
 * contained in the submitted job.
 */
class JobExecutionInfo {
  /** A mapping from each stage to the information about that stage. */
  core.Map<core.String, JobExecutionStageInfo> stages;

  JobExecutionInfo();

  JobExecutionInfo.fromJson(core.Map _json) {
    if (_json.containsKey("stages")) {
      stages = commons.mapMap(_json["stages"], (item) => new JobExecutionStageInfo.fromJson(item));
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (stages != null) {
      _json["stages"] = commons.mapMap(stages, (item) => (item).toJson());
    }
    return _json;
  }
}

/**
 * Contains information about how a particular google.dataflow.v1beta3.Step will
 * be executed.
 */
class JobExecutionStageInfo {
  /**
   * The steps associated with the execution stage. Note that stages may have
   * several steps, and that a given step might be run by more than one stage.
   */
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

/** A particular message pertaining to a Dataflow job. */
class JobMessage {
  /**
   * Identifies the message. This is automatically generated by the service; the
   * caller should treat it as an opaque string.
   */
  core.String id;
  /**
   * Importance level of the message.
   * Possible string values are:
   * - "JOB_MESSAGE_IMPORTANCE_UNKNOWN" : A JOB_MESSAGE_IMPORTANCE_UNKNOWN.
   * - "JOB_MESSAGE_DEBUG" : A JOB_MESSAGE_DEBUG.
   * - "JOB_MESSAGE_DETAILED" : A JOB_MESSAGE_DETAILED.
   * - "JOB_MESSAGE_BASIC" : A JOB_MESSAGE_BASIC.
   * - "JOB_MESSAGE_WARNING" : A JOB_MESSAGE_WARNING.
   * - "JOB_MESSAGE_ERROR" : A JOB_MESSAGE_ERROR.
   */
  core.String messageImportance;
  /** The text of the message. */
  core.String messageText;
  /** The timestamp of the message. */
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

/**
 * JobMetrics contains a collection of metrics descibing the detailed progress
 * of a Dataflow job. Metrics correspond to user-defined and system-defined
 * metrics in the job. This resource captures only the most recent values of
 * each metric; time-series data can be queried for them (under the same metric
 * names) from Cloud Monitoring.
 */
class JobMetrics {
  /** Timestamp as of which metric values are current. */
  core.String metricTime;
  /** All metrics for this job. */
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

/**
 * Data disk assignment information for a specific key-range of a sharded
 * computation. Currently we only support UTF-8 character splits to simplify
 * encoding into JSON.
 */
class KeyRangeDataDiskAssignment {
  /**
   * The name of the data disk where data for this range is stored. This name is
   * local to the Google Cloud Platform project and uniquely identifies the disk
   * within that project, for example
   * "myproject-1014-104817-4c2-harness-0-disk-1".
   */
  core.String dataDisk;
  /** The end (exclusive) of the key range. */
  core.String end;
  /** The start (inclusive) of the key range. */
  core.String start;

  KeyRangeDataDiskAssignment();

  KeyRangeDataDiskAssignment.fromJson(core.Map _json) {
    if (_json.containsKey("dataDisk")) {
      dataDisk = _json["dataDisk"];
    }
    if (_json.containsKey("end")) {
      end = _json["end"];
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
    if (end != null) {
      _json["end"] = end;
    }
    if (start != null) {
      _json["start"] = start;
    }
    return _json;
  }
}

/**
 * Location information for a specific key-range of a sharded computation.
 * Currently we only support UTF-8 character splits to simplify encoding into
 * JSON.
 */
class KeyRangeLocation {
  /**
   * The name of the data disk where data for this range is stored. This name is
   * local to the Google Cloud Platform project and uniquely identifies the disk
   * within that project, for example
   * "myproject-1014-104817-4c2-harness-0-disk-1".
   */
  core.String dataDisk;
  /**
   * The physical location of this range assignment to be used for streaming
   * computation cross-worker message delivery.
   */
  core.String deliveryEndpoint;
  /** The end (exclusive) of the key range. */
  core.String end;
  /**
   * The location of the persistent state for this range, as a persistent
   * directory in the worker local filesystem.
   */
  core.String persistentDirectory;
  /** The start (inclusive) of the key range. */
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

/** Request to lease WorkItems. */
class LeaseWorkItemRequest {
  /** The current timestamp at the worker. */
  core.String currentWorkerTime;
  /** The initial lease period. */
  core.String requestedLeaseDuration;
  /** Filter for WorkItem type. */
  core.List<core.String> workItemTypes;
  /**
   * Worker capabilities. WorkItems might be limited to workers with specific
   * capabilities.
   */
  core.List<core.String> workerCapabilities;
  /**
   * Identifies the worker leasing work -- typically the ID of the virtual
   * machine running the worker.
   */
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

/** Response to a request to lease WorkItems. */
class LeaseWorkItemResponse {
  /** A list of the leased WorkItems. */
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

/** Response to a request to list job messages. */
class ListJobMessagesResponse {
  /** Messages in ascending timestamp order. */
  core.List<JobMessage> jobMessages;
  /** The token to obtain the next page of results if there are more. */
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

/**
 * Response to a request to list Dataflow jobs. This may be a partial response,
 * depending on the page size in the ListJobsRequest.
 */
class ListJobsResponse {
  /** A subset of the requested job information. */
  core.List<Job> jobs;
  /** Set if there may be more results than fit in this response. */
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

/**
 * MapTask consists of an ordered set of instructions, each of which describes
 * one particular low-level operation for the worker to perform in order to
 * accomplish the MapTask's WorkItem. Each instruction must appear in the list
 * before any instructions which depends on its output.
 */
class MapTask {
  /** The instructions in the MapTask. */
  core.List<ParallelInstruction> instructions;
  /**
   * System-defined name of the stage containing this MapTask. Unique across the
   * workflow.
   */
  core.String stageName;
  /** System-defined name of this MapTask. Unique across the workflow. */
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

/**
 * Identifies a metric, by describing the source which generated the metric.
 */
class MetricStructuredName {
  /**
   * Zero or more labeled fields which identify the part of the job this metric
   * is associated with, such as the name of a step or collection. For example,
   * built-in counters associated with steps will have context['step'] = .
   * Counters associated with PCollections in the SDK will have
   * context['pcollection'] =
   * .
   */
  core.Map<core.String, core.String> context;
  /** Worker-defined metric name. */
  core.String name;
  /**
   * Origin (namespace) of metric name. May be blank for user-define metrics;
   * will be "dataflow" for metrics defined by the Dataflow service or SDK.
   */
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

/** Describes the state of a metric. */
class MetricUpdate {
  /**
   * True if this metric is reported as the total cumulative aggregate value
   * accumulated since the worker started working on this WorkItem. By default
   * this is false, indicating that this metric is reported as a delta that is
   * not associated with any WorkItem.
   */
  core.bool cumulative;
  /**
   * Worker-computed aggregate value for internal use by the Dataflow service.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Object internal;
  /**
   * Metric aggregation kind. The possible metric aggregation kinds are "Sum",
   * "Max", "Min", "Mean", "Set", "And", and "Or". The specified aggregation
   * kind is case-insensitive. If omitted, this is not an aggregated value but
   * instead a single metric sample value.
   */
  core.String kind;
  /**
   * Worker-computed aggregate value for the "Mean" aggregation kind. This holds
   * the count of the aggregated values and is used in combination with mean_sum
   * above to obtain the actual mean aggregate value. The only possible value
   * type is Long.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Object meanCount;
  /**
   * Worker-computed aggregate value for the "Mean" aggregation kind. This holds
   * the sum of the aggregated values and is used in combination with mean_count
   * below to obtain the actual mean aggregate value. The only possible value
   * types are Long and Double.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Object meanSum;
  /** Name of the metric. */
  MetricStructuredName name;
  /**
   * Worker-computed aggregate value for aggregation kinds "Sum", "Max", "Min",
   * "And", and "Or". The possible value types are Long, Double, and Boolean.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Object scalar;
  /**
   * Worker-computed aggregate value for the "Set" aggregation kind. The only
   * possible value type is a list of Values whose type can be Long, Double, or
   * String, according to the metric's type. All Values in the list must be of
   * the same type.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Object set;
  /**
   * Timestamp associated with the metric value. Optional when workers are
   * reporting work progress; it will be filled in responses from the metrics
   * API.
   */
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

/** Describes mounted data disk. */
class MountedDataDisk {
  /**
   * The name of the data disk. This name is local to the Google Cloud Platform
   * project and uniquely identifies the disk within that project, for example
   * "myproject-1014-104817-4c2-harness-0-disk-1".
   */
  core.String dataDisk;

  MountedDataDisk();

  MountedDataDisk.fromJson(core.Map _json) {
    if (_json.containsKey("dataDisk")) {
      dataDisk = _json["dataDisk"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dataDisk != null) {
      _json["dataDisk"] = dataDisk;
    }
    return _json;
  }
}

/** Information about an output of a multi-output DoFn. */
class MultiOutputInfo {
  /**
   * The id of the tag the user code will emit to this output by; this should
   * correspond to the tag of some SideInputInfo.
   */
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

/**
 * Packages that need to be installed in order for a worker to run the steps of
 * the Dataflow job which will be assigned to its worker pool. This is the
 * mechanism by which the SDK causes code to be loaded onto the workers. For
 * example, the Dataflow Java SDK might use this to install jars containing the
 * user's code and all of the various dependencies (libraries, data files, etc)
 * required in order for that code to run.
 */
class Package {
  /**
   * The resource to read the package from. The supported resource type is:
   * Google Cloud Storage: storage.googleapis.com/{bucket}
   * bucket.storage.googleapis.com/
   */
  core.String location;
  /** The name of the package. */
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

/**
 * An instruction that does a ParDo operation. Takes one main input and zero or
 * more side inputs, and produces zero or more outputs. Runs user code.
 */
class ParDoInstruction {
  /** The input. */
  InstructionInput input;
  /** Information about each of the outputs, if user_fn is a MultiDoFn. */
  core.List<MultiOutputInfo> multiOutputInfos;
  /** The number of outputs. */
  core.int numOutputs;
  /** Zero or more side inputs. */
  core.List<SideInputInfo> sideInputs;
  /**
   * The user function to invoke.
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

/** Describes a particular operation comprising a MapTask. */
class ParallelInstruction {
  /** Additional information for Flatten instructions. */
  FlattenInstruction flatten;
  /** User-provided name of this operation. */
  core.String name;
  /** Describes the outputs of the instruction. */
  core.List<InstructionOutput> outputs;
  /** Additional information for ParDo instructions. */
  ParDoInstruction parDo;
  /** Additional information for PartialGroupByKey instructions. */
  PartialGroupByKeyInstruction partialGroupByKey;
  /** Additional information for Read instructions. */
  ReadInstruction read;
  /** System-defined name of this operation. Unique across the workflow. */
  core.String systemName;
  /** Additional information for Write instructions. */
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

/**
 * An instruction that does a partial group-by-key. One input and one output.
 */
class PartialGroupByKeyInstruction {
  /** Describes the input to the partial group-by-key instruction. */
  InstructionInput input;
  /**
   * The codec to use for interpreting an element in the input PTable.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> inputElementCodec;
  /** Zero or more side inputs. */
  core.List<SideInputInfo> sideInputs;
  /**
   * The value combining function to invoke.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> valueCombiningFn;

  PartialGroupByKeyInstruction();

  PartialGroupByKeyInstruction.fromJson(core.Map _json) {
    if (_json.containsKey("input")) {
      input = new InstructionInput.fromJson(_json["input"]);
    }
    if (_json.containsKey("inputElementCodec")) {
      inputElementCodec = _json["inputElementCodec"];
    }
    if (_json.containsKey("sideInputs")) {
      sideInputs = _json["sideInputs"].map((value) => new SideInputInfo.fromJson(value)).toList();
    }
    if (_json.containsKey("valueCombiningFn")) {
      valueCombiningFn = _json["valueCombiningFn"];
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
    if (sideInputs != null) {
      _json["sideInputs"] = sideInputs.map((value) => (value).toJson()).toList();
    }
    if (valueCombiningFn != null) {
      _json["valueCombiningFn"] = valueCombiningFn;
    }
    return _json;
  }
}

/**
 * Position defines a position within a collection of data. The value can be
 * either the end position, a key (used with ordered collections), a byte
 * offset, or a record index.
 */
class Position {
  /** Position is a byte offset. */
  core.String byteOffset;
  /** CloudPosition is a concat position. */
  ConcatPosition concatPosition;
  /**
   * Position is past all other positions. Also useful for the end position of
   * an unbounded range.
   */
  core.bool end;
  /** Position is a string key, ordered lexicographically. */
  core.String key;
  /** Position is a record index. */
  core.String recordIndex;
  /**
   * CloudPosition is a base64 encoded BatchShufflePosition (with FIXED
   * sharding).
   */
  core.String shufflePosition;

  Position();

  Position.fromJson(core.Map _json) {
    if (_json.containsKey("byteOffset")) {
      byteOffset = _json["byteOffset"];
    }
    if (_json.containsKey("concatPosition")) {
      concatPosition = new ConcatPosition.fromJson(_json["concatPosition"]);
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
    if (concatPosition != null) {
      _json["concatPosition"] = (concatPosition).toJson();
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

/**
 * Identifies a pubsub location to use for transferring data into or out of a
 * streaming Dataflow job.
 */
class PubsubLocation {
  /** Indicates whether the pipeline allows late-arriving data. */
  core.bool dropLateData;
  /**
   * If set, contains a pubsub label from which to extract record ids. If left
   * empty, record deduplication will be strictly best effort.
   */
  core.String idLabel;
  /**
   * A pubsub subscription, in the form of "pubsub.googleapis.com/subscriptions/
   * /"
   */
  core.String subscription;
  /**
   * If set, contains a pubsub label from which to extract record timestamps. If
   * left empty, record timestamps will be generated upon arrival.
   */
  core.String timestampLabel;
  /**
   * A pubsub topic, in the form of "pubsub.googleapis.com/topics/
   * /"
   */
  core.String topic;
  /**
   * If set, specifies the pubsub subscription that will be used for tracking
   * custom time timestamps for watermark estimation.
   */
  core.String trackingSubscription;

  PubsubLocation();

  PubsubLocation.fromJson(core.Map _json) {
    if (_json.containsKey("dropLateData")) {
      dropLateData = _json["dropLateData"];
    }
    if (_json.containsKey("idLabel")) {
      idLabel = _json["idLabel"];
    }
    if (_json.containsKey("subscription")) {
      subscription = _json["subscription"];
    }
    if (_json.containsKey("timestampLabel")) {
      timestampLabel = _json["timestampLabel"];
    }
    if (_json.containsKey("topic")) {
      topic = _json["topic"];
    }
    if (_json.containsKey("trackingSubscription")) {
      trackingSubscription = _json["trackingSubscription"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dropLateData != null) {
      _json["dropLateData"] = dropLateData;
    }
    if (idLabel != null) {
      _json["idLabel"] = idLabel;
    }
    if (subscription != null) {
      _json["subscription"] = subscription;
    }
    if (timestampLabel != null) {
      _json["timestampLabel"] = timestampLabel;
    }
    if (topic != null) {
      _json["topic"] = topic;
    }
    if (trackingSubscription != null) {
      _json["trackingSubscription"] = trackingSubscription;
    }
    return _json;
  }
}

/** An instruction that reads records. Takes no inputs, produces one output. */
class ReadInstruction {
  /** The source to read from. */
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

/** Request to report the status of WorkItems. */
class ReportWorkItemStatusRequest {
  /** The current timestamp at the worker. */
  core.String currentWorkerTime;
  /**
   * The order is unimportant, except that the order of the WorkItemServiceState
   * messages in the ReportWorkItemStatusResponse corresponds to the order of
   * WorkItemStatus messages here.
   */
  core.List<WorkItemStatus> workItemStatuses;
  /**
   * The ID of the worker reporting the WorkItem status. If this does not match
   * the ID of the worker which the Dataflow service believes currently has the
   * lease on the WorkItem, the report will be dropped (with an error response).
   */
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

/** Response from a request to report the status of WorkItems. */
class ReportWorkItemStatusResponse {
  /**
   * A set of messages indicating the service-side state for each WorkItem whose
   * status was reported, in the same order as the WorkItemStatus messages in
   * the ReportWorkItemStatusRequest which resulting in this response.
   */
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

/** A request for sending worker messages to the service. */
class SendWorkerMessagesRequest {
  /** The WorkerMessages to send. */
  core.List<WorkerMessage> workerMessages;

  SendWorkerMessagesRequest();

  SendWorkerMessagesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("workerMessages")) {
      workerMessages = _json["workerMessages"].map((value) => new WorkerMessage.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (workerMessages != null) {
      _json["workerMessages"] = workerMessages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The response to the worker messages. */
class SendWorkerMessagesResponse {
  /** The servers response to the worker messages. */
  core.List<WorkerMessageResponse> workerMessageResponses;

  SendWorkerMessagesResponse();

  SendWorkerMessagesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("workerMessageResponses")) {
      workerMessageResponses = _json["workerMessageResponses"].map((value) => new WorkerMessageResponse.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (workerMessageResponses != null) {
      _json["workerMessageResponses"] = workerMessageResponses.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Describes a particular function to invoke. */
class SeqMapTask {
  /** Information about each of the inputs. */
  core.List<SideInputInfo> inputs;
  /** The user-provided name of the SeqDo operation. */
  core.String name;
  /** Information about each of the outputs. */
  core.List<SeqMapTaskOutputInfo> outputInfos;
  /**
   * System-defined name of the stage containing the SeqDo operation. Unique
   * across the workflow.
   */
  core.String stageName;
  /**
   * System-defined name of the SeqDo operation. Unique across the workflow.
   */
  core.String systemName;
  /**
   * The user function to invoke.
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

/** Information about an output of a SeqMapTask. */
class SeqMapTaskOutputInfo {
  /** The sink to write the output value to. */
  Sink sink;
  /** The id of the TupleTag the user code will tag the output value by. */
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

/** A task which consists of a shell command for the worker to execute. */
class ShellTask {
  /** The shell command to run. */
  core.String command;
  /** Exit code for the task. */
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

/** Information about a side input of a DoFn or an input of a SeqDoFn. */
class SideInputInfo {
  /**
   * How to interpret the source element(s) as a side input value.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> kind;
  /**
   * The source(s) to read element(s) from to get the value of this side input.
   * If more than one source, then the elements are taken from the sources, in
   * the specified order if order matters. At least one source is required.
   */
  core.List<Source> sources;
  /**
   * The id of the tag the user code will access this side input by; this should
   * correspond to the tag of some MultiOutputInfo.
   */
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

/** A sink that records can be encoded and written to. */
class Sink {
  /**
   * The codec to use to encode data written to the sink.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> codec;
  /**
   * The sink to write to, plus its parameters.
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

/** A source that records can be read and decoded from. */
class Source {
  /**
   * While splitting, sources may specify the produced bundles as differences
   * against another source, in order to save backend-side memory and allow
   * bigger jobs. For details, see SourceSplitRequest. To support this use case,
   * the full set of parameters of the source is logically obtained by taking
   * the latest explicitly specified value of each parameter in the order:
   * base_specs (later items win), spec (overrides anything in base_specs).
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> baseSpecs;
  /**
   * The codec to use to decode data read from the source.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> codec;
  /**
   * Setting this value to true hints to the framework that the source doesn't
   * need splitting, and using SourceSplitRequest on it would yield
   * SOURCE_SPLIT_OUTCOME_USE_CURRENT. E.g. a file splitter may set this to true
   * when splitting a single file into a set of byte ranges of appropriate size,
   * and set this to false when splitting a filepattern into individual files.
   * However, for efficiency, a file splitter may decide to produce file
   * subranges directly from the filepattern to avoid a splitting round-trip.
   * See SourceSplitRequest for an overview of the splitting process. This field
   * is meaningful only in the Source objects populated by the user (e.g. when
   * filling in a DerivedSource). Source objects supplied by the framework to
   * the user don't have this field populated.
   */
  core.bool doesNotNeedSplitting;
  /**
   * Optionally, metadata for this source can be supplied right away, avoiding a
   * SourceGetMetadataOperation roundtrip (see SourceOperationRequest). This
   * field is meaningful only in the Source objects populated by the user (e.g.
   * when filling in a DerivedSource). Source objects supplied by the framework
   * to the user don't have this field populated.
   */
  SourceMetadata metadata;
  /**
   * The source to read from, plus its parameters.
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

/** DEPRECATED in favor of DynamicSourceSplit. */
class SourceFork {
  /** DEPRECATED */
  SourceSplitShard primary;
  /** DEPRECATED */
  DerivedSource primarySource;
  /** DEPRECATED */
  SourceSplitShard residual;
  /** DEPRECATED */
  DerivedSource residualSource;

  SourceFork();

  SourceFork.fromJson(core.Map _json) {
    if (_json.containsKey("primary")) {
      primary = new SourceSplitShard.fromJson(_json["primary"]);
    }
    if (_json.containsKey("primarySource")) {
      primarySource = new DerivedSource.fromJson(_json["primarySource"]);
    }
    if (_json.containsKey("residual")) {
      residual = new SourceSplitShard.fromJson(_json["residual"]);
    }
    if (_json.containsKey("residualSource")) {
      residualSource = new DerivedSource.fromJson(_json["residualSource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (primary != null) {
      _json["primary"] = (primary).toJson();
    }
    if (primarySource != null) {
      _json["primarySource"] = (primarySource).toJson();
    }
    if (residual != null) {
      _json["residual"] = (residual).toJson();
    }
    if (residualSource != null) {
      _json["residualSource"] = (residualSource).toJson();
    }
    return _json;
  }
}

/** A request to compute the SourceMetadata of a Source. */
class SourceGetMetadataRequest {
  /** Specification of the source whose metadata should be computed. */
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

/** The result of a SourceGetMetadataOperation. */
class SourceGetMetadataResponse {
  /** The computed metadata. */
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

/**
 * Metadata about a Source useful for automatically optimizing and tuning the
 * pipeline, etc.
 */
class SourceMetadata {
  /**
   * An estimate of the total size (in bytes) of the data that would be read
   * from this source. This estimate is in terms of external storage size,
   * before any decompression or other processing done by the reader.
   */
  core.String estimatedSizeBytes;
  /**
   * Specifies that the size of this source is known to be infinite (this is a
   * streaming source).
   */
  core.bool infinite;
  /**
   * Whether this source is known to produce key/value pairs with the (encoded)
   * keys in lexicographically sorted order.
   */
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

/**
 * A work item that represents the different operations that can be performed on
 * a user-defined Source specification.
 */
class SourceOperationRequest {
  /** Information about a request to get metadata about a source. */
  SourceGetMetadataRequest getMetadata;
  /** Information about a request to split a source. */
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

/**
 * The result of a SourceOperationRequest, specified in
 * ReportWorkItemStatusRequest.source_operation when the work item is completed.
 */
class SourceOperationResponse {
  /** A response to a request to get metadata about a source. */
  SourceGetMetadataResponse getMetadata;
  /** A response to a request to split a source. */
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

/**
 * Hints for splitting a Source into bundles (parts for parallel processing)
 * using SourceSplitRequest.
 */
class SourceSplitOptions {
  /**
   * The source should be split into a set of bundles where the estimated size
   * of each is approximately this many bytes.
   */
  core.String desiredBundleSizeBytes;
  /** DEPRECATED in favor of desired_bundle_size_bytes. */
  core.String desiredShardSizeBytes;

  SourceSplitOptions();

  SourceSplitOptions.fromJson(core.Map _json) {
    if (_json.containsKey("desiredBundleSizeBytes")) {
      desiredBundleSizeBytes = _json["desiredBundleSizeBytes"];
    }
    if (_json.containsKey("desiredShardSizeBytes")) {
      desiredShardSizeBytes = _json["desiredShardSizeBytes"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (desiredBundleSizeBytes != null) {
      _json["desiredBundleSizeBytes"] = desiredBundleSizeBytes;
    }
    if (desiredShardSizeBytes != null) {
      _json["desiredShardSizeBytes"] = desiredShardSizeBytes;
    }
    return _json;
  }
}

/**
 * Represents the operation to split a high-level Source specification into
 * bundles (parts for parallel processing). At a high level, splitting of a
 * source into bundles happens as follows: SourceSplitRequest is applied to the
 * source. If it returns SOURCE_SPLIT_OUTCOME_USE_CURRENT, no further splitting
 * happens and the source is used "as is". Otherwise, splitting is applied
 * recursively to each produced DerivedSource. As an optimization, for any
 * Source, if its does_not_need_splitting is true, the framework assumes that
 * splitting this source would return SOURCE_SPLIT_OUTCOME_USE_CURRENT, and
 * doesn't initiate a SourceSplitRequest. This applies both to the initial
 * source being split and to bundles produced from it.
 */
class SourceSplitRequest {
  /** Hints for tuning the splitting process. */
  SourceSplitOptions options;
  /** Specification of the source to be split. */
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

/** The response to a SourceSplitRequest. */
class SourceSplitResponse {
  /**
   * If outcome is SPLITTING_HAPPENED, then this is a list of bundles into which
   * the source was split. Otherwise this field is ignored. This list can be
   * empty, which means the source represents an empty input.
   */
  core.List<DerivedSource> bundles;
  /**
   * Indicates whether splitting happened and produced a list of bundles. If
   * this is USE_CURRENT_SOURCE_AS_IS, the current source should be processed
   * "as is" without splitting. "bundles" is ignored in this case. If this is
   * SPLITTING_HAPPENED, then "bundles" contains a list of bundles into which
   * the source was split.
   * Possible string values are:
   * - "SOURCE_SPLIT_OUTCOME_UNKNOWN" : A SOURCE_SPLIT_OUTCOME_UNKNOWN.
   * - "SOURCE_SPLIT_OUTCOME_USE_CURRENT" : A SOURCE_SPLIT_OUTCOME_USE_CURRENT.
   * - "SOURCE_SPLIT_OUTCOME_SPLITTING_HAPPENED" : A
   * SOURCE_SPLIT_OUTCOME_SPLITTING_HAPPENED.
   */
  core.String outcome;
  /** DEPRECATED in favor of bundles. */
  core.List<SourceSplitShard> shards;

  SourceSplitResponse();

  SourceSplitResponse.fromJson(core.Map _json) {
    if (_json.containsKey("bundles")) {
      bundles = _json["bundles"].map((value) => new DerivedSource.fromJson(value)).toList();
    }
    if (_json.containsKey("outcome")) {
      outcome = _json["outcome"];
    }
    if (_json.containsKey("shards")) {
      shards = _json["shards"].map((value) => new SourceSplitShard.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bundles != null) {
      _json["bundles"] = bundles.map((value) => (value).toJson()).toList();
    }
    if (outcome != null) {
      _json["outcome"] = outcome;
    }
    if (shards != null) {
      _json["shards"] = shards.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** DEPRECATED in favor of DerivedSource. */
class SourceSplitShard {
  /**
   * DEPRECATED
   * Possible string values are:
   * - "SOURCE_DERIVATION_MODE_UNKNOWN" : A SOURCE_DERIVATION_MODE_UNKNOWN.
   * - "SOURCE_DERIVATION_MODE_INDEPENDENT" : A
   * SOURCE_DERIVATION_MODE_INDEPENDENT.
   * - "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT" : A
   * SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT.
   * - "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT" : A
   * SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT.
   */
  core.String derivationMode;
  /** DEPRECATED */
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

/** State family configuration. */
class StateFamilyConfig {
  /** If true, this family corresponds to a read operation. */
  core.bool isRead;
  /** The state family value. */
  core.String stateFamily;

  StateFamilyConfig();

  StateFamilyConfig.fromJson(core.Map _json) {
    if (_json.containsKey("isRead")) {
      isRead = _json["isRead"];
    }
    if (_json.containsKey("stateFamily")) {
      stateFamily = _json["stateFamily"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (isRead != null) {
      _json["isRead"] = isRead;
    }
    if (stateFamily != null) {
      _json["stateFamily"] = stateFamily;
    }
    return _json;
  }
}

/**
 * The `Status` type defines a logical error model that is suitable for
 * different programming environments, including REST APIs and RPC APIs. It is
 * used by [gRPC](https://github.com/grpc). The error model is designed to be: -
 * Simple to use and understand for most users - Flexible enough to meet
 * unexpected needs # Overview The `Status` message contains three pieces of
 * data: error code, error message, and error details. The error code should be
 * an enum value of google.rpc.Code, but it may accept additional error codes if
 * needed. The error message should be a developer-facing English message that
 * helps developers *understand* and *resolve* the error. If a localized
 * user-facing error message is needed, put the localized message in the error
 * details or localize it in the client. The optional error details may contain
 * arbitrary information about the error. There is a predefined set of error
 * detail types in the package `google.rpc` which can be used for common error
 * conditions. # Language mapping The `Status` message is the logical
 * representation of the error model, but it is not necessarily the actual wire
 * format. When the `Status` message is exposed in different client libraries
 * and different wire protocols, it can be mapped differently. For example, it
 * will likely be mapped to some exceptions in Java, but more likely mapped to
 * some error codes in C. # Other uses The error model and the `Status` message
 * can be used in a variety of environments, either with or without APIs, to
 * provide a consistent developer experience across different environments.
 * Example uses of this error model include: - Partial errors. If a service
 * needs to return partial errors to the client, it may embed the `Status` in
 * the normal response to indicate the partial errors. - Workflow errors. A
 * typical workflow has multiple steps. Each step may have a `Status` message
 * for error reporting purpose. - Batch operations. If a client uses batch
 * request and batch response, the `Status` message should be used directly
 * inside batch response, one for each error sub-response. - Asynchronous
 * operations. If an API call embeds asynchronous operation results in its
 * response, the status of those operations should be represented directly using
 * the `Status` message. - Logging. If some API errors are stored in logs, the
 * message `Status` could be used directly after any stripping needed for
 * security/privacy reasons.
 */
class Status {
  /** The status code, which should be an enum value of google.rpc.Code. */
  core.int code;
  /**
   * A list of messages that carry the error details. There will be a common set
   * of message types for APIs to use.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> details;
  /**
   * A developer-facing error message, which should be in English. Any
   * user-facing error message should be localized and sent in the
   * google.rpc.Status.details field, or localized by the client.
   */
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

/**
 * Defines a particular step within a Dataflow job. A job consists of multiple
 * steps, each of which performs some specific operation as part of the overall
 * job. Data is typically passed from one step to another as part of the job.
 * Here's an example of a sequence of steps which together implement a
 * Map-Reduce job: * Read a collection of data from some source, parsing the
 * collection's elements. * Validate the elements. * Apply a user-defined
 * function to map each element to some value and extract an element-specific
 * key value. * Group elements with the same key into a single element with that
 * key, transforming a multiply-keyed collection into a uniquely-keyed
 * collection. * Write the elements out to some data sink. (Note that the
 * Dataflow service may be used to run many different types of jobs, not just
 * Map-Reduce).
 */
class Step {
  /** The kind of step in the dataflow Job. */
  core.String kind;
  /**
   * Name identifying the step. This must be unique for each step with respect
   * to all other steps in the dataflow Job.
   */
  core.String name;
  /**
   * Named properties associated with the step. Each kind of predefined step has
   * its own required set of properties.
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

/**
 * Describes a stream of data, either as input to be processed or as output of a
 * streaming Dataflow job.
 */
class StreamLocation {
  /** The stream is a custom source. */
  CustomSourceLocation customSourceLocation;
  /** The stream is a pubsub stream. */
  PubsubLocation pubsubLocation;
  /** The stream is a streaming side input. */
  StreamingSideInputLocation sideInputLocation;
  /**
   * The stream is part of another computation within the current streaming
   * Dataflow job.
   */
  StreamingStageLocation streamingStageLocation;

  StreamLocation();

  StreamLocation.fromJson(core.Map _json) {
    if (_json.containsKey("customSourceLocation")) {
      customSourceLocation = new CustomSourceLocation.fromJson(_json["customSourceLocation"]);
    }
    if (_json.containsKey("pubsubLocation")) {
      pubsubLocation = new PubsubLocation.fromJson(_json["pubsubLocation"]);
    }
    if (_json.containsKey("sideInputLocation")) {
      sideInputLocation = new StreamingSideInputLocation.fromJson(_json["sideInputLocation"]);
    }
    if (_json.containsKey("streamingStageLocation")) {
      streamingStageLocation = new StreamingStageLocation.fromJson(_json["streamingStageLocation"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (customSourceLocation != null) {
      _json["customSourceLocation"] = (customSourceLocation).toJson();
    }
    if (pubsubLocation != null) {
      _json["pubsubLocation"] = (pubsubLocation).toJson();
    }
    if (sideInputLocation != null) {
      _json["sideInputLocation"] = (sideInputLocation).toJson();
    }
    if (streamingStageLocation != null) {
      _json["streamingStageLocation"] = (streamingStageLocation).toJson();
    }
    return _json;
  }
}

/**
 * Describes full or partial data disk assignment information of the computation
 * ranges.
 */
class StreamingComputationRanges {
  /** The ID of the computation. */
  core.String computationId;
  /** Data disk assignments for ranges from this computation. */
  core.List<KeyRangeDataDiskAssignment> rangeAssignments;

  StreamingComputationRanges();

  StreamingComputationRanges.fromJson(core.Map _json) {
    if (_json.containsKey("computationId")) {
      computationId = _json["computationId"];
    }
    if (_json.containsKey("rangeAssignments")) {
      rangeAssignments = _json["rangeAssignments"].map((value) => new KeyRangeDataDiskAssignment.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (computationId != null) {
      _json["computationId"] = computationId;
    }
    if (rangeAssignments != null) {
      _json["rangeAssignments"] = rangeAssignments.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * A task which describes what action should be performed for the specified
 * streaming computation ranges.
 */
class StreamingComputationTask {
  /** Contains ranges of a streaming computation this task should apply to. */
  core.List<StreamingComputationRanges> computationRanges;
  /** Describes the set of data disks this task should apply to. */
  core.List<MountedDataDisk> dataDisks;
  /**
   * A type of streaming computation task.
   * Possible string values are:
   * - "STREAMING_COMPUTATION_TASK_UNKNOWN" : A
   * STREAMING_COMPUTATION_TASK_UNKNOWN.
   * - "STREAMING_COMPUTATION_TASK_STOP" : A STREAMING_COMPUTATION_TASK_STOP.
   * - "STREAMING_COMPUTATION_TASK_START" : A STREAMING_COMPUTATION_TASK_START.
   */
  core.String taskType;

  StreamingComputationTask();

  StreamingComputationTask.fromJson(core.Map _json) {
    if (_json.containsKey("computationRanges")) {
      computationRanges = _json["computationRanges"].map((value) => new StreamingComputationRanges.fromJson(value)).toList();
    }
    if (_json.containsKey("dataDisks")) {
      dataDisks = _json["dataDisks"].map((value) => new MountedDataDisk.fromJson(value)).toList();
    }
    if (_json.containsKey("taskType")) {
      taskType = _json["taskType"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (computationRanges != null) {
      _json["computationRanges"] = computationRanges.map((value) => (value).toJson()).toList();
    }
    if (dataDisks != null) {
      _json["dataDisks"] = dataDisks.map((value) => (value).toJson()).toList();
    }
    if (taskType != null) {
      _json["taskType"] = taskType;
    }
    return _json;
  }
}

/** A task which initializes part of a streaming Dataflow job. */
class StreamingSetupTask {
  /**
   * The TCP port on which the worker should listen for messages from other
   * streaming computation workers.
   */
  core.int receiveWorkPort;
  /** The global topology of the streaming Dataflow job. */
  TopologyConfig streamingComputationTopology;
  /**
   * The TCP port used by the worker to communicate with the Dataflow worker
   * harness.
   */
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

/** Identifies the location of a streaming side input. */
class StreamingSideInputLocation {
  /** Identifies the state family where this side input is stored. */
  core.String stateFamily;
  /**
   * Identifies the particular side input within the streaming Dataflow job.
   */
  core.String tag;

  StreamingSideInputLocation();

  StreamingSideInputLocation.fromJson(core.Map _json) {
    if (_json.containsKey("stateFamily")) {
      stateFamily = _json["stateFamily"];
    }
    if (_json.containsKey("tag")) {
      tag = _json["tag"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (stateFamily != null) {
      _json["stateFamily"] = stateFamily;
    }
    if (tag != null) {
      _json["tag"] = tag;
    }
    return _json;
  }
}

/**
 * Identifies the location of a streaming computation stage, for stage-to-stage
 * communication.
 */
class StreamingStageLocation {
  /** Identifies the particular stream within the streaming Dataflow job. */
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

/** Taskrunner configuration settings. */
class TaskRunnerSettings {
  /** Also send taskrunner log info to stderr? */
  core.bool alsologtostderr;
  /** Location on the worker for task-specific subdirectories. */
  core.String baseTaskDir;
  /**
   * The base URL for the taskrunner to use when accessing Google Cloud APIs.
   * When workers access Google Cloud APIs, they logically do so via relative
   * URLs. If this field is specified, it supplies the base URL to use for
   * resolving these relative URLs. The normative algorithm used is defined by
   * RFC 1808, "Relative Uniform Resource Locators". If not specified, the
   * default value is "http://www.googleapis.com/"
   */
  core.String baseUrl;
  /** Store preprocessing commands in this file. */
  core.String commandlinesFileName;
  /** Do we continue taskrunner if an exception is hit? */
  core.bool continueOnException;
  /** API version of endpoint, e.g. "v1b3" */
  core.String dataflowApiVersion;
  /** Command to launch the worker harness. */
  core.String harnessCommand;
  /** Suggested backend language. */
  core.String languageHint;
  /** Directory on the VM to store logs. */
  core.String logDir;
  /** Send taskrunner log into to Google Compute Engine VM serial console? */
  core.bool logToSerialconsole;
  /**
   * Indicates where to put logs. If this is not specified, the logs will not be
   * uploaded. The supported resource type is: Google Cloud Storage:
   * storage.googleapis.com/{bucket}/{object}
   * bucket.storage.googleapis.com/{object}
   */
  core.String logUploadLocation;
  /**
   * OAuth2 scopes to be requested by the taskrunner in order to access the
   * dataflow API.
   */
  core.List<core.String> oauthScopes;
  /** Settings to pass to the parallel worker harness. */
  WorkerSettings parallelWorkerSettings;
  /** Streaming worker main class name. */
  core.String streamingWorkerMainClass;
  /**
   * The UNIX group ID on the worker VM to use for tasks launched by taskrunner;
   * e.g. "wheel".
   */
  core.String taskGroup;
  /**
   * The UNIX user ID on the worker VM to use for tasks launched by taskrunner;
   * e.g. "root".
   */
  core.String taskUser;
  /**
   * The prefix of the resources the taskrunner should use for temporary
   * storage. The supported resource type is: Google Cloud Storage:
   * storage.googleapis.com/{bucket}/{object}
   * bucket.storage.googleapis.com/{object}
   */
  core.String tempStoragePrefix;
  /** ID string of VM. */
  core.String vmId;
  /** Store the workflow in this file. */
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

/**
 * Global topology of the streaming Dataflow job, including all computations and
 * their sharded locations.
 */
class TopologyConfig {
  /** The computations associated with a streaming Dataflow job. */
  core.List<ComputationTopology> computations;
  /** The disks assigned to a streaming Dataflow job. */
  core.List<DataDiskAssignment> dataDiskAssignments;
  /** The size (in bits) of keys that will be assigned to source messages. */
  core.int forwardingKeyBits;
  /** Maps user stage names to stable computation names. */
  core.Map<core.String, core.String> userStageToComputationNameMap;

  TopologyConfig();

  TopologyConfig.fromJson(core.Map _json) {
    if (_json.containsKey("computations")) {
      computations = _json["computations"].map((value) => new ComputationTopology.fromJson(value)).toList();
    }
    if (_json.containsKey("dataDiskAssignments")) {
      dataDiskAssignments = _json["dataDiskAssignments"].map((value) => new DataDiskAssignment.fromJson(value)).toList();
    }
    if (_json.containsKey("forwardingKeyBits")) {
      forwardingKeyBits = _json["forwardingKeyBits"];
    }
    if (_json.containsKey("userStageToComputationNameMap")) {
      userStageToComputationNameMap = _json["userStageToComputationNameMap"];
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
    if (forwardingKeyBits != null) {
      _json["forwardingKeyBits"] = forwardingKeyBits;
    }
    if (userStageToComputationNameMap != null) {
      _json["userStageToComputationNameMap"] = userStageToComputationNameMap;
    }
    return _json;
  }
}

/**
 * WorkItem represents basic information about a WorkItem to be executed in the
 * cloud.
 */
class WorkItem {
  /** Work item-specific configuration as an opaque blob. */
  core.String configuration;
  /** Identifies this WorkItem. */
  core.String id;
  /** The initial index to use when reporting the status of the WorkItem. */
  core.String initialReportIndex;
  /** Identifies the workflow job this WorkItem belongs to. */
  core.String jobId;
  /** Time when the lease on this Work will expire. */
  core.String leaseExpireTime;
  /** Additional information for MapTask WorkItems. */
  MapTask mapTask;
  /**
   * Any required packages that need to be fetched in order to execute this
   * WorkItem.
   */
  core.List<Package> packages;
  /** Identifies the cloud project this WorkItem belongs to. */
  core.String projectId;
  /** Recommended reporting interval. */
  core.String reportStatusInterval;
  /** Additional information for SeqMapTask WorkItems. */
  SeqMapTask seqMapTask;
  /** Additional information for ShellTask WorkItems. */
  ShellTask shellTask;
  /** Additional information for source operation WorkItems. */
  SourceOperationRequest sourceOperationTask;
  /** Additional information for StreamingComputationTask WorkItems. */
  StreamingComputationTask streamingComputationTask;
  /** Additional information for StreamingSetupTask WorkItems. */
  StreamingSetupTask streamingSetupTask;

  WorkItem();

  WorkItem.fromJson(core.Map _json) {
    if (_json.containsKey("configuration")) {
      configuration = _json["configuration"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("initialReportIndex")) {
      initialReportIndex = _json["initialReportIndex"];
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
    if (_json.containsKey("streamingComputationTask")) {
      streamingComputationTask = new StreamingComputationTask.fromJson(_json["streamingComputationTask"]);
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
    if (initialReportIndex != null) {
      _json["initialReportIndex"] = initialReportIndex;
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
    if (streamingComputationTask != null) {
      _json["streamingComputationTask"] = (streamingComputationTask).toJson();
    }
    if (streamingSetupTask != null) {
      _json["streamingSetupTask"] = (streamingSetupTask).toJson();
    }
    return _json;
  }
}

/**
 * The Dataflow service's idea of the current state of a WorkItem being
 * processed by a worker.
 */
class WorkItemServiceState {
  /**
   * Other data returned by the service, specific to the particular worker
   * harness.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> harnessData;
  /** Time at which the current lease will expire. */
  core.String leaseExpireTime;
  /**
   * The index value to use for the next report sent by the worker. Note: If the
   * report call fails for whatever reason, the worker should reuse this index
   * for subsequent report attempts.
   */
  core.String nextReportIndex;
  /** New recommended reporting interval. */
  core.String reportStatusInterval;
  /**
   * The progress point in the WorkItem where the Dataflow service suggests that
   * the worker truncate the task.
   */
  ApproximateSplitRequest splitRequest;
  /** DEPRECATED in favor of split_request. */
  ApproximateProgress suggestedStopPoint;
  /** Obsolete, always empty. */
  Position suggestedStopPosition;

  WorkItemServiceState();

  WorkItemServiceState.fromJson(core.Map _json) {
    if (_json.containsKey("harnessData")) {
      harnessData = _json["harnessData"];
    }
    if (_json.containsKey("leaseExpireTime")) {
      leaseExpireTime = _json["leaseExpireTime"];
    }
    if (_json.containsKey("nextReportIndex")) {
      nextReportIndex = _json["nextReportIndex"];
    }
    if (_json.containsKey("reportStatusInterval")) {
      reportStatusInterval = _json["reportStatusInterval"];
    }
    if (_json.containsKey("splitRequest")) {
      splitRequest = new ApproximateSplitRequest.fromJson(_json["splitRequest"]);
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
    if (nextReportIndex != null) {
      _json["nextReportIndex"] = nextReportIndex;
    }
    if (reportStatusInterval != null) {
      _json["reportStatusInterval"] = reportStatusInterval;
    }
    if (splitRequest != null) {
      _json["splitRequest"] = (splitRequest).toJson();
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

/** Conveys a worker's progress through the work described by a WorkItem. */
class WorkItemStatus {
  /** True if the WorkItem was completed (successfully or unsuccessfully). */
  core.bool completed;
  /** See documentation of stop_position. */
  DynamicSourceSplit dynamicSourceSplit;
  /**
   * Specifies errors which occurred during processing. If errors are provided,
   * and completed = true, then the WorkItem is considered to have failed.
   */
  core.List<Status> errors;
  /** Worker output metrics (counters) for this WorkItem. */
  core.List<MetricUpdate> metricUpdates;
  /** DEPRECATED in favor of reported_progress. */
  ApproximateProgress progress;
  /**
   * The report index. When a WorkItem is leased, the lease will contain an
   * initial report index. When a WorkItem's status is reported to the system,
   * the report should be sent with that report index, and the response will
   * contain the index the worker should use for the next report. Reports
   * received with unexpected index values will be rejected by the service. In
   * order to preserve idempotency, the worker should not alter the contents of
   * a report, even if the worker must submit the same report multiple times
   * before getting back a response. The worker should not submit a subsequent
   * report until the response for the previous report had been received from
   * the service.
   */
  core.String reportIndex;
  /** The worker's progress through this WorkItem. */
  ApproximateReportedProgress reportedProgress;
  /** Amount of time the worker requests for its lease. */
  core.String requestedLeaseDuration;
  /** DEPRECATED in favor of dynamic_source_split. */
  SourceFork sourceFork;
  /**
   * If the work item represented a SourceOperationRequest, and the work is
   * completed, contains the result of the operation.
   */
  SourceOperationResponse sourceOperationResponse;
  /**
   * A worker may split an active map task in two parts, "primary" and
   * "residual", continuing to process the primary part and returning the
   * residual part into the pool of available work. This event is called a
   * "dynamic split" and is critical to the dynamic work rebalancing feature.
   * The two obtained sub-tasks are called "parts" of the split. The parts, if
   * concatenated, must represent the same input as would be read by the current
   * task if the split did not happen. The exact way in which the original task
   * is decomposed into the two parts is specified either as a position
   * demarcating them (stop_position), or explicitly as two DerivedSources, if
   * this task consumes a user-defined source type (dynamic_source_split). The
   * "current" task is adjusted as a result of the split: after a task with
   * range [A, B) sends a stop_position update at C, its range is considered to
   * be [A, C), e.g.: * Progress should be interpreted relative to the new
   * range, e.g. "75% completed" means "75% of [A, C) completed" * The worker
   * should interpret proposed_stop_position relative to the new range, e.g.
   * "split at 68%" should be interpreted as "split at 68% of [A, C)". * If the
   * worker chooses to split again using stop_position, only stop_positions in
   * [A, C) will be accepted. * Etc. dynamic_source_split has similar semantics:
   * e.g., if a task with source S splits using dynamic_source_split into {P, R}
   * (where P and R must be together equivalent to S), then subsequent progress
   * and proposed_stop_position should be interpreted relative to P, and in a
   * potential subsequent dynamic_source_split into {P', R'}, P' and R' must be
   * together equivalent to P, etc.
   */
  Position stopPosition;
  /** Identifies the WorkItem. */
  core.String workItemId;

  WorkItemStatus();

  WorkItemStatus.fromJson(core.Map _json) {
    if (_json.containsKey("completed")) {
      completed = _json["completed"];
    }
    if (_json.containsKey("dynamicSourceSplit")) {
      dynamicSourceSplit = new DynamicSourceSplit.fromJson(_json["dynamicSourceSplit"]);
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
    if (_json.containsKey("reportedProgress")) {
      reportedProgress = new ApproximateReportedProgress.fromJson(_json["reportedProgress"]);
    }
    if (_json.containsKey("requestedLeaseDuration")) {
      requestedLeaseDuration = _json["requestedLeaseDuration"];
    }
    if (_json.containsKey("sourceFork")) {
      sourceFork = new SourceFork.fromJson(_json["sourceFork"]);
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
    if (dynamicSourceSplit != null) {
      _json["dynamicSourceSplit"] = (dynamicSourceSplit).toJson();
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
    if (reportedProgress != null) {
      _json["reportedProgress"] = (reportedProgress).toJson();
    }
    if (requestedLeaseDuration != null) {
      _json["requestedLeaseDuration"] = requestedLeaseDuration;
    }
    if (sourceFork != null) {
      _json["sourceFork"] = (sourceFork).toJson();
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

/**
 * WorkerHealthReport contains information about the health of a worker. The VM
 * should be identified by the labels attached to the WorkerMessage that this
 * health ping belongs to.
 */
class WorkerHealthReport {
  /**
   * The pods running on the worker. See:
   * http://kubernetes.io/v1.1/docs/api-reference/v1/definitions.html#_v1_pod
   * This field is used by the worker to send the status of the indvidual
   * containers running on each worker.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> pods;
  /**
   * The interval at which the worker is sending health reports. The default
   * value of 0 should be interpreted as the field is not being explicitly set
   * by the worker.
   */
  core.String reportInterval;
  /** Whether the VM is healthy. */
  core.bool vmIsHealthy;
  /** The time the VM was booted. */
  core.String vmStartupTime;

  WorkerHealthReport();

  WorkerHealthReport.fromJson(core.Map _json) {
    if (_json.containsKey("pods")) {
      pods = _json["pods"];
    }
    if (_json.containsKey("reportInterval")) {
      reportInterval = _json["reportInterval"];
    }
    if (_json.containsKey("vmIsHealthy")) {
      vmIsHealthy = _json["vmIsHealthy"];
    }
    if (_json.containsKey("vmStartupTime")) {
      vmStartupTime = _json["vmStartupTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (pods != null) {
      _json["pods"] = pods;
    }
    if (reportInterval != null) {
      _json["reportInterval"] = reportInterval;
    }
    if (vmIsHealthy != null) {
      _json["vmIsHealthy"] = vmIsHealthy;
    }
    if (vmStartupTime != null) {
      _json["vmStartupTime"] = vmStartupTime;
    }
    return _json;
  }
}

/**
 * WorkerHealthReportResponse contains information returned to the worker in
 * response to a health ping.
 */
class WorkerHealthReportResponse {
  /**
   * A positive value indicates the worker should change its reporting interval
   * to the specified value. The default value of zero means no change in report
   * rate is requested by the server.
   */
  core.String reportInterval;

  WorkerHealthReportResponse();

  WorkerHealthReportResponse.fromJson(core.Map _json) {
    if (_json.containsKey("reportInterval")) {
      reportInterval = _json["reportInterval"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (reportInterval != null) {
      _json["reportInterval"] = reportInterval;
    }
    return _json;
  }
}

/** WorkerMessage provides information to the backend about a worker. */
class WorkerMessage {
  /**
   * Labels are used to group WorkerMessages. For example, a worker_message
   * about a particular container might have the labels: { "JOB_ID":
   * "2015-04-22", "WORKER_ID": "wordcount-vm-2015…" "CONTAINER_TYPE": "worker",
   * "CONTAINER_ID": "ac1234def"} Label tags typically correspond to Label enum
   * values. However, for ease of development other strings can be used as tags.
   * LABEL_UNSPECIFIED should not be used here.
   */
  core.Map<core.String, core.String> labels;
  /** The timestamp of the worker_message. */
  core.String time;
  /** The health of a worker. */
  WorkerHealthReport workerHealthReport;
  /** A worker message code. */
  WorkerMessageCode workerMessageCode;

  WorkerMessage();

  WorkerMessage.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("time")) {
      time = _json["time"];
    }
    if (_json.containsKey("workerHealthReport")) {
      workerHealthReport = new WorkerHealthReport.fromJson(_json["workerHealthReport"]);
    }
    if (_json.containsKey("workerMessageCode")) {
      workerMessageCode = new WorkerMessageCode.fromJson(_json["workerMessageCode"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (time != null) {
      _json["time"] = time;
    }
    if (workerHealthReport != null) {
      _json["workerHealthReport"] = (workerHealthReport).toJson();
    }
    if (workerMessageCode != null) {
      _json["workerMessageCode"] = (workerMessageCode).toJson();
    }
    return _json;
  }
}

/**
 * A message code is used to report status and error messages to the service.
 * The message codes are intended to be machine readable. The service will take
 * care of translating these into user understandable messages if necessary.
 * Example use cases: 1. Worker processes reporting successful startup. 2.
 * Worker processes reporting specific errors (e.g. package staging failure).
 */
class WorkerMessageCode {
  /**
   * The code is a string intended for consumption by a machine that identifies
   * the type of message being sent. Examples: 1. "HARNESS_STARTED" might be
   * used to indicate the worker harness has started. 2. "GCS_DOWNLOAD_ERROR"
   * might be used to indicate an error downloading a GCS file as part of the
   * boot process of one of the worker containers. This is a string and not an
   * enum to make it easy to add new codes without waiting for an API change.
   */
  core.String code;
  /**
   * Parameters contains specific information about the code. This is a struct
   * to allow parameters of different types. Examples: 1. For a
   * "HARNESS_STARTED" message parameters might provide the name of the worker
   * and additional data like timing information. 2. For a "GCS_DOWNLOAD_ERROR"
   * parameters might contain fields listing the GCS objects being downloaded
   * and fields containing errors. In general complex data structures should be
   * avoided. If a worker needs to send a specific and complicated data
   * structure then please consider defining a new proto and adding it to the
   * data oneof in WorkerMessageResponse. Conventions: Parameters should only be
   * used for information that isn't typically passed as a label. hostname and
   * other worker identifiers should almost always be passed as labels since
   * they will be included on most messages.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> parameters;

  WorkerMessageCode();

  WorkerMessageCode.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("parameters")) {
      parameters = _json["parameters"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (parameters != null) {
      _json["parameters"] = parameters;
    }
    return _json;
  }
}

/**
 * A worker_message response allows the server to pass information to the
 * sender.
 */
class WorkerMessageResponse {
  /** The service's response to a worker's health report. */
  WorkerHealthReportResponse workerHealthReportResponse;

  WorkerMessageResponse();

  WorkerMessageResponse.fromJson(core.Map _json) {
    if (_json.containsKey("workerHealthReportResponse")) {
      workerHealthReportResponse = new WorkerHealthReportResponse.fromJson(_json["workerHealthReportResponse"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (workerHealthReportResponse != null) {
      _json["workerHealthReportResponse"] = (workerHealthReportResponse).toJson();
    }
    return _json;
  }
}

/**
 * Describes one particular pool of Dataflow workers to be instantiated by the
 * Dataflow service in order to perform the computations required by a job. Note
 * that a workflow job may use multiple pools, in order to match the various
 * computational requirements of the various stages of the job.
 */
class WorkerPool {
  /** Settings for autoscaling of this WorkerPool. */
  AutoscalingSettings autoscalingSettings;
  /** Data disks that are used by a VM in this workflow. */
  core.List<Disk> dataDisks;
  /**
   * The default package set to install. This allows the service to select a
   * default set of packages which are useful to worker harnesses written in a
   * particular language.
   * Possible string values are:
   * - "DEFAULT_PACKAGE_SET_UNKNOWN" : A DEFAULT_PACKAGE_SET_UNKNOWN.
   * - "DEFAULT_PACKAGE_SET_NONE" : A DEFAULT_PACKAGE_SET_NONE.
   * - "DEFAULT_PACKAGE_SET_JAVA" : A DEFAULT_PACKAGE_SET_JAVA.
   * - "DEFAULT_PACKAGE_SET_PYTHON" : A DEFAULT_PACKAGE_SET_PYTHON.
   */
  core.String defaultPackageSet;
  /**
   * Size of root disk for VMs, in GB. If zero or unspecified, the service will
   * attempt to choose a reasonable default.
   */
  core.int diskSizeGb;
  /** Fully qualified source image for disks. */
  core.String diskSourceImage;
  /**
   * Type of root disk for VMs. If empty or unspecified, the service will
   * attempt to choose a reasonable default.
   */
  core.String diskType;
  /**
   * The kind of the worker pool; currently only 'harness' and 'shuffle' are
   * supported.
   */
  core.String kind;
  /**
   * Machine type (e.g. "n1-standard-1"). If empty or unspecified, the service
   * will attempt to choose a reasonable default.
   */
  core.String machineType;
  /** Metadata to set on the Google Compute Engine VMs. */
  core.Map<core.String, core.String> metadata;
  /**
   * Network to which VMs will be assigned. If empty or unspecified, the service
   * will use the network "default".
   */
  core.String network;
  /**
   * Number of Google Compute Engine workers in this pool needed to execute the
   * job. If zero or unspecified, the service will attempt to choose a
   * reasonable default.
   */
  core.int numWorkers;
  /**
   * The action to take on host maintenance, as defined by the Google Compute
   * Engine API.
   */
  core.String onHostMaintenance;
  /** Packages to be installed on workers. */
  core.List<Package> packages;
  /**
   * Extra arguments for this worker pool.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> poolArgs;
  /**
   * Settings passed through to Google Compute Engine workers when using the
   * standard Dataflow task runner. Users should ignore this field.
   */
  TaskRunnerSettings taskrunnerSettings;
  /**
   * Sets the policy for determining when to turndown worker pool. Allowed
   * values are: TEARDOWN_ALWAYS, TEARDOWN_ON_SUCCESS, and TEARDOWN_NEVER.
   * TEARDOWN_ALWAYS means workers are always torn down regardless of whether
   * the job succeeds. TEARDOWN_ON_SUCCESS means workers are torn down if the
   * job succeeds. TEARDOWN_NEVER means the workers are never torn down. If the
   * workers are not torn down by the service, they will continue to run and use
   * Google Compute Engine VM resources in the user's project until they are
   * explicitly terminated by the user. Because of this, Google recommends using
   * the TEARDOWN_ALWAYS policy except for small, manually supervised test jobs.
   * If unknown or unspecified, the service will attempt to choose a reasonable
   * default.
   * Possible string values are:
   * - "TEARDOWN_POLICY_UNKNOWN" : A TEARDOWN_POLICY_UNKNOWN.
   * - "TEARDOWN_ALWAYS" : A TEARDOWN_ALWAYS.
   * - "TEARDOWN_ON_SUCCESS" : A TEARDOWN_ON_SUCCESS.
   * - "TEARDOWN_NEVER" : A TEARDOWN_NEVER.
   */
  core.String teardownPolicy;
  /**
   * Zone to run the worker pools in (e.g. "us-central1-a"). If empty or
   * unspecified, the service will attempt to choose a reasonable default.
   */
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
    if (_json.containsKey("diskType")) {
      diskType = _json["diskType"];
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
    if (_json.containsKey("network")) {
      network = _json["network"];
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
    if (_json.containsKey("poolArgs")) {
      poolArgs = _json["poolArgs"];
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
    if (diskType != null) {
      _json["diskType"] = diskType;
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
    if (network != null) {
      _json["network"] = network;
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
    if (poolArgs != null) {
      _json["poolArgs"] = poolArgs;
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

/** Provides data to pass through to the worker harness. */
class WorkerSettings {
  /**
   * The base URL for accessing Google Cloud APIs. When workers access Google
   * Cloud APIs, they logically do so via relative URLs. If this field is
   * specified, it supplies the base URL to use for resolving these relative
   * URLs. The normative algorithm used is defined by RFC 1808, "Relative
   * Uniform Resource Locators". If not specified, the default value is
   * "http://www.googleapis.com/"
   */
  core.String baseUrl;
  /** Send work progress updates to service. */
  core.bool reportingEnabled;
  /**
   * The Dataflow service path relative to the root URL, for example,
   * "dataflow/v1b3/projects".
   */
  core.String servicePath;
  /**
   * The Shuffle service path relative to the root URL, for example,
   * "shuffle/v1beta1".
   */
  core.String shuffleServicePath;
  /**
   * The prefix of the resources the system should use for temporary storage.
   * The supported resource type is: Google Cloud Storage:
   * storage.googleapis.com/{bucket}/{object}
   * bucket.storage.googleapis.com/{object}
   */
  core.String tempStoragePrefix;
  /** ID of the worker running this pipeline. */
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

/**
 * An instruction that writes records. Takes one input, produces no outputs.
 */
class WriteInstruction {
  /** The input. */
  InstructionInput input;
  /** The sink to write to. */
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
