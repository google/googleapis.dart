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

library googleapis_beta.runtimeconfig.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client runtimeconfig/v1beta1';

/// The Runtime Configurator allows you to dynamically configure and expose
/// variables through Google Cloud Platform. In addition, you can also set
/// Watchers and Waiters that will watch for changes to your data and return
/// based on certain conditions.
class RuntimeconfigApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Manage your Google Cloud Platform services' runtime configuration
  static const cloudruntimeconfigScope =
      'https://www.googleapis.com/auth/cloudruntimeconfig';

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  RuntimeconfigApi(http.Client client,
      {core.String rootUrl = 'https://runtimeconfig.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsConfigsResourceApi get configs =>
      ProjectsConfigsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsConfigsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsConfigsOperationsResourceApi get operations =>
      ProjectsConfigsOperationsResourceApi(_requester);
  ProjectsConfigsVariablesResourceApi get variables =>
      ProjectsConfigsVariablesResourceApi(_requester);
  ProjectsConfigsWaitersResourceApi get waiters =>
      ProjectsConfigsWaitersResourceApi(_requester);

  ProjectsConfigsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new RuntimeConfig resource. The configuration name must be
  /// unique within project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The [project
  /// ID](https://support.google.com/cloud/answer/6158840?hl=en&ref_topic=6158848)
  /// for this request, in the format `projects/[PROJECT_ID]`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [requestId] - An optional but recommended unique `request_id`. If the
  /// server receives two `create()` requests with the same `request_id`, then
  /// the second request will be ignored and the first resource created and
  /// stored in the backend is returned. Empty `request_id` fields are ignored.
  /// It is responsibility of the client to ensure uniqueness of the
  /// `request_id` strings. `request_id` strings are limited to 64 characters.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RuntimeConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RuntimeConfig> create(
    RuntimeConfig request,
    core.String parent, {
    core.String requestId,
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
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/configs';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => RuntimeConfig.fromJson(data));
  }

  /// Deletes a RuntimeConfig resource.
  ///
  /// Request parameters:
  ///
  /// [name] - The RuntimeConfig resource to delete, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+$".
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets information about a RuntimeConfig resource.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the RuntimeConfig resource to retrieve, in the
  /// format: `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RuntimeConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RuntimeConfig> get(
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => RuntimeConfig.fromJson(data));
  }

  /// Gets the access control policy for a resource. Returns an empty policy if
  /// the resource exists and does not have a policy set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+$".
  ///
  /// [options_requestedPolicyVersion] - Optional. The policy format version to
  /// be returned. Valid values are 0, 1, and 3. Requests specifying an invalid
  /// value will be rejected. Requests for policies with any conditional
  /// bindings must specify version 3. Policies without any conditional bindings
  /// may specify any valid value or leave the field unset. To learn which
  /// resources support conditions in their IAM policies, see the [IAM
  /// documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.String resource, {
    core.int options_requestedPolicyVersion,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (resource == null) {
      throw core.ArgumentError('Parameter resource is required.');
    }
    if (options_requestedPolicyVersion != null) {
      _queryParams['options.requestedPolicyVersion'] = [
        '${options_requestedPolicyVersion}'
      ];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$resource') +
        ':getIamPolicy';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Policy.fromJson(data));
  }

  /// Lists all the RuntimeConfig resources within project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The [project
  /// ID](https://support.google.com/cloud/answer/6158840?hl=en&ref_topic=6158848)
  /// for this request, in the format `projects/[PROJECT_ID]`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [pageSize] - Specifies the number of results to return per page. If there
  /// are fewer elements than the specified number, returns all elements.
  ///
  /// [pageToken] - Specifies a page token to use. Set `pageToken` to a
  /// `nextPageToken` returned by a previous list request to get the next page
  /// of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConfigsResponse> list(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/configs';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListConfigsResponse.fromJson(data));
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and
  /// `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+$".
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

    _url = 'v1beta1/' +
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
    return _response.then((data) => Policy.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource. If the
  /// resource does not exist, this will return an empty set of permissions, not
  /// a `NOT_FOUND` error. Note: This operation is designed to be used for
  /// building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+$".
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

    _url = 'v1beta1/' +
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
    return _response.then((data) => TestIamPermissionsResponse.fromJson(data));
  }

  /// Updates a RuntimeConfig resource. The configuration must exist beforehand.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the RuntimeConfig resource to update, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RuntimeConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RuntimeConfig> update(
    RuntimeConfig request,
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => RuntimeConfig.fromJson(data));
  }
}

class ProjectsConfigsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsConfigsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+/operations/.*$".
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Returns permissions that a caller has on the specified resource. If the
  /// resource does not exist, this will return an empty set of permissions, not
  /// a `NOT_FOUND` error. Note: This operation is designed to be used for
  /// building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+/operations/.*$".
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

    _url = 'v1beta1/' +
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
    return _response.then((data) => TestIamPermissionsResponse.fromJson(data));
  }
}

class ProjectsConfigsVariablesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsConfigsVariablesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a variable within the given configuration. You cannot create a
  /// variable with a name that is a prefix of an existing variable name, or a
  /// name that has an existing variable name as a prefix. To learn more about
  /// creating a variable, read the [Setting and Getting
  /// Data](/deployment-manager/runtime-configurator/set-and-get-variables)
  /// documentation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The path to the RutimeConfig resource that this variable should
  /// belong to. The configuration must exist beforehand; the path must be in
  /// the format: `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+$".
  ///
  /// [requestId] - An optional but recommended unique `request_id`. If the
  /// server receives two `create()` requests with the same `request_id`, then
  /// the second request will be ignored and the first resource created and
  /// stored in the backend is returned. Empty `request_id` fields are ignored.
  /// It is responsibility of the client to ensure uniqueness of the
  /// `request_id` strings. `request_id` strings are limited to 64 characters.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Variable].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variable> create(
    Variable request,
    core.String parent, {
    core.String requestId,
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
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/variables';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Variable.fromJson(data));
  }

  /// Deletes a variable or multiple variables. If you specify a variable name,
  /// then that variable is deleted. If you specify a prefix and `recursive` is
  /// true, then all variables with that prefix are deleted. You must set a
  /// `recursive` to true if you delete variables by prefix.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the variable to delete, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]/variables/[VARIABLE_NAME]`
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+/variables/.*$".
  ///
  /// [recursive] - Set to `true` to recursively delete multiple variables with
  /// the same prefix.
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
    core.bool recursive,
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
    if (recursive != null) {
      _queryParams['recursive'] = ['${recursive}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets information about a single variable.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the variable to return, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]/variables/[VARIBLE_NAME]`
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+/variables/.*$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Variable].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variable> get(
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Variable.fromJson(data));
  }

  /// Lists variables within given a configuration, matching any provided
  /// filters. This only lists variable names, not the values, unless
  /// `return_values` is true, in which case only variables that user has IAM
  /// permission to GetVariable will be returned.
  ///
  /// Request parameters:
  ///
  /// [parent] - The path to the RuntimeConfig resource for which you want to
  /// list variables. The configuration must exist beforehand; the path must be
  /// in the format: `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+$".
  ///
  /// [filter] - Filters variables by matching the specified filter. For
  /// example:
  /// `projects/example-project/config/[CONFIG_NAME]/variables/example-variable`.
  ///
  /// [pageSize] - Specifies the number of results to return per page. If there
  /// are fewer elements than the specified number, returns all elements.
  ///
  /// [pageToken] - Specifies a page token to use. Set `pageToken` to a
  /// `nextPageToken` returned by a previous list request to get the next page
  /// of results.
  ///
  /// [returnValues] - The flag indicates whether the user wants to return
  /// values of variables. If true, then only those variables that user has IAM
  /// GetVariable permission will be returned along with their values.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVariablesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVariablesResponse> list(
    core.String parent, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.bool returnValues,
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
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (returnValues != null) {
      _queryParams['returnValues'] = ['${returnValues}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/variables';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListVariablesResponse.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource. If the
  /// resource does not exist, this will return an empty set of permissions, not
  /// a `NOT_FOUND` error. Note: This operation is designed to be used for
  /// building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+/variables/.*$".
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

    _url = 'v1beta1/' +
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
    return _response.then((data) => TestIamPermissionsResponse.fromJson(data));
  }

  /// Updates an existing variable with a new value.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the variable to update, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]/variables/[VARIABLE_NAME]`
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+/variables/.*$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Variable].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variable> update(
    Variable request,
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Variable.fromJson(data));
  }

  /// Watches a specific variable and waits for a change in the variable's
  /// value. When there is a change, this method returns the new value or times
  /// out. If a variable is deleted while being watched, the `variableState`
  /// state is set to `DELETED` and the method returns the last known variable
  /// `value`. If you set the deadline for watching to a larger value than
  /// internal timeout (60 seconds), the current variable value is returned and
  /// the `variableState` will be `VARIABLE_STATE_UNSPECIFIED`. To learn more
  /// about creating a watcher, read the [Watching a Variable for
  /// Changes](/deployment-manager/runtime-configurator/watching-a-variable)
  /// documentation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the variable to watch, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+/variables/.*$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Variable].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Variable> watch(
    WatchVariableRequest request,
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
        'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':watch';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Variable.fromJson(data));
  }
}

