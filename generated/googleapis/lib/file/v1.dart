// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.file.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client file/v1';

/// The Cloud Filestore API is used for creating and managing cloud file
/// servers.
class FileApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  FileApi(http.Client client,
      {core.String rootUrl = "https://file.googleapis.com/",
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

class ProjectsLocationsInstancesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates an instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The instance's project and location, in the format
  /// projects/{project_id}/locations/{location}. In Cloud Filestore,
  /// locations map to GCP zones, for example **us-west1-b**.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [instanceId] - The name of the instance to create.
  /// The name must be unique for the specified project and location.
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

  /// Deletes an instance.
  ///
  /// Request parameters:
  ///
  /// [name] - The instance resource name, in the format
  /// projects/{project_id}/locations/{location}/instances/{instance_id}
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

  /// Gets the details of a specific instance.
  ///
  /// Request parameters:
  ///
  /// [name] - The instance resource name, in the format
  /// projects/{project_id}/locations/{location}/instances/{instance_id}.
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

  /// Lists all instances in a project for either a specified location
  /// or for all locations.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project and location for which to retrieve instance
  /// information,
  /// in the format projects/{project_id}/locations/{location}. In Cloud
  /// Filestore, locations map to GCP zones, for example **us-west1-b**. To
  /// retrieve instance information for all locations, use "-" for the
  /// {location}
  /// value.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [filter] - List filter.
  ///
  /// [pageToken] - The next_page_token value to use if there are additional
  /// results to retrieve for this list request.
  ///
  /// [orderBy] - Sort results. Supported values are "name", "name desc" or ""
  /// (unsorted).
  ///
  /// [pageSize] - The maximum number of items to return.
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
      {core.String filter,
      core.String pageToken,
      core.String orderBy,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
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

  /// Updates the settings of a specific instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the instance, in the format
  /// projects/{project_id}/locations/{location_id}/instances/{instance_id}.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/instances/[^/]+$".
  ///
  /// [updateMask] - Mask of fields to update.  At least one path must be
  /// supplied in this
  /// field.  The elements of the repeated paths field may only include these
  /// fields:
  /// "description"
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
  /// [request] - The metadata request object.
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

/// File share configuration for the instance.
class FileShareConfig {
  /// File share capacity in gigabytes (GB).
  /// Cloud Filestore defines 1 GB as 1024^3 bytes.
  core.String capacityGb;

  /// The name of the file share (must be 16 characters or less).
  core.String name;

  FileShareConfig();

  FileShareConfig.fromJson(core.Map _json) {
    if (_json.containsKey("capacityGb")) {
      capacityGb = _json["capacityGb"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (capacityGb != null) {
      _json["capacityGb"] = capacityGb;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Instance represents the interface for SLM services to actuate the state
/// of control plane resources.
///
/// Example Instance in JSON, where
///   consumer-project=snapchat,
///   producer-project=cloud-sql:
///
/// ```json
/// Instance:
/// {
///   "name":
///   "projects/snapchat/locations/us-east1/instances/prod-instance",
///   "create_time": {
///     "seconds": 1526406431,
///   },
///   "labels": {
///     "env": "prod",
///     "foo": "bar"
///   },
///   "state": READY,
///   "software_versions": {
///     "software_update": "cloud-sql-09-28-2018",
///   },
///   "maintenance_policy_names": {
///     "UpdatePolicy":
/// "projects/snapchat/locations/us-east1/maintenancePolicies/prod-update-policy",
///   }
///   "rollout_metadata": {
///     "projects/cloud-sql/locations/global/rolloutTypes/software_update": {
///       "release":
///       "projects/cloud-sql/locations/global/releases/cloud-sql-09-28-2018",
///       "rollout":
/// "projects/cloud-sql/locations/us-east1/rollouts/cloud-sql-09-28-2018-canary",
///     },
///     "projects/cloud-sql/locations/global/rolloutTypes/instance_restart": {
///       "release":
/// "projects/cloud-sql/locations/global/releases/cloud-sql-09-20-repair",
///       "rollout":
/// "projects/cloud-sql/locations/us-east1/rollouts/cloud-sql-09-20-repair-100-percent",
///     }
///   }
///   "tenant_project_id": "cloud-sql-test-tenant",
///   "producer_metadata": {
///     "cloud-sql-tier": "basic",
///     "cloud-sql-instance-size": "1G",
///   },
///   "provisioned_resources": [
///     {
///       "resource-type": "compute-instance",
///       "resource-url":
/// "https://www.googleapis.com/compute/v1/projects/cloud-sql/zones/us-east1-b/instances/vm-1",
///     }
///   ],
///   "maintenance_schedules": {
///     "csa_rollout": {
///        "start_time": {
///           "seconds": 1526406431,
///        },
///        "end_time": {
///           "seconds": 1535406431,
///        },
///     },
///     "ncsa_rollout": {
///        "start_time": {
///           "seconds": 1526406431,
///        },
///        "end_time": {
///           "seconds": 1535406431,
///        },
///     }
///   }
/// }
/// ```
class GoogleCloudSaasacceleratorManagementProvidersV1Instance {
  /// Output only. Timestamp when the resource was created.
  core.String createTime;

  /// Optional. Resource labels to represent user provided metadata. Each label
  /// is a key-value pair, where both the key and the value are arbitrary
  /// strings
  /// provided by the user.
  core.Map<core.String, core.String> labels;

  /// The MaintenancePolicies that have been attached to the instance.
  /// The key must be of the type name of the oneof policy name defined in
  /// MaintenancePolicy, and the referenced policy must define the same policy
  /// type. For complete details of MaintenancePolicy, please refer to
  /// go/cloud-saas-mw-ug.
  core.Map<core.String, core.String> maintenancePolicyNames;

  /// The MaintenanceSchedule contains the scheduling information of published
  /// maintenance schedule.
  core.Map<core.String,
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
      maintenanceSchedules;

  /// Unique name of the resource. It uses the form:
  ///  `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  core.String name;

  /// Output only. Custom string attributes used primarily to expose
  /// producer-specific information in monitoring dashboards.
  /// See go/get-instance-metadata.
  core.Map<core.String, core.String> producerMetadata;

  /// Output only. The list of data plane resources provisioned for this
  /// instance, e.g. compute VMs. See go/get-instance-metadata.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>
      provisionedResources;

  /// The map between RolloutType and the corresponding RolloutMetadata.
  /// This is only mutated by rollout service. For actuation implementation,
  /// this information is pass-through for Rollout management. Producer shall
  /// not modify by itself.
  /// For update of a single entry in this map, the update field mask shall
  /// follow this sementics: go/advanced-field-masks
  core.Map<core.String,
          GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata>
      rolloutMetadata;

  /// Output only. SLO metadata for instance classification in the
  /// Standardized dataplane SLO platform.
  /// See go/cloud-ssa-standard-slo for feature description.
  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata sloMetadata;

  /// Software versions that are used to deploy this instance. This can be
  /// mutated by rollout services.
  core.Map<core.String, core.String> softwareVersions;

  /// Output only. Current lifecycle state of the resource (e.g. if it's being
  /// created or ready to use).
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "CREATING" : Instance is being created.
  /// - "READY" : Instance has been created and is ready to use.
  /// - "UPDATING" : Instance is being updated.
  /// - "REPAIRING" : Instance is unheathy and under repair.
  /// - "DELETING" : Instance is being deleted.
  core.String state;

  /// Output only. ID of the associated GCP tenant project.
  /// See go/get-instance-metadata.
  core.String tenantProjectId;

  /// Output only. Timestamp when the resource was last modified.
  core.String updateTime;

  GoogleCloudSaasacceleratorManagementProvidersV1Instance();

  GoogleCloudSaasacceleratorManagementProvidersV1Instance.fromJson(
      core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("maintenancePolicyNames")) {
      maintenancePolicyNames = (_json["maintenancePolicyNames"] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey("maintenanceSchedules")) {
      maintenanceSchedules = commons.mapMap<core.Map,
              GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>(
          _json["maintenanceSchedules"].cast<core.String, core.Map>(),
          (core.Map item) =>
              new GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
                  .fromJson(item));
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("producerMetadata")) {
      producerMetadata = (_json["producerMetadata"] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey("provisionedResources")) {
      provisionedResources = (_json["provisionedResources"] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>(
              (value) =>
                  new GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("rolloutMetadata")) {
      rolloutMetadata = commons.mapMap<core.Map,
              GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata>(
          _json["rolloutMetadata"].cast<core.String, core.Map>(),
          (core.Map item) =>
              new GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata
                  .fromJson(item));
    }
    if (_json.containsKey("sloMetadata")) {
      sloMetadata =
          new GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata
              .fromJson(_json["sloMetadata"]);
    }
    if (_json.containsKey("softwareVersions")) {
      softwareVersions = (_json["softwareVersions"] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("tenantProjectId")) {
      tenantProjectId = _json["tenantProjectId"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (maintenancePolicyNames != null) {
      _json["maintenancePolicyNames"] = maintenancePolicyNames;
    }
    if (maintenanceSchedules != null) {
      _json["maintenanceSchedules"] = commons.mapMap<
              GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule,
              core.Map<core.String, core.Object>>(
          maintenanceSchedules,
          (GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
                  item) =>
              (item).toJson());
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (producerMetadata != null) {
      _json["producerMetadata"] = producerMetadata;
    }
    if (provisionedResources != null) {
      _json["provisionedResources"] =
          provisionedResources.map((value) => (value).toJson()).toList();
    }
    if (rolloutMetadata != null) {
      _json["rolloutMetadata"] = commons.mapMap<
              GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata,
              core.Map<core.String, core.Object>>(
          rolloutMetadata,
          (GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata
                  item) =>
              (item).toJson());
    }
    if (sloMetadata != null) {
      _json["sloMetadata"] = (sloMetadata).toJson();
    }
    if (softwareVersions != null) {
      _json["softwareVersions"] = softwareVersions;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (tenantProjectId != null) {
      _json["tenantProjectId"] = tenantProjectId;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Maintenance schedule which is exposed to customer and potentially end user,
/// indicating published upcoming future maintenance schedule
class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule {
  /// Can this scheduled update be rescheduled?
  /// By default, it's true and API needs to do explicitly check whether it's
  /// set, if it's set as false explicitly, it's false
  core.bool canReschedule;

  /// The scheduled end time for the maintenance.
  core.String endTime;

  /// The scheduled start time for the maintenance.
  core.String startTime;

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule.fromJson(
      core.Map _json) {
    if (_json.containsKey("canReschedule")) {
      canReschedule = _json["canReschedule"];
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
    if (canReschedule != null) {
      _json["canReschedule"] = canReschedule;
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

/// Node information for custom per-node SLO implementations.
/// SSA does not support per-node SLO, but producers can populate per-node
/// information in SloMetadata for custom precomputations.
/// SSA Eligibility Exporter will emit per-node metric based on this
/// information.
class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata {
  /// By default node is eligible if instance is eligible.
  /// But individual node might be excluded from SLO by adding entry here.
  /// For semantic see SloMetadata.exclusions.
  /// If both instance and node level exclusions are present for time period,
  /// the node level's reason will be reported by Eligibility Exporter.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
      exclusions;

  /// The location of the node, if different from instance location.
  core.String location;

  /// The id of the node.
  /// This should be equal to SaasInstanceNode.node_id.
  core.String nodeId;

  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata();

  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey("exclusions")) {
      exclusions = (_json["exclusions"] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>(
              (value) =>
                  new GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("nodeId")) {
      nodeId = _json["nodeId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exclusions != null) {
      _json["exclusions"] =
          exclusions.map((value) => (value).toJson()).toList();
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (nodeId != null) {
      _json["nodeId"] = nodeId;
    }
    return _json;
  }
}

/// NotificationMetadata is the notification state for an instance.
class GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata {
  /// Whether the instance update has been rescheduled.
  core.bool rescheduled;

  /// The scheduled end time for the maintenance window during which update
  /// can be performed on the instance.
  core.String scheduledEndTime;

  /// The scheduled start time for the maintenance window during which
  /// update can be performed on the instance.
  core.String scheduledStartTime;

  /// The target release to be applied to the instance.
  core.String targetRelease;

  GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata();

  GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey("rescheduled")) {
      rescheduled = _json["rescheduled"];
    }
    if (_json.containsKey("scheduledEndTime")) {
      scheduledEndTime = _json["scheduledEndTime"];
    }
    if (_json.containsKey("scheduledStartTime")) {
      scheduledStartTime = _json["scheduledStartTime"];
    }
    if (_json.containsKey("targetRelease")) {
      targetRelease = _json["targetRelease"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rescheduled != null) {
      _json["rescheduled"] = rescheduled;
    }
    if (scheduledEndTime != null) {
      _json["scheduledEndTime"] = scheduledEndTime;
    }
    if (scheduledStartTime != null) {
      _json["scheduledStartTime"] = scheduledStartTime;
    }
    if (targetRelease != null) {
      _json["targetRelease"] = targetRelease;
    }
    return _json;
  }
}

/// Describes provisioned dataplane resources.
class GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource {
  /// Type of the resource. This can be either a GCP resource or a custom one
  /// (e.g. another cloud provider's VM). For GCP compute resources use singular
  /// form of the names listed in GCP compute API documentation
  /// (https://cloud.google.com/compute/docs/reference/rest/v1/), prefixed with
  /// 'compute-', for example: 'compute-instance', 'compute-disk',
  /// 'compute-autoscaler'.
  core.String resourceType;

  /// URL identifying the resource, e.g.
  /// "https://www.googleapis.com/compute/v1/projects/...)".
  core.String resourceUrl;

  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource();

  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource.fromJson(
      core.Map _json) {
    if (_json.containsKey("resourceType")) {
      resourceType = _json["resourceType"];
    }
    if (_json.containsKey("resourceUrl")) {
      resourceUrl = _json["resourceUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resourceType != null) {
      _json["resourceType"] = resourceType;
    }
    if (resourceUrl != null) {
      _json["resourceUrl"] = resourceUrl;
    }
    return _json;
  }
}

/// RolloutMetadata for an actuation instance. It maps to a single RolloutType.
class GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata {
  /// Instance level notification metadata.
  GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata
      notification;

  /// The last Release that has been applied to the instance.
  core.String releaseName;

  /// The last rollout that has been applied to the instance.
  core.String rolloutName;

  GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata();

  GoogleCloudSaasacceleratorManagementProvidersV1RolloutMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey("notification")) {
      notification =
          new GoogleCloudSaasacceleratorManagementProvidersV1NotificationMetadata
              .fromJson(_json["notification"]);
    }
    if (_json.containsKey("releaseName")) {
      releaseName = _json["releaseName"];
    }
    if (_json.containsKey("rolloutName")) {
      rolloutName = _json["rolloutName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (notification != null) {
      _json["notification"] = (notification).toJson();
    }
    if (releaseName != null) {
      _json["releaseName"] = releaseName;
    }
    if (rolloutName != null) {
      _json["rolloutName"] = rolloutName;
    }
    return _json;
  }
}

/// SloExclusion represents an excusion in SLI calculation applies to all SLOs.
class GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion {
  /// Exclusion duration. No restrictions on the possible values.
  ///
  /// When an ongoing operation is taking longer than initially expected,
  /// an existing entry in the exclusion list can be updated by extending the
  /// duration. This is supported by the subsystem exporting eligibility data
  /// as long as such extension is committed at least 10 minutes before the
  /// original exclusion expiration - otherwise it is possible that there will
  /// be "gaps" in the exclusion application in the exported timeseries.
  core.String exclusionDuration;

  /// Start time of the exclusion. No alignment (e.g. to a full minute) needed.
  core.String exclusionStartTime;

  /// Human-readable reason for the exclusion.
  /// This should be a static string (e.g. "Disruptive update in progress")
  /// and should not contain dynamically generated data (e.g. instance name).
  /// Can be left empty.
  core.String reason;

  /// Name of an SLI that this exclusion applies to. Can be left empty,
  /// signaling that the instance should be excluded from all SLIs defined
  /// in the service SLO configuration.
  core.String sliName;

  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion();

  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion.fromJson(
      core.Map _json) {
    if (_json.containsKey("exclusionDuration")) {
      exclusionDuration = _json["exclusionDuration"];
    }
    if (_json.containsKey("exclusionStartTime")) {
      exclusionStartTime = _json["exclusionStartTime"];
    }
    if (_json.containsKey("reason")) {
      reason = _json["reason"];
    }
    if (_json.containsKey("sliName")) {
      sliName = _json["sliName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exclusionDuration != null) {
      _json["exclusionDuration"] = exclusionDuration;
    }
    if (exclusionStartTime != null) {
      _json["exclusionStartTime"] = exclusionStartTime;
    }
    if (reason != null) {
      _json["reason"] = reason;
    }
    if (sliName != null) {
      _json["sliName"] = sliName;
    }
    return _json;
  }
}

/// SloMetadata contains resources required for proper SLO classification of the
/// instance.
class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata {
  /// List of SLO exclusion windows. When multiple entries in the list match
  /// (matching the exclusion time-window against current time point)
  /// the exclusion reason used in the first matching entry will be published.
  ///
  /// It is not needed to include expired exclusion in this list, as only the
  /// currently applicable exclusions are taken into account by the eligibility
  /// exporting subsystem (the historical state of exclusions will be reflected
  /// in the historically produced timeseries regardless of the current state).
  ///
  /// This field can be used to mark the instance as temporary ineligible
  /// for the purpose of SLO calculation. For permanent instance SLO exclusion,
  /// a dedicated tier name can be used that does not have targets specified
  /// in the service SLO configuration.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
      exclusions;

  /// Optional: list of nodes.
  /// Some producers need to use per-node metadata to calculate SLO.
  /// This field allows such producers to publish per-node SLO meta data,
  /// which will be consumed by SSA Eligibility Exporter and published in the
  /// form of per node metric to Monarch.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>
      nodes;

  /// Name of the SLO tier the Instance belongs to. This name will be expected
  /// to
  /// match the tiers specified in the service SLO configuration.
  ///
  /// Field is mandatory and must not be empty.
  core.String tier;

  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();

  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey("exclusions")) {
      exclusions = (_json["exclusions"] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>(
              (value) =>
                  new GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("nodes")) {
      nodes = (_json["nodes"] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>(
              (value) =>
                  new GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("tier")) {
      tier = _json["tier"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exclusions != null) {
      _json["exclusions"] =
          exclusions.map((value) => (value).toJson()).toList();
    }
    if (nodes != null) {
      _json["nodes"] = nodes.map((value) => (value).toJson()).toList();
    }
    if (tier != null) {
      _json["tier"] = tier;
    }
    return _json;
  }
}

/// A Cloud Filestore instance.
class Instance {
  /// Output only. The time when the instance was created.
  core.String createTime;

  /// Optional. A description of the instance (2048 characters or less).
  core.String description;

  /// Server-specified ETag for the instance resource to prevent simultaneous
  /// updates from overwriting each other.
  core.String etag;

  /// File system shares on the instance.
  /// For this version, only a single file share is supported.
  core.List<FileShareConfig> fileShares;

  /// Resource labels to represent user provided metadata.
  core.Map<core.String, core.String> labels;

  /// Output only. The resource name of the instance, in the format
  /// projects/{project_id}/locations/{location_id}/instances/{instance_id}.
  core.String name;

  /// VPC networks to which the instance is connected.
  /// For this version, only a single network is supported.
  core.List<NetworkConfig> networks;

  /// Output only. The instance state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : The instance is being created.
  /// - "READY" : The instance is available for use.
  /// - "REPAIRING" : Work is being done on the instance. You can get further
  /// details from the
  /// `statusMessage` field of the `Instance` resource.
  /// - "DELETING" : The instance is shutting down.
  /// - "ERROR" : The instance is experiencing an issue and might be unusable.
  /// You can get
  /// further details from the `statusMessage` field of the `Instance`
  /// resource.
  core.String state;

  /// Output only. Additional information about the instance state, if
  /// available.
  core.String statusMessage;

  /// The service tier of the instance.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : Not set.
  /// - "STANDARD" : STANDARD tier.
  /// - "PREMIUM" : PREMIUM tier.
  core.String tier;

  Instance();

  Instance.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("fileShares")) {
      fileShares = (_json["fileShares"] as core.List)
          .map<FileShareConfig>((value) => new FileShareConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("networks")) {
      networks = (_json["networks"] as core.List)
          .map<NetworkConfig>((value) => new NetworkConfig.fromJson(value))
          .toList();
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
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (fileShares != null) {
      _json["fileShares"] =
          fileShares.map((value) => (value).toJson()).toList();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (networks != null) {
      _json["networks"] = networks.map((value) => (value).toJson()).toList();
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

/// ListInstancesResponse is the result of ListInstancesRequest.
class ListInstancesResponse {
  /// A list of instances in the project for the specified location.
  ///
  /// If the {location} value in the request is "-", the response contains a
  /// list
  /// of instances from all locations. If any location is unreachable, the
  /// response will only return instances in reachable locations and the
  /// "unreachable" field will be populated with a list of unreachable
  /// locations.
  core.List<Instance> instances;

  /// The token you can use to retrieve the next page of results. Not returned
  /// if there are no more results in the list.
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

/// Network configuration for the instance.
class NetworkConfig {
  /// Output only. IPv4 addresses in the format
  /// {octet 1}.{octet 2}.{octet 3}.{octet 4} or IPv6 addresses in the format
  /// {block 1}:{block 2}:{block 3}:{block 4}:{block 5}:{block 6}:{block
  /// 7}:{block 8}.
  core.List<core.String> ipAddresses;

  /// Internet protocol versions for which the instance has IP addresses
  /// assigned. For this version, only MODE_IPV4 is supported.
  core.List<core.String> modes;

  /// The name of the Google Compute Engine
  /// [VPC network](/compute/docs/networks-and-firewalls#networks) to which the
  /// instance is connected.
  core.String network;

  /// A /29 CIDR block in one of the
  /// [internal IP address
  /// ranges](https://www.arin.net/knowledge/address_filters.html) that
  /// identifies the range of IP addresses reserved for this instance. For
  /// example, 10.0.0.0/29 or 192.168.0.0/29. The range you specify can't
  /// overlap
  /// with either existing subnets or assigned IP address ranges for other Cloud
  /// Filestore instances in the selected VPC network.
  core.String reservedIpRange;

  NetworkConfig();

  NetworkConfig.fromJson(core.Map _json) {
    if (_json.containsKey("ipAddresses")) {
      ipAddresses = (_json["ipAddresses"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("modes")) {
      modes = (_json["modes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("network")) {
      network = _json["network"];
    }
    if (_json.containsKey("reservedIpRange")) {
      reservedIpRange = _json["reservedIpRange"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ipAddresses != null) {
      _json["ipAddresses"] = ipAddresses;
    }
    if (modes != null) {
      _json["modes"] = modes;
    }
    if (network != null) {
      _json["network"] = network;
    }
    if (reservedIpRange != null) {
      _json["reservedIpRange"] = reservedIpRange;
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

/// Represents the metadata of the long-running operation.
class OperationMetadata {
  /// [Output only] API version used to start the operation.
  core.String apiVersion;

  /// [Output only] Identifies whether the user has requested cancellation
  /// of the operation. Operations that have successfully been cancelled
  /// have Operation.error value with a google.rpc.Status.code of 1,
  /// corresponding to `Code.CANCELLED`.
  core.bool cancelRequested;

  /// [Output only] The time the operation was created.
  core.String createTime;

  /// [Output only] The time the operation finished running.
  core.String endTime;

  /// [Output only] Human-readable status of the operation, if any.
  core.String statusDetail;

  /// [Output only] Server-defined resource path for the target of the
  /// operation.
  core.String target;

  /// [Output only] Name of the verb executed by the operation.
  core.String verb;

  OperationMetadata();

  OperationMetadata.fromJson(core.Map _json) {
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
