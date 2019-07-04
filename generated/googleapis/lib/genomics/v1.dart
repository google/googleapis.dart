// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.genomics.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client genomics/v1';

/// Uploads, processes, queries, and searches Genomics data in the cloud.
class GenomicsApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View and manage Genomics data
  static const GenomicsScope = "https://www.googleapis.com/auth/genomics";

  final commons.ApiRequester _requester;

  OperationsResourceApi get operations => new OperationsResourceApi(_requester);

  GenomicsApi(http.Client client,
      {core.String rootUrl = "https://genomics.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. Clients may use Operations.GetOperation
  /// or Operations.ListOperations
  /// to check whether the cancellation succeeded or the operation completed
  /// despite cancellation.
  /// Authorization requires the following [Google
  /// IAM](https://cloud.google.com/iam) permission&#58;
  ///
  /// * `genomics.operations.cancel`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern "^operations/.+$".
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
  async.Future<Empty> cancel(CancelOperationRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation.
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  /// Authorization requires the following [Google
  /// IAM](https://cloud.google.com/iam) permission&#58;
  ///
  /// * `genomics.operations.get`
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^operations/.+$".
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
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request.
  /// Authorization requires the following [Google
  /// IAM](https://cloud.google.com/iam) permission&#58;
  ///
  /// * `genomics.operations.list`
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^operations$".
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The maximum number of results to return. The maximum value is
  /// 256.
  ///
  /// [filter] - A string for filtering Operations.
  /// In v2alpha1, the following filter fields are supported&#58;
  ///
  /// * createTime&#58; The time this job was created
  /// * events&#58; The set of event (names) that have occurred while running
  ///   the pipeline.  The &#58; operator can be used to determine if a
  ///   particular event has occurred.
  /// * error&#58; If the pipeline is running, this value is NULL.  Once the
  ///   pipeline finishes, the value is the standard Google error code.
  /// * labels.key or labels."key with space" where key is a label key.
  /// * done&#58; If the pipeline is running, this value is false. Once the
  ///   pipeline finishes, the value is true.
  ///
  /// In v1 and v1alpha2, the following filter fields are supported&#58;
  ///
  /// * projectId&#58; Required. Corresponds to
  ///   OperationMetadata.projectId.
  /// * createTime&#58; The time this job was created, in seconds from the
  /// [epoch](http://en.wikipedia.org/wiki/Unix_time). Can use `>=` and/or `<=`
  ///   operators.
  /// * status&#58; Can be `RUNNING`, `SUCCESS`, `FAILURE`, or `CANCELED`. Only
  ///   one status may be specified.
  /// * labels.key where key is a label key.
  ///
  /// Examples&#58;
  ///
  /// * `projectId = my-project AND createTime >= 1432140000`
  /// * `projectId = my-project AND createTime >= 1432140000 AND createTime <=
  /// 1432150000 AND status = RUNNING`
  /// * `projectId = my-project AND labels.color = *`
  /// * `projectId = my-project AND labels.color = red`
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
  async.Future<ListOperationsResponse> list(core.String name,
      {core.String pageToken,
      core.int pageSize,
      core.String filter,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Describes a Compute Engine resource that is being managed by a running
/// pipeline.
class ComputeEngine {
  /// The names of the disks that were created for this pipeline.
  core.List<core.String> diskNames;

  /// The instance on which the operation is running.
  core.String instanceName;

  /// The machine type of the instance.
  core.String machineType;

  /// The availability zone in which the instance resides.
  core.String zone;

  ComputeEngine();

  ComputeEngine.fromJson(core.Map _json) {
    if (_json.containsKey("diskNames")) {
      diskNames = (_json["diskNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("instanceName")) {
      instanceName = _json["instanceName"];
    }
    if (_json.containsKey("machineType")) {
      machineType = _json["machineType"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (diskNames != null) {
      _json["diskNames"] = diskNames;
    }
    if (instanceName != null) {
      _json["instanceName"] = instanceName;
    }
    if (machineType != null) {
      _json["machineType"] = machineType;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// An event generated when a container is forcibly terminated by the
/// worker. Currently, this only occurs when the container outlives the
/// timeout specified by the user.
class ContainerKilledEvent {
  /// The numeric ID of the action that started the container.
  core.int actionId;

  ContainerKilledEvent();

  ContainerKilledEvent.fromJson(core.Map _json) {
    if (_json.containsKey("actionId")) {
      actionId = _json["actionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actionId != null) {
      _json["actionId"] = actionId;
    }
    return _json;
  }
}

/// An event generated when a container starts.
class ContainerStartedEvent {
  /// The numeric ID of the action that started this container.
  core.int actionId;

  /// The public IP address that can be used to connect to the container. This
  /// field is only populated when at least one port mapping is present. If the
  /// instance was created with a private address, this field will be empty even
  /// if port mappings exist.
  core.String ipAddress;

  /// The container-to-host port mappings installed for this container. This
  /// set will contain any ports exposed using the `PUBLISH_EXPOSED_PORTS` flag
  /// as well as any specified in the `Action` definition.
  core.Map<core.String, core.int> portMappings;

  ContainerStartedEvent();

  ContainerStartedEvent.fromJson(core.Map _json) {
    if (_json.containsKey("actionId")) {
      actionId = _json["actionId"];
    }
    if (_json.containsKey("ipAddress")) {
      ipAddress = _json["ipAddress"];
    }
    if (_json.containsKey("portMappings")) {
      portMappings =
          (_json["portMappings"] as core.Map).cast<core.String, core.int>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actionId != null) {
      _json["actionId"] = actionId;
    }
    if (ipAddress != null) {
      _json["ipAddress"] = ipAddress;
    }
    if (portMappings != null) {
      _json["portMappings"] = portMappings;
    }
    return _json;
  }
}

/// An event generated when a container exits.
class ContainerStoppedEvent {
  /// The numeric ID of the action that started this container.
  core.int actionId;

  /// The exit status of the container.
  core.int exitStatus;

  /// The tail end of any content written to standard error by the container.
  /// If the content emits large amounts of debugging noise or contains
  /// sensitive information, you can prevent the content from being printed by
  /// setting the `DISABLE_STANDARD_ERROR_CAPTURE` flag.
  ///
  /// Note that only a small amount of the end of the stream is captured here.
  /// The entire stream is stored in the `/google/logs` directory mounted into
  /// each action, and can be copied off the machine as described elsewhere.
  core.String stderr;

  ContainerStoppedEvent();

  ContainerStoppedEvent.fromJson(core.Map _json) {
    if (_json.containsKey("actionId")) {
      actionId = _json["actionId"];
    }
    if (_json.containsKey("exitStatus")) {
      exitStatus = _json["exitStatus"];
    }
    if (_json.containsKey("stderr")) {
      stderr = _json["stderr"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actionId != null) {
      _json["actionId"] = actionId;
    }
    if (exitStatus != null) {
      _json["exitStatus"] = exitStatus;
    }
    if (stderr != null) {
      _json["stderr"] = stderr;
    }
    return _json;
  }
}

/// An event generated whenever a resource limitation or transient error
/// delays execution of a pipeline that was otherwise ready to run.
class DelayedEvent {
  /// A textual description of the cause of the delay. The string can change
  /// without notice because it is often generated by another service (such as
  /// Compute Engine).
  core.String cause;

  /// If the delay was caused by a resource shortage, this field lists the
  /// Compute Engine metrics that are preventing this operation from running
  /// (for example, `CPUS` or `INSTANCES`). If the particular metric is not
  /// known, a single `UNKNOWN` metric will be present.
  core.List<core.String> metrics;

  DelayedEvent();

  DelayedEvent.fromJson(core.Map _json) {
    if (_json.containsKey("cause")) {
      cause = _json["cause"];
    }
    if (_json.containsKey("metrics")) {
      metrics = (_json["metrics"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cause != null) {
      _json["cause"] = cause;
    }
    if (metrics != null) {
      _json["metrics"] = metrics;
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

/// Carries information about events that occur during pipeline execution.
class Event {
  /// A human-readable description of the event. Note that these strings can
  /// change at any time without notice. Any application logic must use the
  /// information in the `details` field.
  core.String description;

  /// Machine-readable details about the event.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> details;

  /// The time at which the event occurred.
  core.String timestamp;

  Event();

  Event.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    return _json;
  }
}

/// An event generated when the execution of a pipeline has failed. Note
/// that other events can continue to occur after this event.
class FailedEvent {
  /// The human-readable description of the cause of the failure.
  core.String cause;

  /// The Google standard error code that best describes this failure.
  /// Possible string values are:
  /// - "OK" : Not an error; returned on success
  ///
  /// HTTP Mapping: 200 OK
  /// - "CANCELLED" : The operation was cancelled, typically by the caller.
  ///
  /// HTTP Mapping: 499 Client Closed Request
  /// - "UNKNOWN" : Unknown error.  For example, this error may be returned when
  /// a `Status` value received from another address space belongs to
  /// an error space that is not known in this address space.  Also
  /// errors raised by APIs that do not return enough error information
  /// may be converted to this error.
  ///
  /// HTTP Mapping: 500 Internal Server Error
  /// - "INVALID_ARGUMENT" : The client specified an invalid argument.  Note
  /// that this differs
  /// from `FAILED_PRECONDITION`.  `INVALID_ARGUMENT` indicates arguments
  /// that are problematic regardless of the state of the system
  /// (e.g., a malformed file name).
  ///
  /// HTTP Mapping: 400 Bad Request
  /// - "DEADLINE_EXCEEDED" : The deadline expired before the operation could
  /// complete. For operations
  /// that change the state of the system, this error may be returned
  /// even if the operation has completed successfully.  For example, a
  /// successful response from a server could have been delayed long
  /// enough for the deadline to expire.
  ///
  /// HTTP Mapping: 504 Gateway Timeout
  /// - "NOT_FOUND" : Some requested entity (e.g., file or directory) was not
  /// found.
  ///
  /// Note to server developers: if a request is denied for an entire class
  /// of users, such as gradual feature rollout or undocumented whitelist,
  /// `NOT_FOUND` may be used. If a request is denied for some users within
  /// a class of users, such as user-based access control, `PERMISSION_DENIED`
  /// must be used.
  ///
  /// HTTP Mapping: 404 Not Found
  /// - "ALREADY_EXISTS" : The entity that a client attempted to create (e.g.,
  /// file or directory)
  /// already exists.
  ///
  /// HTTP Mapping: 409 Conflict
  /// - "PERMISSION_DENIED" : The caller does not have permission to execute the
  /// specified
  /// operation. `PERMISSION_DENIED` must not be used for rejections
  /// caused by exhausting some resource (use `RESOURCE_EXHAUSTED`
  /// instead for those errors). `PERMISSION_DENIED` must not be
  /// used if the caller can not be identified (use `UNAUTHENTICATED`
  /// instead for those errors). This error code does not imply the
  /// request is valid or the requested entity exists or satisfies
  /// other pre-conditions.
  ///
  /// HTTP Mapping: 403 Forbidden
  /// - "UNAUTHENTICATED" : The request does not have valid authentication
  /// credentials for the
  /// operation.
  ///
  /// HTTP Mapping: 401 Unauthorized
  /// - "RESOURCE_EXHAUSTED" : Some resource has been exhausted, perhaps a
  /// per-user quota, or
  /// perhaps the entire file system is out of space.
  ///
  /// HTTP Mapping: 429 Too Many Requests
  /// - "FAILED_PRECONDITION" : The operation was rejected because the system is
  /// not in a state
  /// required for the operation's execution.  For example, the directory
  /// to be deleted is non-empty, an rmdir operation is applied to
  /// a non-directory, etc.
  ///
  /// Service implementors can use the following guidelines to decide
  /// between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`:
  ///  (a) Use `UNAVAILABLE` if the client can retry just the failing call.
  ///  (b) Use `ABORTED` if the client should retry at a higher level
  ///      (e.g., when a client-specified test-and-set fails, indicating the
  ///      client should restart a read-modify-write sequence).
  ///  (c) Use `FAILED_PRECONDITION` if the client should not retry until
  ///      the system state has been explicitly fixed.  E.g., if an "rmdir"
  ///      fails because the directory is non-empty, `FAILED_PRECONDITION`
  ///      should be returned since the client should not retry unless
  ///      the files are deleted from the directory.
  ///
  /// HTTP Mapping: 400 Bad Request
  /// - "ABORTED" : The operation was aborted, typically due to a concurrency
  /// issue such as
  /// a sequencer check failure or transaction abort.
  ///
  /// See the guidelines above for deciding between `FAILED_PRECONDITION`,
  /// `ABORTED`, and `UNAVAILABLE`.
  ///
  /// HTTP Mapping: 409 Conflict
  /// - "OUT_OF_RANGE" : The operation was attempted past the valid range.
  /// E.g., seeking or
  /// reading past end-of-file.
  ///
  /// Unlike `INVALID_ARGUMENT`, this error indicates a problem that may
  /// be fixed if the system state changes. For example, a 32-bit file
  /// system will generate `INVALID_ARGUMENT` if asked to read at an
  /// offset that is not in the range [0,2^32-1], but it will generate
  /// `OUT_OF_RANGE` if asked to read from an offset past the current
  /// file size.
  ///
  /// There is a fair bit of overlap between `FAILED_PRECONDITION` and
  /// `OUT_OF_RANGE`.  We recommend using `OUT_OF_RANGE` (the more specific
  /// error) when it applies so that callers who are iterating through
  /// a space can easily look for an `OUT_OF_RANGE` error to detect when
  /// they are done.
  ///
  /// HTTP Mapping: 400 Bad Request
  /// - "UNIMPLEMENTED" : The operation is not implemented or is not
  /// supported/enabled in this
  /// service.
  ///
  /// HTTP Mapping: 501 Not Implemented
  /// - "INTERNAL" : Internal errors.  This means that some invariants expected
  /// by the
  /// underlying system have been broken.  This error code is reserved
  /// for serious errors.
  ///
  /// HTTP Mapping: 500 Internal Server Error
  /// - "UNAVAILABLE" : The service is currently unavailable.  This is most
  /// likely a
  /// transient condition, which can be corrected by retrying with
  /// a backoff. Note that it is not always safe to retry
  /// non-idempotent operations.
  ///
  /// See the guidelines above for deciding between `FAILED_PRECONDITION`,
  /// `ABORTED`, and `UNAVAILABLE`.
  ///
  /// HTTP Mapping: 503 Service Unavailable
  /// - "DATA_LOSS" : Unrecoverable data loss or corruption.
  ///
  /// HTTP Mapping: 500 Internal Server Error
  core.String code;

  FailedEvent();

  FailedEvent.fromJson(core.Map _json) {
    if (_json.containsKey("cause")) {
      cause = _json["cause"];
    }
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cause != null) {
      _json["cause"] = cause;
    }
    if (code != null) {
      _json["code"] = code;
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
      operations = (_json["operations"] as core.List)
          .map<Operation>((value) => new Operation.fromJson(value))
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

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// An OperationMetadata or Metadata object. This will always be returned with
  /// the Operation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it. For example&#58;
  /// `operations/CJHU7Oi_ChDrveSpBRjfuL-qzoWAgEw`
  core.String name;

  /// An Empty object.
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
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
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

/// An event that occurred during an Operation.
class OperationEvent {
  /// Required description of event.
  core.String description;

  /// Optional time of when event finished. An event can have a start time and
  /// no
  /// finish time. If an event has a finish time, there must be a start time.
  core.String endTime;

  /// Optional time of when event started.
  core.String startTime;

  OperationEvent();

  OperationEvent.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/// Metadata describing an Operation.
class OperationMetadata {
  /// This field is deprecated. Use `labels` instead. Optionally provided by the
  /// caller when submitting the request that creates the operation.
  core.String clientId;

  /// The time at which the job was submitted to the Genomics service.
  core.String createTime;

  /// The time at which the job stopped running.
  core.String endTime;

  /// Optional event messages that were generated during the job's execution.
  /// This also contains any warnings that were generated during import
  /// or export.
  core.List<OperationEvent> events;

  /// Optionally provided by the caller when submitting the request that creates
  /// the operation.
  core.Map<core.String, core.String> labels;

  /// The Google Cloud Project in which the job is scoped.
  core.String projectId;

  /// The original request that started the operation. Note that this will be in
  /// current version of the API. If the operation was started with v1beta2 API
  /// and a GetOperation is performed on v1 API, a v1 request will be returned.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> request;

  /// Runtime metadata on this Operation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> runtimeMetadata;

  /// The time at which the job began to run.
  core.String startTime;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("clientId")) {
      clientId = _json["clientId"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("events")) {
      events = (_json["events"] as core.List)
          .map<OperationEvent>((value) => new OperationEvent.fromJson(value))
          .toList();
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("request")) {
      request = (_json["request"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("runtimeMetadata")) {
      runtimeMetadata = (_json["runtimeMetadata"] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientId != null) {
      _json["clientId"] = clientId;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (events != null) {
      _json["events"] = events.map((value) => (value).toJson()).toList();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (request != null) {
      _json["request"] = request;
    }
    if (runtimeMetadata != null) {
      _json["runtimeMetadata"] = runtimeMetadata;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/// An event generated when the worker starts pulling an image.
class PullStartedEvent {
  /// The URI of the image that was pulled.
  core.String imageUri;

  PullStartedEvent();

  PullStartedEvent.fromJson(core.Map _json) {
    if (_json.containsKey("imageUri")) {
      imageUri = _json["imageUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (imageUri != null) {
      _json["imageUri"] = imageUri;
    }
    return _json;
  }
}

/// An event generated when the worker stops pulling an image.
class PullStoppedEvent {
  /// The URI of the image that was pulled.
  core.String imageUri;

  PullStoppedEvent();

  PullStoppedEvent.fromJson(core.Map _json) {
    if (_json.containsKey("imageUri")) {
      imageUri = _json["imageUri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (imageUri != null) {
      _json["imageUri"] = imageUri;
    }
    return _json;
  }
}

/// The response to the RunPipeline method, returned in the operation's result
/// field on success.
class RunPipelineResponse {
  RunPipelineResponse();

  RunPipelineResponse.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Runtime metadata that will be populated in the
/// runtimeMetadata
/// field of the Operation associated with a RunPipeline execution.
class RuntimeMetadata {
  /// Execution information specific to Google Compute Engine.
  ComputeEngine computeEngine;

  RuntimeMetadata();

  RuntimeMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("computeEngine")) {
      computeEngine = new ComputeEngine.fromJson(_json["computeEngine"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (computeEngine != null) {
      _json["computeEngine"] = (computeEngine).toJson();
    }
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

/// An event generated when the execution of a container results in a
/// non-zero exit status that was not otherwise ignored. Execution will
/// continue, but only actions that are flagged as `ALWAYS_RUN` will be
/// executed. Other actions will be skipped.
class UnexpectedExitStatusEvent {
  /// The numeric ID of the action that started the container.
  core.int actionId;

  /// The exit status of the container.
  core.int exitStatus;

  UnexpectedExitStatusEvent();

  UnexpectedExitStatusEvent.fromJson(core.Map _json) {
    if (_json.containsKey("actionId")) {
      actionId = _json["actionId"];
    }
    if (_json.containsKey("exitStatus")) {
      exitStatus = _json["exitStatus"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actionId != null) {
      _json["actionId"] = actionId;
    }
    if (exitStatus != null) {
      _json["exitStatus"] = exitStatus;
    }
    return _json;
  }
}

/// An event generated after a worker VM has been assigned to run the
/// pipeline.
class WorkerAssignedEvent {
  /// The worker's instance name.
  core.String instance;

  /// The zone the worker is running in.
  core.String zone;

  WorkerAssignedEvent();

  WorkerAssignedEvent.fromJson(core.Map _json) {
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// An event generated when the worker VM that was assigned to the pipeline
/// has been released (deleted).
class WorkerReleasedEvent {
  /// The worker's instance name.
  core.String instance;

  /// The zone the worker was running in.
  core.String zone;

  WorkerReleasedEvent();

  WorkerReleasedEvent.fromJson(core.Map _json) {
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}
