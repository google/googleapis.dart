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

library googleapis_beta.memcache.v1beta2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client memcache/v1beta2';

/// Google Cloud Memorystore for Memcached API is used for creating and managing
/// Memcached instances in GCP.
class MemcacheApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  MemcacheApi(http.Client client,
      {core.String rootUrl = 'https://memcache.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResourceApi get instances =>
      ProjectsLocationsInstancesResourceApi(_requester);
  ProjectsLocationsOperationsResourceApi get operations =>
      ProjectsLocationsOperationsResourceApi(_requester);

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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Location.fromJson(data));
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

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/locations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListLocationsResponse.fromJson(data));
  }
}

class ProjectsLocationsInstancesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// ApplyParameters will restart the set of specified nodes in order to update
  /// them to the current set of parameters for the Memcached Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Memcached instance for which
  /// parameter group updates should be applied.
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
  async.Future<Operation> applyParameters(
    ApplyParametersRequest request,
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

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':applyParameters';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Creates a new Instance in a given location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the instance location using the
  /// form: `projects/{project_id}/locations/{location_id}` where `location_id`
  /// refers to a GCP region
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [instanceId] - Required. The logical name of the Memcached instance in the
  /// user project with the following restrictions: * Must contain only
  /// lowercase letters, numbers, and hyphens. * Must start with a letter. *
  /// Must be between 1-40 characters. * Must end with a number or a letter. *
  /// Must be unique within the user project / location If any of the above are
  /// not met, will raise an invalid argument error.
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
    Instance request,
    core.String parent, {
    core.String instanceId,
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
    if (instanceId != null) {
      _queryParams['instanceId'] = [instanceId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/instances';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Deletes a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Memcached instance resource name in the format:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region
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
  async.Future<Operation> delete(
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Gets details of a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Memcached instance resource name in the format:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Instance.fromJson(data));
  }

  /// Lists Instances in a given location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the instance location using the
  /// form: `projects/{project_id}/locations/{location_id}` where `location_id`
  /// refers to a GCP region
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [filter] - List filter. For example, exclude all Memcached instances with
  /// name as my-instance by specifying "name != my-instance".
  ///
  /// [orderBy] - Sort results. Supported values are "name", "name desc" or ""
  /// (unsorted).
  ///
  /// [pageSize] - The maximum number of items to return. If not specified, a
  /// default value of 1000 will be used by the service. Regardless of the
  /// page_size value, the response may include a partial list and a caller
  /// should only rely on response's next_page_token to determine if there are
  /// more instances left to be queried.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
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

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/instances';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListInstancesResponse.fromJson(data));
  }

  /// Updates an existing Instance in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Unique name of the resource in this scope including
  /// project and location using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// Note: Memcached instances are managed and addressed at regional level so
  /// location_id here refers to a GCP region; however, users may choose which
  /// zones Memcached nodes within an instances should be provisioned in. Refer
  /// to [zones] field for more details.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/instances/[^/]+$".
  ///
  /// [updateMask] - Required. Mask of fields to update. * `displayName`
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Updates the defined Memcached Parameters for an existing Instance. This
  /// method only stages the parameters, it must be followed by ApplyParameters
  /// to apply the parameters to nodes of the Memcached Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Memcached instance for which the
  /// parameters should be updated.
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
  async.Future<Operation> updateParameters(
    UpdateParametersRequest request,
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

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':updateParameters';

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class ProjectsLocationsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

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
  async.Future<Empty> cancel(
    CancelOperationRequest request,
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

    _url =
        'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Empty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation. Clients can use this
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

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

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
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/operations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListOperationsResponse.fromJson(data));
  }
}

/// Request for ApplyParameters.
class ApplyParametersRequest {
  /// Whether to apply instance-level parameter group to all nodes. If set to
  /// true, will explicitly restrict users from specifying any nodes, and apply
  /// parameter group updates to all nodes within the instance.
  core.bool applyAll;

  /// Nodes to which we should apply the instance-level parameter group.
  core.List<core.String> nodeIds;

  ApplyParametersRequest();

  ApplyParametersRequest.fromJson(core.Map _json) {
    if (_json.containsKey('applyAll')) {
      applyAll = _json['applyAll'];
    }
    if (_json.containsKey('nodeIds')) {
      nodeIds = (_json['nodeIds'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (applyAll != null) {
      _json['applyAll'] = applyAll;
    }
    if (nodeIds != null) {
      _json['nodeIds'] = nodeIds;
    }
    return _json;
  }
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
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

/// Metadata for the given google.cloud.location.Location.
class GoogleCloudMemcacheV1beta2LocationMetadata {
  /// Output only. The set of available zones in the location. The map is keyed
  /// by the lowercase ID of each zone, as defined by GCE. These keys can be
  /// specified in the `zones` field when creating a Memcached instance.
  core.Map<core.String, ZoneMetadata> availableZones;

  GoogleCloudMemcacheV1beta2LocationMetadata();

  GoogleCloudMemcacheV1beta2LocationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('availableZones')) {
      availableZones = commons.mapMap<core.Map, ZoneMetadata>(
          _json['availableZones'].cast<core.String, core.Map>(),
          (core.Map item) => ZoneMetadata.fromJson(item));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (availableZones != null) {
      _json['availableZones'] =
          commons.mapMap<ZoneMetadata, core.Map<core.String, core.Object>>(
              availableZones, (ZoneMetadata item) => item.toJson());
    }
    return _json;
  }
}

/// Represents the metadata of a long-running operation.
class GoogleCloudMemcacheV1beta2OperationMetadata {
  /// Output only. API version used to start the operation.
  core.String apiVersion;

  /// Output only. Identifies whether the user has requested cancellation of the
  /// operation. Operations that have successfully been cancelled have
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  core.bool cancelRequested;

  /// Output only. Time when the operation was created.
  core.String createTime;

  /// Output only. Time when the operation finished running.
  core.String endTime;

  /// Output only. Human-readable status of the operation, if any.
  core.String statusDetail;

  /// Output only. Server-defined resource path for the target of the operation.
  core.String target;

  /// Output only. Name of the verb executed by the operation.
  core.String verb;

  GoogleCloudMemcacheV1beta2OperationMetadata();

  GoogleCloudMemcacheV1beta2OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('apiVersion')) {
      apiVersion = _json['apiVersion'];
    }
    if (_json.containsKey('cancelRequested')) {
      cancelRequested = _json['cancelRequested'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('statusDetail')) {
      statusDetail = _json['statusDetail'];
    }
    if (_json.containsKey('target')) {
      target = _json['target'];
    }
    if (_json.containsKey('verb')) {
      verb = _json['verb'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (apiVersion != null) {
      _json['apiVersion'] = apiVersion;
    }
    if (cancelRequested != null) {
      _json['cancelRequested'] = cancelRequested;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (statusDetail != null) {
      _json['statusDetail'] = statusDetail;
    }
    if (target != null) {
      _json['target'] = target;
    }
    if (verb != null) {
      _json['verb'] = verb;
    }
    return _json;
  }
}

class GoogleCloudSaasacceleratorManagementProvidersV1Instance {
  /// consumer_defined_name is the name that is set by the consumer. On the
  /// other hand Name field represents system-assigned id of an instance so
  /// consumers are not necessarily aware of it. consumer_defined_name is used
  /// for notification/UI purposes for consumer to recognize their instances.
  core.String consumerDefinedName;

  /// Output only. Timestamp when the resource was created.
  core.String createTime;

  /// Optional. Resource labels to represent user provided metadata. Each label
  /// is a key-value pair, where both the key and the value are arbitrary
  /// strings provided by the user.
  core.Map<core.String, core.String> labels;

  /// The MaintenancePolicies that have been attached to the instance. The key
  /// must be of the type name of the oneof policy name defined in
  /// MaintenancePolicy, and the referenced policy must define the same policy
  /// type. For complete details of MaintenancePolicy, please refer to
  /// go/cloud-saas-mw-ug.
  core.Map<core.String, core.String> maintenancePolicyNames;

  /// The MaintenanceSchedule contains the scheduling information of published
  /// maintenance schedule.
  core.Map<core.String,
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>
      maintenanceSchedules;

  /// Optional. The MaintenanceSettings associated with instance.
  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
      maintenanceSettings;

  /// Unique name of the resource. It uses the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  core.String name;

  /// Output only. Custom string attributes used primarily to expose
  /// producer-specific information in monitoring dashboards. See
  /// go/get-instance-metadata.
  core.Map<core.String, core.String> producerMetadata;

  /// Output only. The list of data plane resources provisioned for this
  /// instance, e.g. compute VMs. See go/get-instance-metadata.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>
      provisionedResources;

  /// Link to the SLM instance template. Only populated when updating SLM
  /// instances via SSA's Actuation service adaptor. Service producers with
  /// custom control plane (e.g. Cloud SQL) doesn't need to populate this field.
  /// Instead they should use software_versions.
  core.String slmInstanceTemplate;

  /// Output only. SLO metadata for instance classification in the Standardized
  /// dataplane SLO platform. See go/cloud-ssa-standard-slo for feature
  /// description.
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
  /// - "ERROR" : Instance encountered an error and is in indeterministic state.
  core.String state;

  /// Output only. ID of the associated GCP tenant project. See
  /// go/get-instance-metadata.
  core.String tenantProjectId;

  /// Output only. Timestamp when the resource was last modified.
  core.String updateTime;

  GoogleCloudSaasacceleratorManagementProvidersV1Instance();

  GoogleCloudSaasacceleratorManagementProvidersV1Instance.fromJson(
      core.Map _json) {
    if (_json.containsKey('consumerDefinedName')) {
      consumerDefinedName = _json['consumerDefinedName'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey('maintenancePolicyNames')) {
      maintenancePolicyNames = (_json['maintenancePolicyNames'] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey('maintenanceSchedules')) {
      maintenanceSchedules = commons.mapMap<core.Map,
              GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule>(
          _json['maintenanceSchedules'].cast<core.String, core.Map>(),
          (core.Map item) =>
              GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
                  .fromJson(item));
    }
    if (_json.containsKey('maintenanceSettings')) {
      maintenanceSettings =
          GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings
              .fromJson(_json['maintenanceSettings']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('producerMetadata')) {
      producerMetadata = (_json['producerMetadata'] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey('provisionedResources')) {
      provisionedResources = (_json['provisionedResources'] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>(
              (value) =>
                  GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('slmInstanceTemplate')) {
      slmInstanceTemplate = _json['slmInstanceTemplate'];
    }
    if (_json.containsKey('sloMetadata')) {
      sloMetadata =
          GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata.fromJson(
              _json['sloMetadata']);
    }
    if (_json.containsKey('softwareVersions')) {
      softwareVersions = (_json['softwareVersions'] as core.Map)
          .cast<core.String, core.String>();
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
    if (_json.containsKey('tenantProjectId')) {
      tenantProjectId = _json['tenantProjectId'];
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (consumerDefinedName != null) {
      _json['consumerDefinedName'] = consumerDefinedName;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (maintenancePolicyNames != null) {
      _json['maintenancePolicyNames'] = maintenancePolicyNames;
    }
    if (maintenanceSchedules != null) {
      _json['maintenanceSchedules'] = commons.mapMap<
              GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule,
              core.Map<core.String, core.Object>>(
          maintenanceSchedules,
          (GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule
                  item) =>
              item.toJson());
    }
    if (maintenanceSettings != null) {
      _json['maintenanceSettings'] = maintenanceSettings.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (producerMetadata != null) {
      _json['producerMetadata'] = producerMetadata;
    }
    if (provisionedResources != null) {
      _json['provisionedResources'] =
          provisionedResources.map((value) => value.toJson()).toList();
    }
    if (slmInstanceTemplate != null) {
      _json['slmInstanceTemplate'] = slmInstanceTemplate;
    }
    if (sloMetadata != null) {
      _json['sloMetadata'] = sloMetadata.toJson();
    }
    if (softwareVersions != null) {
      _json['softwareVersions'] = softwareVersions;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (tenantProjectId != null) {
      _json['tenantProjectId'] = tenantProjectId;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Maintenance schedule which is exposed to customer and potentially end user,
/// indicating published upcoming future maintenance schedule
class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule {
  /// Can this scheduled update be rescheduled? By default, it's true and API
  /// needs to do explicitly check whether it's set, if it's set as false
  /// explicitly, it's false
  core.bool canReschedule;

  /// The scheduled end time for the maintenance.
  core.String endTime;

  /// The rollout management policy this maintenance schedule is associated
  /// with. When doing reschedule update request, the reschedule should be
  /// against this given policy.
  core.String rolloutManagementPolicy;

  /// The scheduled start time for the maintenance.
  core.String startTime;

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule();

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule.fromJson(
      core.Map _json) {
    if (_json.containsKey('canReschedule')) {
      canReschedule = _json['canReschedule'];
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('rolloutManagementPolicy')) {
      rolloutManagementPolicy = _json['rolloutManagementPolicy'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (canReschedule != null) {
      _json['canReschedule'] = canReschedule;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (rolloutManagementPolicy != null) {
      _json['rolloutManagementPolicy'] = rolloutManagementPolicy;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// Maintenance settings associated with instance. Allows service producers and
/// end users to assign settings that controls maintenance on this instance.
class GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings {
  /// Optional. Exclude instance from maintenance. When true, rollout service
  /// will not attempt maintenance on the instance. Rollout service will include
  /// the instance in reported rollout progress as not attempted.
  core.bool exclude;

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings();

  GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings.fromJson(
      core.Map _json) {
    if (_json.containsKey('exclude')) {
      exclude = _json['exclude'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exclude != null) {
      _json['exclude'] = exclude;
    }
    return _json;
  }
}

/// Node information for custom per-node SLO implementations. SSA does not
/// support per-node SLO, but producers can populate per-node information in
/// SloMetadata for custom precomputations. SSA Eligibility Exporter will emit
/// per-node metric based on this information.
class GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata {
  /// By default node is eligible if instance is eligible. But individual node
  /// might be excluded from SLO by adding entry here. For semantic see
  /// SloMetadata.exclusions. If both instance and node level exclusions are
  /// present for time period, the node level's reason will be reported by
  /// Eligibility Exporter.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
      exclusions;

  /// The location of the node, if different from instance location.
  core.String location;

  /// The id of the node. This should be equal to SaasInstanceNode.node_id.
  core.String nodeId;

  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata();

  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('exclusions')) {
      exclusions = (_json['exclusions'] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>(
              (value) =>
                  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('location')) {
      location = _json['location'];
    }
    if (_json.containsKey('nodeId')) {
      nodeId = _json['nodeId'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (exclusions != null) {
      _json['exclusions'] = exclusions.map((value) => value.toJson()).toList();
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (nodeId != null) {
      _json['nodeId'] = nodeId;
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
    if (_json.containsKey('resourceType')) {
      resourceType = _json['resourceType'];
    }
    if (_json.containsKey('resourceUrl')) {
      resourceUrl = _json['resourceUrl'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (resourceType != null) {
      _json['resourceType'] = resourceType;
    }
    if (resourceUrl != null) {
      _json['resourceUrl'] = resourceUrl;
    }
    return _json;
  }
}

/// SloEligibility is a tuple containing eligibility value: true if an instance
/// is eligible for SLO calculation or false if it should be excluded from all
/// SLO-related calculations along with a user-defined reason.
class GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility {
  /// Whether an instance is eligible or ineligible.
  core.bool eligible;

  /// User-defined reason for the current value of instance eligibility.
  /// Usually, this can be directly mapped to the internal state. An empty
  /// reason is allowed.
  core.String reason;

  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility();

  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility.fromJson(
      core.Map _json) {
    if (_json.containsKey('eligible')) {
      eligible = _json['eligible'];
    }
    if (_json.containsKey('reason')) {
      reason = _json['reason'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (eligible != null) {
      _json['eligible'] = eligible;
    }
    if (reason != null) {
      _json['reason'] = reason;
    }
    return _json;
  }
}

/// SloExclusion represents an exclusion in SLI calculation applies to all SLOs.
class GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion {
  /// Exclusion duration. No restrictions on the possible values. When an
  /// ongoing operation is taking longer than initially expected, an existing
  /// entry in the exclusion list can be updated by extending the duration. This
  /// is supported by the subsystem exporting eligibility data as long as such
  /// extension is committed at least 10 minutes before the original exclusion
  /// expiration - otherwise it is possible that there will be "gaps" in the
  /// exclusion application in the exported timeseries.
  core.String duration;

  /// Human-readable reason for the exclusion. This should be a static string
  /// (e.g. "Disruptive update in progress") and should not contain dynamically
  /// generated data (e.g. instance name). Can be left empty.
  core.String reason;

  /// Name of an SLI that this exclusion applies to. Can be left empty,
  /// signaling that the instance should be excluded from all SLIs defined in
  /// the service SLO configuration.
  core.String sliName;

  /// Start time of the exclusion. No alignment (e.g. to a full minute) needed.
  core.String startTime;

  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion();

  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion.fromJson(
      core.Map _json) {
    if (_json.containsKey('duration')) {
      duration = _json['duration'];
    }
    if (_json.containsKey('reason')) {
      reason = _json['reason'];
    }
    if (_json.containsKey('sliName')) {
      sliName = _json['sliName'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (duration != null) {
      _json['duration'] = duration;
    }
    if (reason != null) {
      _json['reason'] = reason;
    }
    if (sliName != null) {
      _json['sliName'] = sliName;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// SloMetadata contains resources required for proper SLO classification of the
/// instance.
class GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata {
  /// Optional. User-defined instance eligibility.
  GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility eligibility;

  /// List of SLO exclusion windows. When multiple entries in the list match
  /// (matching the exclusion time-window against current time point) the
  /// exclusion reason used in the first matching entry will be published. It is
  /// not needed to include expired exclusion in this list, as only the
  /// currently applicable exclusions are taken into account by the eligibility
  /// exporting subsystem (the historical state of exclusions will be reflected
  /// in the historically produced timeseries regardless of the current state).
  /// This field can be used to mark the instance as temporary ineligible for
  /// the purpose of SLO calculation. For permanent instance SLO exclusion, use
  /// of custom instance eligibility is recommended. See 'eligibility' field
  /// below.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>
      exclusions;

  /// Optional. List of nodes. Some producers need to use per-node metadata to
  /// calculate SLO. This field allows such producers to publish per-node SLO
  /// meta data, which will be consumed by SSA Eligibility Exporter and
  /// published in the form of per node metric to Monarch.
  core.List<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>
      nodes;

  /// Name of the SLO tier the Instance belongs to. This name will be expected
  /// to match the tiers specified in the service SLO configuration. Field is
  /// mandatory and must not be empty.
  core.String tier;

  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata();

  GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('eligibility')) {
      eligibility =
          GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility
              .fromJson(_json['eligibility']);
    }
    if (_json.containsKey('exclusions')) {
      exclusions = (_json['exclusions'] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion>(
              (value) =>
                  GoogleCloudSaasacceleratorManagementProvidersV1SloExclusion
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('nodes')) {
      nodes = (_json['nodes'] as core.List)
          .map<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>(
              (value) =>
                  GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (eligibility != null) {
      _json['eligibility'] = eligibility.toJson();
    }
    if (exclusions != null) {
      _json['exclusions'] = exclusions.map((value) => value.toJson()).toList();
    }
    if (nodes != null) {
      _json['nodes'] = nodes.map((value) => value.toJson()).toList();
    }
    if (tier != null) {
      _json['tier'] = tier;
    }
    return _json;
  }
}

class Instance {
  /// The full name of the Google Compute Engine
  /// [network](https://cloud.google.com/vpc/docs/vpc) to which the instance is
  /// connected. If left unspecified, the `default` network will be used.
  core.String authorizedNetwork;

  /// Output only. The time the instance was created.
  core.String createTime;

  /// Output only. Endpoint for Discovery API
  core.String discoveryEndpoint;

  /// User provided name for the instance only used for display purposes. Cannot
  /// be more than 80 characters.
  core.String displayName;

  /// List of messages that describe current statuses of memcached instance.
  core.List<InstanceMessage> instanceMessages;

  /// Resource labels to represent user-provided metadata. Refer to cloud
  /// documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  core.Map<core.String, core.String> labels;

  /// Output only. The full version of memcached server running on this
  /// instance. System automatically determines the full memcached version for
  /// an instance based on the input MemcacheVersion. The full version format
  /// will be "memcached-1.5.16".
  core.String memcacheFullVersion;

  /// Output only. List of Memcached nodes. Refer to [Node] message for more
  /// details.
  core.List<Node> memcacheNodes;

  /// The major version of Memcached software. If not provided, latest supported
  /// version will be used. Currently the latest supported major version is
  /// MEMCACHE_1_5. The minor version will be automatically determined by our
  /// system based on the latest supported minor version.
  /// Possible string values are:
  /// - "MEMCACHE_VERSION_UNSPECIFIED"
  /// - "MEMCACHE_1_5" : Memcached 1.5 version.
  core.String memcacheVersion;

  /// Required. Unique name of the resource in this scope including project and
  /// location using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// Note: Memcached instances are managed and addressed at regional level so
  /// location_id here refers to a GCP region; however, users may choose which
  /// zones Memcached nodes within an instances should be provisioned in. Refer
  /// to [zones] field for more details.
  core.String name;

  /// Required. Configuration for Memcached nodes.
  NodeConfig nodeConfig;

  /// Required. Number of nodes in the Memcached instance.
  core.int nodeCount;

  /// Optional: User defined parameters to apply to the memcached process on
  /// each node.
  MemcacheParameters parameters;

  /// Output only. The state of this Memcached instance.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : Memcached instance is being created.
  /// - "READY" : Memcached instance has been created and ready to be used.
  /// - "DELETING" : Memcached instance is being deleted.
  /// - "PERFORMING_MAINTENANCE" : Memcached instance is going through
  /// maintenance, e.g. data plane rollout.
  core.String state;

  /// Output only. The time the instance was updated.
  core.String updateTime;

  /// Zones where Memcached nodes should be provisioned in. Memcached nodes will
  /// be equally distributed across these zones. If not provided, the service
  /// will by default create nodes in all zones in the region for the instance.
  core.List<core.String> zones;

  Instance();

  Instance.fromJson(core.Map _json) {
    if (_json.containsKey('authorizedNetwork')) {
      authorizedNetwork = _json['authorizedNetwork'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('discoveryEndpoint')) {
      discoveryEndpoint = _json['discoveryEndpoint'];
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('instanceMessages')) {
      instanceMessages = (_json['instanceMessages'] as core.List)
          .map<InstanceMessage>((value) => InstanceMessage.fromJson(value))
          .toList();
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey('memcacheFullVersion')) {
      memcacheFullVersion = _json['memcacheFullVersion'];
    }
    if (_json.containsKey('memcacheNodes')) {
      memcacheNodes = (_json['memcacheNodes'] as core.List)
          .map<Node>((value) => Node.fromJson(value))
          .toList();
    }
    if (_json.containsKey('memcacheVersion')) {
      memcacheVersion = _json['memcacheVersion'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('nodeConfig')) {
      nodeConfig = NodeConfig.fromJson(_json['nodeConfig']);
    }
    if (_json.containsKey('nodeCount')) {
      nodeCount = _json['nodeCount'];
    }
    if (_json.containsKey('parameters')) {
      parameters = MemcacheParameters.fromJson(_json['parameters']);
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'];
    }
    if (_json.containsKey('zones')) {
      zones = (_json['zones'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (authorizedNetwork != null) {
      _json['authorizedNetwork'] = authorizedNetwork;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (discoveryEndpoint != null) {
      _json['discoveryEndpoint'] = discoveryEndpoint;
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (instanceMessages != null) {
      _json['instanceMessages'] =
          instanceMessages.map((value) => value.toJson()).toList();
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (memcacheFullVersion != null) {
      _json['memcacheFullVersion'] = memcacheFullVersion;
    }
    if (memcacheNodes != null) {
      _json['memcacheNodes'] =
          memcacheNodes.map((value) => value.toJson()).toList();
    }
    if (memcacheVersion != null) {
      _json['memcacheVersion'] = memcacheVersion;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (nodeConfig != null) {
      _json['nodeConfig'] = nodeConfig.toJson();
    }
    if (nodeCount != null) {
      _json['nodeCount'] = nodeCount;
    }
    if (parameters != null) {
      _json['parameters'] = parameters.toJson();
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    if (zones != null) {
      _json['zones'] = zones;
    }
    return _json;
  }
}

class InstanceMessage {
  /// A code that correspond to one type of user-facing message.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Message Code not set.
  /// - "ZONE_DISTRIBUTION_UNBALANCED" : Memcached nodes are distributed
  /// unevenly.
  core.String code;

  /// Message on memcached instance which will be exposed to users.
  core.String message;

  InstanceMessage();

  InstanceMessage.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'];
    }
    if (_json.containsKey('message')) {
      message = _json['message'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Response for ListInstances.
class ListInstancesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String nextPageToken;

  /// A list of Memcached instances in the project in the specified location, or
  /// across all locations. If the `location_id` in the parent field of the
  /// request is "-", all regions available to the project are queried, and the
  /// results aggregated.
  core.List<Instance> resources;

  /// Locations that could not be reached.
  core.List<core.String> unreachable;

  ListInstancesResponse();

  ListInstancesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('resources')) {
      resources = (_json['resources'] as core.List)
          .map<Instance>((value) => Instance.fromJson(value))
          .toList();
    }
    if (_json.containsKey('unreachable')) {
      unreachable = (_json['unreachable'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (resources != null) {
      _json['resources'] = resources.map((value) => value.toJson()).toList();
    }
    if (unreachable != null) {
      _json['unreachable'] = unreachable;
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
          .map<Location>((value) => Location.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
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
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) => Operation.fromJson(value))
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
      displayName = _json['displayName'];
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'];
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
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

class MemcacheParameters {
  /// Output only. The unique ID associated with this set of parameters. Users
  /// can use this id to determine if the parameters associated with the
  /// instance differ from the parameters associated with the nodes and any
  /// action needs to be taken to apply parameters on nodes.
  core.String id;

  /// User defined set of parameters to use in the memcached process.
  core.Map<core.String, core.String> params;

  MemcacheParameters();

  MemcacheParameters.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('params')) {
      params = (_json['params'] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (params != null) {
      _json['params'] = params;
    }
    return _json;
  }
}

class Node {
  /// Output only. Hostname or IP address of the Memcached node used by the
  /// clients to connect to the Memcached server on this node.
  core.String host;

  /// Output only. Identifier of the Memcached node. The node id does not
  /// include project or location like the Memcached instance name.
  core.String nodeId;

  /// User defined parameters currently applied to the node.
  MemcacheParameters parameters;

  /// Output only. The port number of the Memcached server on this node.
  core.int port;

  /// Output only. Current state of the Memcached node.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Node state is not set.
  /// - "CREATING" : Node is being created.
  /// - "READY" : Node has been created and ready to be used.
  /// - "DELETING" : Node is being deleted.
  /// - "UPDATING" : Node is being updated.
  core.String state;

  /// Output only. Location (GCP Zone) for the Memcached node.
  core.String zone;

  Node();

  Node.fromJson(core.Map _json) {
    if (_json.containsKey('host')) {
      host = _json['host'];
    }
    if (_json.containsKey('nodeId')) {
      nodeId = _json['nodeId'];
    }
    if (_json.containsKey('parameters')) {
      parameters = MemcacheParameters.fromJson(_json['parameters']);
    }
    if (_json.containsKey('port')) {
      port = _json['port'];
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (host != null) {
      _json['host'] = host;
    }
    if (nodeId != null) {
      _json['nodeId'] = nodeId;
    }
    if (parameters != null) {
      _json['parameters'] = parameters.toJson();
    }
    if (port != null) {
      _json['port'] = port;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// Configuration for a Memcached Node.
class NodeConfig {
  /// Required. Number of cpus per Memcached node.
  core.int cpuCount;

  /// Required. Memory size in MiB for each Memcached node.
  core.int memorySizeMb;

  NodeConfig();

  NodeConfig.fromJson(core.Map _json) {
    if (_json.containsKey('cpuCount')) {
      cpuCount = _json['cpuCount'];
    }
    if (_json.containsKey('memorySizeMb')) {
      memorySizeMb = _json['memorySizeMb'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cpuCount != null) {
      _json['cpuCount'] = cpuCount;
    }
    if (memorySizeMb != null) {
      _json['memorySizeMb'] = memorySizeMb;
    }
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
      done = _json['done'];
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(_json['error']);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>();
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
      code = _json['code'];
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'];
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

/// Request for UpdateParameters.
class UpdateParametersRequest {
  /// The parameters to apply to the instance.
  MemcacheParameters parameters;

  /// Required. Mask of fields to update.
  core.String updateMask;

  UpdateParametersRequest();

  UpdateParametersRequest.fromJson(core.Map _json) {
    if (_json.containsKey('parameters')) {
      parameters = MemcacheParameters.fromJson(_json['parameters']);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (parameters != null) {
      _json['parameters'] = parameters.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
}

class ZoneMetadata {
  ZoneMetadata();

  ZoneMetadata.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}
