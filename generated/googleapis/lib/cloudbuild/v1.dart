// This is a generated file (see the discoveryapis_generator project).

library googleapis.cloudbuild.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudbuild/v1';

/** Builds container images in the cloud. */
class CloudbuildApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";


  final commons.ApiRequester _requester;

  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudbuildApi(http.Client client, {core.String rootUrl: "https://cloudbuild.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets the latest state of a long-running operation.  Clients can use this
   * method to poll the operation result at intervals as recommended by the API
   * service.
   *
   * Request parameters:
   *
   * [name] - The name of the operation resource.
   * Value must have pattern "^operations/.*$".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Lists operations that match the specified filter in the request. If the
   * server doesn't support this method, it returns `UNIMPLEMENTED`.
   *
   * NOTE: the `name` binding below allows API services to override the binding
   * to use different resource name schemes, such as `users / * /operations`.
   *
   * Request parameters:
   *
   * [name] - The name of the operation collection.
   * Value must have pattern "^operations$".
   *
   * [pageSize] - The standard list page size.
   *
   * [filter] - The standard list filter.
   *
   * [pageToken] - The standard list page token.
   *
   * Completes with a [ListOperationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListOperationsResponse> list(core.String name, {core.int pageSize, core.String filter, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
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

  ProjectsBuildsResourceApi get builds => new ProjectsBuildsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsBuildsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsBuildsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Cancels a requested build in progress.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - ID of the project.
   *
   * [id] - ID of the build.
   *
   * Completes with a [Build].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Build> cancel(CancelBuildRequest request, core.String projectId, core.String id) {
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
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/builds/' + commons.Escaper.ecapeVariable('$id') + ':cancel';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Build.fromJson(data));
  }

  /**
   * Starts a build with the specified configuration.
   *
   * The long-running Operation returned by this method will include the ID of
   * the build, which can be passed to GetBuild to determine its status (e.g.,
   * success or failure).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - ID of the project.
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> create(Build request, core.String projectId) {
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

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/builds';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Returns information about a previously requested build.
   *
   * The Build that is returned includes its status (e.g., success or failure,
   * or in-progress), and timing information.
   *
   * Request parameters:
   *
   * [projectId] - ID of the project.
   *
   * [id] - ID of the build.
   *
   * Completes with a [Build].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Build> get(core.String projectId, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/builds/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Build.fromJson(data));
  }

  /**
   * Lists previously requested builds.
   *
   * Previously requested builds may still be in-progress, or may have finished
   * successfully or unsuccessfully.
   *
   * Request parameters:
   *
   * [projectId] - ID of the project.
   *
   * [pageSize] - Number of results to return in the list.
   *
   * [pageToken] - Token to provide to skip to a particular spot in the list.
   *
   * Completes with a [ListBuildsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListBuildsResponse> list(core.String projectId, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
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

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/builds';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListBuildsResponse.fromJson(data));
  }

}



/**
 * A build resource in the Container Builder API.
 *
 * At a high level, a Build describes where to find source code, how to build
 * it (for example, the builder image to run on the source), and what tag to
 * apply to the built image when it is pushed to Google Container Registry.
 */
class Build {
  /**
   * Time at which the build was created.
   * @OutputOnly
   */
  core.String createTime;
  /**
   * Time at which execution of the build was finished.
   * @OutputOnly
   */
  core.String finishTime;
  /**
   * Unique identifier of the build.
   * @OutputOnly
   */
  core.String id;
  /**
   * List of images expected to be built and pushed to Google Container
   * Registry. If an image is listed here and the image is not produced by
   * one of the build steps, the build will fail. Any images present when
   * the build steps are complete will be pushed to Container Registry.
   */
  core.List<core.String> images;
  /**
   * Google Cloud Storage bucket where logs should be written (see
   * [Bucket Name
   * Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
   * Logs file names will be of the format `${logs_bucket}/log-${build_id}.txt`.
   */
  core.String logsBucket;
  /** Special options for this build. */
  BuildOptions options;
  /**
   * ID of the project.
   * @OutputOnly.
   */
  core.String projectId;
  /**
   * Results of the build.
   * @OutputOnly
   */
  Results results;
  /** Describes where to find the source files to build. */
  Source source;
  /**
   * A permanent fixed identifier for source.
   * @OutputOnly
   */
  SourceProvenance sourceProvenance;
  /**
   * Time at which execution of the build was started.
   * @OutputOnly
   */
  core.String startTime;
  /**
   * Status of the build.
   * @OutputOnly
   * Possible string values are:
   * - "STATUS_UNKNOWN" : Status of the build is unknown.
   * - "QUEUING" : Build has been received and is being queued.
   * - "QUEUED" : Build is queued; work has not yet begun.
   * - "WORKING" : Build is being executed.
   * - "SUCCESS" : Build finished successfully.
   * - "FAILURE" : Build failed to complete successfully.
   * - "INTERNAL_ERROR" : Build failed due to an internal cause.
   * - "TIMEOUT" : Build took longer than was allowed.
   * - "CANCELLED" : Build was canceled by a user.
   * next_id = 9
   */
  core.String status;
  /**
   * Customer-readable message about the current status.
   * @OutputOnly
   */
  core.String statusDetail;
  /** Describes the operations to be performed on the workspace. */
  core.List<BuildStep> steps;
  /**
   * Amount of time that this build should be allowed to run, to second
   * granularity. If this amount of time elapses, work on the build will cease
   * and the build status will be TIMEOUT.
   *
   * Default time is ten minutes.
   */
  core.String timeout;

  Build();

  Build.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("finishTime")) {
      finishTime = _json["finishTime"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("images")) {
      images = _json["images"];
    }
    if (_json.containsKey("logsBucket")) {
      logsBucket = _json["logsBucket"];
    }
    if (_json.containsKey("options")) {
      options = new BuildOptions.fromJson(_json["options"]);
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("results")) {
      results = new Results.fromJson(_json["results"]);
    }
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
    if (_json.containsKey("sourceProvenance")) {
      sourceProvenance = new SourceProvenance.fromJson(_json["sourceProvenance"]);
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("statusDetail")) {
      statusDetail = _json["statusDetail"];
    }
    if (_json.containsKey("steps")) {
      steps = _json["steps"].map((value) => new BuildStep.fromJson(value)).toList();
    }
    if (_json.containsKey("timeout")) {
      timeout = _json["timeout"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (finishTime != null) {
      _json["finishTime"] = finishTime;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (images != null) {
      _json["images"] = images;
    }
    if (logsBucket != null) {
      _json["logsBucket"] = logsBucket;
    }
    if (options != null) {
      _json["options"] = (options).toJson();
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (results != null) {
      _json["results"] = (results).toJson();
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    if (sourceProvenance != null) {
      _json["sourceProvenance"] = (sourceProvenance).toJson();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (statusDetail != null) {
      _json["statusDetail"] = statusDetail;
    }
    if (steps != null) {
      _json["steps"] = steps.map((value) => (value).toJson()).toList();
    }
    if (timeout != null) {
      _json["timeout"] = timeout;
    }
    return _json;
  }
}

/** Metadata for build operations. */
class BuildOperationMetadata {
  /** The build that the operation is tracking. */
  Build build;

  BuildOperationMetadata();

  BuildOperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("build")) {
      build = new Build.fromJson(_json["build"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (build != null) {
      _json["build"] = (build).toJson();
    }
    return _json;
  }
}

/** Optional arguments to enable specific features of builds. */
class BuildOptions {
  /**
   * Options for a verifiable build with details uploaded to the Analysis API.
   * Possible string values are:
   * - "NOT_VERIFIED" : Not a verifiable build. (default)
   * - "VERIFIED" : Verified build.
   */
  core.String requestedVerifyOption;
  /** Requested hash for SourceProvenance. */
  core.List<core.String> sourceProvenanceHash;

  BuildOptions();

  BuildOptions.fromJson(core.Map _json) {
    if (_json.containsKey("requestedVerifyOption")) {
      requestedVerifyOption = _json["requestedVerifyOption"];
    }
    if (_json.containsKey("sourceProvenanceHash")) {
      sourceProvenanceHash = _json["sourceProvenanceHash"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (requestedVerifyOption != null) {
      _json["requestedVerifyOption"] = requestedVerifyOption;
    }
    if (sourceProvenanceHash != null) {
      _json["sourceProvenanceHash"] = sourceProvenanceHash;
    }
    return _json;
  }
}

/** BuildStep describes a step to perform in the build pipeline. */
class BuildStep {
  /** Command-line arguments to use when running this step's container. */
  core.List<core.String> args;
  /**
   * Working directory (relative to project source root) to use when running
   * this operation's container.
   */
  core.String dir;
  /** Additional environment variables to set for this step's container. */
  core.List<core.String> env;
  /**
   * Name of the container image to use for creating this stage in the
   * pipeline, as presented to `docker pull`.
   */
  core.String name;

  BuildStep();

  BuildStep.fromJson(core.Map _json) {
    if (_json.containsKey("args")) {
      args = _json["args"];
    }
    if (_json.containsKey("dir")) {
      dir = _json["dir"];
    }
    if (_json.containsKey("env")) {
      env = _json["env"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (args != null) {
      _json["args"] = args;
    }
    if (dir != null) {
      _json["dir"] = dir;
    }
    if (env != null) {
      _json["env"] = env;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** BuiltImage describes an image built by the pipeline. */
class BuiltImage {
  /** Docker Registry 2.0 digest. */
  core.String digest;
  /**
   * Name used to push the container image to Google Container Registry, as
   * presented to `docker push`.
   */
  core.String name;

  BuiltImage();

  BuiltImage.fromJson(core.Map _json) {
    if (_json.containsKey("digest")) {
      digest = _json["digest"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (digest != null) {
      _json["digest"] = digest;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** Request to cancel an ongoing build. */
class CancelBuildRequest {

  CancelBuildRequest();

  CancelBuildRequest.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/**
 * Container message for hashes of byte content of files, used in
 * SourceProvenance messages to verify integrity of source input to the build.
 */
class FileHashes {
  /** Collection of file hashes. */
  core.List<Hash> fileHash;

  FileHashes();

  FileHashes.fromJson(core.Map _json) {
    if (_json.containsKey("fileHash")) {
      fileHash = _json["fileHash"].map((value) => new Hash.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fileHash != null) {
      _json["fileHash"] = fileHash.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Container message for hash values. */
class Hash {
  /**
   * The type of hash that was performed.
   * Possible string values are:
   * - "NONE" : No hash requested.
   * - "SHA256" : Use a sha256 hash.
   */
  core.String type;
  /** The hash value. */
  core.String value;
  core.List<core.int> get valueAsBytes {
    return convert.BASE64.decode(value);
  }

  void set valueAsBytes(core.List<core.int> _bytes) {
    value = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  Hash();

  Hash.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/** Response including listed builds. */
class ListBuildsResponse {
  /** Builds will be sorted by create_time, descending. */
  core.List<Build> builds;
  /** Token to receive the next page of results. */
  core.String nextPageToken;

  ListBuildsResponse();

  ListBuildsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("builds")) {
      builds = _json["builds"].map((value) => new Build.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (builds != null) {
      _json["builds"] = builds.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** The response message for Operations.ListOperations. */
class ListOperationsResponse {
  /** The standard List next-page token. */
  core.String nextPageToken;
  /** A list of operations that matches the specified filter in the request. */
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = _json["operations"].map((value) => new Operation.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] = operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * This resource represents a long-running operation that is the result of a
 * network API call.
 */
class Operation {
  /**
   * If the value is `false`, it means the operation is still in progress.
   * If true, the operation is completed, and either `error` or `response` is
   * available.
   */
  core.bool done;
  /** The error result of the operation in case of failure. */
  Status error;
  /**
   * Service-specific metadata associated with the operation.  It typically
   * contains progress information and common metadata such as create time.
   * Some services might not provide such metadata.  Any method that returns a
   * long-running operation should document the metadata type, if any.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> metadata;
  /**
   * The server-assigned name, which is only unique within the same service that
   * originally returns it. If you use the default HTTP mapping, the
   * `name` should have the format of `operations/some/unique/name`.
   */
  core.String name;
  /**
   * The normal response of the operation in case of success.  If the original
   * method returns no data on success, such as `Delete`, the response is
   * `google.protobuf.Empty`.  If the original method is standard
   * `Get`/`Create`/`Update`, the response should be the resource.  For other
   * methods, the response should have the type `XxxResponse`, where `Xxx`
   * is the original method name.  For example, if the original method name
   * is `TakeSnapshot()`, the inferred response type is
   * `TakeSnapshotResponse`.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
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

  core.Map toJson() {
    var _json = new core.Map();
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

/** Results describes the artifacts created by the build pipeline. */
class Results {
  /** Images that were built as a part of the build. */
  core.List<BuiltImage> images;

  Results();

  Results.fromJson(core.Map _json) {
    if (_json.containsKey("images")) {
      images = _json["images"].map((value) => new BuiltImage.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (images != null) {
      _json["images"] = images.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * Source describes the location of the source in a supported storage
 * service.
 */
class Source {
  /**
   * If provided, get the source from this location in in Google Cloud
   * Storage.
   */
  StorageSource storageSource;

  Source();

  Source.fromJson(core.Map _json) {
    if (_json.containsKey("storageSource")) {
      storageSource = new StorageSource.fromJson(_json["storageSource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (storageSource != null) {
      _json["storageSource"] = (storageSource).toJson();
    }
    return _json;
  }
}

/**
 * Provenance of the source. Ways to find the original source, or verify that
 * some source was used for this build.
 */
class SourceProvenance {
  /**
   * Hash(es) of the build source, which can be used to verify that the original
   * source integrity was maintained in the build. Note that FileHashes will
   * only be populated if BuildOptions has requested a SourceProvenanceHash.
   *
   * The keys to this map are file paths used as build source and the values
   * contain the hash values for those files.
   *
   * If the build source came in a single package such as a gzipped tarfile
   * (.tar.gz), the FileHash will be for the single path to that file.
   * @OutputOnly
   */
  core.Map<core.String, FileHashes> fileHashes;

  SourceProvenance();

  SourceProvenance.fromJson(core.Map _json) {
    if (_json.containsKey("fileHashes")) {
      fileHashes = commons.mapMap(_json["fileHashes"], (item) => new FileHashes.fromJson(item));
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fileHashes != null) {
      _json["fileHashes"] = commons.mapMap(fileHashes, (item) => (item).toJson());
    }
    return _json;
  }
}

/**
 * The `Status` type defines a logical error model that is suitable for
 * different
 * programming environments, including REST APIs and RPC APIs. It is used by
 * [gRPC](https://github.com/grpc). The error model is designed to be:
 *
 * - Simple to use and understand for most users
 * - Flexible enough to meet unexpected needs
 *
 * # Overview
 *
 * The `Status` message contains three pieces of data: error code, error
 * message,
 * and error details. The error code should be an enum value of
 * google.rpc.Code, but it may accept additional error codes if needed.  The
 * error message should be a developer-facing English message that helps
 * developers *understand* and *resolve* the error. If a localized user-facing
 * error message is needed, put the localized message in the error details or
 * localize it in the client. The optional error details may contain arbitrary
 * information about the error. There is a predefined set of error detail types
 * in the package `google.rpc` which can be used for common error conditions.
 *
 * # Language mapping
 *
 * The `Status` message is the logical representation of the error model, but it
 * is not necessarily the actual wire format. When the `Status` message is
 * exposed in different client libraries and different wire protocols, it can be
 * mapped differently. For example, it will likely be mapped to some exceptions
 * in Java, but more likely mapped to some error codes in C.
 *
 * # Other uses
 *
 * The error model and the `Status` message can be used in a variety of
 * environments, either with or without APIs, to provide a
 * consistent developer experience across different environments.
 *
 * Example uses of this error model include:
 *
 * - Partial errors. If a service needs to return partial errors to the client,
 *     it may embed the `Status` in the normal response to indicate the partial
 *     errors.
 *
 * - Workflow errors. A typical workflow has multiple steps. Each step may
 *     have a `Status` message for error reporting purpose.
 *
 * - Batch operations. If a client uses batch request and batch response, the
 *     `Status` message should be used directly inside batch response, one for
 *     each error sub-response.
 *
 * - Asynchronous operations. If an API call embeds asynchronous operation
 *     results in its response, the status of those operations should be
 *     represented directly using the `Status` message.
 *
 * - Logging. If some API errors are stored in logs, the message `Status` could
 * be used directly after any stripping needed for security/privacy reasons.
 */
class Status {
  /** The status code, which should be an enum value of google.rpc.Code. */
  core.int code;
  /**
   * A list of messages that carry the error details.  There will be a
   * common set of message types for APIs to use.
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
 * StorageSource describes the location of the source in an archive file in
 * Google Cloud Storage.
 */
class StorageSource {
  /**
   * Google Cloud Storage bucket containing source (see
   * [Bucket Name
   * Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)).
   */
  core.String bucket;
  /**
   * Google Cloud Storage generation for the object. If the generation is
   * omitted, the latest generation will be used.
   */
  core.String generation;
  /**
   * Google Cloud Storage object containing source.
   *
   * This object must be a gzipped archive file (.tar.gz) containing source to
   * build.
   */
  core.String object;

  StorageSource();

  StorageSource.fromJson(core.Map _json) {
    if (_json.containsKey("bucket")) {
      bucket = _json["bucket"];
    }
    if (_json.containsKey("generation")) {
      generation = _json["generation"];
    }
    if (_json.containsKey("object")) {
      object = _json["object"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (bucket != null) {
      _json["bucket"] = bucket;
    }
    if (generation != null) {
      _json["generation"] = generation;
    }
    if (object != null) {
      _json["object"] = object;
    }
    return _json;
  }
}
