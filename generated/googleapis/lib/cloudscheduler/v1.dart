// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.cloudscheduler.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudscheduler/v1';

/// Creates and manages jobs run on a regular recurring schedule.
class CloudschedulerApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudschedulerApi(http.Client client,
      {core.String rootUrl = "https://cloudscheduler.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      new ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsResourceApi get jobs =>
      new ProjectsLocationsJobsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Location.fromJson(data));
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(core.String name,
      {core.String filter,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/locations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLocationsResponse.fromJson(data));
  }
}

class ProjectsLocationsJobsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  ///
  /// The location name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> create(Job request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/jobs';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Deletes a job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets a job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Lists jobs.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required.
  ///
  /// The location name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageToken] - A token identifying a page of results the server will
  /// return. To
  /// request the first page results, page_token must be empty. To
  /// request the next page of results, page_token must be the value of
  /// next_page_token returned from
  /// the previous call to ListJobs. It is an error to
  /// switch the value of filter or
  /// order_by while iterating through pages.
  ///
  /// [pageSize] - Requested page size.
  ///
  /// The maximum page size is 500. If unspecified, the page size will
  /// be the maximum. Fewer jobs than requested might be returned,
  /// even if more jobs exist; use next_page_token to determine if more
  /// jobs exist.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/jobs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListJobsResponse.fromJson(data));
  }

  /// Updates a job.
  ///
  /// If successful, the updated Job is returned. If the job does
  /// not exist, `NOT_FOUND` is returned.
  ///
  /// If UpdateJob does not successfully return, it is possible for the
  /// job to be in an Job.State.UPDATE_FAILED state. A job in this state may
  /// not be executed. If this happens, retry the UpdateJob request
  /// until a successful response is received.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optionally caller-specified in CreateJob, after
  /// which it becomes output only.
  ///
  /// The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.
  ///
  /// * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]),
  ///    hyphens (-), colons (:), or periods (.).
  ///    For more information, see
  ///    [Identifying
  /// projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the job's location.
  ///    The list of available locations can be obtained by calling
  ///    ListLocations.
  ///    For more information, see https://cloud.google.com/about/locations/.
  /// * `JOB_ID` can contain only letters ([A-Za-z]), numbers ([0-9]),
  ///    hyphens (-), or underscores (_). The maximum length is 500 characters.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$".
  ///
  /// [updateMask] - A  mask used to specify which fields of the job are being
  /// updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> patch(Job request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Pauses a job.
  ///
  /// If a job is paused then the system will stop executing the job
  /// until it is re-enabled via ResumeJob. The
  /// state of the job is stored in state; if paused it
  /// will be set to Job.State.PAUSED. A job must be in Job.State.ENABLED
  /// to be paused.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> pause(PauseJobRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':pause';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Resume a job.
  ///
  /// This method reenables a job after it has been Job.State.PAUSED. The
  /// state of a job is stored in Job.state; after calling this method it
  /// will be set to Job.State.ENABLED. A job must be in
  /// Job.State.PAUSED to be resumed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> resume(ResumeJobRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':resume';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /// Forces a job to run now.
  ///
  /// When this method is called, Cloud Scheduler will dispatch the job, even
  /// if the job is already running.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required.
  ///
  /// The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> run(RunJobRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':run';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }
}

/// App Engine target. The job will be pushed to a job handler by means
/// of an HTTP request via an http_method such
/// as HTTP POST, HTTP GET, etc. The job is acknowledged by means of an
/// HTTP response code in the range [200 - 299]. Error 503 is
/// considered an App Engine system error instead of an application
/// error. Requests returning error 503 will be retried regardless of
/// retry configuration and not counted against retry counts. Any other
/// response code, or a failure to receive a response before the
/// deadline, constitutes a failed attempt.
class AppEngineHttpTarget {
  /// App Engine Routing setting for the job.
  AppEngineRouting appEngineRouting;

