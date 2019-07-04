// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.bigtableadmin.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client bigtableadmin/v2';

/// Administer your Cloud Bigtable tables and instances.
class BigtableadminApi {
  /// Administer your Cloud Bigtable tables and clusters
  static const BigtableAdminScope =
      "https://www.googleapis.com/auth/bigtable.admin";

  /// Administer your Cloud Bigtable clusters
  static const BigtableAdminClusterScope =
      "https://www.googleapis.com/auth/bigtable.admin.cluster";

  /// Administer your Cloud Bigtable clusters
  static const BigtableAdminInstanceScope =
      "https://www.googleapis.com/auth/bigtable.admin.instance";

  /// Administer your Cloud Bigtable tables
  static const BigtableAdminTableScope =
      "https://www.googleapis.com/auth/bigtable.admin.table";

  /// Administer your Cloud Bigtable tables and clusters
  static const CloudBigtableAdminScope =
      "https://www.googleapis.com/auth/cloud-bigtable.admin";

  /// Administer your Cloud Bigtable clusters
  static const CloudBigtableAdminClusterScope =
      "https://www.googleapis.com/auth/cloud-bigtable.admin.cluster";

  /// Administer your Cloud Bigtable tables
  static const CloudBigtableAdminTableScope =
      "https://www.googleapis.com/auth/cloud-bigtable.admin.table";

  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View your data across Google Cloud Platform services
  static const CloudPlatformReadOnlyScope =
      "https://www.googleapis.com/auth/cloud-platform.read-only";