class ProjectsConfigsWaitersResourceApi {
  final commons.ApiRequester _requester;

  ProjectsConfigsWaitersResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Waiter resource. This operation returns a long-running Operation
  /// resource which can be polled for completion. However, a waiter with the
  /// given name will exist (and can be retrieved) prior to the operation
  /// completing. If the operation fails, the failed Waiter resource will still
  /// exist and must be deleted prior to subsequent creation attempts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The path to the configuration that will own the waiter. The
  /// configuration must exist beforehand; the path must be in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`.
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+$".
  ///
  /// [requestId] - An optional but recommended unique `request_id`. If the
  /// server receives two `create()` requests with the same `request_id`, then
  /// the second request will be ignored and the first resource created and
  /// stored in the backend is returned. Empty `request_id` fields are ignored.
  /// It is responsibility of the client to ensure uniqueness of the
  /// `request_id` strings. `request_id` strings are limited to 64 characters.
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
    Waiter request,
    core.String parent, {
    core.String requestId,
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
    if (requestId != null) {
      _queryParams['requestId'] = [requestId];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/waiters';

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

  /// Deletes the waiter with the specified name.
  ///
  /// Request parameters:
  ///
  /// [name] - The Waiter resource to delete, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]/waiters/[WAITER_NAME]`
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+/waiters/[^/]+$".
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

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

  /// Gets information about a single waiter.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully-qualified name of the Waiter resource object to
  /// retrieve, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]/waiters/[WAITER_NAME]`
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+/waiters/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Waiter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Waiter> get(
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

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Waiter.fromJson(data));
  }

  /// List waiters within the given configuration.
  ///
  /// Request parameters:
  ///
  /// [parent] - The path to the configuration for which you want to get a list
  /// of waiters. The configuration must exist beforehand; the path must be in
  /// the format: `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+$".
  ///
  /// [pageSize] - Specifies the number of results to return per page. If there
  /// are fewer elements than the specified number, returns all elements.
  ///
  /// [pageToken] - Specifies a page token to use. Set `pageToken` to a
  /// `nextPageToken` returned by a previous list request to get the next page
  /// of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWaitersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWaitersResponse> list(
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

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/waiters';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => ListWaitersResponse.fromJson(data));
  }

  /// Returns permissions that a caller has on the specified resource. If the
  /// resource does not exist, this will return an empty set of permissions, not
  /// a `NOT_FOUND` error. Note: This operation is designed to be used for
  /// building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern "^projects/[^/]+/configs/[^/]+/waiters/[^/]+$".
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

    _url = 'v1beta1/' +
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
    return _response.then((data) => TestIamPermissionsResponse.fromJson(data));
  }
}

