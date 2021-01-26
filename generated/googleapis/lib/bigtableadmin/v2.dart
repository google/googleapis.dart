// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis.bigtableadmin.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client bigtableadmin/v2';

/// Administer your Cloud Bigtable tables and instances.
class BigtableadminApi {
  /// Administer your Cloud Bigtable tables and clusters
  static const bigtableAdminScope =
      'https://www.googleapis.com/auth/bigtable.admin';

  /// Administer your Cloud Bigtable clusters
  static const bigtableAdminClusterScope =
      'https://www.googleapis.com/auth/bigtable.admin.cluster';

  /// Administer your Cloud Bigtable clusters
  static const bigtableAdminInstanceScope =
      'https://www.googleapis.com/auth/bigtable.admin.instance';

  /// Administer your Cloud Bigtable tables
  static const bigtableAdminTableScope =
      'https://www.googleapis.com/auth/bigtable.admin.table';

  /// Administer your Cloud Bigtable tables and clusters
  static const cloudBigtableAdminScope =
      'https://www.googleapis.com/auth/cloud-bigtable.admin';

  /// Administer your Cloud Bigtable clusters
  static const cloudBigtableAdminClusterScope =
      'https://www.googleapis.com/auth/cloud-bigtable.admin.cluster';

  /// Administer your Cloud Bigtable tables
  static const cloudBigtableAdminTableScope =
      'https://www.googleapis.com/auth/cloud-bigtable.admin.table';

  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud Platform services
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  final commons.ApiRequester _requester;