  /// Body.
  ///
  /// HTTP request body. A request body is allowed only if the HTTP method is
  /// POST or PUT. It will result in invalid argument error to set a body on a
  /// job with an incompatible HttpMethod.
  core.String body;
  core.List<core.int> get bodyAsBytes {
    return convert.base64.decode(body);
  }

  set bodyAsBytes(core.List<core.int> _bytes) {
    body =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// HTTP request headers.
  ///
  /// This map contains the header field names and values. Headers can be set
  /// when the job is created.
  ///
  /// Cloud Scheduler sets some headers to default values:
  ///
  /// * `User-Agent`: By default, this header is
  ///   `"AppEngine-Google; (+http://code.google.com/appengine)"`.
  ///   This header can be modified, but Cloud Scheduler will append
  ///   `"AppEngine-Google; (+http://code.google.com/appengine)"` to the
  ///   modified `User-Agent`.
  /// * `X-CloudScheduler`: This header will be set to true.
  ///
  /// If the job has an body, Cloud Scheduler sets
  /// the following headers:
  ///
  /// * `Content-Type`: By default, the `Content-Type` header is set to
  /// `"application/octet-stream"`. The default can be overridden by explictly
  ///   setting `Content-Type` to a particular media type when the job is
  ///   created.
  ///   For example, `Content-Type` can be set to `"application/json"`.
  /// * `Content-Length`: This is computed by Cloud Scheduler. This value is
  ///   output only. It cannot be changed.
  ///
  /// The headers below are output only. They cannot be set or overridden:
  ///
  /// * `X-Google-*`: For Google internal use only.
  /// * `X-AppEngine-*`: For Google internal use only.
  ///
  /// In addition, some App Engine headers, which contain
  /// job-specific information, are also be sent to the job handler.
  core.Map<core.String, core.String> headers;

  /// The HTTP method to use for the request. PATCH and OPTIONS are not
  /// permitted.
  /// Possible string values are:
  /// - "HTTP_METHOD_UNSPECIFIED" : HTTP method unspecified. Defaults to POST.
  /// - "POST" : HTTP POST
  /// - "GET" : HTTP GET
  /// - "HEAD" : HTTP HEAD
  /// - "PUT" : HTTP PUT
  /// - "DELETE" : HTTP DELETE
  /// - "PATCH" : HTTP PATCH
  /// - "OPTIONS" : HTTP OPTIONS
  core.String httpMethod;

  /// The relative URI.
  ///
  /// The relative URL must begin with "/" and must be a valid HTTP relative
  /// URL.
  /// It can contain a path, query string arguments, and `#` fragments.
  /// If the relative URL is empty, then the root path "/" will be used.
  /// No spaces are allowed, and the maximum length allowed is 2083 characters.
  core.String relativeUri;

  AppEngineHttpTarget();

  AppEngineHttpTarget.fromJson(core.Map _json) {
    if (_json.containsKey("appEngineRouting")) {
      appEngineRouting =
          new AppEngineRouting.fromJson(_json["appEngineRouting"]);
    }
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("httpMethod")) {
      httpMethod = _json["httpMethod"];
    }
    if (_json.containsKey("relativeUri")) {
      relativeUri = _json["relativeUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appEngineRouting != null) {
      _json["appEngineRouting"] = (appEngineRouting).toJson();
    }
    if (body != null) {
      _json["body"] = body;
    }
    if (headers != null) {
      _json["headers"] = headers;
    }
    if (httpMethod != null) {
      _json["httpMethod"] = httpMethod;
    }
    if (relativeUri != null) {
      _json["relativeUri"] = relativeUri;
    }
    return _json;
  }
}

/// App Engine Routing.
///
/// For more information about services, versions, and instances see
/// [An Overview of App
/// Engine](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine),
/// [Microservices Architecture on Google App
/// Engine](https://cloud.google.com/appengine/docs/python/microservices-on-app-engine),
/// [App Engine Standard request
/// routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed),
/// and [App Engine Flex request
/// routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
class AppEngineRouting {
  /// Output only. The host that the job is sent to.
  ///
  /// For more information about how App Engine requests are routed, see
  /// [here](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed).
  ///
  /// The host is constructed as:
  ///
  ///
  /// * `host = [application_domain_name]`</br>
  ///   `| [service] + '.' + [application_domain_name]`</br>
  ///   `| [version] + '.' + [application_domain_name]`</br>
  ///   `| [version_dot_service]+ '.' + [application_domain_name]`</br>
  ///   `| [instance] + '.' + [application_domain_name]`</br>
  ///   `| [instance_dot_service] + '.' + [application_domain_name]`</br>
  ///   `| [instance_dot_version] + '.' + [application_domain_name]`</br>
  /// `| [instance_dot_version_dot_service] + '.' + [application_domain_name]`
  ///
  /// * `application_domain_name` = The domain name of the app, for
  ///   example <app-id>.appspot.com, which is associated with the
  ///   job's project ID.
  ///
  /// * `service =` service
  ///
  /// * `version =` version
  ///
  /// * `version_dot_service =`
  ///   version `+ '.' +`
  ///   service
  ///
  /// * `instance =` instance
  ///
  /// * `instance_dot_service =`
  ///   instance `+ '.' +`
  ///   service
  ///
  /// * `instance_dot_version =`
  ///   instance `+ '.' +`
  ///   version
  ///
  /// * `instance_dot_version_dot_service =`
  ///   instance `+ '.' +`
  ///   version `+ '.' +`
  ///   service
  ///
  ///
  /// If service is empty, then the job will be sent
  /// to the service which is the default service when the job is attempted.
  ///
  /// If version is empty, then the job will be sent
  /// to the version which is the default version when the job is attempted.
  ///
  /// If instance is empty, then the job will be
  /// sent to an instance which is available when the job is attempted.
  ///
  /// If service,
  /// version, or
  /// instance is invalid, then the job will be sent
  /// to the default version of the default service when the job is attempted.
  core.String host;

