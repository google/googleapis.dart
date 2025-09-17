// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Cloud Runtime Configuration API - v1beta1
///
/// The Runtime Configurator allows you to dynamically configure and expose
/// variables through Google Cloud Platform. In addition, you can also set
/// Watchers and Waiters that will watch for changes to your data and return
/// based on certain conditions.
///
/// For more information, see
/// <https://cloud.google.com/deployment-manager/runtime-configurator/>
///
/// Create an instance of [CloudRuntimeConfigApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsConfigsResource]
///     - [ProjectsConfigsOperationsResource]
///     - [ProjectsConfigsVariablesResource]
///     - [ProjectsConfigsWaitersResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Runtime Configurator allows you to dynamically configure and expose
/// variables through Google Cloud Platform.
///
/// In addition, you can also set Watchers and Waiters that will watch for
/// changes to your data and return based on certain conditions.
class CloudRuntimeConfigApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Manage your Google Cloud Platform services' runtime configuration
  static const cloudruntimeconfigScope =
      'https://www.googleapis.com/auth/cloudruntimeconfig';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudRuntimeConfigApi(
    http.Client client, {
    core.String rootUrl = 'https://runtimeconfig.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsConfigsResource get configs => ProjectsConfigsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsConfigsOperationsResource get operations =>
      ProjectsConfigsOperationsResource(_requester);
  ProjectsConfigsVariablesResource get variables =>
      ProjectsConfigsVariablesResource(_requester);
  ProjectsConfigsWaitersResource get waiters =>
      ProjectsConfigsWaitersResource(_requester);

  ProjectsConfigsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new RuntimeConfig resource.
  ///
  /// The configuration name must be unique within project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The
  /// [project ID](https://support.google.com/cloud/answer/6158840?hl=en&ref_topic=6158848)
  /// for this request, in the format `projects/[PROJECT_ID]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/configs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RuntimeConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a RuntimeConfig resource.
  ///
  /// Request parameters:
  ///
  /// [name] - The RuntimeConfig resource to delete, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a RuntimeConfig resource.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the RuntimeConfig resource to retrieve, in the
  /// format: `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RuntimeConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
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
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the RuntimeConfig resources within project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The
  /// [project ID](https://support.google.com/cloud/answer/6158840?hl=en&ref_topic=6158848)
  /// for this request, in the format `projects/[PROJECT_ID]`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/configs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a RuntimeConfig resource.
  ///
  /// The configuration must exist beforehand.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the RuntimeConfig resource to update, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return RuntimeConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsConfigsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsConfigsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/configs/\[^/\]+/operations/.*$`.
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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/configs/\[^/\]+/operations/.*$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsConfigsVariablesResource {
  final commons.ApiRequester _requester;

  ProjectsConfigsVariablesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a variable within the given configuration.
  ///
  /// You cannot create a variable with a name that is a prefix of an existing
  /// variable name, or a name that has an existing variable name as a prefix.
  /// To learn more about creating a variable, read the \[Setting and Getting
  /// Data\](/deployment-manager/runtime-configurator/set-and-get-variables)
  /// documentation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The path to the RutimeConfig resource that this variable should
  /// belong to. The configuration must exist beforehand; the path must be in
  /// the format: `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+$`.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/variables';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Variable.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a variable or multiple variables.
  ///
  /// If you specify a variable name, then that variable is deleted. If you
  /// specify a prefix and `recursive` is true, then all variables with that
  /// prefix are deleted. You must set a `recursive` to true if you delete
  /// variables by prefix.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the variable to delete, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]/variables/[VARIABLE_NAME]`
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+/variables/.*$`.
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
    core.bool? recursive,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (recursive != null) 'recursive': ['${recursive}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a single variable.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the variable to return, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]/variables/[VARIBLE_NAME]`
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+/variables/.*$`.
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
  async.Future<Variable> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Variable.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists variables within given a configuration, matching any provided
  /// filters.
  ///
  /// This only lists variable names, not the values, unless `return_values` is
  /// true, in which case only variables that user has IAM permission to
  /// GetVariable will be returned.
  ///
  /// Request parameters:
  ///
  /// [parent] - The path to the RuntimeConfig resource for which you want to
  /// list variables. The configuration must exist beforehand; the path must be
  /// in the format: `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+$`.
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
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? returnValues,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnValues != null) 'returnValues': ['${returnValues}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/variables';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVariablesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+/variables/.*$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing variable with a new value.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the variable to update, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]/variables/[VARIABLE_NAME]`
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+/variables/.*$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Variable.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Watches a specific variable and waits for a change in the variable's
  /// value.
  ///
  /// When there is a change, this method returns the new value or times out. If
  /// a variable is deleted while being watched, the `variableState` state is
  /// set to `DELETED` and the method returns the last known variable `value`.
  /// If you set the deadline for watching to a larger value than internal
  /// timeout (60 seconds), the current variable value is returned and the
  /// `variableState` will be `VARIABLE_STATE_UNSPECIFIED`. To learn more about
  /// creating a watcher, read the \[Watching a Variable for
  /// Changes\](/deployment-manager/runtime-configurator/watching-a-variable)
  /// documentation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the variable to watch, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+/variables/.*$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + ':watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Variable.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsConfigsWaitersResource {
  final commons.ApiRequester _requester;

  ProjectsConfigsWaitersResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a Waiter resource.
  ///
  /// This operation returns a long-running Operation resource which can be
  /// polled for completion. However, a waiter with the given name will exist
  /// (and can be retrieved) prior to the operation completing. If the operation
  /// fails, the failed Waiter resource will still exist and must be deleted
  /// prior to subsequent creation attempts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The path to the configuration that will own the waiter. The
  /// configuration must exist beforehand; the path must be in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`.
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+$`.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/waiters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the waiter with the specified name.
  ///
  /// Request parameters:
  ///
  /// [name] - The Waiter resource to delete, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]/waiters/[WAITER_NAME]`
  /// Value must have pattern
  /// `^projects/\[^/\]+/configs/\[^/\]+/waiters/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a single waiter.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully-qualified name of the Waiter resource object to
  /// retrieve, in the format:
  /// `projects/[PROJECT_ID]/configs/[CONFIG_NAME]/waiters/[WAITER_NAME]`
  /// Value must have pattern
  /// `^projects/\[^/\]+/configs/\[^/\]+/waiters/\[^/\]+$`.
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
  async.Future<Waiter> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Waiter.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List waiters within the given configuration.
  ///
  /// Request parameters:
  ///
  /// [parent] - The path to the configuration for which you want to get a list
  /// of waiters. The configuration must exist beforehand; the path must be in
  /// the format: `projects/[PROJECT_ID]/configs/[CONFIG_NAME]`
  /// Value must have pattern `^projects/\[^/\]+/configs/\[^/\]+$`.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/waiters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWaitersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/configs/\[^/\]+/waiters/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  Binding({this.condition, this.members, this.role});

  Binding.fromJson(core.Map json_)
    : this(
        condition:
            json_.containsKey('condition')
                ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        members:
            (json_['members'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (condition != null) 'condition': condition!,
    if (members != null) 'members': members!,
    if (role != null) 'role': role!,
  };
}

/// A Cardinality condition for the Waiter resource.
///
/// A cardinality condition is met when the number of variables under a
/// specified path prefix reaches a predefined number. For example, if you set a
/// Cardinality condition where the `path` is set to `/foo` and the number of
/// paths is set to `2`, the following variables would meet the condition in a
/// RuntimeConfig resource: + `/foo/variable1 = "value1"` + `/foo/variable2 =
/// "value2"` + `/bar/variable3 = "value3"` It would not satisfy the same
/// condition with the `number` set to `3`, however, because there is only 2
/// paths that start with `/foo`. Cardinality conditions are recursive; all
/// subtrees under the specific path prefix are counted.
class Cardinality {
  /// The number variables under the `path` that must exist to meet this
  /// condition.
  ///
  /// Defaults to 1 if not specified.
  core.int? number;

  /// The root of the variable subtree to monitor.
  ///
  /// For example, `/foo`.
  core.String? path;

  Cardinality({this.number, this.path});

  Cardinality.fromJson(core.Map json_)
    : this(
        number: json_['number'] as core.int?,
        path: json_['path'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (number != null) 'number': number!,
    if (path != null) 'path': path!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The condition that a Waiter resource is waiting for.
class EndCondition {
  /// The cardinality of the `EndCondition`.
  Cardinality? cardinality;

  EndCondition({this.cardinality});

  EndCondition.fromJson(core.Map json_)
    : this(
        cardinality:
            json_.containsKey('cardinality')
                ? Cardinality.fromJson(
                  json_['cardinality'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cardinality != null) 'cardinality': cardinality!,
  };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
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
typedef Expr = $Expr;

/// `ListConfigs()` returns the following response.
///
/// The order of returned objects is arbitrary; that is, it is not ordered in
/// any particular way.
class ListConfigsResponse {
  /// A list of the configurations in the project.
  ///
  /// The order of returned objects is arbitrary; that is, it is not ordered in
  /// any particular way.
  core.List<RuntimeConfig>? configs;

  /// This token allows you to get the next page of results for list requests.
  ///
  /// If the number of results is larger than `pageSize`, use the
  /// `nextPageToken` as a value for the query parameter `pageToken` in the next
  /// list request. Subsequent list requests will have their own `nextPageToken`
  /// to continue paging through the results
  core.String? nextPageToken;

  ListConfigsResponse({this.configs, this.nextPageToken});

  ListConfigsResponse.fromJson(core.Map json_)
    : this(
        configs:
            (json_['configs'] as core.List?)
                ?.map(
                  (value) => RuntimeConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (configs != null) 'configs': configs!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for the `ListVariables()` method.
class ListVariablesResponse {
  /// This token allows you to get the next page of results for list requests.
  ///
  /// If the number of results is larger than `pageSize`, use the
  /// `nextPageToken` as a value for the query parameter `pageToken` in the next
  /// list request. Subsequent list requests will have their own `nextPageToken`
  /// to continue paging through the results
  core.String? nextPageToken;

  /// A list of variables and their values.
  ///
  /// The order of returned variable objects is arbitrary.
  core.List<Variable>? variables;

  ListVariablesResponse({this.nextPageToken, this.variables});

  ListVariablesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        variables:
            (json_['variables'] as core.List?)
                ?.map(
                  (value) => Variable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (variables != null) 'variables': variables!,
  };
}

/// Response for the `ListWaiters()` method.
///
/// Order of returned waiter objects is arbitrary.
class ListWaitersResponse {
  /// This token allows you to get the next page of results for list requests.
  ///
  /// If the number of results is larger than `pageSize`, use the
  /// `nextPageToken` as a value for the query parameter `pageToken` in the next
  /// list request. Subsequent list requests will have their own `nextPageToken`
  /// to continue paging through the results
  core.String? nextPageToken;

  /// Found waiters in the project.
  core.List<Waiter>? waiters;

  ListWaitersResponse({this.nextPageToken, this.waiters});

  ListWaitersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        waiters:
            (json_['waiters'] as core.List?)
                ?.map(
                  (value) => Waiter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (waiters != null) 'waiters': waiters!,
  };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
                ? json_['response'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (done != null) 'done': done!,
    if (error != null) 'error': error!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (response != null) 'response': response!,
  };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({this.bindings, this.etag, this.version});

  Policy.fromJson(core.Map json_)
    : this(
        bindings:
            (json_['bindings'] as core.List?)
                ?.map(
                  (value) => Binding.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bindings != null) 'bindings': bindings!,
    if (etag != null) 'etag': etag!,
    if (version != null) 'version': version!,
  };
}

/// A RuntimeConfig resource is the primary resource in the Cloud RuntimeConfig
/// service.
///
/// A RuntimeConfig resource consists of metadata and a hierarchy of variables.
class RuntimeConfig {
  /// An optional description of the RuntimeConfig object.
  core.String? description;

  /// The resource name of a runtime config.
  ///
  /// The name must have the format:
  /// projects/\[PROJECT_ID\]/configs/\[CONFIG_NAME\] The `[PROJECT_ID]` must be
  /// a valid project ID, and `[CONFIG_NAME]` is an arbitrary name that matches
  /// the `[0-9A-Za-z](?:[_.A-Za-z0-9-]{0,62}[_.A-Za-z0-9])?` regular
  /// expression. The length of `[CONFIG_NAME]` must be less than 64 characters.
  /// You pick the RuntimeConfig resource name, but the server will validate
  /// that the name adheres to this format. After you create the resource, you
  /// cannot change the resource's name.
  core.String? name;

  RuntimeConfig({this.description, this.name});

  RuntimeConfig.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (name != null) 'name': name!,
  };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  SetIamPolicyRequest({this.policy});

  SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy:
            json_.containsKey('policy')
                ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policy != null) 'policy': policy!,
  };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Describes a single variable within a RuntimeConfig resource.
///
/// The name denotes the hierarchical variable name. For example,
/// `ports/serving_port` is a valid variable name. The variable value is an
/// opaque string and only leaf variables can have values (that is, variables
/// that do not have any child variables).
class Variable {
  /// The name of the variable resource, in the format:
  /// projects/\[PROJECT_ID\]/configs/\[CONFIG_NAME\]/variables/\[VARIABLE_NAME\]
  /// The `[PROJECT_ID]` must be a valid project ID, `[CONFIG_NAME]` must be a
  /// valid RuntimeConfig resource and `[VARIABLE_NAME]` follows Unix file
  /// system file path naming.
  ///
  /// The `[VARIABLE_NAME]` can contain ASCII letters, numbers, slashes and
  /// dashes. Slashes are used as path element separators and are not part of
  /// the `[VARIABLE_NAME]` itself, so `[VARIABLE_NAME]` must contain at least
  /// one non-slash character. Multiple slashes are coalesced into single slash
  /// character. Each path segment should match
  /// \[0-9A-Za-z\](?:\[_.A-Za-z0-9-\]{0,62}\[_.A-Za-z0-9\])? regular
  /// expression. The length of a `[VARIABLE_NAME]` must be less than 256
  /// characters. Once you create a variable, you cannot change the variable
  /// name.
  core.String? name;

  /// The current state of the variable.
  ///
  /// The variable state indicates the outcome of the `variables().watch` call
  /// and is visible through the `get` and `list` calls.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VARIABLE_STATE_UNSPECIFIED" : Default variable state.
  /// - "UPDATED" : The variable was updated, while `variables().watch` was
  /// executing.
  /// - "DELETED" : The variable was deleted, while `variables().watch` was
  /// executing.
  core.String? state;

  /// The string value of the variable.
  ///
  /// The length of the value must be less than 4096 bytes. Empty values are
  /// also accepted. For example, `text: "my text value"`. The string must be
  /// valid UTF-8.
  core.String? text;

  /// The time of the last variable update.
  ///
  /// Timestamp will be UTC timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  /// The binary value of the variable.
  ///
  /// The length of the value must be less than 4096 bytes. Empty values are
  /// also accepted. The value must be base64 encoded, and must comply with IETF
  /// RFC4648 (https://www.ietf.org/rfc/rfc4648.txt). Only one of `value` or
  /// `text` can be set.
  core.String? value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value!);

  set valueAsBytes(core.List<core.int> bytes_) {
    value = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  Variable({this.name, this.state, this.text, this.updateTime, this.value});

  Variable.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        text: json_['text'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (text != null) 'text': text!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (value != null) 'value': value!,
  };
}

/// A Waiter resource waits for some end condition within a RuntimeConfig
/// resource to be met before it returns.
///
/// For example, assume you have a distributed system where each node writes to
/// a Variable resource indicating the node's readiness as part of the startup
/// process. You then configure a Waiter resource with the success condition set
/// to wait until some number of nodes have checked in. Afterwards, your
/// application runs some arbitrary code after the condition has been met and
/// the waiter returns successfully. Once created, a Waiter resource is
/// immutable. To learn more about using waiters, read the \[Creating a
/// Waiter\](/deployment-manager/runtime-configurator/creating-a-waiter)
/// documentation.
class Waiter {
  /// The instant at which this Waiter resource was created.
  ///
  /// Adding the value of `timeout` to this instant yields the timeout deadline
  /// for the waiter.
  ///
  /// Output only.
  core.String? createTime;

  /// If the value is `false`, it means the waiter is still waiting for one of
  /// its conditions to be met.
  ///
  /// If true, the waiter has finished. If the waiter finished due to a timeout
  /// or failure, `error` will be set.
  ///
  /// Output only.
  core.bool? done;

  /// If the waiter ended due to a failure or timeout, this value will be set.
  ///
  /// Output only.
  Status? error;

  /// The failure condition of this waiter.
  ///
  /// If this condition is met, `done` will be set to `true` and the `error`
  /// code will be set to `ABORTED`. The failure condition takes precedence over
  /// the success condition. If both conditions are met, a failure will be
  /// indicated. This value is optional; if no failure condition is set, the
  /// only failure scenario will be a timeout.
  ///
  /// Optional.
  EndCondition? failure;

  /// The name of the Waiter resource, in the format:
  /// projects/\[PROJECT_ID\]/configs/\[CONFIG_NAME\]/waiters/\[WAITER_NAME\]
  /// The `[PROJECT_ID]` must be a valid Google Cloud project ID, the
  /// `[CONFIG_NAME]` must be a valid RuntimeConfig resource, the
  /// `[WAITER_NAME]` must match RFC 1035 segment specification, and the length
  /// of `[WAITER_NAME]` must be less than 64 bytes.
  ///
  /// After you create a Waiter resource, you cannot change the resource name.
  core.String? name;

  /// The success condition.
  ///
  /// If this condition is met, `done` will be set to `true` and the `error`
  /// value will remain unset. The failure condition takes precedence over the
  /// success condition. If both conditions are met, a failure will be
  /// indicated.
  ///
  /// Required.
  EndCondition? success;

  /// Specifies the timeout of the waiter in seconds, beginning from the instant
  /// that `waiters().create` method is called.
  ///
  /// If this time elapses before the success or failure conditions are met, the
  /// waiter fails and sets the `error` code to `DEADLINE_EXCEEDED`.
  ///
  /// Required.
  core.String? timeout;

  Waiter({
    this.createTime,
    this.done,
    this.error,
    this.failure,
    this.name,
    this.success,
    this.timeout,
  });

  Waiter.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        failure:
            json_.containsKey('failure')
                ? EndCondition.fromJson(
                  json_['failure'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        success:
            json_.containsKey('success')
                ? EndCondition.fromJson(
                  json_['success'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        timeout: json_['timeout'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (done != null) 'done': done!,
    if (error != null) 'error': error!,
    if (failure != null) 'failure': failure!,
    if (name != null) 'name': name!,
    if (success != null) 'success': success!,
    if (timeout != null) 'timeout': timeout!,
  };
}

/// Request for the `WatchVariable()` method.
class WatchVariableRequest {
  /// If specified, checks the current timestamp of the variable and if the
  /// current timestamp is newer than `newerThan` timestamp, the method returns
  /// immediately.
  ///
  /// If not specified or the variable has an older timestamp, the watcher waits
  /// for a the value to change before returning.
  core.String? newerThan;

  WatchVariableRequest({this.newerThan});

  WatchVariableRequest.fromJson(core.Map json_)
    : this(newerThan: json_['newerThan'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (newerThan != null) 'newerThan': newerThan!,
  };
}