  OperationsResourceApi get operations => OperationsResourceApi(_requester);
  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  BigtableadminApi(http.Client client,
      {core.String rootUrl = 'https://bigtableadmin.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsProjectsResourceApi get projects =>
      OperationsProjectsResourceApi(_requester);

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation. The server
  /// makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern "^operations/.*$".
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
  async.Future<Empty> cancel(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern "^operations/.*$".
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
  async.Future<Empty> delete(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^operations/.*$".
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
  async.Future<Operation> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class OperationsProjectsResourceApi {
  final commons.ApiRequester _requester;

  OperationsProjectsOperationsResourceApi get operations =>
      OperationsProjectsOperationsResourceApi(_requester);

  OperationsProjectsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class OperationsProjectsOperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsProjectsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the
  /// `name` binding allows API services to override the binding to use
  /// different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^operations/projects/.*$".
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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
    core.String name, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$name') + '/operations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListOperationsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesResourceApi get instances =>
      ProjectsInstancesResourceApi(_requester);
  ProjectsLocationsResourceApi get locations =>
      ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsInstancesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesAppProfilesResourceApi get appProfiles =>
      ProjectsInstancesAppProfilesResourceApi(_requester);
  ProjectsInstancesClustersResourceApi get clusters =>
      ProjectsInstancesClustersResourceApi(_requester);
  ProjectsInstancesTablesResourceApi get tables =>
      ProjectsInstancesTablesResourceApi(_requester);

  ProjectsInstancesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Create an instance within a project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the project in which to create the
  /// new instance. Values are of the form `projects/{project}`.
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
    CreateInstanceRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/instances';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Delete an instance from a project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the instance to be deleted. Values
  /// are of the form `projects/{project}/instances/{instance}`.
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
  async.Future<Empty> delete(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets information about an instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the requested instance. Values are
  /// of the form `projects/{project}/instances/{instance}`.
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
  async.Future<Instance> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Instance.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the access control policy for an instance resource. Returns an empty
  /// policy if an instance exists but does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Policy.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists information about instances in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the project for which a list of
  /// instances is requested. Values are of the form `projects/{project}`.
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
  async.Future<ListInstancesResponse> list(
    core.String parent, {
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/instances';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListInstancesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Partially updates an instance within a project. This method can modify all
  /// fields of an Instance and is the preferred way to update an Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the instance. Values are of the form
  /// `projects/{project}/instances/a-z+[a-z0-9]`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [updateMask] - Required. The subset of Instance fields which should be
  /// replaced. Must be explicitly set.
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
    Instance request,
    core.String name, {
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Sets the access control policy on an instance resource. Replaces any
  /// existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
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
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Policy.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Returns permissions that the caller has on the specified instance
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
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
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => TestIamPermissionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates an instance within a project. This method updates only the display
  /// name and type for an Instance. To update other Instance properties, such
  /// as labels, use PartialUpdateInstance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the instance. Values are of the form
  /// `projects/{project}/instances/a-z+[a-z0-9]`.
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
  async.Future<Instance> update(
    Instance request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Instance.fromJson(data as core.Map<core.String, core.dynamic>),
    );
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
  /// [parent] - Required. The unique name of the instance in which to create
  /// the new app profile. Values are of the form
  /// `projects/{project}/instances/{instance}`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [appProfileId] - Required. The ID to be used when referring to the new app
  /// profile within its instance, e.g., just `myprofile` rather than
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
  async.Future<AppProfile> create(
    AppProfile request,
    core.String parent, {
    core.String appProfileId,
    core.bool ignoreWarnings,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (appProfileId != null) {
      _queryParams['appProfileId'] = [appProfileId];
    }
    if (ignoreWarnings != null) {
      _queryParams['ignoreWarnings'] = ['${ignoreWarnings}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/appProfiles';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          AppProfile.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes an app profile from an instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the app profile to be deleted.
  /// Values are of the form
  /// `projects/{project}/instances/{instance}/appProfiles/{app_profile}`.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/appProfiles/[^/]+$".
  ///
  /// [ignoreWarnings] - Required. If true, ignore safety checks when deleting
  /// the app profile.
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
  async.Future<Empty> delete(
    core.String name, {
    core.bool ignoreWarnings,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (ignoreWarnings != null) {
      _queryParams['ignoreWarnings'] = ['${ignoreWarnings}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets information about an app profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the requested app profile. Values
  /// are of the form
  /// `projects/{project}/instances/{instance}/appProfiles/{app_profile}`.
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
  async.Future<AppProfile> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          AppProfile.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists information about app profiles in an instance.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the instance for which a list of
  /// app profiles is requested. Values are of the form
  /// `projects/{project}/instances/{instance}`. Use `{instance} = '-'` to list
  /// AppProfiles for all Instances in a project, e.g.,
  /// `projects/myproject/instances/-`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [pageSize] - Maximum number of results per page. A page_size of zero lets
  /// the server choose the number of items to return. A page_size which is
  /// strictly positive will return at most that many items. A negative
  /// page_size will cause an error. Following the first request, subsequent
  /// paginated calls are not required to pass a page_size. If a page_size is
  /// set in subsequent calls, it must match the page_size given in the first
  /// request.
  ///
  /// [pageToken] - The value of `next_page_token` returned by a previous call.
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
  async.Future<ListAppProfilesResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/appProfiles';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListAppProfilesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates an app profile within an instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the app profile. Values are of the form
  /// `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/appProfiles/[^/]+$".
  ///
  /// [ignoreWarnings] - If true, ignore safety checks when updating the app
  /// profile.
  ///
  /// [updateMask] - Required. The subset of app profile fields which should be
  /// replaced. If unset, all fields will be replaced.
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
  async.Future<Operation> patch(
    AppProfile request,
    core.String name, {
    core.bool ignoreWarnings,
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (ignoreWarnings != null) {
      _queryParams['ignoreWarnings'] = ['${ignoreWarnings}'];
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsInstancesClustersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesClustersBackupsResourceApi get backups =>
      ProjectsInstancesClustersBackupsResourceApi(_requester);

  ProjectsInstancesClustersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a cluster within an instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the instance in which to create
  /// the new cluster. Values are of the form
  /// `projects/{project}/instances/{instance}`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [clusterId] - Required. The ID to be used when referring to the new
  /// cluster within its instance, e.g., just `mycluster` rather than
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
  async.Future<Operation> create(
    Cluster request,
    core.String parent, {
    core.String clusterId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (clusterId != null) {
      _queryParams['clusterId'] = [clusterId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/clusters';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes a cluster from an instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the cluster to be deleted. Values
  /// are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}`.
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
  async.Future<Empty> delete(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets information about a cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the requested cluster. Values are of
  /// the form `projects/{project}/instances/{instance}/clusters/{cluster}`.
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
  async.Future<Cluster> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Cluster.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists information about clusters in an instance.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the instance for which a list of
  /// clusters is requested. Values are of the form
  /// `projects/{project}/instances/{instance}`. Use `{instance} = '-'` to list
  /// Clusters for all Instances in a project, e.g.,
  /// `projects/myproject/instances/-`.
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
  async.Future<ListClustersResponse> list(
    core.String parent, {
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/clusters';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListClustersResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates a cluster within an instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The unique name of the cluster. Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/a-z*`.
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
  async.Future<Operation> update(
    Cluster request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsInstancesClustersBackupsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesClustersBackupsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Starts creating a new Cloud Bigtable Backup. The returned backup
  /// long-running operation can be used to track creation of the backup. The
  /// metadata field type is CreateBackupMetadata. The response field type is
  /// Backup, if successful. Cancelling the returned operation will stop the
  /// creation and delete the backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. This must be one of the clusters in the instance in
  /// which this table is located. The backup will be stored in this cluster.
  /// Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$".
  ///
  /// [backupId] - Required. The id of the backup to be created. The `backup_id`
  /// along with the parent `parent` are combined as
  /// {parent}/backups/{backup_id} to create the full backup name, of the form:
  /// `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup_id}`.
  /// This string must be between 1 and 50 characters in length and match the
  /// regex _a-zA-Z0-9*.
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
    Backup request,
    core.String parent, {
    core.String backupId,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (backupId != null) {
      _queryParams['backupId'] = [backupId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/backups';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes a pending or completed Cloud Bigtable backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the backup to delete. Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup}`.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/clusters/[^/]+/backups/[^/]+$".
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
  async.Future<Empty> delete(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets metadata on a pending or completed Cloud Bigtable Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the backup. Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup}`.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/clusters/[^/]+/backups/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Backup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Backup> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Backup.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the access control policy for a Table resource. Returns an empty
  /// policy if the resource exists but does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/clusters/[^/]+/backups/[^/]+$".
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Policy.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists Cloud Bigtable backups. Returns both completed and pending backups.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The cluster to list backups from. Values are of the
  /// form `projects/{project}/instances/{instance}/clusters/{cluster}`. Use
  /// `{cluster} = '-'` to list backups for all clusters in an instance, e.g.,
  /// `projects/{project}/instances/{instance}/clusters/-`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/clusters/[^/]+$".
  ///
  /// [filter] - A filter expression that filters backups listed in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be <, >,
  /// <=, >=, !=, =, or :. Colon ':' represents a HAS operator which is roughly
  /// synonymous with equality. Filter rules are case insensitive. The fields
  /// eligible for filtering are: * `name` * `source_table` * `state` *
  /// `start_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) *
  /// `end_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) *
  /// `expire_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) *
  /// `size_bytes` To filter on multiple expressions, provide each separate
  /// expression within parentheses. By default, each expression is an AND
  /// expression. However, you can include AND, OR, and NOT expressions
  /// explicitly. Some examples of using filters are: * `name:"exact"` --> The
  /// backup's name is the string "exact". * `name:howl` --> The backup's name
  /// contains the string "howl". * `source_table:prod` --> The source_table's
  /// name contains the string "prod". * `state:CREATING` --> The backup is
  /// pending creation. * `state:READY` --> The backup is fully created and
  /// ready for use. * `(name:howl) AND (start_time < \"2018-03-28T14:50:00Z\")`
  /// --> The backup name contains the string "howl" and start_time of the
  /// backup is before 2018-03-28T14:50:00Z. * `size_bytes > 10000000000` -->
  /// The backup's size is greater than 10GB
  ///
  /// [orderBy] - An expression for specifying the sort order of the results of
  /// the request. The string value should specify one or more fields in Backup.
  /// The full syntax is described at https://aip.dev/132#ordering. Fields
  /// supported are: * name * source_table * expire_time * start_time * end_time
  /// * size_bytes * state For example, "start_time". The default sorting order
  /// is ascending. To specify descending order for the field, a suffix " desc"
  /// should be appended to the field name. For example, "start_time desc".
  /// Redundant space characters in the syntax are insigificant. If order_by is
  /// empty, results will be sorted by `start_time` in descending order starting
  /// from the most recently created backup.
  ///
  /// [pageSize] - Number of backups to be returned in the response. If 0 or
  /// less, defaults to the server's maximum allowed page size.
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a next_page_token
  /// from a previous ListBackupsResponse to the same `parent` and with the same
  /// `filter`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupsResponse> list(
    core.String parent, {
    core.String filter,
    core.String orderBy,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (orderBy != null) {
      _queryParams['orderBy'] = [orderBy];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/backups';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListBackupsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates a pending or completed Cloud Bigtable Backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - A globally unique identifier for the backup which cannot be
  /// changed. Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}/
  /// backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and
  /// 50 characters in length. The backup is stored in the cluster identified by
  /// the prefix of the backup name of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}`.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/clusters/[^/]+/backups/[^/]+$".
  ///
  /// [updateMask] - Required. A mask specifying which fields (e.g.
  /// `expire_time`) in the Backup resource should be updated. This mask is
  /// relative to the Backup resource, not to the request message. The field
  /// mask must always be specified; this prevents any future fields from being
  /// erased accidentally by clients that do not know about them.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Backup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Backup> patch(
    Backup request,
    core.String name, {
    core.String updateMask,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (updateMask != null) {
      _queryParams['updateMask'] = [updateMask];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Backup.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Sets the access control policy on a Table resource. Replaces any existing
  /// policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/clusters/[^/]+/backups/[^/]+$".
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
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Policy.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Returns permissions that the caller has on the specified table resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// "^projects/[^/]+/instances/[^/]+/clusters/[^/]+/backups/[^/]+$".
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
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => TestIamPermissionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
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
  /// [name] - Required. The unique name of the Table for which to check
  /// replication consistency. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}`.
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
    CheckConsistencyRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':checkConsistency';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => CheckConsistencyResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Creates a new table in the specified instance. The table can be created
  /// with a full set of initial column families, specified in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the instance in which to create
  /// the table. Values are of the form
  /// `projects/{project}/instances/{instance}`.
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
  async.Future<Table> create(
    CreateTableRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/tables';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Table.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Permanently deletes a specified table and all of its data.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the table to be deleted. Values are
  /// of the form `projects/{project}/instances/{instance}/tables/{table}`.
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
  async.Future<Empty> delete(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Permanently drop/delete a row range from a specified table. The request
  /// can specify whether to delete all rows in a table, or only those that
  /// match a particular prefix.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the table on which to drop a range
  /// of rows. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}`.
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
    DropRowRangeRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':dropRowRange';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Generates a consistency token for a Table, which can be used in
  /// CheckConsistency to check whether mutations to the table that finished
  /// before this call started have been replicated. The tokens will be
  /// available for 90 days.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the Table for which to create a
  /// consistency token. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}`.
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
    GenerateConsistencyTokenRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':generateConsistencyToken';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => GenerateConsistencyTokenResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets metadata information about the specified table.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the requested table. Values are of
  /// the form `projects/{project}/instances/{instance}/tables/{table}`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+/tables/[^/]+$".
  ///
  /// [view] - The view to be applied to the returned table's fields. Defaults
  /// to `SCHEMA_VIEW` if unspecified.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Uses the default view for each method as documented
  /// in its request.
  /// - "NAME_ONLY" : Only populates `name`.
  /// - "SCHEMA_VIEW" : Only populates `name` and fields related to the table's
  /// schema.
  /// - "REPLICATION_VIEW" : Only populates `name` and fields related to the
  /// table's replication state.
  /// - "FULL" : Populates all fields.
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
  async.Future<Table> get(
    core.String name, {
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Table.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the access control policy for a Table resource. Returns an empty
  /// policy if the resource exists but does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Policy.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists all tables served from a specified instance.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the instance for which tables
  /// should be listed. Values are of the form
  /// `projects/{project}/instances/{instance}`.
  /// Value must have pattern "^projects/[^/]+/instances/[^/]+$".
  ///
  /// [pageSize] - Maximum number of results per page. A page_size of zero lets
  /// the server choose the number of items to return. A page_size which is
  /// strictly positive will return at most that many items. A negative
  /// page_size will cause an error. Following the first request, subsequent
  /// paginated calls are not required to pass a page_size. If a page_size is
  /// set in subsequent calls, it must match the page_size given in the first
  /// request.
  ///
  /// [pageToken] - The value of `next_page_token` returned by a previous call.
  ///
  /// [view] - The view to be applied to the returned tables' fields. Only
  /// NAME_ONLY view (default) and REPLICATION_VIEW are supported.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Uses the default view for each method as documented
  /// in its request.
  /// - "NAME_ONLY" : Only populates `name`.
  /// - "SCHEMA_VIEW" : Only populates `name` and fields related to the table's
  /// schema.
  /// - "REPLICATION_VIEW" : Only populates `name` and fields related to the
  /// table's replication state.
  /// - "FULL" : Populates all fields.
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
  async.Future<ListTablesResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String view,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (view != null) {
      _queryParams['view'] = [view];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/tables';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListTablesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
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
  /// [name] - Required. The unique name of the table whose families should be
  /// modified. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/{table}`.
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
    ModifyColumnFamiliesRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':modifyColumnFamilies';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Table.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Create a new table by restoring from a completed backup. The new table
  /// must be in the same instance as the instance containing the backup. The
  /// returned table long-running operation can be used to track the progress of
  /// the operation, and to cancel it. The metadata field type is
  /// RestoreTableMetadata. The response type is Table, if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the instance in which to create the
  /// restored table. This instance must be the parent of the source backup.
  /// Values are of the form `projects//instances/`.
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
  async.Future<Operation> restore(
    RestoreTableRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/tables:restore';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Sets the access control policy on a Table resource. Replaces any existing
  /// policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
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
    SetIamPolicyRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':setIamPolicy';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Policy.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Returns permissions that the caller has on the specified table resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
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
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':testIamPermissions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => TestIamPermissionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
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
  async.Future<Location> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Location.fromJson(data as core.Map<core.String, core.dynamic>),
    );
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
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
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
  async.Future<ListLocationsResponse> list(
    core.String name, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$name') + '/locations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListLocationsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// A configuration object describing how Cloud Bigtable should treat traffic
/// from a particular end user application.
class AppProfile {
  /// Long form description of the use case for this AppProfile.
  core.String description;

  /// Strongly validated etag for optimistic concurrency control. Preserve the
  /// value returned from `GetAppProfile` when calling `UpdateAppProfile` to
  /// fail the request if there has been a modification in the mean time. The
  /// `update_mask` of the request need not include `etag` for this protection
  /// to apply. See [Wikipedia](https://en.wikipedia.org/wiki/HTTP_ETag) and
  /// [RFC 7232](https://tools.ietf.org/html/rfc7232#section-2.3) for more
  /// details.
  core.String etag;

  /// Use a multi-cluster routing policy.
  MultiClusterRoutingUseAny multiClusterRoutingUseAny;

  /// The unique name of the app profile. Values are of the form
  /// `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.
  core.String name;

  /// Use a single-cluster routing policy.
  SingleClusterRouting singleClusterRouting;

  AppProfile();

  AppProfile.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('multiClusterRoutingUseAny')) {
      multiClusterRoutingUseAny = MultiClusterRoutingUseAny.fromJson(
          _json['multiClusterRoutingUseAny']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('singleClusterRouting')) {
      singleClusterRouting = SingleClusterRouting.fromJson(
          _json['singleClusterRouting'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (multiClusterRoutingUseAny != null) {
      _json['multiClusterRoutingUseAny'] = multiClusterRoutingUseAny.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (singleClusterRouting != null) {
      _json['singleClusterRouting'] = singleClusterRouting.toJson();
    }
    return _json;
  }
}

/// Specifies the audit configuration for a service. The configuration
/// determines which permission types are logged, and what identities, if any,
/// are exempted from logging. An AuditConfig must have one or more
/// AuditLogConfigs. If there are AuditConfigs for both `allServices` and a
/// specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": [ { "service": "allServices",
/// "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [
/// "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For
/// sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig> auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging. For example,
  /// `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a
  /// special value that covers all services.
  core.String service;

  AuditConfig();

  AuditConfig.fromJson(core.Map _json) {
    if (_json.containsKey('auditLogConfigs')) {
      auditLogConfigs = (_json['auditLogConfigs'] as core.List)
          .map<AuditLogConfig>((value) => AuditLogConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('service')) {
      service = _json['service'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (auditLogConfigs != null) {
      _json['auditLogConfigs'] =
          auditLogConfigs.map((value) => value.toJson()).toList();
    }
    if (service != null) {
      _json['service'] = service;
    }
    return _json;
  }
}

/// Provides the configuration for logging a type of permissions. Example: {
/// "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [
/// "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables
/// 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
/// DATA_READ logging.
class AuditLogConfig {
  /// Specifies the identities that do not cause logging for this type of
  /// permission. Follows the same format of Binding.members.
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
    if (_json.containsKey('exemptedMembers')) {
      exemptedMembers = (_json['exemptedMembers'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('logType')) {
      logType = _json['logType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exemptedMembers != null) {
      _json['exemptedMembers'] = exemptedMembers;
    }
    if (logType != null) {
      _json['logType'] = logType;
    }
    return _json;
  }
}

/// A backup of a Cloud Bigtable table.
class Backup {
  /// Output only. `end_time` is the time that the backup was finished. The row
  /// data in the backup will be no newer than this timestamp.
  core.String endTime;

  /// Required. The expiration time of the backup, with microseconds granularity
  /// that must be at least 6 hours and at most 30 days from the time the
  /// request is received. Once the `expire_time` has passed, Cloud Bigtable
  /// will delete the backup and free the resources used by the backup.
  core.String expireTime;

  /// A globally unique identifier for the backup which cannot be changed.
  /// Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}/
  /// backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and
  /// 50 characters in length. The backup is stored in the cluster identified by
  /// the prefix of the backup name of the form
  /// `projects/{project}/instances/{instance}/clusters/{cluster}`.
  core.String name;

  /// Output only. Size of the backup in bytes.
  core.String sizeBytes;

  /// Required. Immutable. Name of the table from which this backup was created.
  /// This needs to be in the same instance as the backup. Values are of the
  /// form `projects/{project}/instances/{instance}/tables/{source_table}`.
  core.String sourceTable;

  /// Output only. `start_time` is the time that the backup was started (i.e.
  /// approximately the time the CreateBackup request is received). The row data
  /// in this backup will be no older than this timestamp.
  core.String startTime;

  /// Output only. The current state of the backup.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified.
  /// - "CREATING" : The pending backup is still being created. Operations on
  /// the backup may fail with `FAILED_PRECONDITION` in this state.
  /// - "READY" : The backup is complete and ready for use.
  core.String state;

  Backup();

  Backup.fromJson(core.Map _json) {
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('expireTime')) {
      expireTime = _json['expireTime'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('sizeBytes')) {
      sizeBytes = _json['sizeBytes'] as core.String;
    }
    if (_json.containsKey('sourceTable')) {
      sourceTable = _json['sourceTable'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (expireTime != null) {
      _json['expireTime'] = expireTime;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (sizeBytes != null) {
      _json['sizeBytes'] = sizeBytes;
    }
    if (sourceTable != null) {
      _json['sourceTable'] = sourceTable;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// Information about a backup.
class BackupInfo {
  /// Output only. Name of the backup.
  core.String backup;

  /// Output only. This time that the backup was finished. Row data in the
  /// backup will be no newer than this timestamp.
  core.String endTime;

  /// Output only. Name of the table the backup was created from.
  core.String sourceTable;

  /// Output only. The time that the backup was started. Row data in the backup
  /// will be no older than this timestamp.
  core.String startTime;

  BackupInfo();

  BackupInfo.fromJson(core.Map _json) {
    if (_json.containsKey('backup')) {
      backup = _json['backup'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('sourceTable')) {
      sourceTable = _json['sourceTable'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (backup != null) {
      _json['backup'] = backup;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (sourceTable != null) {
      _json['sourceTable'] = sourceTable;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding. If the condition
  /// evaluates to `true`, then this binding applies to the current request. If
  /// the condition evaluates to `false`, then this binding does not apply to
  /// the current request. However, a different role binding might grant the
  /// same role to one or more of the members in this binding. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String> members;

  /// Role that is assigned to `members`. For example, `roles/viewer`,
  /// `roles/editor`, or `roles/owner`.
  core.String role;

  Binding();

  Binding.fromJson(core.Map _json) {
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(
          _json['condition'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('members')) {
      members = (_json['members'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('role')) {
      role = _json['role'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (condition != null) {
      _json['condition'] = condition.toJson();
    }
    if (members != null) {
      _json['members'] = members;
    }
    if (role != null) {
      _json['role'] = role;
    }
    return _json;
  }
}

/// Request message for
/// google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency
class CheckConsistencyRequest {
  /// Required. The token created using GenerateConsistencyToken for the Table.
  core.String consistencyToken;

  CheckConsistencyRequest();

  CheckConsistencyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('consistencyToken')) {
      consistencyToken = _json['consistencyToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (consistencyToken != null) {
      _json['consistencyToken'] = consistencyToken;
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
    if (_json.containsKey('consistent')) {
      consistent = _json['consistent'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (consistent != null) {
      _json['consistent'] = consistent;
    }
    return _json;
  }
}

/// A resizable group of nodes in a particular cloud location, capable of
/// serving all Tables in the parent Instance.
class Cluster {
  /// Immutable. The type of storage used by this cluster to serve its parent
  /// instance's tables, unless explicitly overridden.
  /// Possible string values are:
  /// - "STORAGE_TYPE_UNSPECIFIED" : The user did not specify a storage type.
  /// - "SSD" : Flash (SSD) storage should be used.
  /// - "HDD" : Magnetic drive (HDD) storage should be used.
  core.String defaultStorageType;

  /// Immutable. The location where this cluster's nodes and storage reside. For
  /// best performance, clients should be located as close as possible to this
  /// cluster. Currently only zones are supported, so values should be of the
  /// form `projects/{project}/locations/{zone}`.
  core.String location;

  /// The unique name of the cluster. Values are of the form
  /// `projects/{project}/instances/{instance}/clusters/a-z*`.
  core.String name;

  /// Required. The number of nodes allocated to this cluster. More nodes enable
  /// higher throughput and more consistent performance.
  core.int serveNodes;

  /// Output only. The current state of the cluster.
  /// Possible string values are:
  /// - "STATE_NOT_KNOWN" : The state of the cluster could not be determined.
  /// - "READY" : The cluster has been successfully created and is ready to
  /// serve requests.
  /// - "CREATING" : The cluster is currently being created, and may be
  /// destroyed if the creation process encounters an error. A cluster may not
  /// be able to serve requests while being created.
  /// - "RESIZING" : The cluster is currently being resized, and may revert to
  /// its previous node count if the process encounters an error. A cluster is
  /// still capable of serving requests while being resized, but may exhibit
  /// performance as if its number of allocated nodes is between the starting
  /// and requested states.
  /// - "DISABLED" : The cluster has no backing nodes. The data (tables) still
  /// exist, but no operations can be performed on the cluster.
  core.String state;

  Cluster();

  Cluster.fromJson(core.Map _json) {
    if (_json.containsKey('defaultStorageType')) {
      defaultStorageType = _json['defaultStorageType'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('serveNodes')) {
      serveNodes = _json['serveNodes'] as core.int;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (defaultStorageType != null) {
      _json['defaultStorageType'] = defaultStorageType;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (serveNodes != null) {
      _json['serveNodes'] = serveNodes;
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// The state of a table's data in a particular cluster.
class ClusterState {
  /// Output only. The state of replication for the table in this cluster.
  /// Possible string values are:
  /// - "STATE_NOT_KNOWN" : The replication state of the table is unknown in
  /// this cluster.
  /// - "INITIALIZING" : The cluster was recently created, and the table must
  /// finish copying over pre-existing data from other clusters before it can
  /// begin receiving live replication updates and serving Data API requests.
  /// - "PLANNED_MAINTENANCE" : The table is temporarily unable to serve Data
  /// API requests from this cluster due to planned internal maintenance.
  /// - "UNPLANNED_MAINTENANCE" : The table is temporarily unable to serve Data
  /// API requests from this cluster due to unplanned or emergency maintenance.
  /// - "READY" : The table can serve Data API requests from this cluster.
  /// Depending on replication delay, reads may not immediately reflect the
  /// state of the table in other clusters.
  /// - "READY_OPTIMIZING" : The table is fully created and ready for use after
  /// a restore, and is being optimized for performance. When optimizations are
  /// complete, the table will transition to `READY` state.
  core.String replicationState;

  ClusterState();

  ClusterState.fromJson(core.Map _json) {
    if (_json.containsKey('replicationState')) {
      replicationState = _json['replicationState'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (replicationState != null) {
      _json['replicationState'] = replicationState;
    }
    return _json;
  }
}

/// A set of columns within a table which share a common configuration.
class ColumnFamily {
  /// Garbage collection rule specified as a protobuf. Must serialize to at most
  /// 500 bytes. NOTE: Garbage collection executes opportunistically in the
  /// background, and so it's possible for reads to return a cell even if it
  /// matches the active GC expression for its family.
  GcRule gcRule;

  ColumnFamily();

  ColumnFamily.fromJson(core.Map _json) {
    if (_json.containsKey('gcRule')) {
      gcRule = GcRule.fromJson(
          _json['gcRule'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (gcRule != null) {
      _json['gcRule'] = gcRule.toJson();
    }
    return _json;
  }
}

/// Metadata type for the operation returned by CreateBackup.
class CreateBackupMetadata {
  /// If set, the time at which this operation finished or was cancelled.
  core.String endTime;

  /// The name of the backup being created.
  core.String name;

  /// The name of the table the backup is created from.
  core.String sourceTable;

  /// The time at which this operation started.
  core.String startTime;

  CreateBackupMetadata();

  CreateBackupMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('sourceTable')) {
      sourceTable = _json['sourceTable'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (sourceTable != null) {
      _json['sourceTable'] = sourceTable;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
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
  /// CreateCluster was first called, i.e. `projects//instances//tables/`. Any
  /// table added to the instance by a later API call will be created in the new
  /// cluster by that API call, not this one. Values: information on how much of
  /// a table's data has been copied to the newly-created cluster so far.
  core.Map<core.String, TableProgress> tables;

  CreateClusterMetadata();

  CreateClusterMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('finishTime')) {
      finishTime = _json['finishTime'] as core.String;
    }
    if (_json.containsKey('originalRequest')) {
      originalRequest = CreateClusterRequest.fromJson(
          _json['originalRequest'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('requestTime')) {
      requestTime = _json['requestTime'] as core.String;
    }
    if (_json.containsKey('tables')) {
      tables = commons.mapMap<core.Map, TableProgress>(
          (_json['tables'] as core.Map<core.String, core.dynamic>)
              .cast<core.String, core.Map>(),
          (core.Map item) => TableProgress.fromJson(
              item as core.Map<core.String, core.dynamic>));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (finishTime != null) {
      _json['finishTime'] = finishTime;
    }
    if (originalRequest != null) {
      _json['originalRequest'] = originalRequest.toJson();
    }
    if (requestTime != null) {
      _json['requestTime'] = requestTime;
    }
    if (tables != null) {
      _json['tables'] =
          commons.mapMap<TableProgress, core.Map<core.String, core.Object>>(
              tables, (TableProgress item) => item.toJson());
    }
    return _json;
  }
}

/// Request message for BigtableInstanceAdmin.CreateCluster.
class CreateClusterRequest {
  /// Required. The cluster to be created. Fields marked `OutputOnly` must be
  /// left blank.
  Cluster cluster;

  /// Required. The ID to be used when referring to the new cluster within its
  /// instance, e.g., just `mycluster` rather than
  /// `projects/myproject/instances/myinstance/clusters/mycluster`.
  core.String clusterId;

  /// Required. The unique name of the instance in which to create the new
  /// cluster. Values are of the form `projects/{project}/instances/{instance}`.
  core.String parent;

  CreateClusterRequest();

  CreateClusterRequest.fromJson(core.Map _json) {
    if (_json.containsKey('cluster')) {
      cluster = Cluster.fromJson(
          _json['cluster'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'] as core.String;
    }
    if (_json.containsKey('parent')) {
      parent = _json['parent'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cluster != null) {
      _json['cluster'] = cluster.toJson();
    }
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    if (parent != null) {
      _json['parent'] = parent;
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
    if (_json.containsKey('finishTime')) {
      finishTime = _json['finishTime'] as core.String;
    }
    if (_json.containsKey('originalRequest')) {
      originalRequest = CreateInstanceRequest.fromJson(
          _json['originalRequest'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('requestTime')) {
      requestTime = _json['requestTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (finishTime != null) {
      _json['finishTime'] = finishTime;
    }
    if (originalRequest != null) {
      _json['originalRequest'] = originalRequest.toJson();
    }
    if (requestTime != null) {
      _json['requestTime'] = requestTime;
    }
    return _json;
  }
}

/// Request message for BigtableInstanceAdmin.CreateInstance.
class CreateInstanceRequest {
  /// Required. The clusters to be created within the instance, mapped by
  /// desired cluster ID, e.g., just `mycluster` rather than
  /// `projects/myproject/instances/myinstance/clusters/mycluster`. Fields
  /// marked `OutputOnly` must be left blank. Currently, at most four clusters
  /// can be specified.
  core.Map<core.String, Cluster> clusters;

  /// Required. The instance to create. Fields marked `OutputOnly` must be left
  /// blank.
  Instance instance;

  /// Required. The ID to be used when referring to the new instance within its
  /// project, e.g., just `myinstance` rather than
  /// `projects/myproject/instances/myinstance`.
  core.String instanceId;

  /// Required. The unique name of the project in which to create the new
  /// instance. Values are of the form `projects/{project}`.
  core.String parent;

  CreateInstanceRequest();

  CreateInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('clusters')) {
      clusters = commons.mapMap<core.Map, Cluster>(
          (_json['clusters'] as core.Map<core.String, core.dynamic>)
              .cast<core.String, core.Map>(),
          (core.Map item) =>
              Cluster.fromJson(item as core.Map<core.String, core.dynamic>));
    }
    if (_json.containsKey('instance')) {
      instance = Instance.fromJson(
          _json['instance'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('instanceId')) {
      instanceId = _json['instanceId'] as core.String;
    }
    if (_json.containsKey('parent')) {
      parent = _json['parent'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (clusters != null) {
      _json['clusters'] =
          commons.mapMap<Cluster, core.Map<core.String, core.Object>>(
              clusters, (Cluster item) => item.toJson());
    }
    if (instance != null) {
      _json['instance'] = instance.toJson();
    }
    if (instanceId != null) {
      _json['instanceId'] = instanceId;
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    return _json;
  }
}

/// Request message for google.bigtable.admin.v2.BigtableTableAdmin.CreateTable
class CreateTableRequest {
  /// The optional list of row keys that will be used to initially split the
  /// table into several tablets (tablets are similar to HBase regions). Given
  /// two split keys, `s1` and `s2`, three tablets will be created, spanning the
  /// key ranges: `[, s1), [s1, s2), [s2, )`. Example: * Row keys := `["a",
  /// "apple", "custom", "customer_1", "customer_2",` `"other", "zz"]` *
  /// initial_split_keys := `["apple", "customer_1", "customer_2", "other"]` *
  /// Key assignment: - Tablet 1 `[, apple) => {"a"}.` - Tablet 2 `[apple,
  /// customer_1) => {"apple", "custom"}.` - Tablet 3 `[customer_1, customer_2)
  /// => {"customer_1"}.` - Tablet 4 `[customer_2, other) => {"customer_2"}.` -
  /// Tablet 5 `[other, ) => {"other", "zz"}.`
  core.List<Split> initialSplits;

  /// Required. The Table to create.
  Table table;

  /// Required. The name by which the new table should be referred to within the
  /// parent instance, e.g., `foobar` rather than `{parent}/tables/foobar`.
  /// Maximum 50 characters.
  core.String tableId;

  CreateTableRequest();

  CreateTableRequest.fromJson(core.Map _json) {
    if (_json.containsKey('initialSplits')) {
      initialSplits = (_json['initialSplits'] as core.List)
          .map<Split>((value) =>
              Split.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('table')) {
      table =
          Table.fromJson(_json['table'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('tableId')) {
      tableId = _json['tableId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (initialSplits != null) {
      _json['initialSplits'] =
          initialSplits.map((value) => value.toJson()).toList();
    }
    if (table != null) {
      _json['table'] = table.toJson();
    }
    if (tableId != null) {
      _json['tableId'] = tableId;
    }
    return _json;
  }
}

/// Request message for google.bigtable.admin.v2.BigtableTableAdmin.DropRowRange
class DropRowRangeRequest {
  /// Delete all rows in the table. Setting this to false is a no-op.
  core.bool deleteAllDataFromTable;

  /// Delete all rows that start with this row key prefix. Prefix cannot be zero
  /// length.
  core.String rowKeyPrefix;
  core.List<core.int> get rowKeyPrefixAsBytes =>
      convert.base64.decode(rowKeyPrefix);

  set rowKeyPrefixAsBytes(core.List<core.int> _bytes) {
    rowKeyPrefix =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  DropRowRangeRequest();

  DropRowRangeRequest.fromJson(core.Map _json) {
    if (_json.containsKey('deleteAllDataFromTable')) {
      deleteAllDataFromTable = _json['deleteAllDataFromTable'] as core.bool;
    }
    if (_json.containsKey('rowKeyPrefix')) {
      rowKeyPrefix = _json['rowKeyPrefix'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deleteAllDataFromTable != null) {
      _json['deleteAllDataFromTable'] = deleteAllDataFromTable;
    }
    if (rowKeyPrefix != null) {
      _json['rowKeyPrefix'] = rowKeyPrefix;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax. CEL is a C-like expression language. The syntax and semantics of CEL
/// are documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
class Expr {
  /// Optional. Description of the expression. This is a longer text which
  /// describes the expression, e.g. when hovered over it in a UI.
  core.String description;

  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  core.String expression;

  /// Optional. String indicating the location of the expression for error
  /// reporting, e.g. a file name and a position in the file.
  core.String location;

  /// Optional. Title for the expression, i.e. a short string describing its
  /// purpose. This can be used e.g. in UIs which allow to enter the expression.
  core.String title;

  Expr();

  Expr.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('expression')) {
      expression = _json['expression'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (expression != null) {
      _json['expression'] = expression;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Added to the error payload.
class FailureTrace {
  core.List<Frame> frames;

  FailureTrace();

  FailureTrace.fromJson(core.Map _json) {
    if (_json.containsKey('frames')) {
      frames = (_json['frames'] as core.List)
          .map<Frame>((value) =>
              Frame.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (frames != null) {
      _json['frames'] = frames.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

class Frame {
  core.String targetName;
  core.String workflowGuid;
  core.String zoneId;

  Frame();

  Frame.fromJson(core.Map _json) {
    if (_json.containsKey('targetName')) {
      targetName = _json['targetName'] as core.String;
    }
    if (_json.containsKey('workflowGuid')) {
      workflowGuid = _json['workflowGuid'] as core.String;
    }
    if (_json.containsKey('zoneId')) {
      zoneId = _json['zoneId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (targetName != null) {
      _json['targetName'] = targetName;
    }
    if (workflowGuid != null) {
      _json['workflowGuid'] = workflowGuid;
    }
    if (zoneId != null) {
      _json['zoneId'] = zoneId;
    }
    return _json;
  }
}

/// Rule for determining which cells to delete during garbage collection.
class GcRule {
  /// Delete cells that would be deleted by every nested rule.
  Intersection intersection;

  /// Delete cells in a column older than the given age. Values must be at least
  /// one millisecond, and will be truncated to microsecond granularity.
  core.String maxAge;

  /// Delete all cells in a column except the most recent N.
  core.int maxNumVersions;

  /// Delete cells that would be deleted by any nested rule.
  Union union;

  GcRule();

  GcRule.fromJson(core.Map _json) {
    if (_json.containsKey('intersection')) {
      intersection = Intersection.fromJson(
          _json['intersection'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('maxAge')) {
      maxAge = _json['maxAge'] as core.String;
    }
    if (_json.containsKey('maxNumVersions')) {
      maxNumVersions = _json['maxNumVersions'] as core.int;
    }
    if (_json.containsKey('union')) {
      union =
          Union.fromJson(_json['union'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (intersection != null) {
      _json['intersection'] = intersection.toJson();
    }
    if (maxAge != null) {
      _json['maxAge'] = maxAge;
    }
    if (maxNumVersions != null) {
      _json['maxNumVersions'] = maxNumVersions;
    }
    if (union != null) {
      _json['union'] = union.toJson();
    }
    return _json;
  }
}

/// Request message for
/// google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken
class GenerateConsistencyTokenRequest {
  GenerateConsistencyTokenRequest();

  GenerateConsistencyTokenRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
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
    if (_json.containsKey('consistencyToken')) {
      consistencyToken = _json['consistencyToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (consistencyToken != null) {
      _json['consistencyToken'] = consistencyToken;
    }
    return _json;
  }
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions options;

  GetIamPolicyRequest();

  GetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('options')) {
      options = GetPolicyOptions.fromJson(
          _json['options'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (options != null) {
      _json['options'] = options.toJson();
    }
    return _json;
  }
}

/// Encapsulates settings provided to GetIamPolicy.
class GetPolicyOptions {
  /// Optional. The policy format version to be returned. Valid values are 0, 1,
  /// and 3. Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional bindings must specify version 3. Policies
  /// without any conditional bindings may specify any valid value or leave the
  /// field unset. To learn which resources support conditions in their IAM
  /// policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int requestedPolicyVersion;

  GetPolicyOptions();

  GetPolicyOptions.fromJson(core.Map _json) {
    if (_json.containsKey('requestedPolicyVersion')) {
      requestedPolicyVersion = _json['requestedPolicyVersion'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (requestedPolicyVersion != null) {
      _json['requestedPolicyVersion'] = requestedPolicyVersion;
    }
    return _json;
  }
}

/// A collection of Bigtable Tables and the resources that serve them. All
/// tables in an instance are served from all Clusters in the instance.
class Instance {
  /// Required. The descriptive name for this instance as it appears in UIs. Can
  /// be changed at any time, but should be kept globally unique to avoid
  /// confusion.
  core.String displayName;

  /// Required. Labels are a flexible and lightweight mechanism for organizing
  /// cloud resources into groups that reflect a customer's organizational needs
  /// and deployment strategies. They can be used to filter resources and
  /// aggregate metrics. * Label keys must be between 1 and 63 characters long
  /// and must conform to the regular expression: `\p{Ll}\p{Lo}{0,62}`. * Label
  /// values must be between 0 and 63 characters long and must conform to the
  /// regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`. * No more than 64
  /// labels can be associated with a given resource. * Keys and values must
  /// both be under 128 bytes.
  core.Map<core.String, core.String> labels;

  /// The unique name of the instance. Values are of the form
  /// `projects/{project}/instances/a-z+[a-z0-9]`.
  core.String name;

  /// Output only. The current state of the instance.
  /// Possible string values are:
  /// - "STATE_NOT_KNOWN" : The state of the instance could not be determined.
  /// - "READY" : The instance has been successfully created and can serve
  /// requests to its tables.
  /// - "CREATING" : The instance is currently being created, and may be
  /// destroyed if the creation process encounters an error.
  core.String state;

  /// Required. The type of the instance. Defaults to `PRODUCTION`.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type of the instance is unspecified. If set
  /// when creating an instance, a `PRODUCTION` instance will be created. If set
  /// when updating an instance, the type will be left unchanged.
  /// - "PRODUCTION" : An instance meant for production use. `serve_nodes` must
  /// be set on the cluster.
  /// - "DEVELOPMENT" : DEPRECATED: Prefer PRODUCTION for all use cases, as it
  /// no longer enforces a higher minimum node count than DEVELOPMENT.
  core.String type;

  Instance();

  Instance.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels = commons.mapMap<core.String, core.String>(
          (_json['labels'] as core.Map<core.String, core.dynamic>)
              .cast<core.String, core.String>(),
          (core.String item) => item as core.String);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (type != null) {
      _json['type'] = type;
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
    if (_json.containsKey('rules')) {
      rules = (_json['rules'] as core.List)
          .map<GcRule>((value) =>
              GcRule.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (rules != null) {
      _json['rules'] = rules.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for BigtableInstanceAdmin.ListAppProfiles.
class ListAppProfilesResponse {
  /// The list of requested app profiles.
  core.List<AppProfile> appProfiles;

  /// Locations from which AppProfile information could not be retrieved, due to
  /// an outage or some other transient condition. AppProfiles from these
  /// locations may be missing from `app_profiles`. Values are of the form
  /// `projects//locations/`
  core.List<core.String> failedLocations;

  /// Set if not all app profiles could be returned in a single response. Pass
  /// this value to `page_token` in another request to get the next page of
  /// results.
  core.String nextPageToken;

  ListAppProfilesResponse();

  ListAppProfilesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('appProfiles')) {
      appProfiles = (_json['appProfiles'] as core.List)
          .map<AppProfile>((value) =>
              AppProfile.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('failedLocations')) {
      failedLocations = (_json['failedLocations'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (appProfiles != null) {
      _json['appProfiles'] =
          appProfiles.map((value) => value.toJson()).toList();
    }
    if (failedLocations != null) {
      _json['failedLocations'] = failedLocations;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The response for ListBackups.
class ListBackupsResponse {
  /// The list of matching backups.
  core.List<Backup> backups;

  /// `next_page_token` can be sent in a subsequent ListBackups call to fetch
  /// more of the matching backups.
  core.String nextPageToken;

  ListBackupsResponse();

  ListBackupsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('backups')) {
      backups = (_json['backups'] as core.List)
          .map<Backup>((value) =>
              Backup.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (backups != null) {
      _json['backups'] = backups.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for BigtableInstanceAdmin.ListClusters.
class ListClustersResponse {
  /// The list of requested clusters.
  core.List<Cluster> clusters;

  /// Locations from which Cluster information could not be retrieved, due to an
  /// outage or some other transient condition. Clusters from these locations
  /// may be missing from `clusters`, or may only have partial information
  /// returned. Values are of the form `projects//locations/`
  core.List<core.String> failedLocations;

  /// DEPRECATED: This field is unused and ignored.
  core.String nextPageToken;

  ListClustersResponse();

  ListClustersResponse.fromJson(core.Map _json) {
    if (_json.containsKey('clusters')) {
      clusters = (_json['clusters'] as core.List)
          .map<Cluster>((value) =>
              Cluster.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('failedLocations')) {
      failedLocations = (_json['failedLocations'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (clusters != null) {
      _json['clusters'] = clusters.map((value) => value.toJson()).toList();
    }
    if (failedLocations != null) {
      _json['failedLocations'] = failedLocations;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response message for BigtableInstanceAdmin.ListInstances.
class ListInstancesResponse {
  /// Locations from which Instance information could not be retrieved, due to
  /// an outage or some other transient condition. Instances whose Clusters are
  /// all in one of the failed locations may be missing from `instances`, and
  /// Instances with at least one Cluster in a failed location may only have
  /// partial information returned. Values are of the form
  /// `projects//locations/`
  core.List<core.String> failedLocations;

  /// The list of requested instances.
  core.List<Instance> instances;

  /// DEPRECATED: This field is unused and ignored.
  core.String nextPageToken;

  ListInstancesResponse();

  ListInstancesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('failedLocations')) {
      failedLocations = (_json['failedLocations'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('instances')) {
      instances = (_json['instances'] as core.List)
          .map<Instance>((value) =>
              Instance.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (failedLocations != null) {
      _json['failedLocations'] = failedLocations;
    }
    if (instances != null) {
      _json['instances'] = instances.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
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
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List)
          .map<Location>((value) =>
              Location.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (locations != null) {
      _json['locations'] = locations.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
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
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) =>
              Operation.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response message for google.bigtable.admin.v2.BigtableTableAdmin.ListTables
class ListTablesResponse {
  /// Set if not all tables could be returned in a single response. Pass this
  /// value to `page_token` in another request to get the next page of results.
  core.String nextPageToken;

  /// The tables present in the requested instance.
  core.List<Table> tables;

  ListTablesResponse();

  ListTablesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('tables')) {
      tables = (_json['tables'] as core.List)
          .map<Table>((value) =>
              Table.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (tables != null) {
      _json['tables'] = tables.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name. For
  /// example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location. For example
  /// {"cloud.googleapis.com/region": "us-east1"}
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
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels = commons.mapMap<core.String, core.String>(
          (_json['labels'] as core.Map<core.String, core.dynamic>)
              .cast<core.String, core.String>(),
          (core.String item) => item as core.String);
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata = commons.mapMap<core.Object, core.Object>(
          (_json['metadata'] as core.Map<core.String, core.dynamic>)
              .cast<core.String, core.Object>(),
          (core.Object item) => item as core.Object);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (locationId != null) {
      _json['locationId'] = locationId;
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// A create, update, or delete of a particular column family.
class Modification {
  /// Create a new column family with the specified schema, or fail if one
  /// already exists with the given ID.
  ColumnFamily create;

  /// Drop (delete) the column family with the given ID, or fail if no such
  /// family exists.
  core.bool drop;

  /// The ID of the column family to be modified.
  core.String id;

  /// Update an existing column family to the specified schema, or fail if no
  /// column family exists with the given ID.
  ColumnFamily update;

  Modification();

  Modification.fromJson(core.Map _json) {
    if (_json.containsKey('create')) {
      create = ColumnFamily.fromJson(
          _json['create'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('drop')) {
      drop = _json['drop'] as core.bool;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('update')) {
      update = ColumnFamily.fromJson(
          _json['update'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (create != null) {
      _json['create'] = create.toJson();
    }
    if (drop != null) {
      _json['drop'] = drop;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (update != null) {
      _json['update'] = update.toJson();
    }
    return _json;
  }
}

/// Request message for
/// google.bigtable.admin.v2.BigtableTableAdmin.ModifyColumnFamilies
class ModifyColumnFamiliesRequest {
  /// Required. Modifications to be atomically applied to the specified table's
  /// families. Entries are applied in order, meaning that earlier modifications
  /// can be masked by later ones (in the case of repeated updates to the same
  /// family, for example).
  core.List<Modification> modifications;

  ModifyColumnFamiliesRequest();

  ModifyColumnFamiliesRequest.fromJson(core.Map _json) {
    if (_json.containsKey('modifications')) {
      modifications = (_json['modifications'] as core.List)
          .map<Modification>((value) => Modification.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (modifications != null) {
      _json['modifications'] =
          modifications.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Read/write requests are routed to the nearest cluster in the instance, and
/// will fail over to the nearest cluster that is available in the event of
/// transient errors or delays. Clusters in a region are considered equidistant.
/// Choosing this option sacrifices read-your-writes consistency to improve
/// availability.
class MultiClusterRoutingUseAny {
  MultiClusterRoutingUseAny();

  MultiClusterRoutingUseAny.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress. If
  /// `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation. It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata. Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success. If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadata')) {
      metadata = commons.mapMap<core.Object, core.Object>(
          (_json['metadata'] as core.Map<core.String, core.dynamic>)
              .cast<core.String, core.Object>(),
          (core.Object item) => item as core.Object);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response = commons.mapMap<core.Object, core.Object>(
          (_json['response'] as core.Map<core.String, core.dynamic>)
              .cast<core.String, core.Object>(),
          (core.Object item) => item as core.Object);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// Encapsulates progress related information for a Cloud Bigtable long running
/// operation.
class OperationProgress {
  /// If set, the time at which this operation failed or was completed
  /// successfully.
  core.String endTime;

  /// Percent completion of the operation. Values are between 0 and 100
  /// inclusive.
  core.int progressPercent;

  /// Time the request was received.
  core.String startTime;

  OperationProgress();

  OperationProgress.fromJson(core.Map _json) {
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('progressPercent')) {
      progressPercent = _json['progressPercent'] as core.int;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (progressPercent != null) {
      _json['progressPercent'] = progressPercent;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// Metadata type for the long-running operation used to track the progress of
/// optimizations performed on a newly restored table. This long-running
/// operation is automatically created by the system after the successful
/// completion of a table restore, and cannot be cancelled.
class OptimizeRestoredTableMetadata {
  /// Name of the restored table being optimized.
  core.String name;

  /// The progress of the post-restore optimizations.
  OperationProgress progress;

  OptimizeRestoredTableMetadata();

  OptimizeRestoredTableMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('progress')) {
      progress = OperationProgress.fromJson(
          _json['progress'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (progress != null) {
      _json['progress'] = progress.toJson();
    }
    return _json;
  }
}

/// Request message for BigtableInstanceAdmin.PartialUpdateInstance.
class PartialUpdateInstanceRequest {
  /// Required. The Instance which will (partially) replace the current value.
  Instance instance;

  /// Required. The subset of Instance fields which should be replaced. Must be
  /// explicitly set.
  core.String updateMask;

  PartialUpdateInstanceRequest();

  PartialUpdateInstanceRequest.fromJson(core.Map _json) {
    if (_json.containsKey('instance')) {
      instance = Instance.fromJson(
          _json['instance'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (instance != null) {
      _json['instance'] = instance.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources. A `Policy` is a collection of
/// `bindings`. A `binding` binds one or more `members` to a single `role`.
/// Members can be user accounts, service accounts, Google groups, and domains
/// (such as G Suite). A `role` is a named list of permissions; each `role` can
/// be an IAM predefined role or a user-created custom role. For some types of
/// Google Cloud resources, a `binding` can also specify a `condition`, which is
/// a logical expression that allows access to a resource only if the expression
/// evaluates to `true`. A condition can add constraints based on attributes of
/// the request, the resource, or both. To learn which resources support
/// conditions in their IAM policies, see the [IAM
/// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= -
/// version: 3 For a description of IAM and its features, see the [IAM
/// documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig> auditConfigs;

  /// Associates a list of `members` to a `role`. Optionally, may specify a
  /// `condition` that determines how and when the `bindings` are applied. Each
  /// of the `bindings` must contain at least one member.
  core.List<Binding> bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other. It is
  /// strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
  /// Requests that specify an invalid value are rejected. Any operation that
  /// affects conditional role bindings must specify version `3`. This
  /// requirement applies to the following operations: * Getting a policy that
  /// includes a conditional role binding * Adding a conditional role binding to
  /// a policy * Changing a conditional role binding in a policy * Removing any
  /// role binding, with or without a condition, from a policy that includes
  /// conditions **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost. If a
  /// policy does not include any conditions, operations on that policy may
  /// specify any valid version or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int version;

  Policy();

  Policy.fromJson(core.Map _json) {
    if (_json.containsKey('auditConfigs')) {
      auditConfigs = (_json['auditConfigs'] as core.List)
          .map<AuditConfig>((value) => AuditConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) =>
              Binding.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (auditConfigs != null) {
      _json['auditConfigs'] =
          auditConfigs.map((value) => value.toJson()).toList();
    }
    if (bindings != null) {
      _json['bindings'] = bindings.map((value) => value.toJson()).toList();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}

/// Information about a table restore.
class RestoreInfo {
  /// Information about the backup used to restore the table. The backup may no
  /// longer exist.
  BackupInfo backupInfo;

  /// The type of the restore source.
  /// Possible string values are:
  /// - "RESTORE_SOURCE_TYPE_UNSPECIFIED" : No restore associated.
  /// - "BACKUP" : A backup was used as the source of the restore.
  core.String sourceType;

  RestoreInfo();

  RestoreInfo.fromJson(core.Map _json) {
    if (_json.containsKey('backupInfo')) {
      backupInfo = BackupInfo.fromJson(
          _json['backupInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sourceType')) {
      sourceType = _json['sourceType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (backupInfo != null) {
      _json['backupInfo'] = backupInfo.toJson();
    }
    if (sourceType != null) {
      _json['sourceType'] = sourceType;
    }
    return _json;
  }
}

/// Metadata type for the long-running operation returned by RestoreTable.
class RestoreTableMetadata {
  BackupInfo backupInfo;

  /// Name of the table being created and restored to.
  core.String name;

  /// If exists, the name of the long-running operation that will be used to
  /// track the post-restore optimization process to optimize the performance of
  /// the restored table. The metadata type of the long-running operation is
  /// OptimizeRestoreTableMetadata. The response type is Empty. This
  /// long-running operation may be automatically created by the system if
  /// applicable after the RestoreTable long-running operation completes
  /// successfully. This operation may not be created if the table is already
  /// optimized or the restore was not successful.
  core.String optimizeTableOperationName;

  /// The progress of the RestoreTable operation.
  OperationProgress progress;

  /// The type of the restore source.
  /// Possible string values are:
  /// - "RESTORE_SOURCE_TYPE_UNSPECIFIED" : No restore associated.
  /// - "BACKUP" : A backup was used as the source of the restore.
  core.String sourceType;

  RestoreTableMetadata();

  RestoreTableMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('backupInfo')) {
      backupInfo = BackupInfo.fromJson(
          _json['backupInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('optimizeTableOperationName')) {
      optimizeTableOperationName =
          _json['optimizeTableOperationName'] as core.String;
    }
    if (_json.containsKey('progress')) {
      progress = OperationProgress.fromJson(
          _json['progress'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('sourceType')) {
      sourceType = _json['sourceType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (backupInfo != null) {
      _json['backupInfo'] = backupInfo.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (optimizeTableOperationName != null) {
      _json['optimizeTableOperationName'] = optimizeTableOperationName;
    }
    if (progress != null) {
      _json['progress'] = progress.toJson();
    }
    if (sourceType != null) {
      _json['sourceType'] = sourceType;
    }
    return _json;
  }
}

/// The request for RestoreTable.
class RestoreTableRequest {
  /// Name of the backup from which to restore. Values are of the form
  /// `projects//instances//clusters//backups/`.
  core.String backup;

  /// Required. The id of the table to create and restore to. This table must
  /// not already exist. The `table_id` appended to `parent` forms the full
  /// table name of the form `projects//instances//tables/`.
  core.String tableId;

  RestoreTableRequest();

  RestoreTableRequest.fromJson(core.Map _json) {
    if (_json.containsKey('backup')) {
      backup = _json['backup'] as core.String;
    }
    if (_json.containsKey('tableId')) {
      tableId = _json['tableId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (backup != null) {
      _json['backup'] = backup;
    }
    if (tableId != null) {
      _json['tableId'] = tableId;
    }
    return _json;
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`. The size of
  /// the policy is limited to a few 10s of KB. An empty policy is a valid
  /// policy but certain Cloud Platform services (such as Projects) might reject
  /// them.
  Policy policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String updateMask;

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(
          _json['policy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (policy != null) {
      _json['policy'] = policy.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
}

/// Unconditionally routes all read/write requests to a specific cluster. This
/// option preserves read-your-writes consistency but does not improve
/// availability.
class SingleClusterRouting {
  /// Whether or not `CheckAndMutateRow` and `ReadModifyWriteRow` requests are
  /// allowed by this app profile. It is unsafe to send these requests to the
  /// same table/row/column in multiple clusters.
  core.bool allowTransactionalWrites;

  /// The cluster to which read/write requests should be routed.
  core.String clusterId;

  SingleClusterRouting();

  SingleClusterRouting.fromJson(core.Map _json) {
    if (_json.containsKey('allowTransactionalWrites')) {
      allowTransactionalWrites = _json['allowTransactionalWrites'] as core.bool;
    }
    if (_json.containsKey('clusterId')) {
      clusterId = _json['clusterId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (allowTransactionalWrites != null) {
      _json['allowTransactionalWrites'] = allowTransactionalWrites;
    }
    if (clusterId != null) {
      _json['clusterId'] = clusterId;
    }
    return _json;
  }
}

/// An initial split point for a newly created table.
class Split {
  /// Row key to use as an initial tablet boundary.
  core.String key;
  core.List<core.int> get keyAsBytes => convert.base64.decode(key);

  set keyAsBytes(core.List<core.int> _bytes) {
    key =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Split();

  Split.fromJson(core.Map _json) {
    if (_json.containsKey('key')) {
      key = _json['key'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (key != null) {
      _json['key'] = key;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details. You can
/// find out more about this error model and how to work with it in the [API
/// Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
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
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              commons.mapMap<core.Object, core.Object>(
                  (value as core.Map<core.String, core.dynamic>)
                      .cast<core.String, core.Object>(),
                  (core.Object item) => item as core.Object))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// A collection of user data indexed by row, column, and timestamp. Each table
/// is served using the resources of its parent cluster.
class Table {
  /// Output only. Map from cluster ID to per-cluster table state. If it could
  /// not be determined whether or not the table has data in a particular
  /// cluster (for example, if its zone is unavailable), then there will be an
  /// entry for the cluster with UNKNOWN `replication_status`. Views:
  /// `REPLICATION_VIEW`, `FULL`
  core.Map<core.String, ClusterState> clusterStates;

  /// The column families configured for this table, mapped by column family ID.
  /// Views: `SCHEMA_VIEW`, `FULL`
  core.Map<core.String, ColumnFamily> columnFamilies;

  /// Immutable. The granularity (i.e. `MILLIS`) at which timestamps are stored
  /// in this table. Timestamps not matching the granularity will be rejected.
  /// If unspecified at creation time, the value will be set to `MILLIS`. Views:
  /// `SCHEMA_VIEW`, `FULL`.
  /// Possible string values are:
  /// - "TIMESTAMP_GRANULARITY_UNSPECIFIED" : The user did not specify a
  /// granularity. Should not be returned. When specified during table creation,
  /// MILLIS will be used.
  /// - "MILLIS" : The table keeps data versioned at a granularity of 1ms.
  core.String granularity;

  /// The unique name of the table. Values are of the form
  /// `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Views:
  /// `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `FULL`
  core.String name;

  /// Output only. If this table was restored from another data source (e.g. a
  /// backup), this field will be populated with information about the restore.
  RestoreInfo restoreInfo;

  Table();

  Table.fromJson(core.Map _json) {
    if (_json.containsKey('clusterStates')) {
      clusterStates = commons.mapMap<core.Map, ClusterState>(
          (_json['clusterStates'] as core.Map<core.String, core.dynamic>)
              .cast<core.String, core.Map>(),
          (core.Map item) => ClusterState.fromJson(
              item as core.Map<core.String, core.dynamic>));
    }
    if (_json.containsKey('columnFamilies')) {
      columnFamilies = commons.mapMap<core.Map, ColumnFamily>(
          (_json['columnFamilies'] as core.Map<core.String, core.dynamic>)
              .cast<core.String, core.Map>(),
          (core.Map item) => ColumnFamily.fromJson(
              item as core.Map<core.String, core.dynamic>));
    }
    if (_json.containsKey('granularity')) {
      granularity = _json['granularity'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('restoreInfo')) {
      restoreInfo = RestoreInfo.fromJson(
          _json['restoreInfo'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (clusterStates != null) {
      _json['clusterStates'] =
          commons.mapMap<ClusterState, core.Map<core.String, core.Object>>(
              clusterStates, (ClusterState item) => item.toJson());
    }
    if (columnFamilies != null) {
      _json['columnFamilies'] =
          commons.mapMap<ColumnFamily, core.Map<core.String, core.Object>>(
              columnFamilies, (ColumnFamily item) => item.toJson());
    }
    if (granularity != null) {
      _json['granularity'] = granularity;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (restoreInfo != null) {
      _json['restoreInfo'] = restoreInfo.toJson();
    }
    return _json;
  }
}

/// Progress info for copying a table's data to the new cluster.
class TableProgress {
  /// Estimate of the number of bytes copied so far for this table. This will
  /// eventually reach 'estimated_size_bytes' unless the table copy is
  /// CANCELLED.
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
  /// new cluster. Note that tables deleted after completion will stay marked as
  /// COMPLETED, not CANCELLED.
  core.String state;

  TableProgress();

  TableProgress.fromJson(core.Map _json) {
    if (_json.containsKey('estimatedCopiedBytes')) {
      estimatedCopiedBytes = _json['estimatedCopiedBytes'] as core.String;
    }
    if (_json.containsKey('estimatedSizeBytes')) {
      estimatedSizeBytes = _json['estimatedSizeBytes'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (estimatedCopiedBytes != null) {
      _json['estimatedCopiedBytes'] = estimatedCopiedBytes;
    }
    if (estimatedSizeBytes != null) {
      _json['estimatedSizeBytes'] = estimatedSizeBytes;
    }
    if (state != null) {
      _json['state'] = state;
    }
    return _json;
  }
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// The set of permissions to check for the `resource`. Permissions with
  /// wildcards (such as '*' or 'storage.*') are not allowed. For more
  /// information see [IAM
  /// Overview](https://cloud.google.com/iam/docs/overview#permissions).
  core.List<core.String> permissions;

  TestIamPermissionsRequest();

  TestIamPermissionsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
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
    if (_json.containsKey('permissions')) {
      permissions = (_json['permissions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (permissions != null) {
      _json['permissions'] = permissions;
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
    if (_json.containsKey('rules')) {
      rules = (_json['rules'] as core.List)
          .map<GcRule>((value) =>
              GcRule.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (rules != null) {
      _json['rules'] = rules.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The metadata for the Operation returned by UpdateAppProfile.
class UpdateAppProfileMetadata {
  UpdateAppProfileMetadata();

  UpdateAppProfileMetadata.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
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
    if (_json.containsKey('finishTime')) {
      finishTime = _json['finishTime'] as core.String;
    }
    if (_json.containsKey('originalRequest')) {
      originalRequest = Cluster.fromJson(
          _json['originalRequest'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('requestTime')) {
      requestTime = _json['requestTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (finishTime != null) {
      _json['finishTime'] = finishTime;
    }
    if (originalRequest != null) {
      _json['originalRequest'] = originalRequest.toJson();
    }
    if (requestTime != null) {
      _json['requestTime'] = requestTime;
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
    if (_json.containsKey('finishTime')) {
      finishTime = _json['finishTime'] as core.String;
    }
    if (_json.containsKey('originalRequest')) {
      originalRequest = PartialUpdateInstanceRequest.fromJson(
          _json['originalRequest'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('requestTime')) {
      requestTime = _json['requestTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (finishTime != null) {
      _json['finishTime'] = finishTime;
    }
    if (originalRequest != null) {
      _json['originalRequest'] = originalRequest.toJson();
    }
    if (requestTime != null) {
      _json['requestTime'] = requestTime;
    }
    return _json;
  }
}