  /// App instance.
  ///
  /// By default, the job is sent to an instance which is available when
  /// the job is attempted.
  ///
  /// Requests can only be sent to a specific instance if
  /// [manual scaling is used in App Engine
  /// Standard](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine?hl=en_US#scaling_types_and_instance_classes).
  /// App Engine Flex does not support instances. For more information, see
  /// [App Engine Standard request
  /// routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed)
  /// and [App Engine Flex request
  /// routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
  core.String instance;

  /// App service.
  ///
  /// By default, the job is sent to the service which is the default
  /// service when the job is attempted.
  core.String service;

  /// App version.
  ///
  /// By default, the job is sent to the version which is the default
  /// version when the job is attempted.
  core.String version;

  AppEngineRouting();

  AppEngineRouting.fromJson(core.Map _json) {
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (host != null) {
      _json["host"] = host;
    }
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (service != null) {
      _json["service"] = service;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Http target. The job will be pushed to the job handler by means of
/// an HTTP request via an http_method such as HTTP
/// POST, HTTP GET, etc. The job is acknowledged by means of an HTTP
/// response code in the range [200 - 299]. A failure to receive a response
/// constitutes a failed execution. For a redirected request, the response
/// returned by the redirected request is considered.
class HttpTarget {
  /// HTTP request body. A request body is allowed only if the HTTP
  /// method is POST, PUT, or PATCH. It is an error to set body on a job with an
  /// incompatible HttpMethod.
  core.String body;
  core.List<core.int> get bodyAsBytes {
    return convert.base64.decode(body);
  }

  set bodyAsBytes(core.List<core.int> _bytes) {
    body =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// The user can specify HTTP request headers to send with the job's
  /// HTTP request. This map contains the header field names and
  /// values. Repeated headers are not supported, but a header value can
  /// contain commas. These headers represent a subset of the headers
  /// that will accompany the job's HTTP request. Some HTTP request
  /// headers will be ignored or replaced. A partial list of headers that
  /// will be ignored or replaced is below:
  /// - Host: This will be computed by Cloud Scheduler and derived from
  /// uri.
  /// * `Content-Length`: This will be computed by Cloud Scheduler.
  /// * `User-Agent`: This will be set to `"Google-Cloud-Scheduler"`.
  /// * `X-Google-*`: Google internal use only.
  /// * `X-AppEngine-*`: Google internal use only.
  ///
  /// The total size of headers must be less than 80KB.
  core.Map<core.String, core.String> headers;

  /// Which HTTP method to use for the request.
  /// Possible string values are:
  /// - "HTTP_METHOD_UNSPECIFIED" : HTTP method unspecified. Defaults to POST.
  /// - "POST" : HTTP POST
  /// - "GET" : HTTP GET
  /// - "HEAD" : HTTP HEAD
  /// - "PUT" : HTTP PUT
  /// - "DELETE" : HTTP DELETE
  /// - "PATCH" : HTTP PATCH
  /// - "OPTIONS" : HTTP OPTIONS
  core.String httpMethod;

  /// If specified, an
  /// [OAuth token](https://developers.google.com/identity/protocols/OAuth2)
  /// will be generated and attached as an `Authorization` header in the HTTP
  /// request.
  ///
  /// This type of authorization should generally only be used when calling
  /// Google APIs hosted on *.googleapis.com.
  OAuthToken oauthToken;

  /// If specified, an
  /// [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect)
  /// token will be generated and attached as an `Authorization` header in the
  /// HTTP request.
  ///
  /// This type of authorization can be used for many scenarios, including
  /// calling Cloud Run, or endpoints where you intend to validate the token
  /// yourself.
  OidcToken oidcToken;

  /// Required.
  ///
  /// The full URI path that the request will be sent to. This string
  /// must begin with either "http://" or "https://". Some examples of
  /// valid values for uri are:
  /// `http://acme.com` and `https://acme.com/sales:8080`. Cloud Scheduler will
  /// encode some characters for safety and compatibility. The maximum allowed
  /// URL length is 2083 characters after encoding.
  core.String uri;

  HttpTarget();

  HttpTarget.fromJson(core.Map _json) {
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("httpMethod")) {
      httpMethod = _json["httpMethod"];
    }
    if (_json.containsKey("oauthToken")) {
      oauthToken = new OAuthToken.fromJson(_json["oauthToken"]);
    }
    if (_json.containsKey("oidcToken")) {
      oidcToken = new OidcToken.fromJson(_json["oidcToken"]);
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (body != null) {
      _json["body"] = body;
    }
    if (headers != null) {
      _json["headers"] = headers;
    }
    if (httpMethod != null) {
      _json["httpMethod"] = httpMethod;
    }
    if (oauthToken != null) {
      _json["oauthToken"] = (oauthToken).toJson();
    }
    if (oidcToken != null) {
      _json["oidcToken"] = (oidcToken).toJson();
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Configuration for a job.
/// The maximum allowed size for a job is 100KB.
class Job {
  /// App Engine HTTP target.
  AppEngineHttpTarget appEngineHttpTarget;

  /// The deadline for job attempts. If the request handler does not respond by
  /// this deadline then the request is cancelled and the attempt is marked as a
  /// `DEADLINE_EXCEEDED` failure. The failed attempt can be viewed in
  /// execution logs. Cloud Scheduler will retry the job according
  /// to the RetryConfig.
  ///
  /// The allowed duration for this deadline is:
  /// * For HTTP targets, between 15 seconds and 30 minutes.
  /// * For App Engine HTTP targets, between 15
  ///   seconds and 24 hours.
  core.String attemptDeadline;

  /// Optionally caller-specified in CreateJob or
  /// UpdateJob.
  ///
  /// A human-readable description for the job. This string must not contain
  /// more than 500 characters.
  core.String description;

  /// HTTP target.
  HttpTarget httpTarget;

  /// Output only. The time the last job attempt started.
  core.String lastAttemptTime;

  /// Optionally caller-specified in CreateJob, after
  /// which it becomes output only.
  ///
  /// The job name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`.
  ///
  /// * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]),
  ///    hyphens (-), colons (:), or periods (.).
  ///    For more information, see
  ///    [Identifying
  /// projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the job's location.
  ///    The list of available locations can be obtained by calling
  ///    ListLocations.
  ///    For more information, see https://cloud.google.com/about/locations/.
  /// * `JOB_ID` can contain only letters ([A-Za-z]), numbers ([0-9]),
  ///    hyphens (-), or underscores (_). The maximum length is 500 characters.
  core.String name;

  /// Pub/Sub target.
  PubsubTarget pubsubTarget;

  /// Settings that determine the retry behavior.
  RetryConfig retryConfig;

  /// Required, except when used with UpdateJob.
  ///
  /// Describes the schedule on which the job will be executed.
  ///
  /// The schedule can be either of the following types:
  ///
  /// * [Crontab](http://en.wikipedia.org/wiki/Cron#Overview)
  /// * English-like
  /// [schedule](https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules)
  ///
  /// As a general rule, execution `n + 1` of a job will not begin
  /// until execution `n` has finished. Cloud Scheduler will never
  /// allow two simultaneously outstanding executions. For example,
  /// this implies that if the `n+1`th execution is scheduled to run at
  /// 16:00 but the `n`th execution takes until 16:15, the `n+1`th
  /// execution will not start until `16:15`.
  /// A scheduled start time will be delayed if the previous
  /// execution has not ended when its scheduled time occurs.
  ///
  /// If retry_count > 0 and a job attempt fails,
  /// the job will be tried a total of retry_count
  /// times, with exponential backoff, until the next scheduled start
  /// time.
  core.String schedule;

  /// Output only. The next time the job is scheduled. Note that this may be a
  /// retry of a previously failed attempt or the next execution time
  /// according to the schedule.
  core.String scheduleTime;

  /// Output only. State of the job.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ENABLED" : The job is executing normally.
  /// - "PAUSED" : The job is paused by the user. It will not execute. A user
  /// can
  /// intentionally pause the job using
  /// PauseJobRequest.
  /// - "DISABLED" : The job is disabled by the system due to error. The user
  /// cannot directly set a job to be disabled.
  /// - "UPDATE_FAILED" : The job state resulting from a failed
  /// CloudScheduler.UpdateJob
  /// operation. To recover a job from this state, retry
  /// CloudScheduler.UpdateJob until a successful response is received.
  core.String state;

  /// Output only. The response from the target for the last attempted
  /// execution.
  Status status;

  /// Specifies the time zone to be used in interpreting
  /// schedule. The value of this field must be a time
  /// zone name from the [tz
  /// database](http://en.wikipedia.org/wiki/Tz_database).
  ///
  /// Note that some time zones include a provision for
  /// daylight savings time. The rules for daylight saving time are
  /// determined by the chosen tz. For UTC use the string "utc". If a
  /// time zone is not specified, the default will be in UTC (also known
  /// as GMT).
  core.String timeZone;

  /// Output only. The creation time of the job.
  core.String userUpdateTime;

  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey("appEngineHttpTarget")) {
      appEngineHttpTarget =
          new AppEngineHttpTarget.fromJson(_json["appEngineHttpTarget"]);
    }
    if (_json.containsKey("attemptDeadline")) {
      attemptDeadline = _json["attemptDeadline"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("httpTarget")) {
      httpTarget = new HttpTarget.fromJson(_json["httpTarget"]);
    }
    if (_json.containsKey("lastAttemptTime")) {
      lastAttemptTime = _json["lastAttemptTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("pubsubTarget")) {
      pubsubTarget = new PubsubTarget.fromJson(_json["pubsubTarget"]);
    }
    if (_json.containsKey("retryConfig")) {
      retryConfig = new RetryConfig.fromJson(_json["retryConfig"]);
    }
    if (_json.containsKey("schedule")) {
      schedule = _json["schedule"];
    }
    if (_json.containsKey("scheduleTime")) {
      scheduleTime = _json["scheduleTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("status")) {
      status = new Status.fromJson(_json["status"]);
    }
    if (_json.containsKey("timeZone")) {
      timeZone = _json["timeZone"];
    }
    if (_json.containsKey("userUpdateTime")) {
      userUpdateTime = _json["userUpdateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appEngineHttpTarget != null) {
      _json["appEngineHttpTarget"] = (appEngineHttpTarget).toJson();
    }
    if (attemptDeadline != null) {
      _json["attemptDeadline"] = attemptDeadline;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (httpTarget != null) {
      _json["httpTarget"] = (httpTarget).toJson();
    }
    if (lastAttemptTime != null) {
      _json["lastAttemptTime"] = lastAttemptTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (pubsubTarget != null) {
      _json["pubsubTarget"] = (pubsubTarget).toJson();
    }
    if (retryConfig != null) {
      _json["retryConfig"] = (retryConfig).toJson();
    }
    if (schedule != null) {
      _json["schedule"] = schedule;
    }
    if (scheduleTime != null) {
      _json["scheduleTime"] = scheduleTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (timeZone != null) {
      _json["timeZone"] = timeZone;
    }
    if (userUpdateTime != null) {
      _json["userUpdateTime"] = userUpdateTime;
    }
    return _json;
  }
}

/// Response message for listing jobs using ListJobs.
class ListJobsResponse {
  /// The list of jobs.
  core.List<Job> jobs;

  /// A token to retrieve next page of results. Pass this value in the
  /// page_token field in the subsequent call to
  /// ListJobs to retrieve the next page of results.
  /// If this is empty it indicates that there are no more results
  /// through which to paginate.
  ///
  /// The page token is valid for only 2 hours.
  core.String nextPageToken;

  ListJobsResponse();

  ListJobsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("jobs")) {
      jobs = (_json["jobs"] as core.List)
          .map<Job>((value) => new Job.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (jobs != null) {
      _json["jobs"] = jobs.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("locations")) {
      locations = (_json["locations"] as core.List)
          .map<Location>((value) => new Location.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (locations != null) {
      _json["locations"] = locations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location. For example
  ///
  ///     {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location. For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata. For example the available capacity at the given
  /// location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Contains information needed for generating an
/// [OAuth token](https://developers.google.com/identity/protocols/OAuth2).
/// This type of authorization should generally only be used when calling Google
/// APIs hosted on *.googleapis.com.
class OAuthToken {
  /// OAuth scope to be used for generating OAuth access token.
  /// If not specified, "https://www.googleapis.com/auth/cloud-platform"
  /// will be used.
  core.String scope;

  /// [Service account
  /// email](https://cloud.google.com/iam/docs/service-accounts)
  /// to be used for generating OAuth token.
  /// The service account must be within the same project as the job. The caller
  /// must have iam.serviceAccounts.actAs permission for the service account.
  core.String serviceAccountEmail;

  OAuthToken();

  OAuthToken.fromJson(core.Map _json) {
    if (_json.containsKey("scope")) {
      scope = _json["scope"];
    }
    if (_json.containsKey("serviceAccountEmail")) {
      serviceAccountEmail = _json["serviceAccountEmail"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (scope != null) {
      _json["scope"] = scope;
    }
    if (serviceAccountEmail != null) {
      _json["serviceAccountEmail"] = serviceAccountEmail;
    }
    return _json;
  }
}

/// Contains information needed for generating an
/// [OpenID Connect
/// token](https://developers.google.com/identity/protocols/OpenIDConnect).
/// This type of authorization can be used for many scenarios, including
/// calling Cloud Run, or endpoints where you intend to validate the token
/// yourself.
class OidcToken {
  /// Audience to be used when generating OIDC token. If not specified, the URI
  /// specified in target will be used.
  core.String audience;

  /// [Service account
  /// email](https://cloud.google.com/iam/docs/service-accounts)
  /// to be used for generating OIDC token.
  /// The service account must be within the same project as the job. The caller
  /// must have iam.serviceAccounts.actAs permission for the service account.
  core.String serviceAccountEmail;

  OidcToken();

  OidcToken.fromJson(core.Map _json) {
    if (_json.containsKey("audience")) {
      audience = _json["audience"];
    }
    if (_json.containsKey("serviceAccountEmail")) {
      serviceAccountEmail = _json["serviceAccountEmail"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audience != null) {
      _json["audience"] = audience;
    }
    if (serviceAccountEmail != null) {
      _json["serviceAccountEmail"] = serviceAccountEmail;
    }
    return _json;
  }
}

/// Request message for PauseJob.
class PauseJobRequest {
  PauseJobRequest();

  PauseJobRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A message that is published by publishers and consumed by subscribers. The
/// message must contain either a non-empty data field or at least one
/// attribute.
/// Note that client libraries represent this object differently
/// depending on the language. See the corresponding
/// <a href="https://cloud.google.com/pubsub/docs/reference/libraries">client
/// library documentation</a> for more information. See
/// <a href="https://cloud.google.com/pubsub/quotas">Quotas and limits</a>
/// for more information about message limits.
class PubsubMessage {
  /// Optional attributes for this message.
  core.Map<core.String, core.String> attributes;

  /// The message data field. If this field is empty, the message must contain
  /// at least one attribute.
  core.String data;
  core.List<core.int> get dataAsBytes {
    return convert.base64.decode(data);
  }

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// ID of this message, assigned by the server when the message is published.
  /// Guaranteed to be unique within the topic. This value may be read by a
  /// subscriber that receives a `PubsubMessage` via a `Pull` call or a push
  /// delivery. It must not be populated by the publisher in a `Publish` call.
  core.String messageId;

  /// The time at which the message was published, populated by the server when
  /// it receives the `Publish` call. It must not be populated by the
  /// publisher in a `Publish` call.
  core.String publishTime;

  PubsubMessage();

  PubsubMessage.fromJson(core.Map _json) {
    if (_json.containsKey("attributes")) {
      attributes =
          (_json["attributes"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("messageId")) {
      messageId = _json["messageId"];
    }
    if (_json.containsKey("publishTime")) {
      publishTime = _json["publishTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attributes != null) {
      _json["attributes"] = attributes;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (messageId != null) {
      _json["messageId"] = messageId;
    }
    if (publishTime != null) {
      _json["publishTime"] = publishTime;
    }
    return _json;
  }
}

/// Pub/Sub target. The job will be delivered by publishing a message to
/// the given Pub/Sub topic.
class PubsubTarget {
  /// Attributes for PubsubMessage.
  ///
  /// Pubsub message must contain either non-empty data, or at least one
  /// attribute.
  core.Map<core.String, core.String> attributes;

  /// The message payload for PubsubMessage.
  ///
  /// Pubsub message must contain either non-empty data, or at least one
  /// attribute.
  core.String data;
  core.List<core.int> get dataAsBytes {
    return convert.base64.decode(data);
  }

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Required.
  ///
  /// The name of the Cloud Pub/Sub topic to which messages will
  /// be published when a job is delivered. The topic name must be in the
  /// same format as required by PubSub's
  /// [PublishRequest.name](https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#publishrequest),
  /// for example `projects/PROJECT_ID/topics/TOPIC_ID`.
  ///
  /// The topic must be in the same project as the Cloud Scheduler job.
  core.String topicName;

  PubsubTarget();

  PubsubTarget.fromJson(core.Map _json) {
    if (_json.containsKey("attributes")) {
      attributes =
          (_json["attributes"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("topicName")) {
      topicName = _json["topicName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attributes != null) {
      _json["attributes"] = attributes;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (topicName != null) {
      _json["topicName"] = topicName;
    }
    return _json;
  }
}

/// Request message for ResumeJob.
class ResumeJobRequest {
  ResumeJobRequest();

  ResumeJobRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Settings that determine the retry behavior.
///
/// By default, if a job does not complete successfully (meaning that
/// an acknowledgement is not received from the handler, then it will be retried
/// with exponential backoff according to the settings in RetryConfig.
class RetryConfig {
  /// The maximum amount of time to wait before retrying a job after
  /// it fails.
  ///
  /// The default value of this field is 1 hour.
  core.String maxBackoffDuration;

  /// The time between retries will double `max_doublings` times.
  ///
  /// A job's retry interval starts at
  /// min_backoff_duration, then doubles
  /// `max_doublings` times, then increases linearly, and finally
  /// retries retries at intervals of
  /// max_backoff_duration up to
  /// retry_count times.
  ///
  /// For example, if min_backoff_duration is
  /// 10s, max_backoff_duration is 300s, and
  /// `max_doublings` is 3, then the a job will first be retried in 10s. The
  /// retry interval will double three times, and then increase linearly by
  /// 2^3 * 10s.  Finally, the job will retry at intervals of
  /// max_backoff_duration until the job has
  /// been attempted retry_count times. Thus, the
  /// requests will retry at 10s, 20s, 40s, 80s, 160s, 240s, 300s, 300s, ....
  ///
  /// The default value of this field is 5.
  core.int maxDoublings;

  /// The time limit for retrying a failed job, measured from time when an
  /// execution was first attempted. If specified with
  /// retry_count, the job will be retried until both
  /// limits are reached.
  ///
  /// The default value for max_retry_duration is zero, which means retry
  /// duration is unlimited.
  core.String maxRetryDuration;

  /// The minimum amount of time to wait before retrying a job after
  /// it fails.
  ///
  /// The default value of this field is 5 seconds.
  core.String minBackoffDuration;

  /// The number of attempts that the system will make to run a job using the
  /// exponential backoff procedure described by
  /// max_doublings.
  ///
  /// The default value of retry_count is zero.
  ///
  /// If retry_count is zero, a job attempt will *not* be retried if
  /// it fails. Instead the Cloud Scheduler system will wait for the
  /// next scheduled execution time.
  ///
  /// If retry_count is set to a non-zero number then Cloud Scheduler
  /// will retry failed attempts, using exponential backoff,
  /// retry_count times, or until the next scheduled execution time,
  /// whichever comes first.
  ///
  /// Values greater than 5 and negative values are not allowed.
  core.int retryCount;

  RetryConfig();

  RetryConfig.fromJson(core.Map _json) {
    if (_json.containsKey("maxBackoffDuration")) {
      maxBackoffDuration = _json["maxBackoffDuration"];
    }
    if (_json.containsKey("maxDoublings")) {
      maxDoublings = _json["maxDoublings"];
    }
    if (_json.containsKey("maxRetryDuration")) {
      maxRetryDuration = _json["maxRetryDuration"];
    }
    if (_json.containsKey("minBackoffDuration")) {
      minBackoffDuration = _json["minBackoffDuration"];
    }
    if (_json.containsKey("retryCount")) {
      retryCount = _json["retryCount"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxBackoffDuration != null) {
      _json["maxBackoffDuration"] = maxBackoffDuration;
    }
    if (maxDoublings != null) {
      _json["maxDoublings"] = maxDoublings;
    }
    if (maxRetryDuration != null) {
      _json["maxRetryDuration"] = maxRetryDuration;
    }
    if (minBackoffDuration != null) {
      _json["minBackoffDuration"] = minBackoffDuration;
    }
    if (retryCount != null) {
      _json["retryCount"] = retryCount;
    }
    return _json;
  }
}

/// Request message for forcing a job to run now using
/// RunJob.
class RunJobRequest {
  RunJobRequest();

  RunJobRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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