  final commons.ApiRequester _requester;

  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  BigtableadminApi(http.Client client,
      {core.String rootUrl = "https://bigtableadmin.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsProjectsResourceApi get projects =>
      new OperationsProjectsResourceApi(_requester);

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class OperationsProjectsResourceApi {
  final commons.ApiRequester _requester;

  OperationsProjectsOperationsResourceApi get operations =>
      new OperationsProjectsOperationsResourceApi(_requester);

  OperationsProjectsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class OperationsProjectsOperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsProjectsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

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
  /// Value must have pattern "^operations/projects/.+$".
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
        'v2/' + commons.Escaper.ecapeVariableReserved('$name') + '/operations';

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

  ProjectsInstancesResourceApi get instances =>
      new ProjectsInstancesResourceApi(_requester);
  ProjectsLocationsResourceApi get locations =>
      new ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsInstancesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesAppProfilesResourceApi get appProfiles =>
      new ProjectsInstancesAppProfilesResourceApi(_requester);
  ProjectsInstancesClustersResourceApi get clusters =>
      new ProjectsInstancesClustersResourceApi(_requester);
  ProjectsInstancesTablesResourceApi get tables =>
      new ProjectsInstancesTablesResourceApi(_requester);

  ProjectsInstancesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Create an instance within a project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The unique name of the project in which to create the new
  /// instance.
  /// Values are of the form `projects/<project>`.
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Operation> create(
      CreateInstanceRequest request, core.String parent,
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

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/instances';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Delete an instance from a project.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the instance to be deleted.
  /// Values are of the form `projects/<project>/instances/<instance>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets information about an instance.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the requested instance. Values are of the form
  /// `projects/<project>/instances/<instance>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Instance.fromJson(data));
  }

  /// Gets the access control policy for an instance resource. Returns an empty
  /// policy if an instance exists but does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
      GetIamPolicyRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists information about instances in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The unique name of the project for which a list of instances is
  /// requested.
  /// Values are of the form `projects/<project>`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - DEPRECATED: This field is unused and ignored.
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
      {core.String pageToken, core.String $fields}) {
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/instances';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListInstancesResponse.fromJson(data));
  }

  /// Partially updates an instance within a project. This method can modify all
  /// fields of an Instance and is the preferred way to update an Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - (`OutputOnly`)
  /// The unique name of the instance. Values are of the form
  /// `projects/<project>/instances/a-z+[a-z0-9]`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [updateMask] - The subset of Instance fields which should be replaced.
  /// Must be explicitly set.
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
  async.Future<Operation> partialUpdateInstance(
      Instance request, core.String name,
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Sets the access control policy on an instance resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
      SetIamPolicyRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Returns permissions that the caller has on the specified instance
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
      TestIamPermissionsRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }

  /// Updates an instance within a project. This method updates only the display
  /// name and type for an Instance. To update other Instance properties, such
  /// as
  /// labels, use PartialUpdateInstance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - (`OutputOnly`)
  /// The unique name of the instance. Values are of the form
  /// `projects/<project>/instances/a-z+[a-z0-9]`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
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
  async.Future<Instance> update(Instance request, core.String name,
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Instance.fromJson(data));
  }
}

class ProjectsInstancesAppProfilesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesAppProfilesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates an app profile within an instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The unique name of the instance in which to create the new app
  /// profile.
  /// Values are of the form
  /// `projects/<project>/instances/<instance>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [appProfileId] - The ID to be used when referring to the new app profile
  /// within its
  /// instance, e.g., just `myprofile` rather than
  /// `projects/myproject/instances/myinstance/appProfiles/myprofile`.
  ///
  /// [ignoreWarnings] - If true, ignore safety checks when creating the app
  /// profile.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppProfile> create(AppProfile request, core.String parent,
      {core.String appProfileId,
      core.bool ignoreWarnings,
      core.String $fields}) {
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
    if (appProfileId != null) {
      _queryParams["appProfileId"] = [appProfileId];
    }
    if (ignoreWarnings != null) {
      _queryParams["ignoreWarnings"] = ["${ignoreWarnings}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/appProfiles';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AppProfile.fromJson(data));
  }

  /// Deletes an app profile from an instance.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the app profile to be deleted. Values are of
  /// the form
  /// `projects/<project>/instances/<instance>/appProfiles/<app_profile>`.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/appProfiles/[^/]+$".
  ///
  /// [ignoreWarnings] - If true, ignore safety checks when deleting the app
  /// profile.
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
  async.Future<Empty> delete(core.String name,
      {core.bool ignoreWarnings, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (ignoreWarnings != null) {
      _queryParams["ignoreWarnings"] = ["${ignoreWarnings}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets information about an app profile.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the requested app profile. Values are of the
  /// form
  /// `projects/<project>/instances/<instance>/appProfiles/<app_profile>`.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/appProfiles/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AppProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AppProfile> get(core.String name, {core.String $fields}) {
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AppProfile.fromJson(data));
  }

  /// Lists information about app profiles in an instance.
  ///
  /// Request parameters:
  ///
  /// [parent] - The unique name of the instance for which a list of app
  /// profiles is
  /// requested. Values are of the form
  /// `projects/<project>/instances/<instance>`.
  /// Use `<instance> = '-'` to list AppProfiles for all Instances in a project,
  /// e.g., `projects/myproject/instances/-`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [pageToken] - The value of `next_page_token` returned by a previous call.
  ///
  /// [pageSize] - Maximum number of results per page.
  /// CURRENTLY UNIMPLEMENTED AND IGNORED.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAppProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAppProfilesResponse> list(core.String parent,
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

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/appProfiles';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListAppProfilesResponse.fromJson(data));
  }

  /// Updates an app profile within an instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - (`OutputOnly`)
  /// The unique name of the app profile. Values are of the form
  /// `projects/<project>/instances/<instance>/appProfiles/_a-zA-Z0-9*`.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/appProfiles/[^/]+$".
  ///
  /// [ignoreWarnings] - If true, ignore safety checks when updating the app
  /// profile.
  ///
  /// [updateMask] - The subset of app profile fields which should be replaced.
  /// If unset, all fields will be replaced.
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
  async.Future<Operation> patch(AppProfile request, core.String name,
      {core.bool ignoreWarnings, core.String updateMask, core.String $fields}) {
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
    if (ignoreWarnings != null) {
      _queryParams["ignoreWarnings"] = ["${ignoreWarnings}"];
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ProjectsInstancesClustersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesClustersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a cluster within an instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The unique name of the instance in which to create the new
  /// cluster.
  /// Values are of the form
  /// `projects/<project>/instances/<instance>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [clusterId] - The ID to be used when referring to the new cluster within
  /// its instance,
  /// e.g., just `mycluster` rather than
  /// `projects/myproject/instances/myinstance/clusters/mycluster`.
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
  async.Future<Operation> create(Cluster request, core.String parent,
      {core.String clusterId, core.String $fields}) {
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
    if (clusterId != null) {
      _queryParams["clusterId"] = [clusterId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/clusters';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes a cluster from an instance.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the cluster to be deleted. Values are of the
  /// form
  /// `projects/<project>/instances/<instance>/clusters/<cluster>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets information about a cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the requested cluster. Values are of the form
  /// `projects/<project>/instances/<instance>/clusters/<cluster>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Cluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Cluster> get(core.String name, {core.String $fields}) {
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Cluster.fromJson(data));
  }

  /// Lists information about clusters in an instance.
  ///
  /// Request parameters:
  ///
  /// [parent] - The unique name of the instance for which a list of clusters is
  /// requested.
  /// Values are of the form `projects/<project>/instances/<instance>`.
  /// Use `<instance> = '-'` to list Clusters for all Instances in a project,
  /// e.g., `projects/myproject/instances/-`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [pageToken] - DEPRECATED: This field is unused and ignored.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClustersResponse> list(core.String parent,
      {core.String pageToken, core.String $fields}) {
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/clusters';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListClustersResponse.fromJson(data));
  }

  /// Updates a cluster within an instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - (`OutputOnly`)
  /// The unique name of the cluster. Values are of the form
  /// `projects/<project>/instances/<instance>/clusters/a-z*`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$".
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
  async.Future<Operation> update(Cluster request, core.String name,
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ProjectsInstancesTablesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesTablesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Checks replication consistency based on a consistency token, that is, if
  /// replication has caught up based on the conditions specified in the token
  /// and the check request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the Table for which to check replication
  /// consistency.
  /// Values are of the form
  /// `projects/<project>/instances/<instance>/tables/<table>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/tables/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckConsistencyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckConsistencyResponse> checkConsistency(
      CheckConsistencyRequest request, core.String name,
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

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':checkConsistency';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new CheckConsistencyResponse.fromJson(data));
  }

  /// Creates a new table in the specified instance.
  /// The table can be created with a full set of initial column families,
  /// specified in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The unique name of the instance in which to create the table.
  /// Values are of the form `projects/<project>/instances/<instance>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> create(CreateTableRequest request, core.String parent,
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/tables';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Table.fromJson(data));
  }

  /// Permanently deletes a specified table and all of its data.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the table to be deleted.
  /// Values are of the form
  /// `projects/<project>/instances/<instance>/tables/<table>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/tables/[^/]+$".
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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Permanently drop/delete a row range from a specified table. The request
  /// can
  /// specify whether to delete all rows in a table, or only those that match a
  /// particular prefix.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the table on which to drop a range of rows.
  /// Values are of the form
  /// `projects/<project>/instances/<instance>/tables/<table>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/tables/[^/]+$".
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
  async.Future<Empty> dropRowRange(
      DropRowRangeRequest request, core.String name,
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

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':dropRowRange';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Generates a consistency token for a Table, which can be used in
  /// CheckConsistency to check whether mutations to the table that finished
  /// before this call started have been replicated. The tokens will be
  /// available
  /// for 90 days.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the Table for which to create a consistency
  /// token.
  /// Values are of the form
  /// `projects/<project>/instances/<instance>/tables/<table>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/tables/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateConsistencyTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateConsistencyTokenResponse> generateConsistencyToken(
      GenerateConsistencyTokenRequest request, core.String name,
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

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':generateConsistencyToken';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GenerateConsistencyTokenResponse.fromJson(data));
  }

  /// Gets metadata information about the specified table.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the requested table.
  /// Values are of the form
  /// `projects/<project>/instances/<instance>/tables/<table>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/tables/[^/]+$".
  ///
  /// [view] - The view to be applied to the returned table's fields.
  /// Defaults to `SCHEMA_VIEW` if unspecified.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : A VIEW_UNSPECIFIED.
  /// - "NAME_ONLY" : A NAME_ONLY.
  /// - "SCHEMA_VIEW" : A SCHEMA_VIEW.
  /// - "REPLICATION_VIEW" : A REPLICATION_VIEW.
  /// - "FULL" : A FULL.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> get(core.String name,
      {core.String view, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Table.fromJson(data));
  }

  /// Gets the access control policy for an instance resource. Returns an empty
  /// policy if an table exists but does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/tables/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
      GetIamPolicyRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Lists all tables served from a specified instance.
  ///
  /// Request parameters:
  ///
  /// [parent] - The unique name of the instance for which tables should be
  /// listed.
  /// Values are of the form `projects/<project>/instances/<instance>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [pageToken] - The value of `next_page_token` returned by a previous call.
  ///
  /// [pageSize] - Maximum number of results per page.
  ///
  /// A page_size of zero lets the server choose the number of items to return.
  /// A page_size which is strictly positive will return at most that many
  /// items.
  /// A negative page_size will cause an error.
  ///
  /// Following the first request, subsequent paginated calls are not required
  /// to pass a page_size. If a page_size is set in subsequent calls, it must
  /// match the page_size given in the first request.
  ///
  /// [view] - The view to be applied to the returned tables' fields.
  /// Defaults to `NAME_ONLY` if unspecified; no others are currently supported.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : A VIEW_UNSPECIFIED.
  /// - "NAME_ONLY" : A NAME_ONLY.
  /// - "SCHEMA_VIEW" : A SCHEMA_VIEW.
  /// - "REPLICATION_VIEW" : A REPLICATION_VIEW.
  /// - "FULL" : A FULL.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTablesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTablesResponse> list(core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String view,
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
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/tables';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTablesResponse.fromJson(data));
  }

  /// Performs a series of column family modifications on the specified table.
  /// Either all or none of the modifications will occur before this method
  /// returns, but data requests received prior to that point may see a table
  /// where only some modifications have taken effect.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the table whose families should be modified.
  /// Values are of the form
  /// `projects/<project>/instances/<instance>/tables/<table>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/tables/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> modifyColumnFamilies(
      ModifyColumnFamiliesRequest request, core.String name,
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

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':modifyColumnFamilies';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Table.fromJson(data));
  }

  /// Sets the access control policy on a table resource. Replaces any existing
  /// policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/tables/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
      SetIamPolicyRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Policy.fromJson(data));
  }

  /// Returns permissions that the caller has on the specified table resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested.
  /// See the operation documentation for the appropriate value for this field.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/tables/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
      TestIamPermissionsRequest request, core.String resource,
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
    if (resource == null) {
      throw new core.ArgumentError("Parameter resource is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new TestIamPermissionsResponse.fromJson(data));
  }
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

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

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

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
        'v2/' + commons.Escaper.ecapeVariableReserved('$name') + '/locations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLocationsResponse.fromJson(data));
  }
}