/// Associates `members` with a `role`.
class Binding {
  /// A client-specified ID for this binding. Expected to be globally unique to
  /// support the internal bindings-by-ID API.
  core.String bindingId;

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
    if (_json.containsKey('bindingId')) {
      bindingId = _json['bindingId'] as core.String;
    }
    if (_json.containsKey('condition')) {
      condition = Expr.fromJson(_json['condition']);
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
    if (bindingId != null) {
      _json['bindingId'] = bindingId;
    }
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

/// A Cardinality condition for the Waiter resource. A cardinality condition is
/// met when the number of variables under a specified path prefix reaches a
/// predefined number. For example, if you set a Cardinality condition where the
/// `path` is set to `/foo` and the number of paths is set to `2`, the following
/// variables would meet the condition in a RuntimeConfig resource: +
/// `/foo/variable1 = "value1"` + `/foo/variable2 = "value2"` + `/bar/variable3
/// = "value3"` It would not satisfy the same condition with the `number` set to
/// `3`, however, because there is only 2 paths that start with `/foo`.
/// Cardinality conditions are recursive; all subtrees under the specific path
/// prefix are counted.
class Cardinality {
  /// The number variables under the `path` that must exist to meet this
  /// condition. Defaults to 1 if not specified.
  core.int number;

  /// The root of the variable subtree to monitor. For example, `/foo`.
  core.String path;

  Cardinality();

  Cardinality.fromJson(core.Map _json) {
    if (_json.containsKey('number')) {
      number = _json['number'] as core.int;
    }
    if (_json.containsKey('path')) {
      path = _json['path'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (number != null) {
      _json['number'] = number;
    }
    if (path != null) {
      _json['path'] = path;
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

/// The condition that a Waiter resource is waiting for.
class EndCondition {
  /// The cardinality of the `EndCondition`.
  Cardinality cardinality;

  EndCondition();

  EndCondition.fromJson(core.Map _json) {
    if (_json.containsKey('cardinality')) {
      cardinality = Cardinality.fromJson(_json['cardinality']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cardinality != null) {
      _json['cardinality'] = cardinality.toJson();
    }
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

/// `ListConfigs()` returns the following response. The order of returned
/// objects is arbitrary; that is, it is not ordered in any particular way.
class ListConfigsResponse {
  /// A list of the configurations in the project. The order of returned objects
  /// is arbitrary; that is, it is not ordered in any particular way.
  core.List<RuntimeConfig> configs;

  /// This token allows you to get the next page of results for list requests.
  /// If the number of results is larger than `pageSize`, use the
  /// `nextPageToken` as a value for the query parameter `pageToken` in the next
  /// list request. Subsequent list requests will have their own `nextPageToken`
  /// to continue paging through the results
  core.String nextPageToken;

  ListConfigsResponse();

  ListConfigsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('configs')) {
      configs = (_json['configs'] as core.List)
          .map<RuntimeConfig>((value) => RuntimeConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (configs != null) {
      _json['configs'] = configs.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response for the `ListVariables()` method.
class ListVariablesResponse {
  /// This token allows you to get the next page of results for list requests.
  /// If the number of results is larger than `pageSize`, use the
  /// `nextPageToken` as a value for the query parameter `pageToken` in the next
  /// list request. Subsequent list requests will have their own `nextPageToken`
  /// to continue paging through the results
  core.String nextPageToken;

  /// A list of variables and their values. The order of returned variable
  /// objects is arbitrary.
  core.List<Variable> variables;

  ListVariablesResponse();

  ListVariablesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('variables')) {
      variables = (_json['variables'] as core.List)
          .map<Variable>((value) => Variable.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (variables != null) {
      _json['variables'] = variables.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response for the `ListWaiters()` method. Order of returned waiter objects is
/// arbitrary.
class ListWaitersResponse {
  /// This token allows you to get the next page of results for list requests.
  /// If the number of results is larger than `pageSize`, use the
  /// `nextPageToken` as a value for the query parameter `pageToken` in the next
  /// list request. Subsequent list requests will have their own `nextPageToken`
  /// to continue paging through the results
  core.String nextPageToken;

  /// Found waiters in the project.
  core.List<Waiter> waiters;

  ListWaitersResponse();

  ListWaitersResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('waiters')) {
      waiters = (_json['waiters'] as core.List)
          .map<Waiter>((value) => Waiter.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (waiters != null) {
      _json['waiters'] = waiters.map((value) => value.toJson()).toList();
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
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(_json['error']);
    }
    if (_json.containsKey('metadata')) {
      metadata = commons.mapMap<core.Object, core.Object>(
          _json['metadata'].cast<core.String, core.Object>(),
          (core.Object item) => item as core.Object);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response = commons.mapMap<core.Object, core.Object>(
          _json['response'].cast<core.String, core.Object>(),
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
    if (_json.containsKey('bindings')) {
      bindings = (_json['bindings'] as core.List)
          .map<Binding>((value) => Binding.fromJson(value))
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

/// A RuntimeConfig resource is the primary resource in the Cloud RuntimeConfig
/// service. A RuntimeConfig resource consists of metadata and a hierarchy of
/// variables.
class RuntimeConfig {
  /// An optional description of the RuntimeConfig object.
  core.String description;

  /// The resource name of a runtime config. The name must have the format:
  /// projects/[PROJECT_ID]/configs/[CONFIG_NAME] The `[PROJECT_ID]` must be a
  /// valid project ID, and `[CONFIG_NAME]` is an arbitrary name that matches
  /// the `[0-9A-Za-z](?:[_.A-Za-z0-9-]{0,62}[_.A-Za-z0-9])?` regular
  /// expression. The length of `[CONFIG_NAME]` must be less than 64 characters.
  /// You pick the RuntimeConfig resource name, but the server will validate
  /// that the name adheres to this format. After you create the resource, you
  /// cannot change the resource's name.
  core.String name;

  RuntimeConfig();

  RuntimeConfig.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (name != null) {
      _json['name'] = name;
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

  SetIamPolicyRequest();

  SetIamPolicyRequest.fromJson(core.Map _json) {
    if (_json.containsKey('policy')) {
      policy = Policy.fromJson(_json['policy']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (policy != null) {
      _json['policy'] = policy.toJson();
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
                  value.cast<core.String, core.Object>(),
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

/// Describes a single variable within a RuntimeConfig resource. The name
/// denotes the hierarchical variable name. For example, `ports/serving_port` is
/// a valid variable name. The variable value is an opaque string and only leaf
/// variables can have values (that is, variables that do not have any child
/// variables).
class Variable {
  /// The name of the variable resource, in the format:
  /// projects/[PROJECT_ID]/configs/[CONFIG_NAME]/variables/[VARIABLE_NAME] The
  /// `[PROJECT_ID]` must be a valid project ID, `[CONFIG_NAME]` must be a valid
  /// RuntimeConfig resource and `[VARIABLE_NAME]` follows Unix file system file
  /// path naming. The `[VARIABLE_NAME]` can contain ASCII letters, numbers,
  /// slashes and dashes. Slashes are used as path element separators and are
  /// not part of the `[VARIABLE_NAME]` itself, so `[VARIABLE_NAME]` must
  /// contain at least one non-slash character. Multiple slashes are coalesced
  /// into single slash character. Each path segment should match
  /// [0-9A-Za-z](?:[_.A-Za-z0-9-]{0,62}[_.A-Za-z0-9])? regular expression. The
  /// length of a `[VARIABLE_NAME]` must be less than 256 characters. Once you
  /// create a variable, you cannot change the variable name.
  core.String name;

  /// Output only. The current state of the variable. The variable state
  /// indicates the outcome of the `variables().watch` call and is visible
  /// through the `get` and `list` calls.
  /// Possible string values are:
  /// - "VARIABLE_STATE_UNSPECIFIED" : Default variable state.
  /// - "UPDATED" : The variable was updated, while `variables().watch` was
  /// executing.
  /// - "DELETED" : The variable was deleted, while `variables().watch` was
  /// executing.
  core.String state;

  /// The string value of the variable. The length of the value must be less
  /// than 4096 bytes. Empty values are also accepted. For example, `text: "my
  /// text value"`. The string must be valid UTF-8.
  core.String text;

  /// Output only. The time of the last variable update. Timestamp will be UTC
  /// timestamp.
  core.String updateTime;

  /// The binary value of the variable. The length of the value must be less
  /// than 4096 bytes. Empty values are also accepted. The value must be base64
  /// encoded, and must comply with IETF RFC4648
  /// (https://www.ietf.org/rfc/rfc4648.txt). Only one of `value` or `text` can
  /// be set.
  core.String value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value);

  set valueAsBytes(core.List<core.int> _bytes) {
    value =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Variable();

  Variable.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('text')) {
      text = _json['text'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (text != null) {
      _json['text'] = text;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// A Waiter resource waits for some end condition within a RuntimeConfig
/// resource to be met before it returns. For example, assume you have a
/// distributed system where each node writes to a Variable resource indicating
/// the node's readiness as part of the startup process. You then configure a
/// Waiter resource with the success condition set to wait until some number of
/// nodes have checked in. Afterwards, your application runs some arbitrary code
/// after the condition has been met and the waiter returns successfully. Once
/// created, a Waiter resource is immutable. To learn more about using waiters,
/// read the [Creating a
/// Waiter](/deployment-manager/runtime-configurator/creating-a-waiter)
/// documentation.
class Waiter {
  /// Output only. The instant at which this Waiter resource was created. Adding
  /// the value of `timeout` to this instant yields the timeout deadline for the
  /// waiter.
  core.String createTime;

  /// Output only. If the value is `false`, it means the waiter is still waiting
  /// for one of its conditions to be met. If true, the waiter has finished. If
  /// the waiter finished due to a timeout or failure, `error` will be set.
  core.bool done;

  /// Output only. If the waiter ended due to a failure or timeout, this value
  /// will be set.
  Status error;

  /// [Optional] The failure condition of this waiter. If this condition is met,
  /// `done` will be set to `true` and the `error` code will be set to
  /// `ABORTED`. The failure condition takes precedence over the success
  /// condition. If both conditions are met, a failure will be indicated. This
  /// value is optional; if no failure condition is set, the only failure
  /// scenario will be a timeout.
  EndCondition failure;

  /// The name of the Waiter resource, in the format:
  /// projects/[PROJECT_ID]/configs/[CONFIG_NAME]/waiters/[WAITER_NAME] The
  /// `[PROJECT_ID]` must be a valid Google Cloud project ID, the
  /// `[CONFIG_NAME]` must be a valid RuntimeConfig resource, the
  /// `[WAITER_NAME]` must match RFC 1035 segment specification, and the length
  /// of `[WAITER_NAME]` must be less than 64 bytes. After you create a Waiter
  /// resource, you cannot change the resource name.
  core.String name;

  /// [Required] The success condition. If this condition is met, `done` will be
  /// set to `true` and the `error` value will remain unset. The failure
  /// condition takes precedence over the success condition. If both conditions
  /// are met, a failure will be indicated.
  EndCondition success;

  /// [Required] Specifies the timeout of the waiter in seconds, beginning from
  /// the instant that `waiters().create` method is called. If this time elapses
  /// before the success or failure conditions are met, the waiter fails and
  /// sets the `error` code to `DEADLINE_EXCEEDED`.
  core.String timeout;

  Waiter();

  Waiter.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(_json['error']);
    }
    if (_json.containsKey('failure')) {
      failure = EndCondition.fromJson(_json['failure']);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('success')) {
      success = EndCondition.fromJson(_json['success']);
    }
    if (_json.containsKey('timeout')) {
      timeout = _json['timeout'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (failure != null) {
      _json['failure'] = failure.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (success != null) {
      _json['success'] = success.toJson();
    }
    if (timeout != null) {
      _json['timeout'] = timeout;
    }
    return _json;
  }
}

/// Request for the `WatchVariable()` method.
class WatchVariableRequest {
  /// If specified, checks the current timestamp of the variable and if the
  /// current timestamp is newer than `newerThan` timestamp, the method returns
  /// immediately. If not specified or the variable has an older timestamp, the
  /// watcher waits for a the value to change before returning.
  core.String newerThan;

  WatchVariableRequest();

  WatchVariableRequest.fromJson(core.Map _json) {
    if (_json.containsKey('newerThan')) {
      newerThan = _json['newerThan'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (newerThan != null) {
      _json['newerThan'] = newerThan;
    }
    return _json;
  }
}
