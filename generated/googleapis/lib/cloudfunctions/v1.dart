// This is a generated file (see the discoveryapis_generator project).

library googleapis.cloudfunctions.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudfunctions/v1';

/// API for managing lightweight user-provided functions executed in response to
/// events.
class CloudfunctionsApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudfunctionsApi(http.Client client,
      {core.String rootUrl: "https://cloudfunctions.googleapis.com/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^operations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// NOTE: the `name` binding allows API services to override the binding
  /// to use different resource name schemes, such as `users / * /operations`.
  /// To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration.
  /// For backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding
  /// is the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [name] - The name of the operation's parent resource.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
      {core.String filter,
      core.String pageToken,
      core.String name,
      core.int pageSize,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (name != null) {
      _queryParams["name"] = [name];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/operations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      new ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsFunctionsResourceApi get functions =>
      new ProjectsLocationsFunctionsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [filter] - The standard list filter.
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
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
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

class ProjectsLocationsFunctionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsFunctionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Invokes synchronously deployed function. To be used for testing, very
  /// limited traffic allowed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the function to be called.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/functions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CallFunctionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CallFunctionResponse> call(
      CallFunctionRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':call';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CallFunctionResponse.fromJson(data));
  }

  /// Creates a new function. If a function with the given name already exists
  /// in
  /// the specified project, the long running operation will return
  /// `ALREADY_EXISTS` error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - The project and location in which the function should be
  /// created, specified
  /// in the format `projects / * /locations / * `
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(CloudFunction request, core.String location,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (location == null) {
      throw new core.ArgumentError("Parameter location is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$location') +
        '/functions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes a function with the given name from the specified project. If the
  /// given function is used by some trigger, the trigger will be updated to
  /// remove this function.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the function which should be deleted.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/functions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Returns a signed URL for downloading deployed function source code.
  /// The URL is only valid for a limited period and should be used within
  /// minutes after generation.
  /// For more information about the signed URL usage see:
  /// https://cloud.google.com/storage/docs/access-control/signed-urls
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of function for which source code Google Cloud Storage
  /// signed
  /// URL should be generated.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/functions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateDownloadUrlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateDownloadUrlResponse> generateDownloadUrl(
      GenerateDownloadUrlRequest request, core.String name,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':generateDownloadUrl';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GenerateDownloadUrlResponse.fromJson(data));
  }

  /// Returns a signed URL for uploading a function source code.
  /// For more information about the signed URL usage see:
  /// https://cloud.google.com/storage/docs/access-control/signed-urls
  /// Once the function source code upload is complete, the used signed
  /// URL should be provided in CreateFunction or UpdateFunction request
  /// as a reference to the function source code.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project and location in which the Google Cloud Storage
  /// signed URL
  /// should be generated, specified in the format `projects / * /locations / *
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateUploadUrlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateUploadUrlResponse> generateUploadUrl(
      GenerateUploadUrlRequest request, core.String parent,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/functions:generateUploadUrl';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GenerateUploadUrlResponse.fromJson(data));
  }

  /// Returns a function with the given name from the requested project.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the function which details should be obtained.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/functions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CloudFunction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CloudFunction> get(core.String name, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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
    return _response.then((data) => new CloudFunction.fromJson(data));
  }

  /// Returns a list of functions that belong to the requested project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project and location from which the function should be
  /// listed,
  /// specified in the format `projects / * /locations / * `
  /// If you want to list functions in all locations, use "-" in place of a
  /// location.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageToken] - The value returned by the last
  /// `ListFunctionsResponse`; indicates that
  /// this is a continuation of a prior `ListFunctions` call, and that the
  /// system should return the next page of data.
  ///
  /// [pageSize] - Maximum number of functions to return per call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFunctionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFunctionsResponse> list(core.String parent,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/functions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListFunctionsResponse.fromJson(data));
  }

  /// Updates existing function.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - A user-defined name of the function. Function names must be
  /// unique
  /// globally and match pattern `projects / * /locations / * /functions / * `
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/functions/[^/]+$".
  ///
  /// [updateMask] - Required list of fields to be updated in this request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(CloudFunction request, core.String name,
      {core.String updateMask, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
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
    return _response.then((data) => new Operation.fromJson(data));
  }
}

/// Request for the `CallFunction` method.
class CallFunctionRequest {
  /// Input to be passed to the function.
  core.String data;

  CallFunctionRequest();

  CallFunctionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = data;
    }
    return _json;
  }
}

/// Response of `CallFunction` method.
class CallFunctionResponse {
  /// Either system or user-function generated error. Set if execution
  /// was not successful.
  core.String error;

  /// Execution id of function invocation.
  core.String executionId;

  /// Result populated for successful execution of synchronous function. Will
  /// not be populated if function does not return a result through context.
  core.String result;

  CallFunctionResponse();

  CallFunctionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("error")) {
      error = _json["error"];
    }
    if (_json.containsKey("executionId")) {
      executionId = _json["executionId"];
    }
    if (_json.containsKey("result")) {
      result = _json["result"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (error != null) {
      _json["error"] = error;
    }
    if (executionId != null) {
      _json["executionId"] = executionId;
    }
    if (result != null) {
      _json["result"] = result;
    }
    return _json;
  }
}

/// Describes a Cloud Function that contains user computation executed in
/// response to an event. It encapsulate function and triggers configurations.
class CloudFunction {
  /// The amount of memory in MB available for a function.
  /// Defaults to 256MB.
  core.int availableMemoryMb;

  /// User-provided description of a function.
  core.String description;

  /// The name of the function (as defined in source code) that will be
  /// executed. Defaults to the resource name suffix, if not specified. For
  /// backward compatibility, if function with given name is not found, then the
  /// system will try to use function named "function".
  /// For Node.js this is name of a function exported by the module specified
  /// in `source_location`.
  core.String entryPoint;

  /// A source that fires events in response to a condition in another service.
  EventTrigger eventTrigger;

  /// An HTTPS endpoint type of source that can be triggered via URL.
  HttpsTrigger httpsTrigger;

  /// Labels associated with this Cloud Function.
  core.Map<core.String, core.String> labels;

  /// A user-defined name of the function. Function names must be unique
  /// globally and match pattern `projects / * /locations / * /functions / * `
  core.String name;

  /// Output only. The email of the function's service account.
  core.String serviceAccountEmail;

  /// The Google Cloud Storage URL, starting with gs://, pointing to the zip
  /// archive which contains the function.
  core.String sourceArchiveUrl;

  /// **Beta Feature**
  ///
  /// The source repository where a function is hosted.
  SourceRepository sourceRepository;

  /// The Google Cloud Storage signed URL used for source uploading, generated
  /// by google.cloud.functions.v1.GenerateUploadUrl
  core.String sourceUploadUrl;

  /// Output only. Status of the function deployment.
  /// Possible string values are:
  /// - "CLOUD_FUNCTION_STATUS_UNSPECIFIED" : Not specified. Invalid state.
  /// - "ACTIVE" : Function has been succesfully deployed and is serving.
  /// - "OFFLINE" : Function deployment failed and the function isn’t serving.
  /// - "DEPLOY_IN_PROGRESS" : Function is being created or updated.
  /// - "DELETE_IN_PROGRESS" : Function is being deleted.
  /// - "UNKNOWN" : Function deployment failed and the function serving state is
  /// undefined.
  /// The function should be updated or deleted to move it out of this state.
  core.String status;

  /// The function execution timeout. Execution is considered failed and
  /// can be terminated if the function is not completed at the end of the
  /// timeout period. Defaults to 60 seconds.
  core.String timeout;

  /// Output only. The last update timestamp of a Cloud Function.
  core.String updateTime;

  /// Output only.
  /// The version identifier of the Cloud Function. Each deployment attempt
  /// results in a new version of a function being created.
  core.String versionId;

  CloudFunction();

