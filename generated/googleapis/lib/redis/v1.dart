// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.redis.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client redis/v1';

/// Creates and manages Redis instances on the Google Cloud Platform.
class RedisApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  RedisApi(http.Client client,
      {core.String rootUrl = "https://redis.googleapis.com/",
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

  ProjectsLocationsInstancesResourceApi get instances =>
      new ProjectsLocationsInstancesResourceApi(_requester);
  ProjectsLocationsOperationsResourceApi get operations =>
      new ProjectsLocationsOperationsResourceApi(_requester);

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

class ProjectsLocationsInstancesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Redis instance based on the specified tier and memory size.
  ///
  /// By default, the instance is accessible from the project's
  /// [default network](/compute/docs/networks-and-firewalls#networks).
  ///
  /// The creation is executed asynchronously and callers may check the returned
  /// operation to track its progress. Once the operation is completed the Redis
  /// instance will be fully functional. Completed longrunning.Operation will
  /// contain the new instance object in the response field.
  ///
  /// The returned operation is automatically deleted after a few hours, so
  /// there
  /// is no need to call DeleteOperation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the instance location using the
  /// form:
  ///     `projects/{project_id}/locations/{location_id}`
  /// where `location_id` refers to a GCP region.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [instanceId] - Required. The logical name of the Redis instance in the
  /// customer project
  /// with the following restrictions:
  ///
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-40 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the customer project / location
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
  async.Future<Operation> create(Instance request, core.String parent,
      {core.String instanceId, core.String $fields}) {
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
    if (instanceId != null) {
      _queryParams["instanceId"] = [instanceId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/instances';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes a specific Redis instance.  Instance stops serving and data is
  /// deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/instances/[^/]+$".
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
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Export Redis instance data into a Redis RDB format file in Cloud Storage.
  ///
  /// Redis will continue serving during this operation.
  ///
  /// The returned operation is automatically deleted after a few hours, so
  /// there is no need to call DeleteOperation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/instances/[^/]+$".
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
  async.Future<Operation> export(
      ExportInstanceRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':export';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Initiates a failover of the master node to current replica node for a
  /// specific STANDARD tier Cloud Memorystore for Redis instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/instances/[^/]+$".
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
  async.Future<Operation> failover(
      FailoverInstanceRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':failover';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the details of a specific Redis instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/instances/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Instance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Instance> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Instance.fromJson(data));
  }

  /// Import a Redis RDB snapshot file from Cloud Storage into a Redis instance.
  ///
  /// Redis may stop serving during this operation. Instance state will be
  /// IMPORTING for entire operation. When complete, the instance will contain
  /// only data from the imported file.
  ///
  /// The returned operation is automatically deleted after a few hours, so
  /// there is no need to call DeleteOperation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Redis instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/instances/[^/]+$".
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
  async.Future<Operation> import(
      ImportInstanceRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':import';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists all Redis instances owned by a project in either the specified
  /// location (region) or all locations.
  ///
  /// The location should have the following format:
  /// * `projects/{project_id}/locations/{location_id}`
  ///
  /// If `location_id` is specified as `-` (wildcard), then all regions
  /// available to the project are queried, and the results are aggregated.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the instance location using the
  /// form:
  ///     `projects/{project_id}/locations/{location_id}`
  /// where `location_id` refers to a GCP region.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request,
  /// if any.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// If not specified, a default value of 1000 will be used by the service.
  /// Regardless of the page_size value, the response may include a partial list
  /// and a caller should only rely on response's
  /// next_page_token
  /// to determine if there are more instances left to be queried.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInstancesResponse> list(core.String parent,
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

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/instances';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListInstancesResponse.fromJson(data));
  }

  /// Updates the metadata and configuration of a specific Redis instance.
  ///
  /// Completed longrunning.Operation will contain the new instance object
  /// in the response field. The returned operation is automatically deleted
  /// after a few hours, so there is no need to call DeleteOperation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Unique name of the resource in this scope including
  /// project and
  /// location using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  ///
  /// Note: Redis instances are managed and addressed at regional level so
  /// location_id here refers to a GCP region; however, users may choose which
  /// specific zone (or collection of zones for cross-zone instances) an
  /// instance
  /// should be provisioned in. Refer to [location_id] and
  /// [alternative_location_id] fields for more details.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/instances/[^/]+$".
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in
  /// this field. The elements of the repeated paths field may only include
  /// these
  /// fields from Instance:
  ///
  ///  *   `displayName`
  ///  *   `labels`
  ///  *   `memorySizeGb`
  ///  *   `redisConfig`
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
  async.Future<Operation> patch(Instance request, core.String name,
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
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ProjectsLocationsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.  The server
  /// makes a best effort to cancel the operation, but success is not
  /// guaranteed.  If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.  Clients can use
  /// Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with
  /// an Operation.error value with a google.rpc.Status.code of 1,
  /// corresponding to `Code.CANCELLED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
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
  async.Future<Empty> cancel(core.String name, {core.String $fields}) {
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
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

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
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
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(core.String name,
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
        'v1/' + commons.Escaper.ecapeVariableReserved('$name') + '/operations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
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

/// Request for Export.
class ExportInstanceRequest {
  /// Required. Specify data to be exported.
  OutputConfig outputConfig;

  ExportInstanceRequest();

  ExportInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("outputConfig")) {
      outputConfig = new OutputConfig.fromJson(_json["outputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (outputConfig != null) {
      _json["outputConfig"] = (outputConfig).toJson();
    }
    return _json;
  }
}

/// Request for Failover.
class FailoverInstanceRequest {
  /// Optional. Available data protection modes that the user can choose. If
  /// it's
  /// unspecified, data protection mode will be LIMITED_DATA_LOSS by default.
  /// Possible string values are:
  /// - "DATA_PROTECTION_MODE_UNSPECIFIED" : Defaults to LIMITED_DATA_LOSS if a
  /// data protection mode is not
  /// specified.
  /// - "LIMITED_DATA_LOSS" : Instance failover will be protected with data loss
  /// control. More
  /// specifically, the failover will only be performed if the current
  /// replication offset diff between master and replica is under a certain
  /// threshold.
  /// - "FORCE_DATA_LOSS" : Instance failover will be performed without data
  /// loss control.
  core.String dataProtectionMode;

  FailoverInstanceRequest();

  FailoverInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dataProtectionMode")) {
      dataProtectionMode = _json["dataProtectionMode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataProtectionMode != null) {
      _json["dataProtectionMode"] = dataProtectionMode;
    }
    return _json;
  }
}

/// The Cloud Storage location for the output content
class GcsDestination {
  /// Required. Data destination URI (e.g.
  /// 'gs://my_bucket/my_object'). Existing files will be overwritten.
  core.String uri;

  GcsDestination();

  GcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// The Cloud Storage location for the input content
class GcsSource {
  /// Required. Source data URI. (e.g. 'gs://my_bucket/my_object').
  core.String uri;

  GcsSource();

  GcsSource.fromJson(core.Map _json) {
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// This location metadata represents additional configuration options for a
/// given location where a Redis instance may be created. All fields are output
/// only. It is returned as content of the
/// `google.cloud.location.Location.metadata` field.
class GoogleCloudRedisV1LocationMetadata {
  /// Output only. The set of available zones in the location. The map is keyed
  /// by the lowercase ID of each zone, as defined by GCE. These keys can be
  /// specified in `location_id` or `alternative_location_id` fields when
  /// creating a Redis instance.
  core.Map<core.String, GoogleCloudRedisV1ZoneMetadata> availableZones;

  GoogleCloudRedisV1LocationMetadata();

  GoogleCloudRedisV1LocationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("availableZones")) {
      availableZones = commons.mapMap<core.Map, GoogleCloudRedisV1ZoneMetadata>(
          _json["availableZones"].cast<core.String, core.Map>(),
          (core.Map item) => new GoogleCloudRedisV1ZoneMetadata.fromJson(item));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (availableZones != null) {
      _json["availableZones"] = commons.mapMap<GoogleCloudRedisV1ZoneMetadata,
              core.Map<core.String, core.Object>>(availableZones,
          (GoogleCloudRedisV1ZoneMetadata item) => (item).toJson());
    }
    return _json;
  }
}

/// Represents the v1 metadata of the long-running operation.
class GoogleCloudRedisV1OperationMetadata {
  /// API version.
  core.String apiVersion;

  /// Specifies if cancellation was requested for the operation.
  core.bool cancelRequested;

  /// Creation timestamp.
  core.String createTime;

  /// End timestamp.
  core.String endTime;

  /// Operation status details.
  core.String statusDetail;

  /// Operation target.
  core.String target;

  /// Operation verb.
  core.String verb;

  GoogleCloudRedisV1OperationMetadata();

  GoogleCloudRedisV1OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("apiVersion")) {
      apiVersion = _json["apiVersion"];
    }
    if (_json.containsKey("cancelRequested")) {
      cancelRequested = _json["cancelRequested"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("statusDetail")) {
      statusDetail = _json["statusDetail"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
    if (_json.containsKey("verb")) {
      verb = _json["verb"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apiVersion != null) {
      _json["apiVersion"] = apiVersion;
    }
    if (cancelRequested != null) {
      _json["cancelRequested"] = cancelRequested;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (statusDetail != null) {
      _json["statusDetail"] = statusDetail;
    }
    if (target != null) {
      _json["target"] = target;
    }
    if (verb != null) {
      _json["verb"] = verb;
    }
    return _json;
  }
}

/// Defines specific information for a particular zone. Currently empty and
/// reserved for future use only.
class GoogleCloudRedisV1ZoneMetadata {
  GoogleCloudRedisV1ZoneMetadata();

  GoogleCloudRedisV1ZoneMetadata.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Request for Import.
class ImportInstanceRequest {
  /// Required. Specify data to be imported.
  InputConfig inputConfig;

  ImportInstanceRequest();

  ImportInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("inputConfig")) {
      inputConfig = new InputConfig.fromJson(_json["inputConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputConfig != null) {
      _json["inputConfig"] = (inputConfig).toJson();
    }
    return _json;
  }
}

/// The input content
class InputConfig {
  /// Google Cloud Storage location where input content is located.
  GcsSource gcsSource;

  InputConfig();

  InputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("gcsSource")) {
      gcsSource = new GcsSource.fromJson(_json["gcsSource"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gcsSource != null) {
      _json["gcsSource"] = (gcsSource).toJson();
    }
    return _json;
  }
}

/// A Google Cloud Redis instance.
class Instance {
  /// Optional. Only applicable to STANDARD_HA tier which protects the instance
  /// against zonal failures by provisioning it across two zones. If provided,
  /// it
  /// must be a different zone from the one provided in [location_id].
  core.String alternativeLocationId;

  /// Optional. The full name of the Google Compute Engine
  /// [network](/compute/docs/networks-and-firewalls#networks) to which the
  /// instance is connected. If left unspecified, the `default` network
  /// will be used.
  core.String authorizedNetwork;

  /// Output only. The time the instance was created.
  core.String createTime;

  /// Output only. The current zone where the Redis endpoint is placed. For
  /// Basic
  /// Tier instances, this will always be the same as the [location_id]
  /// provided by the user at creation time. For Standard Tier instances,
  /// this can be either [location_id] or [alternative_location_id] and can
  /// change after a failover event.
  core.String currentLocationId;

  /// An arbitrary and optional user-provided name for the instance.
  core.String displayName;

  /// Output only. Hostname or IP address of the exposed Redis endpoint used by
  /// clients to connect to the service.
  core.String host;

  /// Resource labels to represent user provided metadata
  core.Map<core.String, core.String> labels;

  /// Optional. The zone where the instance will be provisioned. If not
  /// provided,
  /// the service will choose a zone for the instance. For STANDARD_HA tier,
  /// instances will be created across two zones for protection against zonal
  /// failures. If [alternative_location_id] is also provided, it must be
  /// different from [location_id].
  core.String locationId;

  /// Required. Redis memory size in GiB.
  core.int memorySizeGb;

  /// Required. Unique name of the resource in this scope including project and
  /// location using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  ///
  /// Note: Redis instances are managed and addressed at regional level so
  /// location_id here refers to a GCP region; however, users may choose which
  /// specific zone (or collection of zones for cross-zone instances) an
  /// instance
  /// should be provisioned in. Refer to [location_id] and
  /// [alternative_location_id] fields for more details.
  core.String name;

  /// Output only. Cloud IAM identity used by import / export operations to
  /// transfer data to/from Cloud Storage. Format is
  /// "serviceAccount:<service_account_email>". The value may change over time
  /// for a given instance so should be checked before each import/export
  /// operation.
  core.String persistenceIamIdentity;

  /// Output only. The port number of the exposed Redis endpoint.
  core.int port;

  /// Optional. Redis configuration parameters, according to
  /// http://redis.io/topics/config. Currently, the only supported parameters
  /// are:
  ///
  ///  Redis 3.2 and above:
  ///
  ///  *   maxmemory-policy
  ///  *   notify-keyspace-events
  ///
  ///  Redis 4.0 and above:
  ///
  ///  *   activedefrag
  ///  *   lfu-log-factor
  ///  *   lfu-decay-time
  core.Map<core.String, core.String> redisConfigs;

  /// Optional. The version of Redis software.
  /// If not provided, latest supported version will be used. Updating the
  /// version will perform an upgrade/downgrade to the new version. Currently,
  /// the supported values are:
  ///
  ///  *   `REDIS_4_0` for Redis 4.0 compatibility (default)
  ///  *   `REDIS_3_2` for Redis 3.2 compatibility
  core.String redisVersion;

  /// Optional. The CIDR range of internal addresses that are reserved for this
  /// instance. If not provided, the service will choose an unused /29 block,
  /// for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be unique
  /// and non-overlapping with existing subnets in an authorized network.
  core.String reservedIpRange;

  /// Output only. The current state of this instance.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "CREATING" : Redis instance is being created.
  /// - "READY" : Redis instance has been created and is fully usable.
  /// - "UPDATING" : Redis instance configuration is being updated. Certain
  /// kinds of updates
  /// may cause the instance to become unusable while the update is in
  /// progress.
  /// - "DELETING" : Redis instance is being deleted.
  /// - "REPAIRING" : Redis instance is being repaired and may be unusable.
  /// - "MAINTENANCE" : Maintenance is being performed on this Redis instance.
  /// - "IMPORTING" : Redis instance is importing data (availability may be
  /// affected).
  /// - "FAILING_OVER" : Redis instance is failing over (availability may be
  /// affected).
  core.String state;

  /// Output only. Additional information about the current status of this
  /// instance, if available.
  core.String statusMessage;

  /// Required. The service tier of the instance.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not set.
  /// - "BASIC" : BASIC tier: standalone instance
  /// - "STANDARD_HA" : STANDARD_HA tier: highly available primary/replica
  /// instances
  core.String tier;

  Instance();

  Instance.fromJson(core.Map _json) {
    if (_json.containsKey("alternativeLocationId")) {
      alternativeLocationId = _json["alternativeLocationId"];
    }
    if (_json.containsKey("authorizedNetwork")) {
      authorizedNetwork = _json["authorizedNetwork"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("currentLocationId")) {
      currentLocationId = _json["currentLocationId"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("memorySizeGb")) {
      memorySizeGb = _json["memorySizeGb"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("persistenceIamIdentity")) {
      persistenceIamIdentity = _json["persistenceIamIdentity"];
    }
    if (_json.containsKey("port")) {
      port = _json["port"];
    }
    if (_json.containsKey("redisConfigs")) {
      redisConfigs =
          (_json["redisConfigs"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("redisVersion")) {
      redisVersion = _json["redisVersion"];
    }
    if (_json.containsKey("reservedIpRange")) {
      reservedIpRange = _json["reservedIpRange"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("statusMessage")) {
      statusMessage = _json["statusMessage"];
    }
    if (_json.containsKey("tier")) {
      tier = _json["tier"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternativeLocationId != null) {
      _json["alternativeLocationId"] = alternativeLocationId;
    }
    if (authorizedNetwork != null) {
      _json["authorizedNetwork"] = authorizedNetwork;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (currentLocationId != null) {
      _json["currentLocationId"] = currentLocationId;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (memorySizeGb != null) {
      _json["memorySizeGb"] = memorySizeGb;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (persistenceIamIdentity != null) {
      _json["persistenceIamIdentity"] = persistenceIamIdentity;
    }
    if (port != null) {
      _json["port"] = port;
    }
    if (redisConfigs != null) {
      _json["redisConfigs"] = redisConfigs;
    }
    if (redisVersion != null) {
      _json["redisVersion"] = redisVersion;
    }
    if (reservedIpRange != null) {
      _json["reservedIpRange"] = reservedIpRange;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (statusMessage != null) {
      _json["statusMessage"] = statusMessage;
    }
    if (tier != null) {
      _json["tier"] = tier;
    }
    return _json;
  }
}

/// Response for ListInstances.
class ListInstancesResponse {
  /// A list of Redis instances in the project in the specified location,
  /// or across all locations.
  ///
  /// If the `location_id` in the parent field of the request is "-", all
  /// regions
  /// available to the project are queried, and the results aggregated.
  /// If in such an aggregated query a location is unavailable, a dummy Redis
  /// entry is included in the response with the "name" field set to a value of
  /// the form projects/{project_id}/locations/{location_id}/instances/- and the
  /// "status" field set to ERROR and "status_message" field set to "location
  /// not
  /// available for ListInstances".
  core.List<Instance> instances;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String> unreachable;

  ListInstancesResponse();

  ListInstancesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("instances")) {
      instances = (_json["instances"] as core.List)
          .map<Instance>((value) => new Instance.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("unreachable")) {
      unreachable = (_json["unreachable"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (instances != null) {
      _json["instances"] = instances.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (unreachable != null) {
      _json["unreachable"] = unreachable;
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

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name.
  /// For example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location. For example
  ///
  ///     {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// Resource ID for the region. For example: "us-east1".
  core.String locationId;

  /// Output only. The set of available zones in the location. The map is keyed
  /// by the lowercase ID of each zone, as defined by Compute Engine. These keys
  /// can be specified in `location_id` or `alternative_location_id` fields when
  /// creating a Redis instance.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Full resource name for the region. For example:
  /// "projects/example-project/locations/us-east1".
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

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// {
  ///
  /// `createTime`: The time the operation was created.
  ///
  /// `endTime`: The time the operation finished running.
  ///
  /// `target`: Server-defined resource path for the target of the operation.
  ///
  /// `verb`: Name of the verb executed by the operation.
  ///
  /// `statusDetail`: Human-readable status of the operation, if any.
  ///
  /// `cancelRequested`: Identifies whether the user has requested cancellation
  /// of the operation. Operations that have successfully been cancelled have
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// `apiVersion`: API version used to start the operation.
  ///
  /// }
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
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

/// The output content
class OutputConfig {
  /// Google Cloud Storage destination for output content.
  GcsDestination gcsDestination;

  OutputConfig();

  OutputConfig.fromJson(core.Map _json) {
    if (_json.containsKey("gcsDestination")) {
      gcsDestination = new GcsDestination.fromJson(_json["gcsDestination"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gcsDestination != null) {
      _json["gcsDestination"] = (gcsDestination).toJson();
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
