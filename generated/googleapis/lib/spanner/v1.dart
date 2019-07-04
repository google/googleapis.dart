// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.spanner.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client spanner/v1';

/// Cloud Spanner is a managed, mission-critical, globally consistent and
/// scalable relational database service.
class SpannerApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// Administer your Spanner databases
  static const SpannerAdminScope =
      "https://www.googleapis.com/auth/spanner.admin";

  /// View and manage the contents of your Spanner databases
  static const SpannerDataScope =
      "https://www.googleapis.com/auth/spanner.data";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  SpannerApi(http.Client client,
      {core.String rootUrl = "https://spanner.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstanceConfigsResourceApi get instanceConfigs =>
      new ProjectsInstanceConfigsResourceApi(_requester);
  ProjectsInstancesResourceApi get instances =>
      new ProjectsInstancesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsInstanceConfigsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstanceConfigsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a particular instance configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the requested instance configuration.
  /// Values are of
  /// the form `projects/<project>/instanceConfigs/<config>`.
  /// Value must have pattern "^projects/[^/]+/instanceConfigs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InstanceConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InstanceConfig> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new InstanceConfig.fromJson(data));
  }

  /// Lists the supported instance configurations for a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project for which a list of supported
  /// instance
  /// configurations is requested. Values are of the form
  /// `projects/<project>`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a
  /// next_page_token
  /// from a previous ListInstanceConfigsResponse.
  ///
  /// [pageSize] - Number of instance configurations to be returned in the
  /// response. If 0 or
  /// less, defaults to the server's maximum allowed page size.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInstanceConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInstanceConfigsResponse> list(core.String parent,
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/instanceConfigs';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListInstanceConfigsResponse.fromJson(data));
  }
}

class ProjectsInstancesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesDatabasesResourceApi get databases =>
      new ProjectsInstancesDatabasesResourceApi(_requester);
  ProjectsInstancesOperationsResourceApi get operations =>
      new ProjectsInstancesOperationsResourceApi(_requester);

  ProjectsInstancesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates an instance and begins preparing it to begin serving. The
  /// returned long-running operation
  /// can be used to track the progress of preparing the new
  /// instance. The instance name is assigned by the caller. If the
  /// named instance already exists, `CreateInstance` returns
  /// `ALREADY_EXISTS`.
  ///
  /// Immediately upon completion of this request:
  ///
  ///   * The instance is readable via the API, with all requested attributes
  ///     but no allocated resources. Its state is `CREATING`.
  ///
  /// Until completion of the returned operation:
  ///
  ///   * Cancelling the operation renders the instance immediately unreadable
  ///     via the API.
  ///   * The instance can be deleted.
  ///   * All other attempts to modify the instance are rejected.
  ///
  /// Upon completion of the returned operation:
  ///
  ///   * Billing for all successfully-allocated resources begins (some types
  ///     may have lower than the requested levels).
  ///   * Databases can be created in the instance.
  ///   * The instance's allocated resource levels are readable via the API.
  ///   * The instance's state becomes `READY`.
  ///
  /// The returned long-running operation will
  /// have a name of the format `<instance_name>/operations/<operation_id>` and
  /// can be used to track creation of the instance.  The
  /// metadata field type is
  /// CreateInstanceMetadata.
  /// The response field type is
  /// Instance, if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in which to create the
  /// instance. Values
  /// are of the form `projects/<project>`.
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
  /// Immediately upon completion of the request:
  ///
  ///   * Billing ceases for all of the instance's reserved resources.
  ///
  /// Soon afterward:
  ///
  ///   * The instance and *all of its databases* immediately and
  ///     irrevocably disappear from the API. All data in the databases
  ///     is permanently deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the instance to be deleted. Values are of
  /// the form
  /// `projects/<project>/instances/<instance>`
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets information about a particular instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the requested instance. Values are of the
  /// form
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// Authorization requires `spanner.instances.getIamPolicy` on
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which the policy is
  /// being retrieved. The format is `projects/<project ID>/instances/<instance
  /// ID>` for instance resources and `projects/<project ID>/instances/<instance
  /// ID>/databases/<database ID>` for database resources.
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

    _url = 'v1/' +
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

  /// Lists all instances in the given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project for which a list of instances
  /// is
  /// requested. Values are of the form `projects/<project>`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [filter] - An expression for filtering the results of the request. Filter
  /// rules are
  /// case insensitive. The fields eligible for filtering are:
  ///
  ///   * `name`
  ///   * `display_name`
  ///   * `labels.key` where key is the name of a label
  ///
  /// Some examples of using filters are:
  ///
  ///   * `name:*` --> The instance has a name.
  ///   * `name:Howl` --> The instance's name contains the string "howl".
  ///   * `name:HOWL` --> Equivalent to above.
  ///   * `NAME:howl` --> Equivalent to above.
  ///   * `labels.env:*` --> The instance has the label "env".
  /// * `labels.env:dev` --> The instance has the label "env" and the value of
  ///                        the label contains the string "dev".
  /// * `name:howl labels.env:dev` --> The instance's name contains "howl" and
  ///                                  it has the label "env" with its value
  ///                                  containing "dev".
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a
  /// next_page_token from a
  /// previous ListInstancesResponse.
  ///
  /// [pageSize] - Number of instances to be returned in the response. If 0 or
  /// less, defaults
  /// to the server's maximum allowed page size.
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

  /// Updates an instance, and begins allocating or releasing resources
  /// as requested. The returned long-running
  /// operation can be used to track the
  /// progress of updating the instance. If the named instance does not
  /// exist, returns `NOT_FOUND`.
  ///
  /// Immediately upon completion of this request:
  ///
  ///   * For resource types for which a decrease in the instance's allocation
  ///     has been requested, billing is based on the newly-requested level.
  ///
  /// Until completion of the returned operation:
  ///
  ///   * Cancelling the operation sets its metadata's
  ///     cancel_time, and begins
  ///     restoring resources to their pre-request values. The operation
  ///     is guaranteed to succeed at undoing all resource changes,
  ///     after which point it terminates with a `CANCELLED` status.
  ///   * All other attempts to modify the instance are rejected.
  ///   * Reading the instance via the API continues to give the pre-request
  ///     resource levels.
  ///
  /// Upon completion of the returned operation:
  ///
  ///   * Billing begins for all successfully-allocated resources (some types
  ///     may have lower than the requested levels).
  ///   * All newly-reserved resources are available for serving the instance's
  ///     tables.
  ///   * The instance's new resource levels are readable via the API.
  ///
  /// The returned long-running operation will
  /// have a name of the format `<instance_name>/operations/<operation_id>` and
  /// can be used to track the instance modification.  The
  /// metadata field type is
  /// UpdateInstanceMetadata.
  /// The response field type is
  /// Instance, if successful.
  ///
  /// Authorization requires `spanner.instances.update` permission on
  /// resource name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A unique identifier for the instance, which cannot be
  /// changed
  /// after the instance is created. Values are of the form
  /// `projects/<project>/instances/a-z*[a-z0-9]`. The final
  /// segment of the name must be between 2 and 64 characters in length.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
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
  async.Future<Operation> patch(UpdateInstanceRequest request, core.String name,
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

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

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
  /// Authorization requires `spanner.instances.setIamPolicy` on
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which the policy is
  /// being set. The format is `projects/<project ID>/instances/<instance ID>`
  /// for instance resources and `projects/<project ID>/instances/<instance
  /// ID>/databases/<database ID>` for databases resources.
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

    _url = 'v1/' +
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
  /// Attempting this RPC on a non-existent Cloud Spanner instance resource will
  /// result in a NOT_FOUND error if the user has `spanner.instances.list`
  /// permission on the containing Google Cloud Project. Otherwise returns an
  /// empty set of permissions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which permissions
  /// are being tested. The format is `projects/<project ID>/instances/<instance
  /// ID>` for instance resources and `projects/<project ID>/instances/<instance
  /// ID>/databases/<database ID>` for database resources.
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

    _url = 'v1/' +
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

class ProjectsInstancesDatabasesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesDatabasesOperationsResourceApi get operations =>
      new ProjectsInstancesDatabasesOperationsResourceApi(_requester);
  ProjectsInstancesDatabasesSessionsResourceApi get sessions =>
      new ProjectsInstancesDatabasesSessionsResourceApi(_requester);

  ProjectsInstancesDatabasesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Cloud Spanner database and starts to prepare it for serving.
  /// The returned long-running operation will
  /// have a name of the format `<database_name>/operations/<operation_id>` and
  /// can be used to track preparation of the database. The
  /// metadata field type is
  /// CreateDatabaseMetadata. The
  /// response field type is
  /// Database, if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the instance that will serve the new
  /// database.
  /// Values are of the form `projects/<project>/instances/<instance>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
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
      CreateDatabaseRequest request, core.String parent,
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
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/databases';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Drops (aka deletes) a Cloud Spanner database.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database to be dropped.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+$".
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
  async.Future<Empty> dropDatabase(core.String database,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$database');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the state of a Cloud Spanner database.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the requested database. Values are of the
  /// form
  /// `projects/<project>/instances/<instance>/databases/<database>`.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Database].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Database> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Database.fromJson(data));
  }

  /// Returns the schema of a Cloud Spanner database as a list of formatted
  /// DDL statements. This method does not show pending schema updates, those
  /// may
  /// be queried using the Operations API.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database whose schema we wish to get.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetDatabaseDdlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetDatabaseDdlResponse> getDdl(core.String database,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$database') + '/ddl';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GetDatabaseDdlResponse.fromJson(data));
  }

  /// Gets the access control policy for a database resource.
  /// Returns an empty policy if a database exists but does
  /// not have a policy set.
  ///
  /// Authorization requires `spanner.databases.getIamPolicy` permission on
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which the policy is
  /// being retrieved. The format is `projects/<project ID>/instances/<instance
  /// ID>` for instance resources and `projects/<project ID>/instances/<instance
  /// ID>/databases/<database ID>` for database resources.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+$".
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

    _url = 'v1/' +
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

  /// Lists Cloud Spanner databases.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The instance whose databases should be listed.
  /// Values are of the form `projects/<project>/instances/<instance>`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a
  /// next_page_token from a
  /// previous ListDatabasesResponse.
  ///
  /// [pageSize] - Number of databases to be returned in the response. If 0 or
  /// less,
  /// defaults to the server's maximum allowed page size.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDatabasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDatabasesResponse> list(core.String parent,
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
        'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/databases';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDatabasesResponse.fromJson(data));
  }

  /// Sets the access control policy on a database resource.
  /// Replaces any existing policy.
  ///
  /// Authorization requires `spanner.databases.setIamPolicy`
  /// permission on resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which the policy is
  /// being set. The format is `projects/<project ID>/instances/<instance ID>`
  /// for instance resources and `projects/<project ID>/instances/<instance
  /// ID>/databases/<database ID>` for databases resources.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+$".
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

    _url = 'v1/' +
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

  /// Returns permissions that the caller has on the specified database
  /// resource.
  ///
  /// Attempting this RPC on a non-existent Cloud Spanner database will
  /// result in a NOT_FOUND error if the user has
  /// `spanner.databases.list` permission on the containing Cloud
  /// Spanner instance. Otherwise returns an empty set of permissions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which permissions
  /// are being tested. The format is `projects/<project ID>/instances/<instance
  /// ID>` for instance resources and `projects/<project ID>/instances/<instance
  /// ID>/databases/<database ID>` for database resources.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+$".
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

    _url = 'v1/' +
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

  /// Updates the schema of a Cloud Spanner database by
  /// creating/altering/dropping tables, columns, indexes, etc. The returned
  /// long-running operation will have a name of
  /// the format `<database_name>/operations/<operation_id>` and can be used to
  /// track execution of the schema change(s). The
  /// metadata field type is
  /// UpdateDatabaseDdlMetadata.  The operation has no response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database to update.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+$".
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
  async.Future<Operation> updateDdl(
      UpdateDatabaseDdlRequest request, core.String database,
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
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$database') + '/ddl';

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class ProjectsInstancesDatabasesOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesDatabasesOperationsResourceApi(commons.ApiRequester client)
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
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/operations/[^/]+$".
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
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/operations/[^/]+$".
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
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/operations/[^/]+$".
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
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/operations$".
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

class ProjectsInstancesDatabasesSessionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesDatabasesSessionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Begins a new transaction. This step can often be skipped:
  /// Read, ExecuteSql and
  /// Commit can begin a new transaction as a
  /// side-effect.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the transaction runs.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Transaction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Transaction> beginTransaction(
      BeginTransactionRequest request, core.String session,
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
    if (session == null) {
      throw new core.ArgumentError("Parameter session is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':beginTransaction';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Transaction.fromJson(data));
  }

  /// Commits a transaction. The request includes the mutations to be
  /// applied to rows in the database.
  ///
  /// `Commit` might return an `ABORTED` error. This can occur at any time;
  /// commonly, the cause is conflicts with concurrent
  /// transactions. However, it can also happen for a variety of other
  /// reasons. If `Commit` returns `ABORTED`, the caller should re-attempt
  /// the transaction from the beginning, re-using the same session.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the transaction to be committed
  /// is running.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommitResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommitResponse> commit(
      CommitRequest request, core.String session,
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
    if (session == null) {
      throw new core.ArgumentError("Parameter session is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$session') + ':commit';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CommitResponse.fromJson(data));
  }

  /// Creates a new session. A session can be used to perform
  /// transactions that read and/or modify data in a Cloud Spanner database.
  /// Sessions are meant to be reused for many consecutive
  /// transactions.
  ///
  /// Sessions can only execute one transaction at a time. To execute
  /// multiple concurrent read-write/write-only transactions, create
  /// multiple sessions. Note that standalone reads and queries use a
  /// transaction internally, and count toward the one transaction
  /// limit.
  ///
  /// Cloud Spanner limits the number of sessions that can exist at any given
  /// time; thus, it is a good idea to delete idle and/or unneeded sessions.
  /// Aside from explicit deletes, Cloud Spanner can delete sessions for which
  /// no
  /// operations are sent for more than an hour. If a session is deleted,
  /// requests to it return `NOT_FOUND`.
  ///
  /// Idle sessions can be kept alive by sending a trivial SQL query
  /// periodically, e.g., `"SELECT 1"`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database in which the new session is created.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Session> create(
      CreateSessionRequest request, core.String database,
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
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$database') +
        '/sessions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Session.fromJson(data));
  }

  /// Ends a session, releasing server resources associated with it. This will
  /// asynchronously trigger cancellation of any operations that are running
  /// with
  /// this session.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session to delete.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$".
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

  /// Executes a batch of SQL DML statements. This method allows many statements
  /// to be run with lower latency than submitting them sequentially with
  /// ExecuteSql.
  ///
  /// Statements are executed in order, sequentially.
  /// ExecuteBatchDmlResponse will contain a
  /// ResultSet for each DML statement that has successfully executed. If a
  /// statement fails, its error status will be returned as part of the
  /// ExecuteBatchDmlResponse. Execution will
  /// stop at the first failed statement; the remaining statements will not run.
  ///
  /// ExecuteBatchDml is expected to return an OK status with a response even if
  /// there was an error while processing one of the DML statements. Clients
  /// must
  /// inspect response.status to determine if there were any errors while
  /// processing the request.
  ///
  /// See more details in
  /// ExecuteBatchDmlRequest and
  /// ExecuteBatchDmlResponse.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the DML statements should be
  /// performed.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExecuteBatchDmlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExecuteBatchDmlResponse> executeBatchDml(
      ExecuteBatchDmlRequest request, core.String session,
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
    if (session == null) {
      throw new core.ArgumentError("Parameter session is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':executeBatchDml';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ExecuteBatchDmlResponse.fromJson(data));
  }

  /// Executes an SQL statement, returning all results in a single reply. This
  /// method cannot be used to return a result set larger than 10 MiB;
  /// if the query yields more data than that, the query fails with
  /// a `FAILED_PRECONDITION` error.
  ///
  /// Operations inside read-write transactions might return `ABORTED`. If
  /// this occurs, the application should restart the transaction from
  /// the beginning. See Transaction for more details.
  ///
  /// Larger result sets can be fetched in streaming fashion by calling
  /// ExecuteStreamingSql instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the SQL query should be
  /// performed.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResultSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResultSet> executeSql(
      ExecuteSqlRequest request, core.String session,
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
    if (session == null) {
      throw new core.ArgumentError("Parameter session is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':executeSql';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ResultSet.fromJson(data));
  }

  /// Like ExecuteSql, except returns the result
  /// set as a stream. Unlike ExecuteSql, there
  /// is no limit on the size of the returned result set. However, no
  /// individual row in the result set can exceed 100 MiB, and no
  /// column value can exceed 10 MiB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the SQL query should be
  /// performed.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartialResultSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartialResultSet> executeStreamingSql(
      ExecuteSqlRequest request, core.String session,
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
    if (session == null) {
      throw new core.ArgumentError("Parameter session is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':executeStreamingSql';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PartialResultSet.fromJson(data));
  }

  /// Gets a session. Returns `NOT_FOUND` if the session does not exist.
  /// This is mainly useful for determining whether a session is still
  /// alive.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session to retrieve.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Session> get(core.String name, {core.String $fields}) {
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
    return _response.then((data) => new Session.fromJson(data));
  }

  /// Lists all sessions in a given database.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database in which to list sessions.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+$".
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a
  /// next_page_token from a previous
  /// ListSessionsResponse.
  ///
  /// [pageSize] - Number of sessions to be returned in the response. If 0 or
  /// less, defaults
  /// to the server's maximum allowed page size.
  ///
  /// [filter] - An expression for filtering the results of the request. Filter
  /// rules are
  /// case insensitive. The fields eligible for filtering are:
  ///
  ///   * `labels.key` where key is the name of a label
  ///
  /// Some examples of using filters are:
  ///
  ///   * `labels.env:*` --> The session has the label "env".
  ///   * `labels.env:dev` --> The session has the label "env" and the value of
  ///                        the label contains the string "dev".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSessionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSessionsResponse> list(core.String database,
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

    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
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

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$database') +
        '/sessions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSessionsResponse.fromJson(data));
  }

  /// Creates a set of partition tokens that can be used to execute a query
  /// operation in parallel.  Each of the returned partition tokens can be used
  /// by ExecuteStreamingSql to specify a subset
  /// of the query result to read.  The same session and read-only transaction
  /// must be used by the PartitionQueryRequest used to create the
  /// partition tokens and the ExecuteSqlRequests that use the partition tokens.
  ///
  /// Partition tokens become invalid when the session used to create them
  /// is deleted, is idle for too long, begins a new transaction, or becomes too
  /// old.  When any of these happen, it is not possible to resume the query,
  /// and
  /// the whole operation must be restarted from the beginning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session used to create the partitions.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartitionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartitionResponse> partitionQuery(
      PartitionQueryRequest request, core.String session,
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
    if (session == null) {
      throw new core.ArgumentError("Parameter session is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':partitionQuery';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PartitionResponse.fromJson(data));
  }

  /// Creates a set of partition tokens that can be used to execute a read
  /// operation in parallel.  Each of the returned partition tokens can be used
  /// by StreamingRead to specify a subset of the read
  /// result to read.  The same session and read-only transaction must be used
  /// by
  /// the PartitionReadRequest used to create the partition tokens and the
  /// ReadRequests that use the partition tokens.  There are no ordering
  /// guarantees on rows returned among the returned partition tokens, or even
  /// within each individual StreamingRead call issued with a partition_token.
  ///
  /// Partition tokens become invalid when the session used to create them
  /// is deleted, is idle for too long, begins a new transaction, or becomes too
  /// old.  When any of these happen, it is not possible to resume the read, and
  /// the whole operation must be restarted from the beginning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session used to create the partitions.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartitionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartitionResponse> partitionRead(
      PartitionReadRequest request, core.String session,
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
    if (session == null) {
      throw new core.ArgumentError("Parameter session is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':partitionRead';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PartitionResponse.fromJson(data));
  }

  /// Reads rows from the database using key lookups and scans, as a
  /// simple key/value style alternative to
  /// ExecuteSql.  This method cannot be used to
  /// return a result set larger than 10 MiB; if the read matches more
  /// data than that, the read fails with a `FAILED_PRECONDITION`
  /// error.
  ///
  /// Reads inside read-write transactions might return `ABORTED`. If
  /// this occurs, the application should restart the transaction from
  /// the beginning. See Transaction for more details.
  ///
  /// Larger result sets can be yielded in streaming fashion by calling
  /// StreamingRead instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the read should be performed.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResultSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResultSet> read(ReadRequest request, core.String session,
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
    if (session == null) {
      throw new core.ArgumentError("Parameter session is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$session') + ':read';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ResultSet.fromJson(data));
  }

  /// Rolls back a transaction, releasing any locks it holds. It is a good
  /// idea to call this for any transaction that includes one or more
  /// Read or ExecuteSql requests and
  /// ultimately decides not to commit.
  ///
  /// `Rollback` returns `OK` if it successfully aborts the transaction, the
  /// transaction was already aborted, or the transaction is not
  /// found. `Rollback` never returns `ABORTED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the transaction to roll back is
  /// running.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$".
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
  async.Future<Empty> rollback(RollbackRequest request, core.String session,
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
    if (session == null) {
      throw new core.ArgumentError("Parameter session is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/' + commons.Escaper.ecapeVariableReserved('$session') + ':rollback';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Like Read, except returns the result set as a
  /// stream. Unlike Read, there is no limit on the
  /// size of the returned result set. However, no individual row in
  /// the result set can exceed 100 MiB, and no column value can exceed
  /// 10 MiB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the read should be performed.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/databases/[^/]+/sessions/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartialResultSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartialResultSet> streamingRead(
      ReadRequest request, core.String session,
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
    if (session == null) {
      throw new core.ArgumentError("Parameter session is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$session') +
        ':streamingRead';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PartialResultSet.fromJson(data));
  }
}

class ProjectsInstancesOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesOperationsResourceApi(commons.ApiRequester client)
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
  /// "^projects/[^/]+/instances/[^/]+/operations/[^/]+$".
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
  /// "^projects/[^/]+/instances/[^/]+/operations/[^/]+$".
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
  /// "^projects/[^/]+/instances/[^/]+/operations/[^/]+$".
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
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/operations$".
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

/// The request for BeginTransaction.
class BeginTransactionRequest {
  /// Required. Options for the new transaction.
  TransactionOptions options;

  BeginTransactionRequest();

  BeginTransactionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("options")) {
      options = new TransactionOptions.fromJson(_json["options"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (options != null) {
      _json["options"] = (options).toJson();
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

/// Metadata associated with a parent-child relationship appearing in a
/// PlanNode.
class ChildLink {
  /// The node to which the link points.
  core.int childIndex;

  /// The type of the link. For example, in Hash Joins this could be used to
  /// distinguish between the build child and the probe child, or in the case
  /// of the child being an output variable, to represent the tag associated
  /// with the output variable.
  core.String type;

  /// Only present if the child node is SCALAR and corresponds
  /// to an output variable of the parent node. The field carries the name of
  /// the output variable.
  /// For example, a `TableScan` operator that reads rows from a table will
  /// have child links to the `SCALAR` nodes representing the output variables
  /// created for each column that is read by the operator. The corresponding
  /// `variable` fields will be set to the variable names assigned to the
  /// columns.
  core.String variable;

  ChildLink();

  ChildLink.fromJson(core.Map _json) {
    if (_json.containsKey("childIndex")) {
      childIndex = _json["childIndex"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("variable")) {
      variable = _json["variable"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (childIndex != null) {
      _json["childIndex"] = childIndex;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (variable != null) {
      _json["variable"] = variable;
    }
    return _json;
  }
}

/// The request for Commit.
class CommitRequest {
  /// The mutations to be executed when this transaction commits. All
  /// mutations are applied atomically, in the order they appear in
  /// this list.
  core.List<Mutation> mutations;

  /// Execute mutations in a temporary transaction. Note that unlike
  /// commit of a previously-started transaction, commit with a
  /// temporary transaction is non-idempotent. That is, if the
  /// `CommitRequest` is sent to Cloud Spanner more than once (for
  /// instance, due to retries in the application, or in the
  /// transport library), it is possible that the mutations are
  /// executed more than once. If this is undesirable, use
  /// BeginTransaction and
  /// Commit instead.
  TransactionOptions singleUseTransaction;

  /// Commit a previously-started transaction.
  core.String transactionId;
  core.List<core.int> get transactionIdAsBytes {
    return convert.base64.decode(transactionId);
  }

  set transactionIdAsBytes(core.List<core.int> _bytes) {
    transactionId =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  CommitRequest();

  CommitRequest.fromJson(core.Map _json) {
    if (_json.containsKey("mutations")) {
      mutations = (_json["mutations"] as core.List)
          .map<Mutation>((value) => new Mutation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("singleUseTransaction")) {
      singleUseTransaction =
          new TransactionOptions.fromJson(_json["singleUseTransaction"]);
    }
    if (_json.containsKey("transactionId")) {
      transactionId = _json["transactionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mutations != null) {
      _json["mutations"] = mutations.map((value) => (value).toJson()).toList();
    }
    if (singleUseTransaction != null) {
      _json["singleUseTransaction"] = (singleUseTransaction).toJson();
    }
    if (transactionId != null) {
      _json["transactionId"] = transactionId;
    }
    return _json;
  }
}

/// The response for Commit.
class CommitResponse {
  /// The Cloud Spanner timestamp at which the transaction committed.
  core.String commitTimestamp;

  CommitResponse();

  CommitResponse.fromJson(core.Map _json) {
    if (_json.containsKey("commitTimestamp")) {
      commitTimestamp = _json["commitTimestamp"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (commitTimestamp != null) {
      _json["commitTimestamp"] = commitTimestamp;
    }
    return _json;
  }
}

/// Metadata type for the operation returned by
/// CreateDatabase.
class CreateDatabaseMetadata {
  /// The database being created.
  core.String database;

  CreateDatabaseMetadata();

  CreateDatabaseMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("database")) {
      database = _json["database"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (database != null) {
      _json["database"] = database;
    }
    return _json;
  }
}

/// The request for CreateDatabase.
class CreateDatabaseRequest {
  /// Required. A `CREATE DATABASE` statement, which specifies the ID of the
  /// new database.  The database ID must conform to the regular expression
  /// `a-z*[a-z0-9]` and be between 2 and 30 characters in length.
  /// If the database ID is a reserved word or if it contains a hyphen, the
  /// database ID must be enclosed in backticks (`` ` ``).
  core.String createStatement;

  /// An optional list of DDL statements to run inside the newly created
  /// database. Statements can create tables, indexes, etc. These
  /// statements execute atomically with the creation of the database:
  /// if there is an error in any statement, the database is not created.
  core.List<core.String> extraStatements;

  CreateDatabaseRequest();

  CreateDatabaseRequest.fromJson(core.Map _json) {
    if (_json.containsKey("createStatement")) {
      createStatement = _json["createStatement"];
    }
    if (_json.containsKey("extraStatements")) {
      extraStatements =
          (_json["extraStatements"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createStatement != null) {
      _json["createStatement"] = createStatement;
    }
    if (extraStatements != null) {
      _json["extraStatements"] = extraStatements;
    }
    return _json;
  }
}

/// Metadata type for the operation returned by
/// CreateInstance.
class CreateInstanceMetadata {
  /// The time at which this operation was cancelled. If set, this operation is
  /// in the process of undoing itself (which is guaranteed to succeed) and
  /// cannot be cancelled again.
  core.String cancelTime;

  /// The time at which this operation failed or was completed successfully.
  core.String endTime;

  /// The instance being created.
  Instance instance;

  /// The time at which the
  /// CreateInstance request was
  /// received.
  core.String startTime;

  CreateInstanceMetadata();

  CreateInstanceMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("cancelTime")) {
      cancelTime = _json["cancelTime"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("instance")) {
      instance = new Instance.fromJson(_json["instance"]);
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cancelTime != null) {
      _json["cancelTime"] = cancelTime;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (instance != null) {
      _json["instance"] = (instance).toJson();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/// The request for CreateInstance.
class CreateInstanceRequest {
  /// Required. The instance to create.  The name may be omitted, but if
  /// specified must be `<parent>/instances/<instance_id>`.
  Instance instance;

  /// Required. The ID of the instance to create.  Valid identifiers are of the
  /// form `a-z*[a-z0-9]` and must be between 2 and 64 characters in
  /// length.
  core.String instanceId;

  CreateInstanceRequest();

  CreateInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("instance")) {
      instance = new Instance.fromJson(_json["instance"]);
    }
    if (_json.containsKey("instanceId")) {
      instanceId = _json["instanceId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (instance != null) {
      _json["instance"] = (instance).toJson();
    }
    if (instanceId != null) {
      _json["instanceId"] = instanceId;
    }
    return _json;
  }
}

/// The request for CreateSession.
class CreateSessionRequest {
  /// The session to create.
  Session session;

  CreateSessionRequest();

  CreateSessionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("session")) {
      session = new Session.fromJson(_json["session"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (session != null) {
      _json["session"] = (session).toJson();
    }
    return _json;
  }
}

/// A Cloud Spanner database.
class Database {
  /// Required. The name of the database. Values are of the form
  /// `projects/<project>/instances/<instance>/databases/<database>`,
  /// where `<database>` is as specified in the `CREATE DATABASE`
  /// statement. This name can be passed to other API methods to
  /// identify the database.
  core.String name;

  /// Output only. The current database state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified.
  /// - "CREATING" : The database is still being created. Operations on the
  /// database may fail
  /// with `FAILED_PRECONDITION` in this state.
  /// - "READY" : The database is fully created and ready for use.
  core.String state;

  Database();

  Database.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// Arguments to delete operations.
class Delete {
  /// Required. The primary keys of the rows within table to delete.
  /// Delete is idempotent. The transaction will succeed even if some or all
  /// rows do not exist.
  KeySet keySet;

  /// Required. The table whose rows will be deleted.
  core.String table;

  Delete();

  Delete.fromJson(core.Map _json) {
    if (_json.containsKey("keySet")) {
      keySet = new KeySet.fromJson(_json["keySet"]);
    }
    if (_json.containsKey("table")) {
      table = _json["table"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (keySet != null) {
      _json["keySet"] = (keySet).toJson();
    }
    if (table != null) {
      _json["table"] = table;
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

/// The request for ExecuteBatchDml
class ExecuteBatchDmlRequest {
  /// A per-transaction sequence number used to identify this request. This is
  /// used in the same space as the seqno in
  /// ExecuteSqlRequest. See more details
  /// in ExecuteSqlRequest.
  core.String seqno;

  /// The list of statements to execute in this batch. Statements are executed
  /// serially, such that the effects of statement i are visible to statement
  /// i+1. Each statement must be a DML statement. Execution will stop at the
  /// first failed statement; the remaining statements will not run.
  ///
  /// REQUIRES: `statements_size()` > 0.
  core.List<Statement> statements;

  /// The transaction to use. A ReadWrite transaction is required. Single-use
  /// transactions are not supported (to avoid replay).  The caller must either
  /// supply an existing transaction ID or begin a new transaction.
  TransactionSelector transaction;

  ExecuteBatchDmlRequest();

  ExecuteBatchDmlRequest.fromJson(core.Map _json) {
    if (_json.containsKey("seqno")) {
      seqno = _json["seqno"];
    }
    if (_json.containsKey("statements")) {
      statements = (_json["statements"] as core.List)
          .map<Statement>((value) => new Statement.fromJson(value))
          .toList();
    }
    if (_json.containsKey("transaction")) {
      transaction = new TransactionSelector.fromJson(_json["transaction"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (seqno != null) {
      _json["seqno"] = seqno;
    }
    if (statements != null) {
      _json["statements"] =
          statements.map((value) => (value).toJson()).toList();
    }
    if (transaction != null) {
      _json["transaction"] = (transaction).toJson();
    }
    return _json;
  }
}

/// The response for ExecuteBatchDml. Contains a list
/// of ResultSet, one for each DML statement that has successfully executed.
/// If a statement fails, the error is returned as part of the response payload.
/// Clients can determine whether all DML statements have run successfully, or
/// if
/// a statement failed, using one of the following approaches:
///
///   1. Check if `'status'` field is `OkStatus`.
///   2. Check if `result_sets_size()` equals the number of statements in
///      ExecuteBatchDmlRequest.
///
/// Example 1: A request with 5 DML statements, all executed successfully.
///
/// Result: A response with 5 ResultSets, one for each statement in the same
/// order, and an `OkStatus`.
///
/// Example 2: A request with 5 DML statements. The 3rd statement has a syntax
/// error.
///
/// Result: A response with 2 ResultSets, for the first 2 statements that
/// run successfully, and a syntax error (`INVALID_ARGUMENT`) status. From
/// `result_set_size()` client can determine that the 3rd statement has failed.
class ExecuteBatchDmlResponse {
  /// ResultSets, one for each statement in the request that ran successfully,
  /// in
  /// the same order as the statements in the request. Each ResultSet will
  /// not contain any rows. The ResultSetStats in each ResultSet will
  /// contain the number of rows modified by the statement.
  ///
  /// Only the first ResultSet in the response contains a valid
  /// ResultSetMetadata.
  core.List<ResultSet> resultSets;

  /// If all DML statements are executed successfully, status will be OK.
  /// Otherwise, the error status of the first failed statement.
  Status status;

  ExecuteBatchDmlResponse();

  ExecuteBatchDmlResponse.fromJson(core.Map _json) {
    if (_json.containsKey("resultSets")) {
      resultSets = (_json["resultSets"] as core.List)
          .map<ResultSet>((value) => new ResultSet.fromJson(value))
          .toList();
    }
    if (_json.containsKey("status")) {
      status = new Status.fromJson(_json["status"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resultSets != null) {
      _json["resultSets"] =
          resultSets.map((value) => (value).toJson()).toList();
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}

/// The request for ExecuteSql and
/// ExecuteStreamingSql.
class ExecuteSqlRequest {
  /// It is not always possible for Cloud Spanner to infer the right SQL type
  /// from a JSON value.  For example, values of type `BYTES` and values
  /// of type `STRING` both appear in params as JSON strings.
  ///
  /// In these cases, `param_types` can be used to specify the exact
  /// SQL type for some or all of the SQL statement parameters. See the
  /// definition of Type for more information
  /// about SQL types.
  core.Map<core.String, Type> paramTypes;

  /// The SQL string can contain parameter placeholders. A parameter
  /// placeholder consists of `'@'` followed by the parameter
  /// name. Parameter names consist of any combination of letters,
  /// numbers, and underscores.
  ///
  /// Parameters can appear anywhere that a literal value is expected.  The same
  /// parameter name can be used more than once, for example:
  ///   `"WHERE id > @msg_id AND id < @msg_id + 100"`
  ///
  /// It is an error to execute an SQL statement with unbound parameters.
  ///
  /// Parameter values are specified using `params`, which is a JSON
  /// object whose keys are parameter names, and whose values are the
  /// corresponding parameter values.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> params;

  /// If present, results will be restricted to the specified partition
  /// previously created using PartitionQuery().  There must be an exact
  /// match for the values of fields common to this message and the
  /// PartitionQueryRequest message used to create this partition_token.
  core.String partitionToken;
  core.List<core.int> get partitionTokenAsBytes {
    return convert.base64.decode(partitionToken);
  }

  set partitionTokenAsBytes(core.List<core.int> _bytes) {
    partitionToken =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Used to control the amount of debugging information returned in
  /// ResultSetStats. If partition_token is set, query_mode can only
  /// be set to QueryMode.NORMAL.
  /// Possible string values are:
  /// - "NORMAL" : The default mode. Only the statement results are returned.
  /// - "PLAN" : This mode returns only the query plan, without any results or
  /// execution statistics information.
  /// - "PROFILE" : This mode returns both the query plan and the execution
  /// statistics along
  /// with the results.
  core.String queryMode;

  /// If this request is resuming a previously interrupted SQL statement
  /// execution, `resume_token` should be copied from the last
  /// PartialResultSet yielded before the interruption. Doing this
  /// enables the new SQL statement execution to resume where the last one left
  /// off. The rest of the request parameters must exactly match the
  /// request that yielded this token.
  core.String resumeToken;
  core.List<core.int> get resumeTokenAsBytes {
    return convert.base64.decode(resumeToken);
  }

  set resumeTokenAsBytes(core.List<core.int> _bytes) {
    resumeToken =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// A per-transaction sequence number used to identify this request. This
  /// makes each request idempotent such that if the request is received
  /// multiple
  /// times, at most one will succeed.
  ///
  /// The sequence number must be monotonically increasing within the
  /// transaction. If a request arrives for the first time with an out-of-order
  /// sequence number, the transaction may be aborted. Replays of previously
  /// handled requests will yield the same response as the first execution.
  ///
  /// Required for DML statements. Ignored for queries.
  core.String seqno;

  /// Required. The SQL string.
  core.String sql;

  /// The transaction to use. If none is provided, the default is a
  /// temporary read-only transaction with strong concurrency.
  ///
  /// The transaction to use.
  ///
  /// For queries, if none is provided, the default is a temporary read-only
  /// transaction with strong concurrency.
  ///
  /// Standard DML statements require a ReadWrite transaction. Single-use
  /// transactions are not supported (to avoid replay).  The caller must
  /// either supply an existing transaction ID or begin a new transaction.
  ///
  /// Partitioned DML requires an existing PartitionedDml transaction ID.
  TransactionSelector transaction;

  ExecuteSqlRequest();

  ExecuteSqlRequest.fromJson(core.Map _json) {
    if (_json.containsKey("paramTypes")) {
      paramTypes = commons.mapMap<core.Map, Type>(
          _json["paramTypes"].cast<core.String, core.Map>(),
          (core.Map item) => new Type.fromJson(item));
    }
    if (_json.containsKey("params")) {
      params = (_json["params"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("partitionToken")) {
      partitionToken = _json["partitionToken"];
    }
    if (_json.containsKey("queryMode")) {
      queryMode = _json["queryMode"];
    }
    if (_json.containsKey("resumeToken")) {
      resumeToken = _json["resumeToken"];
    }
    if (_json.containsKey("seqno")) {
      seqno = _json["seqno"];
    }
    if (_json.containsKey("sql")) {
      sql = _json["sql"];
    }
    if (_json.containsKey("transaction")) {
      transaction = new TransactionSelector.fromJson(_json["transaction"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (paramTypes != null) {
      _json["paramTypes"] =
          commons.mapMap<Type, core.Map<core.String, core.Object>>(
              paramTypes, (Type item) => (item).toJson());
    }
    if (params != null) {
      _json["params"] = params;
    }
    if (partitionToken != null) {
      _json["partitionToken"] = partitionToken;
    }
    if (queryMode != null) {
      _json["queryMode"] = queryMode;
    }
    if (resumeToken != null) {
      _json["resumeToken"] = resumeToken;
    }
    if (seqno != null) {
      _json["seqno"] = seqno;
    }
    if (sql != null) {
      _json["sql"] = sql;
    }
    if (transaction != null) {
      _json["transaction"] = (transaction).toJson();
    }
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

/// Message representing a single field of a struct.
class Field {
  /// The name of the field. For reads, this is the column name. For
  /// SQL queries, it is the column alias (e.g., `"Word"` in the
  /// query `"SELECT 'hello' AS Word"`), or the column name (e.g.,
  /// `"ColName"` in the query `"SELECT ColName FROM Table"`). Some
  /// columns might have an empty name (e.g., !"SELECT
  /// UPPER(ColName)"`). Note that a query result can contain
  /// multiple fields with the same name.
  core.String name;

  /// The type of the field.
  Type type;

  Field();

  Field.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("type")) {
      type = new Type.fromJson(_json["type"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (type != null) {
      _json["type"] = (type).toJson();
    }
    return _json;
  }
}

/// The response for GetDatabaseDdl.
class GetDatabaseDdlResponse {
  /// A list of formatted DDL statements defining the schema of the database
  /// specified in the request.
  core.List<core.String> statements;

  GetDatabaseDdlResponse();

  GetDatabaseDdlResponse.fromJson(core.Map _json) {
    if (_json.containsKey("statements")) {
      statements = (_json["statements"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (statements != null) {
      _json["statements"] = statements;
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

/// An isolated set of Cloud Spanner resources on which databases can be hosted.
class Instance {
  /// Required. The name of the instance's configuration. Values are of the form
  /// `projects/<project>/instanceConfigs/<configuration>`. See
  /// also InstanceConfig and
  /// ListInstanceConfigs.
  core.String config;

  /// Required. The descriptive name for this instance as it appears in UIs.
  /// Must be unique per project and between 4 and 30 characters in length.
  core.String displayName;

  /// Cloud Labels are a flexible and lightweight mechanism for organizing cloud
  /// resources into groups that reflect a customer's organizational needs and
  /// deployment strategies. Cloud Labels can be used to filter collections of
  /// resources. They can be used to control how resource metrics are
  /// aggregated.
  /// And they can be used as arguments to policy management rules (e.g. route,
  /// firewall, load balancing, etc.).
  ///
  /// * Label keys must be between 1 and 63 characters long and must conform to
  ///    the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`.
  ///  * Label values must be between 0 and 63 characters long and must conform
  ///    to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  ///  * No more than 64 labels can be associated with a given resource.
  ///
  /// See https://goo.gl/xmQnxf for more information on and examples of labels.
  ///
  /// If you plan to use labels in your own code, please note that additional
  /// characters may be allowed in the future. And so you are advised to use an
  /// internal label representation, such as JSON, which doesn't rely upon
  /// specific characters being disallowed.  For example, representing labels
  /// as the string:  name + "_" + value  would prove problematic if we were to
  /// allow "_" in a future release.
  core.Map<core.String, core.String> labels;

  /// Required. A unique identifier for the instance, which cannot be changed
  /// after the instance is created. Values are of the form
  /// `projects/<project>/instances/a-z*[a-z0-9]`. The final
  /// segment of the name must be between 2 and 64 characters in length.
  core.String name;

  /// Required. The number of nodes allocated to this instance. This may be zero
  /// in API responses for instances that are not yet in state `READY`.
  ///
  /// See [the
  /// documentation](https://cloud.google.com/spanner/docs/instances#node_count)
  /// for more information about nodes.
  core.int nodeCount;

  /// Output only. The current instance state. For
  /// CreateInstance, the state must be
  /// either omitted or set to `CREATING`. For
  /// UpdateInstance, the state must be
  /// either omitted or set to `READY`.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified.
  /// - "CREATING" : The instance is still being created. Resources may not be
  /// available yet, and operations such as database creation may not
  /// work.
  /// - "READY" : The instance is fully created and ready to do work such as
  /// creating databases.
  core.String state;

  Instance();

  Instance.fromJson(core.Map _json) {
    if (_json.containsKey("config")) {
      config = _json["config"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("nodeCount")) {
      nodeCount = _json["nodeCount"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (config != null) {
      _json["config"] = config;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (nodeCount != null) {
      _json["nodeCount"] = nodeCount;
    }
    if (state != null) {
      _json["state"] = state;
    }
    return _json;
  }
}

/// A possible configuration for a Cloud Spanner instance. Configurations
/// define the geographic placement of nodes and their replication.
class InstanceConfig {
  /// The name of this instance configuration as it appears in UIs.
  core.String displayName;

  /// A unique identifier for the instance configuration.  Values
  /// are of the form
  /// `projects/<project>/instanceConfigs/a-z*`
  core.String name;

  /// The geographic placement of nodes in this instance configuration and their
  /// replication properties.
  core.List<ReplicaInfo> replicas;

  InstanceConfig();

  InstanceConfig.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("replicas")) {
      replicas = (_json["replicas"] as core.List)
          .map<ReplicaInfo>((value) => new ReplicaInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (replicas != null) {
      _json["replicas"] = replicas.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// KeyRange represents a range of rows in a table or index.
///
/// A range has a start key and an end key. These keys can be open or
/// closed, indicating if the range includes rows with that key.
///
/// Keys are represented by lists, where the ith value in the list
/// corresponds to the ith component of the table or index primary key.
/// Individual values are encoded as described
/// here.
///
/// For example, consider the following table definition:
///
///     CREATE TABLE UserEvents (
///       UserName STRING(MAX),
///       EventDate STRING(10)
///     ) PRIMARY KEY(UserName, EventDate);
///
/// The following keys name rows in this table:
///
///     "Bob", "2014-09-23"
///
/// Since the `UserEvents` table's `PRIMARY KEY` clause names two
/// columns, each `UserEvents` key has two elements; the first is the
/// `UserName`, and the second is the `EventDate`.
///
/// Key ranges with multiple components are interpreted
/// lexicographically by component using the table or index key's declared
/// sort order. For example, the following range returns all events for
/// user `"Bob"` that occurred in the year 2015:
///
///     "start_closed": ["Bob", "2015-01-01"]
///     "end_closed": ["Bob", "2015-12-31"]
///
/// Start and end keys can omit trailing key components. This affects the
/// inclusion and exclusion of rows that exactly match the provided key
/// components: if the key is closed, then rows that exactly match the
/// provided components are included; if the key is open, then rows
/// that exactly match are not included.
///
/// For example, the following range includes all events for `"Bob"` that
/// occurred during and after the year 2000:
///
///     "start_closed": ["Bob", "2000-01-01"]
///     "end_closed": ["Bob"]
///
/// The next example retrieves all events for `"Bob"`:
///
///     "start_closed": ["Bob"]
///     "end_closed": ["Bob"]
///
/// To retrieve events before the year 2000:
///
///     "start_closed": ["Bob"]
///     "end_open": ["Bob", "2000-01-01"]
///
/// The following range includes all rows in the table:
///
///     "start_closed": []
///     "end_closed": []
///
/// This range returns all users whose `UserName` begins with any
/// character from A to C:
///
///     "start_closed": ["A"]
///     "end_open": ["D"]
///
/// This range returns all users whose `UserName` begins with B:
///
///     "start_closed": ["B"]
///     "end_open": ["C"]
///
/// Key ranges honor column sort order. For example, suppose a table is
/// defined as follows:
///
///     CREATE TABLE DescendingSortedTable {
///       Key INT64,
///       ...
///     ) PRIMARY KEY(Key DESC);
///
/// The following range retrieves all rows with key values between 1
/// and 100 inclusive:
///
///     "start_closed": ["100"]
///     "end_closed": ["1"]
///
/// Note that 100 is passed as the start, and 1 is passed as the end,
/// because `Key` is a descending column in the schema.
class KeyRange {
  /// If the end is closed, then the range includes all rows whose
  /// first `len(end_closed)` key columns exactly match `end_closed`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> endClosed;

  /// If the end is open, then the range excludes rows whose first
  /// `len(end_open)` key columns exactly match `end_open`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> endOpen;

  /// If the start is closed, then the range includes all rows whose
  /// first `len(start_closed)` key columns exactly match `start_closed`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> startClosed;

  /// If the start is open, then the range excludes rows whose first
  /// `len(start_open)` key columns exactly match `start_open`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> startOpen;

  KeyRange();

  KeyRange.fromJson(core.Map _json) {
    if (_json.containsKey("endClosed")) {
      endClosed = (_json["endClosed"] as core.List).cast<core.Object>();
    }
    if (_json.containsKey("endOpen")) {
      endOpen = (_json["endOpen"] as core.List).cast<core.Object>();
    }
    if (_json.containsKey("startClosed")) {
      startClosed = (_json["startClosed"] as core.List).cast<core.Object>();
    }
    if (_json.containsKey("startOpen")) {
      startOpen = (_json["startOpen"] as core.List).cast<core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endClosed != null) {
      _json["endClosed"] = endClosed;
    }
    if (endOpen != null) {
      _json["endOpen"] = endOpen;
    }
    if (startClosed != null) {
      _json["startClosed"] = startClosed;
    }
    if (startOpen != null) {
      _json["startOpen"] = startOpen;
    }
    return _json;
  }
}

/// `KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All
/// the keys are expected to be in the same table or index. The keys need
/// not be sorted in any particular way.
///
/// If the same key is specified multiple times in the set (for example
/// if two ranges, two keys, or a key and a range overlap), Cloud Spanner
/// behaves as if the key were only specified once.
class KeySet {
  /// For convenience `all` can be set to `true` to indicate that this
  /// `KeySet` matches all keys in the table or index. Note that any keys
  /// specified in `keys` or `ranges` are only yielded once.
  core.bool all;

  /// A list of specific keys. Entries in `keys` should have exactly as
  /// many elements as there are columns in the primary or index key
  /// with which this `KeySet` is used.  Individual key values are
  /// encoded as described here.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object>> keys;

  /// A list of key ranges. See KeyRange for more information about
  /// key range specifications.
  core.List<KeyRange> ranges;

  KeySet();

  KeySet.fromJson(core.Map _json) {
    if (_json.containsKey("all")) {
      all = _json["all"];
    }
    if (_json.containsKey("keys")) {
      keys = (_json["keys"] as core.List)
          .map<core.List<core.Object>>(
              (value) => (value as core.List).cast<core.Object>())
          .toList();
    }
    if (_json.containsKey("ranges")) {
      ranges = (_json["ranges"] as core.List)
          .map<KeyRange>((value) => new KeyRange.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (all != null) {
      _json["all"] = all;
    }
    if (keys != null) {
      _json["keys"] = keys;
    }
    if (ranges != null) {
      _json["ranges"] = ranges.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The response for ListDatabases.
class ListDatabasesResponse {
  /// Databases that matched the request.
  core.List<Database> databases;

  /// `next_page_token` can be sent in a subsequent
  /// ListDatabases call to fetch more
  /// of the matching databases.
  core.String nextPageToken;

  ListDatabasesResponse();

  ListDatabasesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("databases")) {
      databases = (_json["databases"] as core.List)
          .map<Database>((value) => new Database.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (databases != null) {
      _json["databases"] = databases.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The response for ListInstanceConfigs.
class ListInstanceConfigsResponse {
  /// The list of requested instance configurations.
  core.List<InstanceConfig> instanceConfigs;

  /// `next_page_token` can be sent in a subsequent
  /// ListInstanceConfigs call to
  /// fetch more of the matching instance configurations.
  core.String nextPageToken;

  ListInstanceConfigsResponse();

  ListInstanceConfigsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("instanceConfigs")) {
      instanceConfigs = (_json["instanceConfigs"] as core.List)
          .map<InstanceConfig>((value) => new InstanceConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (instanceConfigs != null) {
      _json["instanceConfigs"] =
          instanceConfigs.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The response for ListInstances.
class ListInstancesResponse {
  /// The list of requested instances.
  core.List<Instance> instances;

  /// `next_page_token` can be sent in a subsequent
  /// ListInstances call to fetch more
  /// of the matching instances.
  core.String nextPageToken;

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

/// The response for ListSessions.
class ListSessionsResponse {
  /// `next_page_token` can be sent in a subsequent
  /// ListSessions call to fetch more of the matching
  /// sessions.
  core.String nextPageToken;

  /// The list of requested sessions.
  core.List<Session> sessions;

  ListSessionsResponse();

  ListSessionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("sessions")) {
      sessions = (_json["sessions"] as core.List)
          .map<Session>((value) => new Session.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (sessions != null) {
      _json["sessions"] = sessions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A modification to one or more Cloud Spanner rows.  Mutations can be
/// applied to a Cloud Spanner database by sending them in a
/// Commit call.
class Mutation {
  /// Delete rows from a table. Succeeds whether or not the named
  /// rows were present.
  Delete delete;

  /// Insert new rows in a table. If any of the rows already exist,
  /// the write or transaction fails with error `ALREADY_EXISTS`.
  Write insert;

  /// Like insert, except that if the row already exists, then
  /// its column values are overwritten with the ones provided. Any
  /// column values not explicitly written are preserved.
  Write insertOrUpdate;

  /// Like insert, except that if the row already exists, it is
  /// deleted, and the column values provided are inserted
  /// instead. Unlike insert_or_update, this means any values not
  /// explicitly written become `NULL`.
  Write replace;

  /// Update existing rows in a table. If any of the rows does not
  /// already exist, the transaction fails with error `NOT_FOUND`.
  Write update;

  Mutation();

  Mutation.fromJson(core.Map _json) {
    if (_json.containsKey("delete")) {
      delete = new Delete.fromJson(_json["delete"]);
    }
    if (_json.containsKey("insert")) {
      insert = new Write.fromJson(_json["insert"]);
    }
    if (_json.containsKey("insertOrUpdate")) {
      insertOrUpdate = new Write.fromJson(_json["insertOrUpdate"]);
    }
    if (_json.containsKey("replace")) {
      replace = new Write.fromJson(_json["replace"]);
    }
    if (_json.containsKey("update")) {
      update = new Write.fromJson(_json["update"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (delete != null) {
      _json["delete"] = (delete).toJson();
    }
    if (insert != null) {
      _json["insert"] = (insert).toJson();
    }
    if (insertOrUpdate != null) {
      _json["insertOrUpdate"] = (insertOrUpdate).toJson();
    }
    if (replace != null) {
      _json["replace"] = (replace).toJson();
    }
    if (update != null) {
      _json["update"] = (update).toJson();
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

/// Partial results from a streaming read or SQL query. Streaming reads and
/// SQL queries better tolerate large result sets, large rows, and large
/// values, but are a little trickier to consume.
class PartialResultSet {
  /// If true, then the final value in values is chunked, and must
  /// be combined with more values from subsequent `PartialResultSet`s
  /// to obtain a complete field value.
  core.bool chunkedValue;

  /// Metadata about the result set, such as row type information.
  /// Only present in the first response.
  ResultSetMetadata metadata;

  /// Streaming calls might be interrupted for a variety of reasons, such
  /// as TCP connection loss. If this occurs, the stream of results can
  /// be resumed by re-sending the original request and including
  /// `resume_token`. Note that executing any other transaction in the
  /// same session invalidates the token.
  core.String resumeToken;
  core.List<core.int> get resumeTokenAsBytes {
    return convert.base64.decode(resumeToken);
  }

  set resumeTokenAsBytes(core.List<core.int> _bytes) {
    resumeToken =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Query plan and execution statistics for the statement that produced this
  /// streaming result set. These can be requested by setting
  /// ExecuteSqlRequest.query_mode and are sent
  /// only once with the last response in the stream.
  /// This field will also be present in the last response for DML
  /// statements.
  ResultSetStats stats;

  /// A streamed result set consists of a stream of values, which might
  /// be split into many `PartialResultSet` messages to accommodate
  /// large rows and/or large values. Every N complete values defines a
  /// row, where N is equal to the number of entries in
  /// metadata.row_type.fields.
  ///
  /// Most values are encoded based on type as described
  /// here.
  ///
  /// It is possible that the last value in values is "chunked",
  /// meaning that the rest of the value is sent in subsequent
  /// `PartialResultSet`(s). This is denoted by the chunked_value
  /// field. Two or more chunked values can be merged to form a
  /// complete value as follows:
  ///
  ///   * `bool/number/null`: cannot be chunked
  ///   * `string`: concatenate the strings
  ///   * `list`: concatenate the lists. If the last element in a list is a
  ///     `string`, `list`, or `object`, merge it with the first element in
  ///     the next list by applying these rules recursively.
  ///   * `object`: concatenate the (field name, field value) pairs. If a
  ///     field name is duplicated, then apply these rules recursively
  ///     to merge the field values.
  ///
  /// Some examples of merging:
  ///
  ///     # Strings are concatenated.
  ///     "foo", "bar" => "foobar"
  ///
  ///     # Lists of non-strings are concatenated.
  ///     [2, 3], [4] => [2, 3, 4]
  ///
  ///     # Lists are concatenated, but the last and first elements are merged
  ///     # because they are strings.
  ///     ["a", "b"], ["c", "d"] => ["a", "bc", "d"]
  ///
  ///     # Lists are concatenated, but the last and first elements are merged
  ///     # because they are lists. Recursively, the last and first elements
  ///     # of the inner lists are merged because they are strings.
  ///     ["a", ["b", "c"]], [["d"], "e"] => ["a", ["b", "cd"], "e"]
  ///
  ///     # Non-overlapping object fields are combined.
  ///     {"a": "1"}, {"b": "2"} => {"a": "1", "b": 2"}
  ///
  ///     # Overlapping object fields are merged.
  ///     {"a": "1"}, {"a": "2"} => {"a": "12"}
  ///
  ///     # Examples of merging objects containing lists of strings.
  ///     {"a": ["1"]}, {"a": ["2"]} => {"a": ["12"]}
  ///
  /// For a more complete example, suppose a streaming SQL query is
  /// yielding a result set whose rows contain a single string
  /// field. The following `PartialResultSet`s might be yielded:
  ///
  ///     {
  ///       "metadata": { ... }
  ///       "values": ["Hello", "W"]
  ///       "chunked_value": true
  ///       "resume_token": "Af65..."
  ///     }
  ///     {
  ///       "values": ["orl"]
  ///       "chunked_value": true
  ///       "resume_token": "Bqp2..."
  ///     }
  ///     {
  ///       "values": ["d"]
  ///       "resume_token": "Zx1B..."
  ///     }
  ///
  /// This sequence of `PartialResultSet`s encodes two rows, one
  /// containing the field value `"Hello"`, and a second containing the
  /// field value `"World" = "W" + "orl" + "d"`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> values;

  PartialResultSet();

  PartialResultSet.fromJson(core.Map _json) {
    if (_json.containsKey("chunkedValue")) {
      chunkedValue = _json["chunkedValue"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new ResultSetMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("resumeToken")) {
      resumeToken = _json["resumeToken"];
    }
    if (_json.containsKey("stats")) {
      stats = new ResultSetStats.fromJson(_json["stats"]);
    }
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List).cast<core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (chunkedValue != null) {
      _json["chunkedValue"] = chunkedValue;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (resumeToken != null) {
      _json["resumeToken"] = resumeToken;
    }
    if (stats != null) {
      _json["stats"] = (stats).toJson();
    }
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// Information returned for each partition returned in a
/// PartitionResponse.
class Partition {
  /// This token can be passed to Read, StreamingRead, ExecuteSql, or
  /// ExecuteStreamingSql requests to restrict the results to those identified
  /// by
  /// this partition token.
  core.String partitionToken;
  core.List<core.int> get partitionTokenAsBytes {
    return convert.base64.decode(partitionToken);
  }

  set partitionTokenAsBytes(core.List<core.int> _bytes) {
    partitionToken =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  Partition();

  Partition.fromJson(core.Map _json) {
    if (_json.containsKey("partitionToken")) {
      partitionToken = _json["partitionToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (partitionToken != null) {
      _json["partitionToken"] = partitionToken;
    }
    return _json;
  }
}

/// Options for a PartitionQueryRequest and
/// PartitionReadRequest.
class PartitionOptions {
  /// **Note:** This hint is currently ignored by PartitionQuery and
  /// PartitionRead requests.
  ///
  /// The desired maximum number of partitions to return.  For example, this may
  /// be set to the number of workers available.  The default for this option
  /// is currently 10,000. The maximum value is currently 200,000.  This is only
  /// a hint.  The actual number of partitions returned may be smaller or larger
  /// than this maximum count request.
  core.String maxPartitions;

  /// **Note:** This hint is currently ignored by PartitionQuery and
  /// PartitionRead requests.
  ///
  /// The desired data size for each partition generated.  The default for this
  /// option is currently 1 GiB.  This is only a hint. The actual size of each
  /// partition may be smaller or larger than this size request.
  core.String partitionSizeBytes;

  PartitionOptions();

  PartitionOptions.fromJson(core.Map _json) {
    if (_json.containsKey("maxPartitions")) {
      maxPartitions = _json["maxPartitions"];
    }
    if (_json.containsKey("partitionSizeBytes")) {
      partitionSizeBytes = _json["partitionSizeBytes"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maxPartitions != null) {
      _json["maxPartitions"] = maxPartitions;
    }
    if (partitionSizeBytes != null) {
      _json["partitionSizeBytes"] = partitionSizeBytes;
    }
    return _json;
  }
}

/// The request for PartitionQuery
class PartitionQueryRequest {
  /// It is not always possible for Cloud Spanner to infer the right SQL type
  /// from a JSON value.  For example, values of type `BYTES` and values
  /// of type `STRING` both appear in params as JSON strings.
  ///
  /// In these cases, `param_types` can be used to specify the exact
  /// SQL type for some or all of the SQL query parameters. See the
  /// definition of Type for more information
  /// about SQL types.
  core.Map<core.String, Type> paramTypes;

  /// The SQL query string can contain parameter placeholders. A parameter
  /// placeholder consists of `'@'` followed by the parameter
  /// name. Parameter names consist of any combination of letters,
  /// numbers, and underscores.
  ///
  /// Parameters can appear anywhere that a literal value is expected.  The same
  /// parameter name can be used more than once, for example:
  ///   `"WHERE id > @msg_id AND id < @msg_id + 100"`
  ///
  /// It is an error to execute an SQL query with unbound parameters.
  ///
  /// Parameter values are specified using `params`, which is a JSON
  /// object whose keys are parameter names, and whose values are the
  /// corresponding parameter values.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> params;

  /// Additional options that affect how many partitions are created.
  PartitionOptions partitionOptions;

  /// The query request to generate partitions for. The request will fail if
  /// the query is not root partitionable. The query plan of a root
  /// partitionable query has a single distributed union operator. A distributed
  /// union operator conceptually divides one or more tables into multiple
  /// splits, remotely evaluates a subquery independently on each split, and
  /// then unions all results.
  ///
  /// This must not contain DML commands, such as INSERT, UPDATE, or
  /// DELETE. Use ExecuteStreamingSql with a
  /// PartitionedDml transaction for large, partition-friendly DML operations.
  core.String sql;

  /// Read only snapshot transactions are supported, read/write and single use
  /// transactions are not.
  TransactionSelector transaction;

  PartitionQueryRequest();

  PartitionQueryRequest.fromJson(core.Map _json) {
    if (_json.containsKey("paramTypes")) {
      paramTypes = commons.mapMap<core.Map, Type>(
          _json["paramTypes"].cast<core.String, core.Map>(),
          (core.Map item) => new Type.fromJson(item));
    }
    if (_json.containsKey("params")) {
      params = (_json["params"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("partitionOptions")) {
      partitionOptions =
          new PartitionOptions.fromJson(_json["partitionOptions"]);
    }
    if (_json.containsKey("sql")) {
      sql = _json["sql"];
    }
    if (_json.containsKey("transaction")) {
      transaction = new TransactionSelector.fromJson(_json["transaction"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (paramTypes != null) {
      _json["paramTypes"] =
          commons.mapMap<Type, core.Map<core.String, core.Object>>(
              paramTypes, (Type item) => (item).toJson());
    }
    if (params != null) {
      _json["params"] = params;
    }
    if (partitionOptions != null) {
      _json["partitionOptions"] = (partitionOptions).toJson();
    }
    if (sql != null) {
      _json["sql"] = sql;
    }
    if (transaction != null) {
      _json["transaction"] = (transaction).toJson();
    }
    return _json;
  }
}

/// The request for PartitionRead
class PartitionReadRequest {
  /// The columns of table to be returned for each row matching
  /// this request.
  core.List<core.String> columns;

  /// If non-empty, the name of an index on table. This index is
  /// used instead of the table primary key when interpreting key_set
  /// and sorting result rows. See key_set for further information.
  core.String index;

  /// Required. `key_set` identifies the rows to be yielded. `key_set` names the
  /// primary keys of the rows in table to be yielded, unless index
  /// is present. If index is present, then key_set instead names
  /// index keys in index.
  ///
  /// It is not an error for the `key_set` to name rows that do not
  /// exist in the database. Read yields nothing for nonexistent rows.
  KeySet keySet;

  /// Additional options that affect how many partitions are created.
  PartitionOptions partitionOptions;

  /// Required. The name of the table in the database to be read.
  core.String table;

  /// Read only snapshot transactions are supported, read/write and single use
  /// transactions are not.
  TransactionSelector transaction;

  PartitionReadRequest();

  PartitionReadRequest.fromJson(core.Map _json) {
    if (_json.containsKey("columns")) {
      columns = (_json["columns"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("keySet")) {
      keySet = new KeySet.fromJson(_json["keySet"]);
    }
    if (_json.containsKey("partitionOptions")) {
      partitionOptions =
          new PartitionOptions.fromJson(_json["partitionOptions"]);
    }
    if (_json.containsKey("table")) {
      table = _json["table"];
    }
    if (_json.containsKey("transaction")) {
      transaction = new TransactionSelector.fromJson(_json["transaction"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columns != null) {
      _json["columns"] = columns;
    }
    if (index != null) {
      _json["index"] = index;
    }
    if (keySet != null) {
      _json["keySet"] = (keySet).toJson();
    }
    if (partitionOptions != null) {
      _json["partitionOptions"] = (partitionOptions).toJson();
    }
    if (table != null) {
      _json["table"] = table;
    }
    if (transaction != null) {
      _json["transaction"] = (transaction).toJson();
    }
    return _json;
  }
}

/// The response for PartitionQuery
/// or PartitionRead
class PartitionResponse {
  /// Partitions created by this request.
  core.List<Partition> partitions;

  /// Transaction created by this request.
  Transaction transaction;

  PartitionResponse();

  PartitionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("partitions")) {
      partitions = (_json["partitions"] as core.List)
          .map<Partition>((value) => new Partition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("transaction")) {
      transaction = new Transaction.fromJson(_json["transaction"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (partitions != null) {
      _json["partitions"] =
          partitions.map((value) => (value).toJson()).toList();
    }
    if (transaction != null) {
      _json["transaction"] = (transaction).toJson();
    }
    return _json;
  }
}

/// Message type to initiate a Partitioned DML transaction.
class PartitionedDml {
  PartitionedDml();

  PartitionedDml.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Node information for nodes appearing in a QueryPlan.plan_nodes.
class PlanNode {
  /// List of child node `index`es and their relationship to this parent.
  core.List<ChildLink> childLinks;

  /// The display name for the node.
  core.String displayName;

  /// The execution statistics associated with the node, contained in a group of
  /// key-value pairs. Only present if the plan was returned as a result of a
  /// profile query. For example, number of executions, number of rows/time per
  /// execution etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> executionStats;

  /// The `PlanNode`'s index in node list.
  core.int index;

  /// Used to determine the type of node. May be needed for visualizing
  /// different kinds of nodes differently. For example, If the node is a
  /// SCALAR node, it will have a condensed representation
  /// which can be used to directly embed a description of the node in its
  /// parent.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Not specified.
  /// - "RELATIONAL" : Denotes a Relational operator node in the expression
  /// tree. Relational
  /// operators represent iterative processing of rows during query execution.
  /// For example, a `TableScan` operation that reads rows from a table.
  /// - "SCALAR" : Denotes a Scalar node in the expression tree. Scalar nodes
  /// represent
  /// non-iterable entities in the query plan. For example, constants or
  /// arithmetic operators appearing inside predicate expressions or references
  /// to column names.
  core.String kind;

  /// Attributes relevant to the node contained in a group of key-value pairs.
  /// For example, a Parameter Reference node could have the following
  /// information in its metadata:
  ///
  ///     {
  ///       "parameter_reference": "param1",
  ///       "parameter_type": "array"
  ///     }
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Condensed representation for SCALAR nodes.
  ShortRepresentation shortRepresentation;

  PlanNode();

  PlanNode.fromJson(core.Map _json) {
    if (_json.containsKey("childLinks")) {
      childLinks = (_json["childLinks"] as core.List)
          .map<ChildLink>((value) => new ChildLink.fromJson(value))
          .toList();
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("executionStats")) {
      executionStats = (_json["executionStats"] as core.Map)
          .cast<core.String, core.Object>();
    }
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("shortRepresentation")) {
      shortRepresentation =
          new ShortRepresentation.fromJson(_json["shortRepresentation"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (childLinks != null) {
      _json["childLinks"] =
          childLinks.map((value) => (value).toJson()).toList();
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (executionStats != null) {
      _json["executionStats"] = executionStats;
    }
    if (index != null) {
      _json["index"] = index;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (shortRepresentation != null) {
      _json["shortRepresentation"] = (shortRepresentation).toJson();
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

/// Contains an ordered list of nodes appearing in the query plan.
class QueryPlan {
  /// The nodes in the query plan. Plan nodes are returned in pre-order starting
  /// with the plan root. Each PlanNode's `id` corresponds to its index in
  /// `plan_nodes`.
  core.List<PlanNode> planNodes;

  QueryPlan();

  QueryPlan.fromJson(core.Map _json) {
    if (_json.containsKey("planNodes")) {
      planNodes = (_json["planNodes"] as core.List)
          .map<PlanNode>((value) => new PlanNode.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (planNodes != null) {
      _json["planNodes"] = planNodes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Message type to initiate a read-only transaction.
class ReadOnly {
  /// Executes all reads at a timestamp that is `exact_staleness`
  /// old. The timestamp is chosen soon after the read is started.
  ///
  /// Guarantees that all writes that have committed more than the
  /// specified number of seconds ago are visible. Because Cloud Spanner
  /// chooses the exact timestamp, this mode works even if the client's
  /// local clock is substantially skewed from Cloud Spanner commit
  /// timestamps.
  ///
  /// Useful for reading at nearby replicas without the distributed
  /// timestamp negotiation overhead of `max_staleness`.
  core.String exactStaleness;

  /// Read data at a timestamp >= `NOW - max_staleness`
  /// seconds. Guarantees that all writes that have committed more
  /// than the specified number of seconds ago are visible. Because
  /// Cloud Spanner chooses the exact timestamp, this mode works even if
  /// the client's local clock is substantially skewed from Cloud Spanner
  /// commit timestamps.
  ///
  /// Useful for reading the freshest data available at a nearby
  /// replica, while bounding the possible staleness if the local
  /// replica has fallen behind.
  ///
  /// Note that this option can only be used in single-use
  /// transactions.
  core.String maxStaleness;

  /// Executes all reads at a timestamp >= `min_read_timestamp`.
  ///
  /// This is useful for requesting fresher data than some previous
  /// read, or data that is fresh enough to observe the effects of some
  /// previously committed transaction whose timestamp is known.
  ///
  /// Note that this option can only be used in single-use transactions.
  ///
  /// A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds.
  /// Example: `"2014-10-02T15:01:23.045123456Z"`.
  core.String minReadTimestamp;

  /// Executes all reads at the given timestamp. Unlike other modes,
  /// reads at a specific timestamp are repeatable; the same read at
  /// the same timestamp always returns the same data. If the
  /// timestamp is in the future, the read will block until the
  /// specified timestamp, modulo the read's deadline.
  ///
  /// Useful for large scale consistent reads such as mapreduces, or
  /// for coordinating many reads against a consistent snapshot of the
  /// data.
  ///
  /// A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds.
  /// Example: `"2014-10-02T15:01:23.045123456Z"`.
  core.String readTimestamp;

  /// If true, the Cloud Spanner-selected read timestamp is included in
  /// the Transaction message that describes the transaction.
  core.bool returnReadTimestamp;

  /// Read at a timestamp where all previously committed transactions
  /// are visible.
  core.bool strong;

  ReadOnly();

  ReadOnly.fromJson(core.Map _json) {
    if (_json.containsKey("exactStaleness")) {
      exactStaleness = _json["exactStaleness"];
    }
    if (_json.containsKey("maxStaleness")) {
      maxStaleness = _json["maxStaleness"];
    }
    if (_json.containsKey("minReadTimestamp")) {
      minReadTimestamp = _json["minReadTimestamp"];
    }
    if (_json.containsKey("readTimestamp")) {
      readTimestamp = _json["readTimestamp"];
    }
    if (_json.containsKey("returnReadTimestamp")) {
      returnReadTimestamp = _json["returnReadTimestamp"];
    }
    if (_json.containsKey("strong")) {
      strong = _json["strong"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exactStaleness != null) {
      _json["exactStaleness"] = exactStaleness;
    }
    if (maxStaleness != null) {
      _json["maxStaleness"] = maxStaleness;
    }
    if (minReadTimestamp != null) {
      _json["minReadTimestamp"] = minReadTimestamp;
    }
    if (readTimestamp != null) {
      _json["readTimestamp"] = readTimestamp;
    }
    if (returnReadTimestamp != null) {
      _json["returnReadTimestamp"] = returnReadTimestamp;
    }
    if (strong != null) {
      _json["strong"] = strong;
    }
    return _json;
  }
}

/// The request for Read and
/// StreamingRead.
class ReadRequest {
  /// The columns of table to be returned for each row matching
  /// this request.
  core.List<core.String> columns;

  /// If non-empty, the name of an index on table. This index is
  /// used instead of the table primary key when interpreting key_set
  /// and sorting result rows. See key_set for further information.
  core.String index;

  /// Required. `key_set` identifies the rows to be yielded. `key_set` names the
  /// primary keys of the rows in table to be yielded, unless index
  /// is present. If index is present, then key_set instead names
  /// index keys in index.
  ///
  /// If the partition_token field is empty, rows are yielded
  /// in table primary key order (if index is empty) or index key order
  /// (if index is non-empty).  If the partition_token field is not
  /// empty, rows will be yielded in an unspecified order.
  ///
  /// It is not an error for the `key_set` to name rows that do not
  /// exist in the database. Read yields nothing for nonexistent rows.
  KeySet keySet;

  /// If greater than zero, only the first `limit` rows are yielded. If `limit`
  /// is zero, the default is no limit. A limit cannot be specified if
  /// `partition_token` is set.
  core.String limit;

  /// If present, results will be restricted to the specified partition
  /// previously created using PartitionRead().    There must be an exact
  /// match for the values of fields common to this message and the
  /// PartitionReadRequest message used to create this partition_token.
  core.String partitionToken;
  core.List<core.int> get partitionTokenAsBytes {
    return convert.base64.decode(partitionToken);
  }

  set partitionTokenAsBytes(core.List<core.int> _bytes) {
    partitionToken =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// If this request is resuming a previously interrupted read,
  /// `resume_token` should be copied from the last
  /// PartialResultSet yielded before the interruption. Doing this
  /// enables the new read to resume where the last read left off. The
  /// rest of the request parameters must exactly match the request
  /// that yielded this token.
  core.String resumeToken;
  core.List<core.int> get resumeTokenAsBytes {
    return convert.base64.decode(resumeToken);
  }

  set resumeTokenAsBytes(core.List<core.int> _bytes) {
    resumeToken =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Required. The name of the table in the database to be read.
  core.String table;

  /// The transaction to use. If none is provided, the default is a
  /// temporary read-only transaction with strong concurrency.
  TransactionSelector transaction;

  ReadRequest();

  ReadRequest.fromJson(core.Map _json) {
    if (_json.containsKey("columns")) {
      columns = (_json["columns"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("index")) {
      index = _json["index"];
    }
    if (_json.containsKey("keySet")) {
      keySet = new KeySet.fromJson(_json["keySet"]);
    }
    if (_json.containsKey("limit")) {
      limit = _json["limit"];
    }
    if (_json.containsKey("partitionToken")) {
      partitionToken = _json["partitionToken"];
    }
    if (_json.containsKey("resumeToken")) {
      resumeToken = _json["resumeToken"];
    }
    if (_json.containsKey("table")) {
      table = _json["table"];
    }
    if (_json.containsKey("transaction")) {
      transaction = new TransactionSelector.fromJson(_json["transaction"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columns != null) {
      _json["columns"] = columns;
    }
    if (index != null) {
      _json["index"] = index;
    }
    if (keySet != null) {
      _json["keySet"] = (keySet).toJson();
    }
    if (limit != null) {
      _json["limit"] = limit;
    }
    if (partitionToken != null) {
      _json["partitionToken"] = partitionToken;
    }
    if (resumeToken != null) {
      _json["resumeToken"] = resumeToken;
    }
    if (table != null) {
      _json["table"] = table;
    }
    if (transaction != null) {
      _json["transaction"] = (transaction).toJson();
    }
    return _json;
  }
}

/// Message type to initiate a read-write transaction. Currently this
/// transaction type has no options.
class ReadWrite {
  ReadWrite();

  ReadWrite.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

class ReplicaInfo {
  /// If true, this location is designated as the default leader location where
  /// leader replicas are placed. See the [region types
  /// documentation](https://cloud.google.com/spanner/docs/instances#region_types)
  /// for more details.
  core.bool defaultLeaderLocation;

  /// The location of the serving resources, e.g. "us-central1".
  core.String location;

  /// The type of replica.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not specified.
  /// - "READ_WRITE" : Read-write replicas support both reads and writes. These
  /// replicas:
  ///
  /// * Maintain a full copy of your data.
  /// * Serve reads.
  /// * Can vote whether to commit a write.
  /// * Participate in leadership election.
  /// * Are eligible to become a leader.
  /// - "READ_ONLY" : Read-only replicas only support reads (not writes).
  /// Read-only replicas:
  ///
  /// * Maintain a full copy of your data.
  /// * Serve reads.
  /// * Do not participate in voting to commit writes.
  /// * Are not eligible to become a leader.
  /// - "WITNESS" : Witness replicas don't support reads but do participate in
  /// voting to
  /// commit writes. Witness replicas:
  ///
  /// * Do not maintain a full copy of data.
  /// * Do not serve reads.
  /// * Vote whether to commit writes.
  /// * Participate in leader election but are not eligible to become leader.
  core.String type;

  ReplicaInfo();

  ReplicaInfo.fromJson(core.Map _json) {
    if (_json.containsKey("defaultLeaderLocation")) {
      defaultLeaderLocation = _json["defaultLeaderLocation"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (defaultLeaderLocation != null) {
      _json["defaultLeaderLocation"] = defaultLeaderLocation;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Results from Read or
/// ExecuteSql.
class ResultSet {
  /// Metadata about the result set, such as row type information.
  ResultSetMetadata metadata;

  /// Each element in `rows` is a row whose format is defined by
  /// metadata.row_type. The ith element
  /// in each row matches the ith field in
  /// metadata.row_type. Elements are
  /// encoded based on type as described
  /// here.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object>> rows;

  /// Query plan and execution statistics for the SQL statement that
  /// produced this result set. These can be requested by setting
  /// ExecuteSqlRequest.query_mode.
  /// DML statements always produce stats containing the number of rows
  /// modified, unless executed using the
  /// ExecuteSqlRequest.QueryMode.PLAN ExecuteSqlRequest.query_mode.
  /// Other fields may or may not be populated, based on the
  /// ExecuteSqlRequest.query_mode.
  ResultSetStats stats;

  ResultSet();

  ResultSet.fromJson(core.Map _json) {
    if (_json.containsKey("metadata")) {
      metadata = new ResultSetMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("rows")) {
      rows = (_json["rows"] as core.List)
          .map<core.List<core.Object>>(
              (value) => (value as core.List).cast<core.Object>())
          .toList();
    }
    if (_json.containsKey("stats")) {
      stats = new ResultSetStats.fromJson(_json["stats"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (rows != null) {
      _json["rows"] = rows;
    }
    if (stats != null) {
      _json["stats"] = (stats).toJson();
    }
    return _json;
  }
}

/// Metadata about a ResultSet or PartialResultSet.
class ResultSetMetadata {
  /// Indicates the field names and types for the rows in the result
  /// set.  For example, a SQL query like `"SELECT UserId, UserName FROM
  /// Users"` could return a `row_type` value like:
  ///
  ///     "fields": [
  ///       { "name": "UserId", "type": { "code": "INT64" } },
  ///       { "name": "UserName", "type": { "code": "STRING" } },
  ///     ]
  StructType rowType;

  /// If the read or SQL query began a transaction as a side-effect, the
  /// information about the new transaction is yielded here.
  Transaction transaction;

  ResultSetMetadata();

  ResultSetMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("rowType")) {
      rowType = new StructType.fromJson(_json["rowType"]);
    }
    if (_json.containsKey("transaction")) {
      transaction = new Transaction.fromJson(_json["transaction"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rowType != null) {
      _json["rowType"] = (rowType).toJson();
    }
    if (transaction != null) {
      _json["transaction"] = (transaction).toJson();
    }
    return _json;
  }
}

/// Additional statistics about a ResultSet or PartialResultSet.
class ResultSetStats {
  /// QueryPlan for the query associated with this result.
  QueryPlan queryPlan;

  /// Aggregated statistics from the execution of the query. Only present when
  /// the query is profiled. For example, a query could return the statistics as
  /// follows:
  ///
  ///     {
  ///       "rows_returned": "3",
  ///       "elapsed_time": "1.22 secs",
  ///       "cpu_time": "1.19 secs"
  ///     }
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> queryStats;

  /// Standard DML returns an exact count of rows that were modified.
  core.String rowCountExact;

  /// Partitioned DML does not offer exactly-once semantics, so it
  /// returns a lower bound of the rows modified.
  core.String rowCountLowerBound;

  ResultSetStats();

  ResultSetStats.fromJson(core.Map _json) {
    if (_json.containsKey("queryPlan")) {
      queryPlan = new QueryPlan.fromJson(_json["queryPlan"]);
    }
    if (_json.containsKey("queryStats")) {
      queryStats =
          (_json["queryStats"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("rowCountExact")) {
      rowCountExact = _json["rowCountExact"];
    }
    if (_json.containsKey("rowCountLowerBound")) {
      rowCountLowerBound = _json["rowCountLowerBound"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (queryPlan != null) {
      _json["queryPlan"] = (queryPlan).toJson();
    }
    if (queryStats != null) {
      _json["queryStats"] = queryStats;
    }
    if (rowCountExact != null) {
      _json["rowCountExact"] = rowCountExact;
    }
    if (rowCountLowerBound != null) {
      _json["rowCountLowerBound"] = rowCountLowerBound;
    }
    return _json;
  }
}

/// The request for Rollback.
class RollbackRequest {
  /// Required. The transaction to roll back.
  core.String transactionId;
  core.List<core.int> get transactionIdAsBytes {
    return convert.base64.decode(transactionId);
  }

  set transactionIdAsBytes(core.List<core.int> _bytes) {
    transactionId =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  RollbackRequest();

  RollbackRequest.fromJson(core.Map _json) {
    if (_json.containsKey("transactionId")) {
      transactionId = _json["transactionId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (transactionId != null) {
      _json["transactionId"] = transactionId;
    }
    return _json;
  }
}

/// A session in the Cloud Spanner API.
class Session {
  /// Output only. The approximate timestamp when the session is last used. It
  /// is
  /// typically earlier than the actual last use time.
  core.String approximateLastUseTime;

  /// Output only. The timestamp when the session is created.
  core.String createTime;

  /// The labels for the session.
  ///
  /// * Label keys must be between 1 and 63 characters long and must conform to
  ///    the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`.
  ///  * Label values must be between 0 and 63 characters long and must conform
  ///    to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  ///  * No more than 64 labels can be associated with a given session.
  ///
  /// See https://goo.gl/xmQnxf for more information on and examples of labels.
  core.Map<core.String, core.String> labels;

  /// The name of the session. This is always system-assigned; values provided
  /// when creating a session are ignored.
  core.String name;

  Session();

  Session.fromJson(core.Map _json) {
    if (_json.containsKey("approximateLastUseTime")) {
      approximateLastUseTime = _json["approximateLastUseTime"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (approximateLastUseTime != null) {
      _json["approximateLastUseTime"] = approximateLastUseTime;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
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

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey("policy")) {
      policy = new Policy.fromJson(_json["policy"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    return _json;
  }
}

/// Condensed representation of a node and its subtree. Only present for
/// `SCALAR` PlanNode(s).
class ShortRepresentation {
  /// A string representation of the expression subtree rooted at this node.
  core.String description;

  /// A mapping of (subquery variable name) -> (subquery node id) for cases
  /// where the `description` string of this node references a `SCALAR`
  /// subquery contained in the expression subtree rooted at this node. The
  /// referenced `SCALAR` subquery may not necessarily be a direct child of
  /// this node.
  core.Map<core.String, core.int> subqueries;

  ShortRepresentation();

  ShortRepresentation.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("subqueries")) {
      subqueries =
          (_json["subqueries"] as core.Map).cast<core.String, core.int>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (subqueries != null) {
      _json["subqueries"] = subqueries;
    }
    return _json;
  }
}

/// A single DML statement.
class Statement {
  /// It is not always possible for Cloud Spanner to infer the right SQL type
  /// from a JSON value.  For example, values of type `BYTES` and values
  /// of type `STRING` both appear in params as JSON strings.
  ///
  /// In these cases, `param_types` can be used to specify the exact
  /// SQL type for some or all of the SQL statement parameters. See the
  /// definition of Type for more information
  /// about SQL types.
  core.Map<core.String, Type> paramTypes;

  /// The DML string can contain parameter placeholders. A parameter
  /// placeholder consists of `'@'` followed by the parameter
  /// name. Parameter names consist of any combination of letters,
  /// numbers, and underscores.
  ///
  /// Parameters can appear anywhere that a literal value is expected.  The
  /// same parameter name can be used more than once, for example:
  ///   `"WHERE id > @msg_id AND id < @msg_id + 100"`
  ///
  /// It is an error to execute an SQL statement with unbound parameters.
  ///
  /// Parameter values are specified using `params`, which is a JSON
  /// object whose keys are parameter names, and whose values are the
  /// corresponding parameter values.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> params;

  /// Required. The DML string.
  core.String sql;

  Statement();

  Statement.fromJson(core.Map _json) {
    if (_json.containsKey("paramTypes")) {
      paramTypes = commons.mapMap<core.Map, Type>(
          _json["paramTypes"].cast<core.String, core.Map>(),
          (core.Map item) => new Type.fromJson(item));
    }
    if (_json.containsKey("params")) {
      params = (_json["params"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("sql")) {
      sql = _json["sql"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (paramTypes != null) {
      _json["paramTypes"] =
          commons.mapMap<Type, core.Map<core.String, core.Object>>(
              paramTypes, (Type item) => (item).toJson());
    }
    if (params != null) {
      _json["params"] = params;
    }
    if (sql != null) {
      _json["sql"] = sql;
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

/// `StructType` defines the fields of a STRUCT type.
class StructType {
  /// The list of fields that make up this struct. Order is
  /// significant, because values of this struct type are represented as
  /// lists, where the order of field values matches the order of
  /// fields in the StructType. In turn, the order of fields
  /// matches the order of columns in a read request, or the order of
  /// fields in the `SELECT` clause of a query.
  core.List<Field> fields;

  StructType();

  StructType.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List)
          .map<Field>((value) => new Field.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// REQUIRED: The set of permissions to check for 'resource'.
  /// Permissions with wildcards (such as '*', 'spanner.*',
  /// 'spanner.instances.*') are not allowed.
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

/// A transaction.
class Transaction {
  /// `id` may be used to identify the transaction in subsequent
  /// Read,
  /// ExecuteSql,
  /// Commit, or
  /// Rollback calls.
  ///
  /// Single-use read-only transactions do not have IDs, because
  /// single-use transactions do not support multiple requests.
  core.String id;
  core.List<core.int> get idAsBytes {
    return convert.base64.decode(id);
  }

  set idAsBytes(core.List<core.int> _bytes) {
    id =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// For snapshot read-only transactions, the read timestamp chosen
  /// for the transaction. Not returned by default: see
  /// TransactionOptions.ReadOnly.return_read_timestamp.
  ///
  /// A timestamp in RFC3339 UTC \"Zulu\" format, accurate to nanoseconds.
  /// Example: `"2014-10-02T15:01:23.045123456Z"`.
  core.String readTimestamp;

  Transaction();

  Transaction.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("readTimestamp")) {
      readTimestamp = _json["readTimestamp"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (id != null) {
      _json["id"] = id;
    }
    if (readTimestamp != null) {
      _json["readTimestamp"] = readTimestamp;
    }
    return _json;
  }
}

/// # Transactions
///
///
/// Each session can have at most one active transaction at a time. After the
/// active transaction is completed, the session can immediately be
/// re-used for the next transaction. It is not necessary to create a
/// new session for each transaction.
///
/// # Transaction Modes
///
/// Cloud Spanner supports three transaction modes:
///
///   1. Locking read-write. This type of transaction is the only way
///      to write data into Cloud Spanner. These transactions rely on
///      pessimistic locking and, if necessary, two-phase commit.
///      Locking read-write transactions may abort, requiring the
///      application to retry.
///
///   2. Snapshot read-only. This transaction type provides guaranteed
///      consistency across several reads, but does not allow
///      writes. Snapshot read-only transactions can be configured to
///      read at timestamps in the past. Snapshot read-only
///      transactions do not need to be committed.
///
///   3. Partitioned DML. This type of transaction is used to execute
///      a single Partitioned DML statement. Partitioned DML partitions
///      the key space and runs the DML statement over each partition
///      in parallel using separate, internal transactions that commit
///      independently. Partitioned DML transactions do not need to be
///      committed.
///
/// For transactions that only read, snapshot read-only transactions
/// provide simpler semantics and are almost always faster. In
/// particular, read-only transactions do not take locks, so they do
/// not conflict with read-write transactions. As a consequence of not
/// taking locks, they also do not abort, so retry loops are not needed.
///
/// Transactions may only read/write data in a single database. They
/// may, however, read/write data in different tables within that
/// database.
///
/// ## Locking Read-Write Transactions
///
/// Locking transactions may be used to atomically read-modify-write
/// data anywhere in a database. This type of transaction is externally
/// consistent.
///
/// Clients should attempt to minimize the amount of time a transaction
/// is active. Faster transactions commit with higher probability
/// and cause less contention. Cloud Spanner attempts to keep read locks
/// active as long as the transaction continues to do reads, and the
/// transaction has not been terminated by
/// Commit or
/// Rollback.  Long periods of
/// inactivity at the client may cause Cloud Spanner to release a
/// transaction's locks and abort it.
///
/// Conceptually, a read-write transaction consists of zero or more
/// reads or SQL statements followed by
/// Commit. At any time before
/// Commit, the client can send a
/// Rollback request to abort the
/// transaction.
///
/// ### Semantics
///
/// Cloud Spanner can commit the transaction if all read locks it acquired
/// are still valid at commit time, and it is able to acquire write
/// locks for all writes. Cloud Spanner can abort the transaction for any
/// reason. If a commit attempt returns `ABORTED`, Cloud Spanner guarantees
/// that the transaction has not modified any user data in Cloud Spanner.
///
/// Unless the transaction commits, Cloud Spanner makes no guarantees about
/// how long the transaction's locks were held for. It is an error to
/// use Cloud Spanner locks for any sort of mutual exclusion other than
/// between Cloud Spanner transactions themselves.
///
/// ### Retrying Aborted Transactions
///
/// When a transaction aborts, the application can choose to retry the
/// whole transaction again. To maximize the chances of successfully
/// committing the retry, the client should execute the retry in the
/// same session as the original attempt. The original session's lock
/// priority increases with each consecutive abort, meaning that each
/// attempt has a slightly better chance of success than the previous.
///
/// Under some circumstances (e.g., many transactions attempting to
/// modify the same row(s)), a transaction can abort many times in a
/// short period before successfully committing. Thus, it is not a good
/// idea to cap the number of retries a transaction can attempt;
/// instead, it is better to limit the total amount of wall time spent
/// retrying.
///
/// ### Idle Transactions
///
/// A transaction is considered idle if it has no outstanding reads or
/// SQL queries and has not started a read or SQL query within the last 10
/// seconds. Idle transactions can be aborted by Cloud Spanner so that they
/// don't hold on to locks indefinitely. In that case, the commit will
/// fail with error `ABORTED`.
///
/// If this behavior is undesirable, periodically executing a simple
/// SQL query in the transaction (e.g., `SELECT 1`) prevents the
/// transaction from becoming idle.
///
/// ## Snapshot Read-Only Transactions
///
/// Snapshot read-only transactions provides a simpler method than
/// locking read-write transactions for doing several consistent
/// reads. However, this type of transaction does not support writes.
///
/// Snapshot transactions do not take locks. Instead, they work by
/// choosing a Cloud Spanner timestamp, then executing all reads at that
/// timestamp. Since they do not acquire locks, they do not block
/// concurrent read-write transactions.
///
/// Unlike locking read-write transactions, snapshot read-only
/// transactions never abort. They can fail if the chosen read
/// timestamp is garbage collected; however, the default garbage
/// collection policy is generous enough that most applications do not
/// need to worry about this in practice.
///
/// Snapshot read-only transactions do not need to call
/// Commit or
/// Rollback (and in fact are not
/// permitted to do so).
///
/// To execute a snapshot transaction, the client specifies a timestamp
/// bound, which tells Cloud Spanner how to choose a read timestamp.
///
/// The types of timestamp bound are:
///
///   - Strong (the default).
///   - Bounded staleness.
///   - Exact staleness.
///
/// If the Cloud Spanner database to be read is geographically distributed,
/// stale read-only transactions can execute more quickly than strong
/// or read-write transaction, because they are able to execute far
/// from the leader replica.
///
/// Each type of timestamp bound is discussed in detail below.
///
/// ### Strong
///
/// Strong reads are guaranteed to see the effects of all transactions
/// that have committed before the start of the read. Furthermore, all
/// rows yielded by a single read are consistent with each other -- if
/// any part of the read observes a transaction, all parts of the read
/// see the transaction.
///
/// Strong reads are not repeatable: two consecutive strong read-only
/// transactions might return inconsistent results if there are
/// concurrent writes. If consistency across reads is required, the
/// reads should be executed within a transaction or at an exact read
/// timestamp.
///
/// See TransactionOptions.ReadOnly.strong.
///
/// ### Exact Staleness
///
/// These timestamp bounds execute reads at a user-specified
/// timestamp. Reads at a timestamp are guaranteed to see a consistent
/// prefix of the global transaction history: they observe
/// modifications done by all transactions with a commit timestamp <=
/// the read timestamp, and observe none of the modifications done by
/// transactions with a larger commit timestamp. They will block until
/// all conflicting transactions that may be assigned commit timestamps
/// <= the read timestamp have finished.
///
/// The timestamp can either be expressed as an absolute Cloud Spanner commit
/// timestamp or a staleness relative to the current time.
///
/// These modes do not require a "negotiation phase" to pick a
/// timestamp. As a result, they execute slightly faster than the
/// equivalent boundedly stale concurrency modes. On the other hand,
/// boundedly stale reads usually return fresher results.
///
/// See TransactionOptions.ReadOnly.read_timestamp and
/// TransactionOptions.ReadOnly.exact_staleness.
///
/// ### Bounded Staleness
///
/// Bounded staleness modes allow Cloud Spanner to pick the read timestamp,
/// subject to a user-provided staleness bound. Cloud Spanner chooses the
/// newest timestamp within the staleness bound that allows execution
/// of the reads at the closest available replica without blocking.
///
/// All rows yielded are consistent with each other -- if any part of
/// the read observes a transaction, all parts of the read see the
/// transaction. Boundedly stale reads are not repeatable: two stale
/// reads, even if they use the same staleness bound, can execute at
/// different timestamps and thus return inconsistent results.
///
/// Boundedly stale reads execute in two phases: the first phase
/// negotiates a timestamp among all replicas needed to serve the
/// read. In the second phase, reads are executed at the negotiated
/// timestamp.
///
/// As a result of the two phase execution, bounded staleness reads are
/// usually a little slower than comparable exact staleness
/// reads. However, they are typically able to return fresher
/// results, and are more likely to execute at the closest replica.
///
/// Because the timestamp negotiation requires up-front knowledge of
/// which rows will be read, it can only be used with single-use
/// read-only transactions.
///
/// See TransactionOptions.ReadOnly.max_staleness and
/// TransactionOptions.ReadOnly.min_read_timestamp.
///
/// ### Old Read Timestamps and Garbage Collection
///
/// Cloud Spanner continuously garbage collects deleted and overwritten data
/// in the background to reclaim storage space. This process is known
/// as "version GC". By default, version GC reclaims versions after they
/// are one hour old. Because of this, Cloud Spanner cannot perform reads
/// at read timestamps more than one hour in the past. This
/// restriction also applies to in-progress reads and/or SQL queries whose
/// timestamp become too old while executing. Reads and SQL queries with
/// too-old read timestamps fail with the error `FAILED_PRECONDITION`.
///
/// ## Partitioned DML Transactions
///
/// Partitioned DML transactions are used to execute DML statements with a
/// different execution strategy that provides different, and often better,
/// scalability properties for large, table-wide operations than DML in a
/// ReadWrite transaction. Smaller scoped statements, such as an OLTP workload,
/// should prefer using ReadWrite transactions.
///
/// Partitioned DML partitions the keyspace and runs the DML statement on each
/// partition in separate, internal transactions. These transactions commit
/// automatically when complete, and run independently from one another.
///
/// To reduce lock contention, this execution strategy only acquires read locks
/// on rows that match the WHERE clause of the statement. Additionally, the
/// smaller per-partition transactions hold locks for less time.
///
/// That said, Partitioned DML is not a drop-in replacement for standard DML
/// used
/// in ReadWrite transactions.
///
/// - The DML statement must be fully-partitionable. Specifically, the statement
/// must be expressible as the union of many statements which each access only
///    a single row of the table.
///
/// - The statement is not applied atomically to all rows of the table. Rather,
///    the statement is applied atomically to partitions of the table, in
///    independent transactions. Secondary index rows are updated atomically
///    with the base table rows.
///
///  - Partitioned DML does not guarantee exactly-once execution semantics
///    against a partition. The statement will be applied at least once to each
///    partition. It is strongly recommended that the DML statement should be
///    idempotent to avoid unexpected results. For instance, it is potentially
///    dangerous to run a statement such as
///    `UPDATE table SET column = column + 1` as it could be run multiple times
///    against some rows.
///
///  - The partitions are committed automatically - there is no support for
/// Commit or Rollback. If the call returns an error, or if the client issuing
/// the ExecuteSql call dies, it is possible that some rows had the statement
///    executed on them successfully. It is also possible that statement was
///    never executed against other rows.
///
///  - Partitioned DML transactions may only contain the execution of a single
///    DML statement via ExecuteSql or ExecuteStreamingSql.
///
///  - If any error is encountered during the execution of the partitioned DML
/// operation (for instance, a UNIQUE INDEX violation, division by zero, or a
///    value that cannot be stored due to schema constraints), then the
///    operation is stopped at that point and an error is returned. It is
/// possible that at this point, some partitions have been committed (or even
/// committed multiple times), and other partitions have not been run at all.
///
/// Given the above, Partitioned DML is good fit for large, database-wide,
/// operations that are idempotent, such as deleting old rows from a very large
/// table.
class TransactionOptions {
  /// Partitioned DML transaction.
  ///
  /// Authorization to begin a Partitioned DML transaction requires
  /// `spanner.databases.beginPartitionedDmlTransaction` permission
  /// on the `session` resource.
  PartitionedDml partitionedDml;

  /// Transaction will not write.
  ///
  /// Authorization to begin a read-only transaction requires
  /// `spanner.databases.beginReadOnlyTransaction` permission
  /// on the `session` resource.
  ReadOnly readOnly;

  /// Transaction may write.
  ///
  /// Authorization to begin a read-write transaction requires
  /// `spanner.databases.beginOrRollbackReadWriteTransaction` permission
  /// on the `session` resource.
  ReadWrite readWrite;

  TransactionOptions();

  TransactionOptions.fromJson(core.Map _json) {
    if (_json.containsKey("partitionedDml")) {
      partitionedDml = new PartitionedDml.fromJson(_json["partitionedDml"]);
    }
    if (_json.containsKey("readOnly")) {
      readOnly = new ReadOnly.fromJson(_json["readOnly"]);
    }
    if (_json.containsKey("readWrite")) {
      readWrite = new ReadWrite.fromJson(_json["readWrite"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (partitionedDml != null) {
      _json["partitionedDml"] = (partitionedDml).toJson();
    }
    if (readOnly != null) {
      _json["readOnly"] = (readOnly).toJson();
    }
    if (readWrite != null) {
      _json["readWrite"] = (readWrite).toJson();
    }
    return _json;
  }
}

/// This message is used to select the transaction in which a
/// Read or
/// ExecuteSql call runs.
///
/// See TransactionOptions for more information about transactions.
class TransactionSelector {
  /// Begin a new transaction and execute this read or SQL query in
  /// it. The transaction ID of the new transaction is returned in
  /// ResultSetMetadata.transaction, which is a Transaction.
  TransactionOptions begin;

  /// Execute the read or SQL query in a previously-started transaction.
  core.String id;
  core.List<core.int> get idAsBytes {
    return convert.base64.decode(id);
  }

  set idAsBytes(core.List<core.int> _bytes) {
    id =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Execute the read or SQL query in a temporary transaction.
  /// This is the most efficient way to execute a transaction that
  /// consists of a single SQL query.
  TransactionOptions singleUse;

  TransactionSelector();

  TransactionSelector.fromJson(core.Map _json) {
    if (_json.containsKey("begin")) {
      begin = new TransactionOptions.fromJson(_json["begin"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("singleUse")) {
      singleUse = new TransactionOptions.fromJson(_json["singleUse"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (begin != null) {
      _json["begin"] = (begin).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (singleUse != null) {
      _json["singleUse"] = (singleUse).toJson();
    }
    return _json;
  }
}

/// `Type` indicates the type of a Cloud Spanner value, as might be stored in a
/// table cell or returned from an SQL query.
class Type {
  /// If code == ARRAY, then `array_element_type`
  /// is the type of the array elements.
  Type arrayElementType;

  /// Required. The TypeCode for this type.
  /// Possible string values are:
  /// - "TYPE_CODE_UNSPECIFIED" : Not specified.
  /// - "BOOL" : Encoded as JSON `true` or `false`.
  /// - "INT64" : Encoded as `string`, in decimal format.
  /// - "FLOAT64" : Encoded as `number`, or the strings `"NaN"`, `"Infinity"`,
  /// or
  /// `"-Infinity"`.
  /// - "TIMESTAMP" : Encoded as `string` in RFC 3339 timestamp format. The time
  /// zone
  /// must be present, and must be `"Z"`.
  ///
  /// If the schema has the column option
  /// `allow_commit_timestamp=true`, the placeholder string
  /// `"spanner.commit_timestamp()"` can be used to instruct the system
  /// to insert the commit timestamp associated with the transaction
  /// commit.
  /// - "DATE" : Encoded as `string` in RFC 3339 date format.
  /// - "STRING" : Encoded as `string`.
  /// - "BYTES" : Encoded as a base64-encoded `string`, as described in RFC
  /// 4648,
  /// section 4.
  /// - "ARRAY" : Encoded as `list`, where the list elements are represented
  /// according to
  /// array_element_type.
  /// - "STRUCT" : Encoded as `list`, where list element `i` is represented
  /// according
  /// to [struct_type.fields[i]][google.spanner.v1.StructType.fields].
  core.String code;

  /// If code == STRUCT, then `struct_type`
  /// provides type information for the struct's fields.
  StructType structType;

  Type();

  Type.fromJson(core.Map _json) {
    if (_json.containsKey("arrayElementType")) {
      arrayElementType = new Type.fromJson(_json["arrayElementType"]);
    }
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("structType")) {
      structType = new StructType.fromJson(_json["structType"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (arrayElementType != null) {
      _json["arrayElementType"] = (arrayElementType).toJson();
    }
    if (code != null) {
      _json["code"] = code;
    }
    if (structType != null) {
      _json["structType"] = (structType).toJson();
    }
    return _json;
  }
}

/// Metadata type for the operation returned by
/// UpdateDatabaseDdl.
class UpdateDatabaseDdlMetadata {
  /// Reports the commit timestamps of all statements that have
  /// succeeded so far, where `commit_timestamps[i]` is the commit
  /// timestamp for the statement `statements[i]`.
  core.List<core.String> commitTimestamps;

  /// The database being modified.
  core.String database;

  /// For an update this list contains all the statements. For an
  /// individual statement, this list contains only that statement.
  core.List<core.String> statements;

  UpdateDatabaseDdlMetadata();

  UpdateDatabaseDdlMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("commitTimestamps")) {
      commitTimestamps =
          (_json["commitTimestamps"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("database")) {
      database = _json["database"];
    }
    if (_json.containsKey("statements")) {
      statements = (_json["statements"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (commitTimestamps != null) {
      _json["commitTimestamps"] = commitTimestamps;
    }
    if (database != null) {
      _json["database"] = database;
    }
    if (statements != null) {
      _json["statements"] = statements;
    }
    return _json;
  }
}

/// Enqueues the given DDL statements to be applied, in order but not
/// necessarily all at once, to the database schema at some point (or
/// points) in the future. The server checks that the statements
/// are executable (syntactically valid, name tables that exist, etc.)
/// before enqueueing them, but they may still fail upon
/// later execution (e.g., if a statement from another batch of
/// statements is applied first and it conflicts in some way, or if
/// there is some data-related problem like a `NULL` value in a column to
/// which `NOT NULL` would be added). If a statement fails, all
/// subsequent statements in the batch are automatically cancelled.
///
/// Each batch of statements is assigned a name which can be used with
/// the Operations API to monitor
/// progress. See the
/// operation_id field for more
/// details.
class UpdateDatabaseDdlRequest {
  /// If empty, the new update request is assigned an
  /// automatically-generated operation ID. Otherwise, `operation_id`
  /// is used to construct the name of the resulting
  /// Operation.
  ///
  /// Specifying an explicit operation ID simplifies determining
  /// whether the statements were executed in the event that the
  /// UpdateDatabaseDdl call is replayed,
  /// or the return value is otherwise lost: the database and
  /// `operation_id` fields can be combined to form the
  /// name of the resulting
  /// longrunning.Operation: `<database>/operations/<operation_id>`.
  ///
  /// `operation_id` should be unique within the database, and must be
  /// a valid identifier: `a-z*`. Note that
  /// automatically-generated operation IDs always begin with an
  /// underscore. If the named operation already exists,
  /// UpdateDatabaseDdl returns
  /// `ALREADY_EXISTS`.
  core.String operationId;

  /// DDL statements to be applied to the database.
  core.List<core.String> statements;

  UpdateDatabaseDdlRequest();

  UpdateDatabaseDdlRequest.fromJson(core.Map _json) {
    if (_json.containsKey("operationId")) {
      operationId = _json["operationId"];
    }
    if (_json.containsKey("statements")) {
      statements = (_json["statements"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operationId != null) {
      _json["operationId"] = operationId;
    }
    if (statements != null) {
      _json["statements"] = statements;
    }
    return _json;
  }
}

/// Metadata type for the operation returned by
/// UpdateInstance.
class UpdateInstanceMetadata {
  /// The time at which this operation was cancelled. If set, this operation is
  /// in the process of undoing itself (which is guaranteed to succeed) and
  /// cannot be cancelled again.
  core.String cancelTime;

  /// The time at which this operation failed or was completed successfully.
  core.String endTime;

  /// The desired end state of the update.
  Instance instance;

  /// The time at which UpdateInstance
  /// request was received.
  core.String startTime;

  UpdateInstanceMetadata();

  UpdateInstanceMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("cancelTime")) {
      cancelTime = _json["cancelTime"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("instance")) {
      instance = new Instance.fromJson(_json["instance"]);
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cancelTime != null) {
      _json["cancelTime"] = cancelTime;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (instance != null) {
      _json["instance"] = (instance).toJson();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/// The request for UpdateInstance.
class UpdateInstanceRequest {
  /// Required. A mask specifying which fields in
  /// [][google.spanner.admin.instance.v1.UpdateInstanceRequest.instance] should
  /// be updated.
  /// The field mask must always be specified; this prevents any future fields
  /// in
  /// [][google.spanner.admin.instance.v1.Instance] from being erased
  /// accidentally by clients that do not know
  /// about them.
  core.String fieldMask;

  /// Required. The instance to update, which must always include the instance
  /// name.  Otherwise, only fields mentioned in
  /// [][google.spanner.admin.instance.v1.UpdateInstanceRequest.field_mask] need
  /// be included.
  Instance instance;

  UpdateInstanceRequest();

  UpdateInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("fieldMask")) {
      fieldMask = _json["fieldMask"];
    }
    if (_json.containsKey("instance")) {
      instance = new Instance.fromJson(_json["instance"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fieldMask != null) {
      _json["fieldMask"] = fieldMask;
    }
    if (instance != null) {
      _json["instance"] = (instance).toJson();
    }
    return _json;
  }
}

/// Arguments to insert, update, insert_or_update, and
/// replace operations.
class Write {
  /// The names of the columns in table to be written.
  ///
  /// The list of columns must contain enough columns to allow
  /// Cloud Spanner to derive values for all primary key columns in the
  /// row(s) to be modified.
  core.List<core.String> columns;

  /// Required. The table whose rows will be written.
  core.String table;

  /// The values to be written. `values` can contain more than one
  /// list of values. If it does, then multiple rows are written, one
  /// for each entry in `values`. Each list in `values` must have
  /// exactly as many entries as there are entries in columns
  /// above. Sending multiple lists is equivalent to sending multiple
  /// `Mutation`s, each containing one `values` entry and repeating
  /// table and columns. Individual values in each list are
  /// encoded as described here.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object>> values;

  Write();

  Write.fromJson(core.Map _json) {
    if (_json.containsKey("columns")) {
      columns = (_json["columns"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("table")) {
      table = _json["table"];
    }
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<core.List<core.Object>>(
              (value) => (value as core.List).cast<core.Object>())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columns != null) {
      _json["columns"] = columns;
    }
    if (table != null) {
      _json["table"] = table;
    }
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}