/// A configuration object describing how Cloud Bigtable should treat traffic
/// from a particular end user application.
class AppProfile {
  /// Optional long form description of the use case for this AppProfile.
  core.String description;

  /// Strongly validated etag for optimistic concurrency control. Preserve the
  /// value returned from `GetAppProfile` when calling `UpdateAppProfile` to
  /// fail the request if there has been a modification in the mean time. The
  /// `update_mask` of the request need not include `etag` for this protection
  /// to apply.
  /// See [Wikipedia](https://en.wikipedia.org/wiki/HTTP_ETag) and
  /// [RFC 7232](https://tools.ietf.org/html/rfc7232#section-2.3) for more
  /// details.
  core.String etag;

  /// Use a multi-cluster routing policy that may pick any cluster.
  MultiClusterRoutingUseAny multiClusterRoutingUseAny;

  /// (`OutputOnly`)
  /// The unique name of the app profile. Values are of the form
  /// `projects/<project>/instances/<instance>/appProfiles/_a-zA-Z0-9*`.
  core.String name;

  /// Use a single-cluster routing policy.
  SingleClusterRouting singleClusterRouting;

  AppProfile();

  AppProfile.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("multiClusterRoutingUseAny")) {
      multiClusterRoutingUseAny = new MultiClusterRoutingUseAny.fromJson(
          _json["multiClusterRoutingUseAny"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("singleClusterRouting")) {
      singleClusterRouting =
          new SingleClusterRouting.fromJson(_json["singleClusterRouting"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (multiClusterRoutingUseAny != null) {
      _json["multiClusterRoutingUseAny"] = (multiClusterRoutingUseAny).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (singleClusterRouting != null) {
      _json["singleClusterRouting"] = (singleClusterRouting).toJson();
    }
    return _json;
  }
}

/// Specifies the audit configuration for a service.
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging.
/// An AuditConfig must have one or more AuditLogConfigs.
///
/// If there are AuditConfigs for both `allServices` and a specific service,
/// the union of the two AuditConfigs is used for that service: the log_types
/// specified in each AuditConfig are enabled, and the exempted_members in each
/// AuditLogConfig are exempted.
///
/// Example Policy with multiple AuditConfigs:
///
///     {
///       "audit_configs": [
///         {
///           "service": "allServices"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///               "exempted_members": [
///                 "user:foo@gmail.com"
///               ]
///             },
///             {
///               "log_type": "DATA_WRITE",
///             },
///             {
///               "log_type": "ADMIN_READ",
///             }
///           ]
///         },
///         {
///           "service": "fooservice.googleapis.com"
///           "audit_log_configs": [
///             {
///               "log_type": "DATA_READ",
///             },
///             {
///               "log_type": "DATA_WRITE",
///               "exempted_members": [
///                 "user:bar@gmail.com"
///               ]
///             }
///           ]
///         }
///       ]
///     }
///
/// For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts foo@gmail.com from DATA_READ logging, and
/// bar@gmail.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey("auditLogConfigs")) {
      auditLogConfigs = (_json["auditLogConfigs"] as core.List)
          .map<AuditLogConfig>((value) => new AuditLogConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("service")) {
      service = _json["service"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditLogConfigs != null) {
      _json["auditLogConfigs"] =
          auditLogConfigs.map((value) => (value).toJson()).toList();
    }
    if (service != null) {
      _json["service"] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions.
/// Example:
///
///     {
///       "audit_log_configs": [
///         {
///           "log_type": "DATA_READ",
///           "exempted_members": [
///             "user:foo@gmail.com"
///           ]
///         },
///         {
///           "log_type": "DATA_WRITE",
///         }
///       ]
///     }
///
/// This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
/// foo@gmail.com from DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission.
  /// Follows the same format of Binding.members.
  core.List<core.String> exemptedMembers;

  /// The log type that this config enables.
  /// Possible string values are:
  /// - "LOG_TYPE_UNSPECIFIED" : Default case. Should never be this.
  /// - "ADMIN_READ" : Admin reads. Example: CloudIAM getIamPolicy
  /// - "DATA_WRITE" : Data writes. Example: CloudSQL Users create
  /// - "DATA_READ" : Data reads. Example: CloudSQL Users list
  core.String logType;

  AuditLogConfig();

  AuditLogConfig.fromJson(core.Map _json) {
    if (_json.containsKey("exemptedMembers")) {
      exemptedMembers =
          (_json["exemptedMembers"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("logType")) {
      logType = _json["logType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exemptedMembers != null) {
      _json["exemptedMembers"] = exemptedMembers;
    }
    if (logType != null) {
      _json["logType"] = logType;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  /// NOTE: An unsatisfied condition will not allow user access via current
  /// binding. Different bindings, including their conditions, are examined
  /// independently.
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values:
  ///
  /// * `allUsers`: A special identifier that represents anyone who is
  ///    on the internet; with or without a Google account.
  ///
  /// * `allAuthenticatedUsers`: A special identifier that represents anyone
  ///    who is authenticated with a Google account or a service account.
  ///
  /// * `user:{emailid}`: An email address that represents a specific Google
  ///    account. For example, `alice@gmail.com` .
  ///
  ///
  /// * `serviceAccount:{emailid}`: An email address that represents a service
  ///    account. For example, `my-other-app@appspot.gserviceaccount.com`.
  ///
  /// * `group:{emailid}`: An email address that represents a Google group.
  ///    For example, `admins@example.com`.
  ///
  ///
  /// * `domain:{domain}`: The G Suite domain (primary) that represents all the
  ///    users of that domain. For example, `google.com` or `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`.
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey("condition")) {
      condition = new Expr.fromJson(_json["condition"]);
    }
    if (_json.containsKey("members")) {
      members = (_json["members"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (condition != null) {
      _json["condition"] = (condition).toJson();
    }
    if (members != null) {
      _json["members"] = members;
    }
    if (role != null) {
      _json["role"] = role;
    }
    return _json;
  }
}

/// Request message for
/// google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency
class CheckConsistencyRequest {
  /// The token created using GenerateConsistencyToken for the Table.
  core.String consistencyToken;

  CheckConsistencyRequest();

  CheckConsistencyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("consistencyToken")) {
      consistencyToken = _json["consistencyToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consistencyToken != null) {
      _json["consistencyToken"] = consistencyToken;
    }
    return _json;
  }
}

/// Response message for
/// google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency
class CheckConsistencyResponse {
  /// True only if the token is consistent. A token is consistent if replication
  /// has caught up with the restrictions specified in the request.
  core.bool consistent;

  CheckConsistencyResponse();

  CheckConsistencyResponse.fromJson(core.Map _json) {
    if (_json.containsKey("consistent")) {
      consistent = _json["consistent"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consistent != null) {
      _json["consistent"] = consistent;
    }
    return _json;
  }
}

/// A resizable group of nodes in a particular cloud location, capable
/// of serving all Tables in the parent
/// Instance.
class Cluster {
  /// (`CreationOnly`)
  /// The type of storage used by this cluster to serve its
  /// parent instance's tables, unless explicitly overridden.
  /// Possible string values are:
  /// - "STORAGE_TYPE_UNSPECIFIED" : The user did not specify a storage type.
  /// - "SSD" : Flash (SSD) storage should be used.
  /// - "HDD" : Magnetic drive (HDD) storage should be used.
  core.String defaultStorageType;

  /// (`CreationOnly`)
  /// The location where this cluster's nodes and storage reside. For best
  /// performance, clients should be located as close as possible to this
  /// cluster. Currently only zones are supported, so values should be of the
  /// form `projects/<project>/locations/<zone>`.
  core.String location;

  /// (`OutputOnly`)
  /// The unique name of the cluster. Values are of the form
  /// `projects/<project>/instances/<instance>/clusters/a-z*`.
  core.String name;

  /// The number of nodes allocated to this cluster. More nodes enable higher
  /// throughput and more consistent performance.
  core.int serveNodes;

  /// (`OutputOnly`)
  /// The current state of the cluster.
  /// Possible string values are:
  /// - "STATE_NOT_KNOWN" : The state of the cluster could not be determined.
  /// - "READY" : The cluster has been successfully created and is ready to
  /// serve requests.
  /// - "CREATING" : The cluster is currently being created, and may be
  /// destroyed
  /// if the creation process encounters an error.
  /// A cluster may not be able to serve requests while being created.
  /// - "RESIZING" : The cluster is currently being resized, and may revert to
  /// its previous
  /// node count if the process encounters an error.
  /// A cluster is still capable of serving requests while being resized,
  /// but may exhibit performance as if its number of allocated nodes is
  /// between the starting and requested states.
  /// - "DISABLED" : The cluster has no backing nodes. The data (tables) still
  /// exist, but no operations can be performed on the cluster.
  core.String state;

  Cluster();

  Cluster.fromJson(core.Map _json) {
    if (_json.containsKey("defaultStorageType")) {
      defaultStorageType = _json["defaultStorageType"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("serveNodes")) {
      serveNodes = _json["serveNodes"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultStorageType != null) {
      _json["defaultStorageType"] = defaultStorageType;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (serveNodes != null) {
      _json["serveNodes"] = serveNodes;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// The state of a table's data in a particular cluster.
class ClusterState {
  /// Output only.
  /// The state of replication for the table in this cluster.
  /// Possible string values are:
  /// - "STATE_NOT_KNOWN" : The replication state of the table is unknown in
  /// this cluster.
  /// - "INITIALIZING" : The cluster was recently created, and the table must
  /// finish copying
  /// over pre-existing data from other clusters before it can begin
  /// receiving live replication updates and serving Data API requests.
  /// - "PLANNED_MAINTENANCE" : The table is temporarily unable to serve Data
  /// API requests from this
  /// cluster due to planned internal maintenance.
  /// - "UNPLANNED_MAINTENANCE" : The table is temporarily unable to serve Data
  /// API requests from this
  /// cluster due to unplanned or emergency maintenance.
  /// - "READY" : The table can serve Data API requests from this cluster.
  /// Depending on
  /// replication delay, reads may not immediately reflect the state of the
  /// table in other clusters.
  core.String replicationState;

  ClusterState();

  ClusterState.fromJson(core.Map _json) {
    if (_json.containsKey("replicationState")) {
      replicationState = _json["replicationState"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (replicationState != null) {
      _json["replicationState"] = replicationState;
    }
    return _json;
  }
}

/// A set of columns within a table which share a common configuration.
class ColumnFamily {
  /// Garbage collection rule specified as a protobuf.
  /// Must serialize to at most 500 bytes.
  ///
  /// NOTE: Garbage collection executes opportunistically in the background, and
  /// so it's possible for reads to return a cell even if it matches the active
  /// GC expression for its family.
  GcRule gcRule;

  ColumnFamily();

  ColumnFamily.fromJson(core.Map _json) {
    if (_json.containsKey("gcRule")) {
      gcRule = new GcRule.fromJson(_json["gcRule"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gcRule != null) {
      _json["gcRule"] = (gcRule).toJson();
    }
    return _json;
  }
}

/// The metadata for the Operation returned by CreateCluster.
class CreateClusterMetadata {
  /// The time at which the operation failed or was completed successfully.
  core.String finishTime;

  /// The request that prompted the initiation of this CreateCluster operation.
  CreateClusterRequest originalRequest;

  /// The time at which the original request was received.
  core.String requestTime;

  /// Keys: the full `name` of each table that existed in the instance when
  /// CreateCluster was first called, i.e.
  /// `projects/<project>/instances/<instance>/tables/<table>`. Any table added
  /// to the instance by a later API call will be created in the new cluster by
  /// that API call, not this one.
  ///
  /// Values: information on how much of a table's data has been copied to the
  /// newly-created cluster so far.
  core.Map<core.String, TableProgress> tables;

  CreateClusterMetadata();

  CreateClusterMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("finishTime")) {
      finishTime = _json["finishTime"];
    }
    if (_json.containsKey("originalRequest")) {
      originalRequest =
          new CreateClusterRequest.fromJson(_json["originalRequest"]);
    }
    if (_json.containsKey("requestTime")) {
      requestTime = _json["requestTime"];
    }
    if (_json.containsKey("tables")) {
      tables = commons.mapMap<core.Map, TableProgress>(
          _json["tables"].cast<core.String, core.Map>(),
          (core.Map item) => new TableProgress.fromJson(item));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (finishTime != null) {
      _json["finishTime"] = finishTime;
    }
    if (originalRequest != null) {
      _json["originalRequest"] = (originalRequest).toJson();
    }
    if (requestTime != null) {
      _json["requestTime"] = requestTime;
    }
    if (tables != null) {
      _json["tables"] =
          commons.mapMap<TableProgress, core.Map<core.String, core.Object>>(
              tables, (TableProgress item) => (item).toJson());
    }
    return _json;
  }
}

/// Request message for BigtableInstanceAdmin.CreateCluster.
class CreateClusterRequest {
  /// The cluster to be created.
  /// Fields marked `OutputOnly` must be left blank.
  Cluster cluster;

  /// The ID to be used when referring to the new cluster within its instance,
  /// e.g., just `mycluster` rather than
  /// `projects/myproject/instances/myinstance/clusters/mycluster`.
  core.String clusterId;

  /// The unique name of the instance in which to create the new cluster.
  /// Values are of the form
  /// `projects/<project>/instances/<instance>`.
  core.String parent;

  CreateClusterRequest();

  CreateClusterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("cluster")) {
      cluster = new Cluster.fromJson(_json["cluster"]);
    }
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cluster != null) {
      _json["cluster"] = (cluster).toJson();
    }
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    return _json;
  }
}

/// The metadata for the Operation returned by CreateInstance.
class CreateInstanceMetadata {
  /// The time at which the operation failed or was completed successfully.
  core.String finishTime;

  /// The request that prompted the initiation of this CreateInstance operation.
  CreateInstanceRequest originalRequest;

  /// The time at which the original request was received.
  core.String requestTime;

  CreateInstanceMetadata();

  CreateInstanceMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("finishTime")) {
      finishTime = _json["finishTime"];
    }
    if (_json.containsKey("originalRequest")) {
      originalRequest =
          new CreateInstanceRequest.fromJson(_json["originalRequest"]);
    }
    if (_json.containsKey("requestTime")) {
      requestTime = _json["requestTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (finishTime != null) {
      _json["finishTime"] = finishTime;
    }
    if (originalRequest != null) {
      _json["originalRequest"] = (originalRequest).toJson();
    }
    if (requestTime != null) {
      _json["requestTime"] = requestTime;
    }
    return _json;
  }
}

/// Request message for BigtableInstanceAdmin.CreateInstance.
class CreateInstanceRequest {
  /// The clusters to be created within the instance, mapped by desired
  /// cluster ID, e.g., just `mycluster` rather than
  /// `projects/myproject/instances/myinstance/clusters/mycluster`.
  /// Fields marked `OutputOnly` must be left blank.
  /// Currently, at most two clusters can be specified.
  core.Map<core.String, Cluster> clusters;

  /// The instance to create.
  /// Fields marked `OutputOnly` must be left blank.
  Instance instance;

  /// The ID to be used when referring to the new instance within its project,
  /// e.g., just `myinstance` rather than
  /// `projects/myproject/instances/myinstance`.
  core.String instanceId;

  /// The unique name of the project in which to create the new instance.
  /// Values are of the form `projects/<project>`.
  core.String parent;

  CreateInstanceRequest();

  CreateInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("clusters")) {
      clusters = commons.mapMap<core.Map, Cluster>(
          _json["clusters"].cast<core.String, core.Map>(),
          (core.Map item) => new Cluster.fromJson(item));
    }
    if (_json.containsKey("instance")) {
      instance = new Instance.fromJson(_json["instance"]);
    }
    if (_json.containsKey("instanceId")) {
      instanceId = _json["instanceId"];
    }
    if (_json.containsKey("parent")) {
      parent = _json["parent"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusters != null) {
      _json["clusters"] =
          commons.mapMap<Cluster, core.Map<core.String, core.Object>>(
              clusters, (Cluster item) => (item).toJson());
    }
    if (instance != null) {
      _json["instance"] = (instance).toJson();
    }
    if (instanceId != null) {
      _json["instanceId"] = instanceId;
    }
    if (parent != null) {
      _json["parent"] = parent;
    }
    return _json;
  }
}

/// Request message for
/// google.bigtable.admin.v2.BigtableTableAdmin.CreateTable
class CreateTableRequest {
  /// The optional list of row keys that will be used to initially split the
  /// table into several tablets (tablets are similar to HBase regions).
  /// Given two split keys, `s1` and `s2`, three tablets will be created,
  /// spanning the key ranges: `[, s1), [s1, s2), [s2, )`.
  ///
  /// Example:
  ///
  /// * Row keys := `["a", "apple", "custom", "customer_1", "customer_2",`
  ///                `"other", "zz"]`
  /// * initial_split_keys := `["apple", "customer_1", "customer_2", "other"]`
  /// * Key assignment:
  ///     - Tablet 1 `[, apple)                => {"a"}.`
  ///     - Tablet 2 `[apple, customer_1)      => {"apple", "custom"}.`
  ///     - Tablet 3 `[customer_1, customer_2) => {"customer_1"}.`
  ///     - Tablet 4 `[customer_2, other)      => {"customer_2"}.`
  ///     - Tablet 5 `[other, )                => {"other", "zz"}.`
  core.List<Split> initialSplits;

  /// The Table to create.
  Table table;

  /// The name by which the new table should be referred to within the parent
  /// instance, e.g., `foobar` rather than `<parent>/tables/foobar`.
  core.String tableId;

  CreateTableRequest();

  CreateTableRequest.fromJson(core.Map _json) {
    if (_json.containsKey("initialSplits")) {
      initialSplits = (_json["initialSplits"] as core.List)
          .map<Split>((value) => new Split.fromJson(value))
          .toList();
    }
    if (_json.containsKey("table")) {
      table = new Table.fromJson(_json["table"]);
    }
    if (_json.containsKey("tableId")) {
      tableId = _json["tableId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (initialSplits != null) {
      _json["initialSplits"] =
          initialSplits.map((value) => (value).toJson()).toList();
    }
    if (table != null) {
      _json["table"] = (table).toJson();
    }
    if (tableId != null) {
      _json["tableId"] = tableId;
    }
    return _json;
  }
}

/// Request message for
/// google.bigtable.admin.v2.BigtableTableAdmin.DropRowRange
class DropRowRangeRequest {
  /// Delete all rows in the table. Setting this to false is a no-op.
  core.bool deleteAllDataFromTable;

  /// Delete all rows that start with this row key prefix. Prefix cannot be
  /// zero length.
  core.String rowKeyPrefix;
  core.List<core.int> get rowKeyPrefixAsBytes {
    return convert.base64.decode(rowKeyPrefix);
  }

  set rowKeyPrefixAsBytes(core.List<core.int> _bytes) {
    rowKeyPrefix =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  DropRowRangeRequest();

  DropRowRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey("deleteAllDataFromTable")) {
      deleteAllDataFromTable = _json["deleteAllDataFromTable"];
    }
    if (_json.containsKey("rowKeyPrefix")) {
      rowKeyPrefix = _json["rowKeyPrefix"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deleteAllDataFromTable != null) {
      _json["deleteAllDataFromTable"] = deleteAllDataFromTable;
    }
    if (rowKeyPrefix != null) {
      _json["rowKeyPrefix"] = rowKeyPrefix;
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

/// Represents an expression text. Example:
///
///     title: "User account presence"
///     description: "Determines whether the request has a user account"
///     expression: "size(request.user) > 0"
class Expr {
  /// An optional description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in
  /// Common Expression Language syntax.
  ///
  /// The application context of the containing message determines which
  /// well-known feature set of CEL is supported.
  core.String expression;

  /// An optional string indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// An optional title for the expression, i.e. a short string describing
  /// its purpose. This can be used e.g. in UIs which allow to enter the
  /// expression.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("expression")) {
      expression = _json["expression"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (expression != null) {
      _json["expression"] = expression;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Rule for determining which cells to delete during garbage collection.
class GcRule {
  /// Delete cells that would be deleted by every nested rule.
  Intersection intersection;

  /// Delete cells in a column older than the given age.
  /// Values must be at least one millisecond, and will be truncated to
  /// microsecond granularity.
  core.String maxAge;

  /// Delete all cells in a column except the most recent N.
  core.int maxNumVersions;

  /// Delete cells that would be deleted by any nested rule.
  Union union;

  GcRule();

  GcRule.fromJson(core.Map _json) {
    if (_json.containsKey("intersection")) {
      intersection = new Intersection.fromJson(_json["intersection"]);
    }
    if (_json.containsKey("maxAge")) {
      maxAge = _json["maxAge"];
    }
    if (_json.containsKey("maxNumVersions")) {
      maxNumVersions = _json["maxNumVersions"];
    }
    if (_json.containsKey("union")) {
      union = new Union.fromJson(_json["union"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (intersection != null) {
      _json["intersection"] = (intersection).toJson();
    }
    if (maxAge != null) {
      _json["maxAge"] = maxAge;
    }
    if (maxNumVersions != null) {
      _json["maxNumVersions"] = maxNumVersions;
    }
    if (union != null) {
      _json["union"] = (union).toJson();
    }
    return _json;
  }
}

/// Request message for
/// google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken
class GenerateConsistencyTokenRequest {
  GenerateConsistencyTokenRequest();

  GenerateConsistencyTokenRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Response message for
/// google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken
class GenerateConsistencyTokenResponse {
  /// The generated consistency token.
  core.String consistencyToken;

  GenerateConsistencyTokenResponse();

  GenerateConsistencyTokenResponse.fromJson(core.Map _json) {
    if (_json.containsKey("consistencyToken")) {
      consistencyToken = _json["consistencyToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (consistencyToken != null) {
      _json["consistencyToken"] = consistencyToken;
    }
    return _json;
  }
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  GetIamPolicyRequest();

  GetIamPolicyRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A collection of Bigtable Tables and
/// the resources that serve them.
/// All tables in an instance are served from all
/// Clusters in the instance.
class Instance {
  /// The descriptive name for this instance as it appears in UIs.
  /// Can be changed at any time, but should be kept globally unique
  /// to avoid confusion.
  core.String displayName;

  /// Labels are a flexible and lightweight mechanism for organizing cloud
  /// resources into groups that reflect a customer's organizational needs and
  /// deployment strategies. They can be used to filter resources and aggregate
  /// metrics.
  ///
  /// * Label keys must be between 1 and 63 characters long and must conform to
  ///   the regular expression: `\p{Ll}\p{Lo}{0,62}`.
  /// * Label values must be between 0 and 63 characters long and must conform
  /// to
  ///   the regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`.
  /// * No more than 64 labels can be associated with a given resource.
  /// * Keys and values must both be under 128 bytes.
  core.Map<core.String, core.String> labels;

  /// (`OutputOnly`)
  /// The unique name of the instance. Values are of the form
  /// `projects/<project>/instances/a-z+[a-z0-9]`.
  core.String name;

  /// (`OutputOnly`)
  /// The current state of the instance.
  /// Possible string values are:
  /// - "STATE_NOT_KNOWN" : The state of the instance could not be determined.
  /// - "READY" : The instance has been successfully created and can serve
  /// requests
  /// to its tables.
  /// - "CREATING" : The instance is currently being created, and may be
  /// destroyed
  /// if the creation process encounters an error.
  core.String state;

  /// The type of the instance. Defaults to `PRODUCTION`.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type of the instance is unspecified. If set
  /// when creating an
  /// instance, a `PRODUCTION` instance will be created. If set when updating
  /// an instance, the type will be left unchanged.
  /// - "PRODUCTION" : An instance meant for production use. `serve_nodes` must
  /// be set
  /// on the cluster.
  /// - "DEVELOPMENT" : The instance is meant for development and testing
  /// purposes only; it has
  /// no performance or uptime guarantees and is not covered by SLA.
  /// After a development instance is created, it can be upgraded by
  /// updating the instance to type `PRODUCTION`. An instance created
  /// as a production instance cannot be changed to a development instance.
  /// When creating a development instance, `serve_nodes` on the cluster must
  /// not be set.
  core.String type;

  Instance();

  Instance.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
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
    if (name != null) {
      _json["name"] = name;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// A GcRule which deletes cells matching all of the given rules.
class Intersection {
  /// Only delete cells which would be deleted by every element of `rules`.
  core.List<GcRule> rules;

  Intersection();

  Intersection.fromJson(core.Map _json) {
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<GcRule>((value) => new GcRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for BigtableInstanceAdmin.ListAppProfiles.
class ListAppProfilesResponse {
  /// The list of requested app profiles.
  core.List<AppProfile> appProfiles;

  /// Locations from which AppProfile information could not be retrieved,
  /// due to an outage or some other transient condition.
  /// AppProfiles from these locations may be missing from `app_profiles`.
  /// Values are of the form `projects/<project>/locations/<zone_id>`
  core.List<core.String> failedLocations;

  /// Set if not all app profiles could be returned in a single response.
  /// Pass this value to `page_token` in another request to get the next
  /// page of results.
  core.String nextPageToken;

  ListAppProfilesResponse();

  ListAppProfilesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("appProfiles")) {
      appProfiles = (_json["appProfiles"] as core.List)
          .map<AppProfile>((value) => new AppProfile.fromJson(value))
          .toList();
    }
    if (_json.containsKey("failedLocations")) {
      failedLocations =
          (_json["failedLocations"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (appProfiles != null) {
      _json["appProfiles"] =
          appProfiles.map((value) => (value).toJson()).toList();
    }
    if (failedLocations != null) {
      _json["failedLocations"] = failedLocations;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for BigtableInstanceAdmin.ListClusters.
class ListClustersResponse {
  /// The list of requested clusters.
  core.List<Cluster> clusters;

  /// Locations from which Cluster information could not be retrieved,
  /// due to an outage or some other transient condition.
  /// Clusters from these locations may be missing from `clusters`,
  /// or may only have partial information returned.
  /// Values are of the form `projects/<project>/locations/<zone_id>`
  core.List<core.String> failedLocations;

  /// DEPRECATED: This field is unused and ignored.
  core.String nextPageToken;

  ListClustersResponse();

  ListClustersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clusters")) {
      clusters = (_json["clusters"] as core.List)
          .map<Cluster>((value) => new Cluster.fromJson(value))
          .toList();
    }
    if (_json.containsKey("failedLocations")) {
      failedLocations =
          (_json["failedLocations"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusters != null) {
      _json["clusters"] = clusters.map((value) => (value).toJson()).toList();
    }
    if (failedLocations != null) {
      _json["failedLocations"] = failedLocations;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for BigtableInstanceAdmin.ListInstances.
class ListInstancesResponse {
  /// Locations from which Instance information could not be retrieved,
  /// due to an outage or some other transient condition.
  /// Instances whose Clusters are all in one of the failed locations
  /// may be missing from `instances`, and Instances with at least one
  /// Cluster in a failed location may only have partial information returned.
  /// Values are of the form `projects/<project>/locations/<zone_id>`
  core.List<core.String> failedLocations;

  /// The list of requested instances.
  core.List<Instance> instances;

  /// DEPRECATED: This field is unused and ignored.
  core.String nextPageToken;

  ListInstancesResponse();

  ListInstancesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("failedLocations")) {
      failedLocations =
          (_json["failedLocations"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("instances")) {
      instances = (_json["instances"] as core.List)
          .map<Instance>((value) => new Instance.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (failedLocations != null) {
      _json["failedLocations"] = failedLocations;
    }
    if (instances != null) {
      _json["instances"] = instances.map((value) => (value).toJson()).toList();
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

/// Response message for
/// google.bigtable.admin.v2.BigtableTableAdmin.ListTables
class ListTablesResponse {
  /// Set if not all tables could be returned in a single response.
  /// Pass this value to `page_token` in another request to get the next
  /// page of results.
  core.String nextPageToken;

  /// The tables present in the requested instance.
  core.List<Table> tables;

  ListTablesResponse();

  ListTablesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("tables")) {
      tables = (_json["tables"] as core.List)
          .map<Table>((value) => new Table.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (tables != null) {
      _json["tables"] = tables.map((value) => (value).toJson()).toList();
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

/// A create, update, or delete of a particular column family.
class Modification {
  /// Create a new column family with the specified schema, or fail if
  /// one already exists with the given ID.
  ColumnFamily create;

  /// Drop (delete) the column family with the given ID, or fail if no such
  /// family exists.
  core.bool drop;

  /// The ID of the column family to be modified.
  core.String id;

  /// Update an existing column family to the specified schema, or fail
  /// if no column family exists with the given ID.
  ColumnFamily update;

  Modification();

  Modification.fromJson(core.Map _json) {
    if (_json.containsKey("create")) {
      create = new ColumnFamily.fromJson(_json["create"]);
    }
    if (_json.containsKey("drop")) {
      drop = _json["drop"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("update")) {
      update = new ColumnFamily.fromJson(_json["update"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (create != null) {
      _json["create"] = (create).toJson();
    }
    if (drop != null) {
      _json["drop"] = drop;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (update != null) {
      _json["update"] = (update).toJson();
    }
    return _json;
  }
}

/// Request message for
/// google.bigtable.admin.v2.BigtableTableAdmin.ModifyColumnFamilies
class ModifyColumnFamiliesRequest {
  /// Modifications to be atomically applied to the specified table's families.
  /// Entries are applied in order, meaning that earlier modifications can be
  /// masked by later ones (in the case of repeated updates to the same family,
  /// for example).
  core.List<Modification> modifications;

  ModifyColumnFamiliesRequest();

  ModifyColumnFamiliesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("modifications")) {
      modifications = (_json["modifications"] as core.List)
          .map<Modification>((value) => new Modification.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (modifications != null) {
      _json["modifications"] =
          modifications.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Read/write requests may be routed to any cluster in the instance, and will
/// fail over to another cluster in the event of transient errors or delays.
/// Choosing this option sacrifices read-your-writes consistency to improve
/// availability.
class MultiClusterRoutingUseAny {
  MultiClusterRoutingUseAny();

  MultiClusterRoutingUseAny.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// Request message for BigtableInstanceAdmin.PartialUpdateInstance.
class PartialUpdateInstanceRequest {
  /// The Instance which will (partially) replace the current value.
  Instance instance;

  /// The subset of Instance fields which should be replaced.
  /// Must be explicitly set.
  core.String updateMask;

  PartialUpdateInstanceRequest();

  PartialUpdateInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instance")) {
      instance = new Instance.fromJson(_json["instance"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (instance != null) {
      _json["instance"] = (instance).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// Defines an Identity and Access Management (IAM) policy. It is used to
/// specify access control policies for Cloud Platform resources.
///
///
/// A `Policy` consists of a list of `bindings`. A `binding` binds a list of
/// `members` to a `role`, where the members can be user accounts, Google
/// groups,
/// Google domains, and service accounts. A `role` is a named list of
/// permissions
/// defined by IAM.
///
/// **JSON Example**
///
///     {
///       "bindings": [
///         {
///           "role": "roles/owner",
///           "members": [
///             "user:mike@example.com",
///             "group:admins@example.com",
///             "domain:google.com",
///             "serviceAccount:my-other-app@appspot.gserviceaccount.com"
///           ]
///         },
///         {
///           "role": "roles/viewer",
///           "members": ["user:sean@example.com"]
///         }
///       ]
///     }
///
/// **YAML Example**
///
///     bindings:
///     - members:
///       - user:mike@example.com
///       - group:admins@example.com
///       - domain:google.com
///       - serviceAccount:my-other-app@appspot.gserviceaccount.com
///       role: roles/owner
///     - members:
///       - user:sean@example.com
///       role: roles/viewer
///
///
/// For a description of IAM and its features, see the
/// [IAM developer's guide](https://cloud.google.com/iam/docs).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`.
  /// `bindings` with no members will result in an error.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help
  /// prevent simultaneous updates of a policy from overwriting each other.
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy.
  ///
  /// If no `etag` is provided in the call to `setIamPolicy`, then the existing
  /// policy is overwritten blindly.
  core.String etag;
  core.List<core.int> get etagAsBytes {
    return convert.base64.decode(etag);
  }

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Deprecated.
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey("auditConfigs")) {
      auditConfigs = (_json["auditConfigs"] as core.List)
          .map<AuditConfig>((value) => new AuditConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("bindings")) {
      bindings = (_json["bindings"] as core.List)
          .map<Binding>((value) => new Binding.fromJson(value))
          .toList();
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (auditConfigs != null) {
      _json["auditConfigs"] =
          auditConfigs.map((value) => (value).toJson()).toList();
    }
    if (bindings != null) {
      _json["bindings"] = bindings.map((value) => (value).toJson()).toList();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects)
  /// might reject them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  /// Only
  /// the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used:
  /// paths: "bindings, etag"
  /// This field is only used by Cloud IAM.
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("updateMask")) {
      updateMask = _json["updateMask"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (updateMask != null) {
      _json["updateMask"] = updateMask;
    }
    return _json;
  }
}

/// Unconditionally routes all read/write requests to a specific cluster.
/// This option preserves read-your-writes consistency, but does not improve
/// availability.
class SingleClusterRouting {
  /// Whether or not `CheckAndMutateRow` and `ReadModifyWriteRow` requests are
  /// allowed by this app profile. It is unsafe to send these requests to
  /// the same table/row/column in multiple clusters.
  core.bool allowTransactionalWrites;

  /// The cluster to which read/write requests should be routed.
  core.String clusterId;

  SingleClusterRouting();

  SingleClusterRouting.fromJson(core.Map _json) {
    if (_json.containsKey("allowTransactionalWrites")) {
      allowTransactionalWrites = _json["allowTransactionalWrites"];
    }
    if (_json.containsKey("clusterId")) {
      clusterId = _json["clusterId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowTransactionalWrites != null) {
      _json["allowTransactionalWrites"] = allowTransactionalWrites;
    }
    if (clusterId != null) {
      _json["clusterId"] = clusterId;
    }
    return _json;
  }
}

/// An initial split point for a newly created table.
class Split {
  /// Row key to use as an initial tablet boundary.
  core.String key;
  core.List<core.int> get keyAsBytes {
    return convert.base64.decode(key);
  }

  set keyAsBytes(core.List<core.int> _bytes) {
    key =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  Split();

  Split.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (key != null) {
      _json["key"] = key;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). The error model is designed to be:
///
/// - Simple to use and understand for most users
/// - Flexible enough to meet unexpected needs
///
/// # Overview
///
/// The `Status` message contains three pieces of data: error code, error
/// message, and error details. The error code should be an enum value of
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

/// A collection of user data indexed by row, column, and timestamp.
/// Each table is served using the resources of its parent cluster.
class Table {
  /// Output only.
  /// Map from cluster ID to per-cluster table state.
  /// If it could not be determined whether or not the table has data in a
  /// particular cluster (for example, if its zone is unavailable), then
  /// there will be an entry for the cluster with UNKNOWN `replication_status`.
  /// Views: `REPLICATION_VIEW`, `FULL`
  core.Map<core.String, ClusterState> clusterStates;

  /// (`CreationOnly`)
  /// The column families configured for this table, mapped by column family ID.
  /// Views: `SCHEMA_VIEW`, `FULL`
  core.Map<core.String, ColumnFamily> columnFamilies;

  /// (`CreationOnly`)
  /// The granularity (i.e. `MILLIS`) at which timestamps are stored in
  /// this table. Timestamps not matching the granularity will be rejected.
  /// If unspecified at creation time, the value will be set to `MILLIS`.
  /// Views: `SCHEMA_VIEW`, `FULL`.
  /// Possible string values are:
  /// - "TIMESTAMP_GRANULARITY_UNSPECIFIED" : The user did not specify a
  /// granularity. Should not be returned.
  /// When specified during table creation, MILLIS will be used.
  /// - "MILLIS" : The table keeps data versioned at a granularity of 1ms.
  core.String granularity;

  /// Output only.
  /// The unique name of the table. Values are of the form
  /// `projects/<project>/instances/<instance>/tables/_a-zA-Z0-9*`.
  /// Views: `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `FULL`
  core.String name;

  Table();

  Table.fromJson(core.Map _json) {
    if (_json.containsKey("clusterStates")) {
      clusterStates = commons.mapMap<core.Map, ClusterState>(
          _json["clusterStates"].cast<core.String, core.Map>(),
          (core.Map item) => new ClusterState.fromJson(item));
    }
    if (_json.containsKey("columnFamilies")) {
      columnFamilies = commons.mapMap<core.Map, ColumnFamily>(
          _json["columnFamilies"].cast<core.String, core.Map>(),
          (core.Map item) => new ColumnFamily.fromJson(item));
    }
    if (_json.containsKey("granularity")) {
      granularity = _json["granularity"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusterStates != null) {
      _json["clusterStates"] =
          commons.mapMap<ClusterState, core.Map<core.String, core.Object>>(
              clusterStates, (ClusterState item) => (item).toJson());
    }
    if (columnFamilies != null) {
      _json["columnFamilies"] =
          commons.mapMap<ColumnFamily, core.Map<core.String, core.Object>>(
              columnFamilies, (ColumnFamily item) => (item).toJson());
    }
    if (granularity != null) {
      _json["granularity"] = granularity;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Progress info for copying a table's data to the new cluster.
class TableProgress {
  /// Estimate of the number of bytes copied so far for this table.
  /// This will eventually reach 'estimated_size_bytes' unless the table copy
  /// is CANCELLED.
  core.String estimatedCopiedBytes;

  /// Estimate of the size of the table to be copied.
  core.String estimatedSizeBytes;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "PENDING" : The table has not yet begun copying to the new cluster.
  /// - "COPYING" : The table is actively being copied to the new cluster.
  /// - "COMPLETED" : The table has been fully copied to the new cluster.
  /// - "CANCELLED" : The table was deleted before it finished copying to the
  /// new cluster.
  /// Note that tables deleted after completion will stay marked as
  /// COMPLETED, not CANCELLED.
  core.String state;

  TableProgress();

  TableProgress.fromJson(core.Map _json) {
    if (_json.containsKey("estimatedCopiedBytes")) {
      estimatedCopiedBytes = _json["estimatedCopiedBytes"];
    }
    if (_json.containsKey("estimatedSizeBytes")) {
      estimatedSizeBytes = _json["estimatedSizeBytes"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (estimatedCopiedBytes != null) {
      _json["estimatedCopiedBytes"] = estimatedCopiedBytes;
    }
    if (estimatedSizeBytes != null) {
      _json["estimatedSizeBytes"] = estimatedSizeBytes;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see
  /// [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// Response message for `TestIamPermissions` method.
class TestIamPermissionsResponse {
  /// A subset of `TestPermissionsRequest.permissions` that the caller is
  /// allowed.
  core.List<core.String> permissions;

  TestIamPermissionsResponse();

  TestIamPermissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("permissions")) {
      permissions = (_json["permissions"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permissions != null) {
      _json["permissions"] = permissions;
    }
    return _json;
  }
}

/// A GcRule which deletes cells matching any of the given rules.
class Union {
  /// Delete cells which would be deleted by any element of `rules`.
  core.List<GcRule> rules;

  Union();

  Union.fromJson(core.Map _json) {
    if (_json.containsKey("rules")) {
      rules = (_json["rules"] as core.List)
          .map<GcRule>((value) => new GcRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rules != null) {
      _json["rules"] = rules.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The metadata for the Operation returned by UpdateAppProfile.
class UpdateAppProfileMetadata {
  UpdateAppProfileMetadata();

  UpdateAppProfileMetadata.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The metadata for the Operation returned by UpdateCluster.
class UpdateClusterMetadata {
  /// The time at which the operation failed or was completed successfully.
  core.String finishTime;

  /// The request that prompted the initiation of this UpdateCluster operation.
  Cluster originalRequest;

  /// The time at which the original request was received.
  core.String requestTime;

  UpdateClusterMetadata();

  UpdateClusterMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("finishTime")) {
      finishTime = _json["finishTime"];
    }
    if (_json.containsKey("originalRequest")) {
      originalRequest = new Cluster.fromJson(_json["originalRequest"]);
    }
    if (_json.containsKey("requestTime")) {
      requestTime = _json["requestTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (finishTime != null) {
      _json["finishTime"] = finishTime;
    }
    if (originalRequest != null) {
      _json["originalRequest"] = (originalRequest).toJson();
    }
    if (requestTime != null) {
      _json["requestTime"] = requestTime;
    }
    return _json;
  }
}

/// The metadata for the Operation returned by UpdateInstance.
class UpdateInstanceMetadata {
  /// The time at which the operation failed or was completed successfully.
  core.String finishTime;

  /// The request that prompted the initiation of this UpdateInstance operation.
  PartialUpdateInstanceRequest originalRequest;

  /// The time at which the original request was received.
  core.String requestTime;

  UpdateInstanceMetadata();

  UpdateInstanceMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("finishTime")) {
      finishTime = _json["finishTime"];
    }
    if (_json.containsKey("originalRequest")) {
      originalRequest =
          new PartialUpdateInstanceRequest.fromJson(_json["originalRequest"]);
    }
    if (_json.containsKey("requestTime")) {
      requestTime = _json["requestTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (finishTime != null) {
      _json["finishTime"] = finishTime;
    }
    if (originalRequest != null) {
      _json["originalRequest"] = (originalRequest).toJson();
    }
    if (requestTime != null) {
      _json["requestTime"] = requestTime;
    }
    return _json;
  }
}