  CloudFunction.fromJson(core.Map _json) {
    if (_json.containsKey("availableMemoryMb")) {
      availableMemoryMb = _json["availableMemoryMb"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entryPoint")) {
      entryPoint = _json["entryPoint"];
    }
    if (_json.containsKey("eventTrigger")) {
      eventTrigger = new EventTrigger.fromJson(_json["eventTrigger"]);
    }
    if (_json.containsKey("httpsTrigger")) {
      httpsTrigger = new HttpsTrigger.fromJson(_json["httpsTrigger"]);
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("serviceAccountEmail")) {
      serviceAccountEmail = _json["serviceAccountEmail"];
    }
    if (_json.containsKey("sourceArchiveUrl")) {
      sourceArchiveUrl = _json["sourceArchiveUrl"];
    }
    if (_json.containsKey("sourceRepository")) {
      sourceRepository =
          new SourceRepository.fromJson(_json["sourceRepository"]);
    }
    if (_json.containsKey("sourceUploadUrl")) {
      sourceUploadUrl = _json["sourceUploadUrl"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("timeout")) {
      timeout = _json["timeout"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("versionId")) {
      versionId = _json["versionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (availableMemoryMb != null) {
      _json["availableMemoryMb"] = availableMemoryMb;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (entryPoint != null) {
      _json["entryPoint"] = entryPoint;
    }
    if (eventTrigger != null) {
      _json["eventTrigger"] = (eventTrigger).toJson();
    }
    if (httpsTrigger != null) {
      _json["httpsTrigger"] = (httpsTrigger).toJson();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (serviceAccountEmail != null) {
      _json["serviceAccountEmail"] = serviceAccountEmail;
    }
    if (sourceArchiveUrl != null) {
      _json["sourceArchiveUrl"] = sourceArchiveUrl;
    }
    if (sourceRepository != null) {
      _json["sourceRepository"] = (sourceRepository).toJson();
    }
    if (sourceUploadUrl != null) {
      _json["sourceUploadUrl"] = sourceUploadUrl;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (timeout != null) {
      _json["timeout"] = timeout;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (versionId != null) {
      _json["versionId"] = versionId;
    }
    return _json;
  }
}

/// Describes EventTrigger, used to request events be sent from another
/// service.
class EventTrigger {
  /// Required. The type of event to observe. For example:
  /// `google.storage.object.finalized` and
  /// `google.firebase.analytics.event.log`.
  ///
  /// Event type consists of three parts:
  ///  1. namespace: The domain name of the organization in reverse-domain
  ///     notation (e.g. `acme.net` appears as `net.acme`) and any orginization
  /// specific subdivisions. If the organization's top-level domain is `com`,
  ///     the top-level domain is ommited (e.g. `google.com` appears as
  ///     `google`). For example, `google.storage` and
  ///     `google.firebase.analytics`.
  ///  2. resource type: The type of resource on which event ocurs. For
  ///     example, the Google Cloud Storage API includes the type `object`.
  ///  3. action: The action that generates the event. For example, actions for
  ///     a Google Cloud Storage Object include 'finalize' and 'delete'.
  /// These parts are lower case and joined by '.'.
  core.String eventType;

  /// Specifies policy for failed executions.
  FailurePolicy failurePolicy;

  /// Required. The resource(s) from which to observe events, for example,
  /// `projects/_/buckets/myBucket`.
  ///
  /// Not all syntactically correct values are accepted by all services. For
  /// example:
  ///
  /// 1. The authorization model must support it. Google Cloud Functions
  ///    only allows EventTriggers to be deployed that observe resources in the
  ///    same project as the `CloudFunction`.
  /// 2. The resource type must match the pattern expected for an
  ///    `event_type`. For example, an `EventTrigger` that has an
  ///    `event_type` of "google.pubsub.topic.publish" should have a resource
  ///    that matches Google Cloud Pub/Sub topics.
  ///
  /// Additionally, some services may support short names when creating an
  /// `EventTrigger`. These will always be returned in the normalized "long"
  /// format.
  ///
  /// See each *service's* documentation for supported formats.
  core.String resource;

  /// The hostname of the service that should be observed.
  ///
  /// If no string is provided, the default service implementing the API will
  /// be used. For example, `storage.googleapis.com` is the default for all
  /// event types in the 'google.storage` namespace.
  core.String service;

  EventTrigger();

  EventTrigger.fromJson(core.Map _json) {
    if (_json.containsKey("eventType")) {
      eventType = _json["eventType"];
    }
    if (_json.containsKey("failurePolicy")) {
      failurePolicy = new FailurePolicy.fromJson(_json["failurePolicy"]);
    }
    if (_json.containsKey("resource")) {
      resource = _json["resource"];
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (eventType != null) {
      _json["eventType"] = eventType;
    }
    if (failurePolicy != null) {
      _json["failurePolicy"] = (failurePolicy).toJson();
    }
    if (resource != null) {
      _json["resource"] = resource;
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// Describes the policy in case of function's execution failure.
/// If empty, then defaults to ignoring failures (i.e. not retrying them).
class FailurePolicy {
  /// If specified, then the function will be retried in case of a failure.
  Retry retry;

  FailurePolicy();

  FailurePolicy.fromJson(core.Map _json) {
    if (_json.containsKey("retry")) {
      retry = new Retry.fromJson(_json["retry"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (retry != null) {
      _json["retry"] = (retry).toJson();
    }
    return _json;
  }
}

/// Request of `GenerateDownloadUrl` method.
class GenerateDownloadUrlRequest {
  /// The optional version of function. If not set, default, current version
  /// is used.
  core.String versionId;

  GenerateDownloadUrlRequest();

  GenerateDownloadUrlRequest.fromJson(core.Map _json) {
    if (_json.containsKey("versionId")) {
      versionId = _json["versionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (versionId != null) {
      _json["versionId"] = versionId;
    }
    return _json;
  }
}

/// Response of `GenerateDownloadUrl` method.
class GenerateDownloadUrlResponse {
  /// The generated Google Cloud Storage signed URL that should be used for
  /// function source code download.
  core.String downloadUrl;

  GenerateDownloadUrlResponse();

  GenerateDownloadUrlResponse.fromJson(core.Map _json) {
    if (_json.containsKey("downloadUrl")) {
      downloadUrl = _json["downloadUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (downloadUrl != null) {
      _json["downloadUrl"] = downloadUrl;
    }
    return _json;
  }
}

/// Request of `GenerateSourceUploadUrl` method.
class GenerateUploadUrlRequest {
  GenerateUploadUrlRequest();

  GenerateUploadUrlRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Response of `GenerateSourceUploadUrl` method.
class GenerateUploadUrlResponse {
  /// The generated Google Cloud Storage signed URL that should be used for a
  /// function source code upload. The uploaded file should be a zip archive
  /// which contains a function.
  core.String uploadUrl;

  GenerateUploadUrlResponse();

  GenerateUploadUrlResponse.fromJson(core.Map _json) {
    if (_json.containsKey("uploadUrl")) {
      uploadUrl = _json["uploadUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uploadUrl != null) {
      _json["uploadUrl"] = uploadUrl;
    }
    return _json;
  }
}

/// Describes HttpsTrigger, could be used to connect web hooks to function.
class HttpsTrigger {
  /// Output only. The deployed url for the function.
  core.String url;

  HttpsTrigger();

  HttpsTrigger.fromJson(core.Map _json) {
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Response for the `ListFunctions` method.
class ListFunctionsResponse {
  /// The functions that match the request.
  core.List<CloudFunction> functions;

  /// If not empty, indicates that there may be more functions that match
  /// the request; this value should be passed in a new
  /// google.cloud.functions.v1.ListFunctionsRequest
  /// to get more functions.
  core.String nextPageToken;

  ListFunctionsResponse();

  ListFunctionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("functions")) {
      functions = _json["functions"]
          .map((value) => new CloudFunction.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (functions != null) {
      _json["functions"] = functions.map((value) => (value).toJson()).toList();
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
      locations = _json["locations"]
          .map((value) => new Location.fromJson(value))
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

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = _json["operations"]
          .map((value) => new Operation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
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
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should have the format of `operations/some/unique/name`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response = _json["response"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// Metadata describing an Operation
class OperationMetadataV1 {
  /// The original request that started the operation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> request;

  /// Target of the operation - for example
  /// projects/project-1/locations/region-1/functions/function-1
  core.String target;

  /// Type of operation.
  /// Possible string values are:
  /// - "OPERATION_UNSPECIFIED" : Unknown operation type.
  /// - "CREATE_FUNCTION" : Triggered by CreateFunction call
  /// - "UPDATE_FUNCTION" : Triggered by UpdateFunction call
  /// - "DELETE_FUNCTION" : Triggered by DeleteFunction call.
  core.String type;

  /// Version id of the function created or updated by an API call.
  /// This field is only pupulated for Create and Update operations.
  core.String versionId;

  OperationMetadataV1();

  OperationMetadataV1.fromJson(core.Map _json) {
    if (_json.containsKey("request")) {
      request = _json["request"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("versionId")) {
      versionId = _json["versionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (request != null) {
      _json["request"] = request;
    }
    if (target != null) {
      _json["target"] = target;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (versionId != null) {
      _json["versionId"] = versionId;
    }
    return _json;
  }
}

/// Metadata describing an Operation
class OperationMetadataV1Beta2 {
  /// The original request that started the operation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> request;

  /// Target of the operation - for example
  /// projects/project-1/locations/region-1/functions/function-1
  core.String target;

  /// Type of operation.
  /// Possible string values are:
  /// - "OPERATION_UNSPECIFIED" : Unknown operation type.
  /// - "CREATE_FUNCTION" : Triggered by CreateFunction call
  /// - "UPDATE_FUNCTION" : Triggered by UpdateFunction call
  /// - "DELETE_FUNCTION" : Triggered by DeleteFunction call.
  core.String type;

  /// Version id of the function created or updated by an API call.
  /// This field is only pupulated for Create and Update operations.
  core.String versionId;

  OperationMetadataV1Beta2();

  OperationMetadataV1Beta2.fromJson(core.Map _json) {
    if (_json.containsKey("request")) {
      request = _json["request"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("versionId")) {
      versionId = _json["versionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (request != null) {
      _json["request"] = request;
    }
    if (target != null) {
      _json["target"] = target;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (versionId != null) {
      _json["versionId"] = versionId;
    }
    return _json;
  }
}

/// Describes the retry policy in case of function's execution failure.
/// A function execution will be retried on any failure.
/// A failed execution will be retried up to 7 days with an exponential backoff
/// (capped at 10 seconds).
/// Retried execution is charged as any other execution.
class Retry {
  Retry();

  Retry.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Describes SourceRepository, used to represent parameters related to
/// source repository where a function is hosted.
class SourceRepository {
  /// Output only. The URL pointing to the hosted repository where the function
  /// were defined at the time of deployment. It always points to a specific
  /// commit in the format described above.
  core.String deployedUrl;

  /// The URL pointing to the hosted repository where the function is defined.
  /// There are supported Cloud Source Repository URLs in the following
  /// formats:
  ///
  /// To refer to a specific commit:
  /// `https://source.developers.google.com/projects / * /repos / * /revisions /
  /// * /paths / * `
  /// To refer to a moveable alias (branch):
  /// `https://source.developers.google.com/projects / * /repos / *
  /// /moveable-aliases / * /paths / * `
  /// In particular, to refer to HEAD use `master` moveable alias.
  /// To refer to a specific fixed alias (tag):
  /// `https://source.developers.google.com/projects / * /repos / *
  /// /fixed-aliases / * /paths / * `
  ///
  /// You may omit `paths / * ` if you want to use the main directory.
  core.String url;

  SourceRepository();

  SourceRepository.fromJson(core.Map _json) {
    if (_json.containsKey("deployedUrl")) {
      deployedUrl = _json["deployedUrl"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deployedUrl != null) {
      _json["deployedUrl"] = deployedUrl;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// [gRPC](https://github.com/grpc). The error model is designed to be:
///
/// - Simple to use and understand for most users
/// - Flexible enough to meet unexpected needs
///
/// # Overview
///
/// The `Status` message contains three pieces of data: error code, error
/// message,
/// and error details. The error code should be an enum value of
/// google.rpc.Code, but it may accept additional error codes if needed.  The
/// error message should be a developer-facing English message that helps
/// developers *understand* and *resolve* the error. If a localized user-facing
/// error message is needed, put the localized message in the error details or
/// localize it in the client. The optional error details may contain arbitrary
/// information about the error. There is a predefined set of error detail types
/// in the package `google.rpc` that can be used for common error conditions.
///
/// # Language mapping
///
/// The `Status` message is the logical representation of the error model, but
/// it
/// is not necessarily the actual wire format. When the `Status` message is
/// exposed in different client libraries and different wire protocols, it can
/// be
/// mapped differently. For example, it will likely be mapped to some exceptions
/// in Java, but more likely mapped to some error codes in C.
///
/// # Other uses
///
/// The error model and the `Status` message can be used in a variety of
/// environments, either with or without APIs, to provide a
/// consistent developer experience across different environments.
///
/// Example uses of this error model include:
///
/// - Partial errors. If a service needs to return partial errors to the client,
/// it may embed the `Status` in the normal response to indicate the partial
///     errors.
///
/// - Workflow errors. A typical workflow has multiple steps. Each step may
///     have a `Status` message for error reporting.
///
/// - Batch operations. If a client uses batch request and batch response, the
///     `Status` message should be used directly inside batch response, one for
///     each error sub-response.
///
/// - Asynchronous operations. If an API call embeds asynchronous operation
///     results in its response, the status of those operations should be
///     represented directly using the `Status` message.
///
/// - Logging. If some API errors are stored in logs, the message `Status` could
/// be used directly after any stripping needed for security/privacy reasons.
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
      details = _json["details"];
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
