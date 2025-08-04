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

/// Secure Source Manager API - v1
///
/// Regionally deployed, single-tenant managed source code repository hosted on
/// Google Cloud.
///
/// For more information, see <https://cloud.google.com/secure-source-manager>
///
/// Create an instance of [SecureSourceManagerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsInstancesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRepositoriesResource]
///       - [ProjectsLocationsRepositoriesBranchRulesResource]
///       - [ProjectsLocationsRepositoriesHooksResource]
///       - [ProjectsLocationsRepositoriesIssuesResource]
///         - [ProjectsLocationsRepositoriesIssuesIssueCommentsResource]
///       - [ProjectsLocationsRepositoriesPullRequestsResource]
/// - [ProjectsLocationsRepositoriesPullRequestsPullRequestCommentsResource]
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

/// Regionally deployed, single-tenant managed source code repository hosted on
/// Google Cloud.
class SecureSourceManagerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  SecureSourceManagerApi(http.Client client,
      {core.String rootUrl = 'https://securesourcemanager.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResource get instances =>
      ProjectsLocationsInstancesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsRepositoriesResource get repositories =>
      ProjectsLocationsRepositoriesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
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
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new instance in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [instanceId] - Required. ID of the instance to be created.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
    core.String? instanceId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (instanceId != null) 'instanceId': [instanceId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Instance.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Instances in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListInstancesRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter for filtering results.
  ///
  /// [orderBy] - Hint for how to order the results.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
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
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInstancesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesBranchRulesResource get branchRules =>
      ProjectsLocationsRepositoriesBranchRulesResource(_requester);
  ProjectsLocationsRepositoriesHooksResource get hooks =>
      ProjectsLocationsRepositoriesHooksResource(_requester);
  ProjectsLocationsRepositoriesIssuesResource get issues =>
      ProjectsLocationsRepositoriesIssuesResource(_requester);
  ProjectsLocationsRepositoriesPullRequestsResource get pullRequests =>
      ProjectsLocationsRepositoriesPullRequestsResource(_requester);

  ProjectsLocationsRepositoriesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new repository in a given project and location.
  ///
  /// The Repository.Instance field is required in the request body for requests
  /// using the securesourcemanager.googleapis.com endpoint.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project in which to create the repository. Values
  /// are of the form `projects/{project_number}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [repositoryId] - Required. The ID to use for the repository, which will
  /// become the final component of the repository's resource name. This value
  /// should be 4-63 characters, and valid characters are /a-z-/.
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
    Repository request,
    core.String parent, {
    core.String? repositoryId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (repositoryId != null) 'repositoryId': [repositoryId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/repositories';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Repository.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the repository to delete. The format is
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the repository is not
  /// found, the request will succeed but no action will be taken on the server.
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
    core.bool? allowMissing,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetches a blob from a repository.
  ///
  /// Request parameters:
  ///
  /// [repository] - Required. The format is
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}`.
  /// Specifies the repository containing the blob.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [sha] - Required. The SHA-1 hash of the blob to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchBlobResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchBlobResponse> fetchBlob(
    core.String repository, {
    core.String? sha,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (sha != null) 'sha': [sha],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$repository') + ':fetchBlob';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchBlobResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetches a tree from a repository.
  ///
  /// Request parameters:
  ///
  /// [repository] - Required. The format is
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}`.
  /// Specifies the repository to fetch the tree from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, at most 10,000 items will be returned.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [recursive] - Optional. If true, include all subfolders and their files in
  /// the response. If false, only the immediate children are returned.
  ///
  /// [ref] - Optional. `ref` can be a SHA-1 hash, a branch name, or a tag.
  /// Specifies which tree to fetch. If not specified, the default branch will
  /// be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchTreeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchTreeResponse> fetchTree(
    core.String repository, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? recursive,
    core.String? ref,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (recursive != null) 'recursive': ['${recursive}'],
      if (ref != null) 'ref': [ref],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$repository') + ':fetchTree';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchTreeResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets metadata of a repository.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the repository to retrieve. The format is
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Repository].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Repository> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Repository.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get IAM policy for a repository.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Repositories in a given project and location.
  ///
  /// The instance field is required in the query parameter for requests using
  /// the securesourcemanager.googleapis.com endpoint.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListRepositoriesRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter results.
  ///
  /// [instance] - Optional. The name of the instance in which the repository is
  /// hosted, formatted as
  /// `projects/{project_number}/locations/{location_id}/instances/{instance_id}`.
  /// When listing repositories via securesourcemanager.googleapis.com, this
  /// field is required. When listing repositories via *.sourcemanager.dev, this
  /// field is ignored.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRepositoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRepositoriesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? instance,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (instance != null) 'instance': [instance],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/repositories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRepositoriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the metadata of a repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. A unique identifier for a repository. The name should
  /// be of the format:
  /// `projects/{project}/locations/{location_id}/repositories/{repository_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the repository resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. False by default. If set to true, the request
  /// is validated and the user is provided with an expected result, but no
  /// actual change is made.
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
    Repository request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Set IAM policy on a repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Test IAM permissions on a repository.
  ///
  /// IAM permission checks are not required on this method.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesBranchRulesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesBranchRulesResource(commons.ApiRequester client)
      : _requester = client;

  /// CreateBranchRule creates a branch rule in a given repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [branchRuleId] - null
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
    BranchRule request,
    core.String parent, {
    core.String? branchRuleId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (branchRuleId != null) 'branchRuleId': [branchRuleId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/branchRules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// DeleteBranchRule deletes a branch rule.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/branchRules/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the branch rule is not
  /// found, the request will succeed but no action will be taken on the server.
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
    core.bool? allowMissing,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// GetBranchRule gets a branch rule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the repository to retrieve. The format is
  /// `projects/{project}/locations/{location}/repositories/{repository}/branchRules/{branch_rule}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/branchRules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BranchRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BranchRule> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BranchRule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// ListBranchRules lists branch rules in a given repository.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [pageSize] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBranchRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBranchRulesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/branchRules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBranchRulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// UpdateBranchRule updates a branch rule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. A unique identifier for a BranchRule. The name should
  /// be of the format:
  /// `projects/{project}/locations/{location}/repositories/{repository}/branchRules/{branch_rule}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/branchRules/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the branchRule resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. The special value "*"
  /// means full replacement.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not actually post it. (https://google.aip.dev/163, for
  /// declarative friendly)
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
    BranchRule request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesHooksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesHooksResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new hook in a given repository.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to create the hook. Values
  /// are of the form
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [hookId] - Required. The ID to use for the hook, which will become the
  /// final component of the hook's resource name. This value restricts to
  /// lower-case letters, numbers, and hyphen, with the first character a
  /// letter, the last a letter or a number, and a 63 character maximum.
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
    Hook request,
    core.String parent, {
    core.String? hookId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (hookId != null) 'hookId': [hookId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/hooks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Hook.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the hook to delete. The format is
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/hooks/{hook_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/hooks/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets metadata of a hook.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the hook to retrieve. The format is
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/hooks/{hook_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/hooks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hook].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hook> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Hook.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists hooks in a given repository.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListHooksRequest.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHooksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHooksResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/hooks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListHooksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the metadata of a hook.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. A unique identifier for a Hook. The name should be of
  /// the format:
  /// `projects/{project}/locations/{location_id}/repositories/{repository_id}/hooks/{hook_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/hooks/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the hook resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. The special value "*"
  /// means full replacement.
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
    Hook request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesIssuesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesIssuesIssueCommentsResource get issueComments =>
      ProjectsLocationsRepositoriesIssuesIssueCommentsResource(_requester);

  ProjectsLocationsRepositoriesIssuesResource(commons.ApiRequester client)
      : _requester = client;

  /// Closes an issue.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the issue to close. The format is
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/issues/{issue_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/issues/\[^/\]+$`.
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
  async.Future<Operation> close(
    CloseIssueRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':close';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an issue.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to create the issue. Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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
    Issue request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/issues';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an issue.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the issue to delete. The format is
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/issues/{issue_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/issues/\[^/\]+$`.
  ///
  /// [etag] - Optional. The current etag of the issue. If the etag is provided
  /// and does not match the current etag of the issue, deletion will be blocked
  /// and an ABORTED error will be returned.
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
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an issue.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the issue to retrieve. The format is
  /// `projects/{project}/locations/{location}/repositories/{repository}/issues/{issue_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/issues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Issue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Issue> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Issue.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists issues in a repository.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to list issues. Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [filter] - Optional. Used to filter the resulting issues list.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListIssuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListIssuesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/issues';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListIssuesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Opens an issue.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the issue to open. The format is
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/issues/{issue_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/issues/\[^/\]+$`.
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
  async.Future<Operation> open(
    OpenIssueRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':open';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a issue.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Unique identifier for an issue. The issue id is
  /// generated by the server. Format:
  /// `projects/{project}/locations/{location}/repositories/{repository}/issues/{issue_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/issues/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the issue resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. The special value "*"
  /// means full replacement.
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
    Issue request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesIssuesIssueCommentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesIssuesIssueCommentsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates an issue comment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The issue in which to create the issue comment.
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/issues/{issue_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/issues/\[^/\]+$`.
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
    IssueComment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/issueComments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an issue comment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the issue comment to delete. The format is
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/issues/{issue_id}/issueComments/{comment_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/issues/\[^/\]+/issueComments/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an issue comment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the issue comment to retrieve. The format is
  /// `projects/{project}/locations/{location}/repositories/{repository}/issues/{issue_id}/issueComments/{comment_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/issues/\[^/\]+/issueComments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IssueComment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IssueComment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return IssueComment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists comments in an issue.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The issue in which to list the comments. Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/issues/{issue_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/issues/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListIssueCommentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListIssueCommentsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/issueComments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListIssueCommentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an issue comment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Unique identifier for an issue comment. The comment
  /// id is generated by the server. Format:
  /// `projects/{project}/locations/{location}/repositories/{repository}/issues/{issue}/issueComments/{comment_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/issues/\[^/\]+/issueComments/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the issue comment resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. The special
  /// value "*" means full replacement.
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
    IssueComment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesPullRequestsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesPullRequestsPullRequestCommentsResource
      get pullRequestComments =>
          ProjectsLocationsRepositoriesPullRequestsPullRequestCommentsResource(
              _requester);

  ProjectsLocationsRepositoriesPullRequestsResource(commons.ApiRequester client)
      : _requester = client;

  /// Closes a pull request without merging.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The pull request to close. Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+$`.
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
  async.Future<Operation> close(
    ClosePullRequestRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':close';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a pull request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository that the pull request is created from.
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
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
    PullRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/pullRequests';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a pull request.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the pull request to retrieve. The format is
  /// `projects/{project}/locations/{location}/repositories/{repository}/pullRequests/{pull_request}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PullRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PullRequest> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PullRequest.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists pull requests in a repository.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The repository in which to list pull requests.
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPullRequestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPullRequestsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/pullRequests';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPullRequestsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists a pull request's file diffs.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The pull request to list file diffs for. Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPullRequestFileDiffsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPullRequestFileDiffsResponse> listFileDiffs(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':listFileDiffs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPullRequestFileDiffsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Merges a pull request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The pull request to merge. Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+$`.
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
  async.Future<Operation> merge(
    MergePullRequestRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':merge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Opens a pull request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The pull request to open. Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+$`.
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
  async.Future<Operation> open(
    OpenPullRequestRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':open';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a pull request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. A unique identifier for a PullRequest. The number
  /// appended at the end is generated by the server. Format:
  /// `projects/{project}/locations/{location}/repositories/{repository}/pullRequests/{pull_request_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the pull request resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. The special
  /// value "*" means full replacement.
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
    PullRequest request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRepositoriesPullRequestsPullRequestCommentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRepositoriesPullRequestsPullRequestCommentsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Batch creates pull request comments.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The pull request in which to create the pull request
  /// comments. Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+$`.
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
  async.Future<Operation> batchCreate(
    BatchCreatePullRequestCommentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/pullRequestComments:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a pull request comment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The pull request in which to create the pull request
  /// comment. Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+$`.
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
    PullRequestComment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/pullRequestComments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a pull request comment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the pull request comment to delete. The format
  /// is
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}/pullRequestComments/{comment_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+/pullRequestComments/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a pull request comment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the pull request comment to retrieve. The
  /// format is
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}/pullRequestComments/{comment_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+/pullRequestComments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PullRequestComment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PullRequestComment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PullRequestComment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists pull request comments.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The pull request in which to list pull request
  /// comments. Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. If unspecified, at most 100
  /// pull request comments will be returned. The maximum value is 100; values
  /// above 100 will be coerced to 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPullRequestCommentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPullRequestCommentsResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/pullRequestComments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPullRequestCommentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a pull request comment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Unique identifier for the pull request comment. The
  /// comment id is generated by the server. Format:
  /// `projects/{project}/locations/{location}/repositories/{repository}/pullRequests/{pull_request}/pullRequestComments/{comment_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+/pullRequestComments/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the pull request comment resource by the update. Updatable
  /// fields are `body`.
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
    PullRequestComment request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resolves pull request comments.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The pull request in which to resolve the pull request
  /// comments. Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+$`.
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
  async.Future<Operation> resolve(
    ResolvePullRequestCommentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/pullRequestComments:resolve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Unresolves pull request comment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The pull request in which to resolve the pull request
  /// comments. Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/repositories/\[^/\]+/pullRequests/\[^/\]+$`.
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
  async.Future<Operation> unresolve(
    UnresolvePullRequestCommentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/pullRequestComments:unresolve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: (json_['auditLogConfigs'] as core.List?)
              ?.map((value) => AuditLogConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          service: json_['service'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

/// The request to batch create pull request comments.
class BatchCreatePullRequestCommentsRequest {
  /// The request message specifying the resources to create.
  ///
  /// There should be exactly one CreatePullRequestCommentRequest with
  /// CommentDetail being REVIEW in the list, and no more than 100
  /// CreatePullRequestCommentRequests with CommentDetail being CODE in the list
  ///
  /// Required.
  core.List<CreatePullRequestCommentRequest>? requests;

  BatchCreatePullRequestCommentsRequest({
    this.requests,
  });

  BatchCreatePullRequestCommentsRequest.fromJson(core.Map json_)
      : this(
          requests: (json_['requests'] as core.List?)
              ?.map((value) => CreatePullRequestCommentRequest.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
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

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: (json_['members'] as core.List?)
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

/// Branch represents a branch involved in a pull request.
class Branch {
  /// Name of the branch.
  ///
  /// Required.
  core.String? ref;

  /// The commit at the tip of the branch.
  ///
  /// Output only.
  core.String? sha;

  Branch({
    this.ref,
    this.sha,
  });

  Branch.fromJson(core.Map json_)
      : this(
          ref: json_['ref'] as core.String?,
          sha: json_['sha'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ref != null) 'ref': ref!,
        if (sha != null) 'sha': sha!,
      };
}

/// Metadata of a BranchRule.
///
/// BranchRule is the protection rule to enforce pre-defined rules on designated
/// branches within a repository.
class BranchRule {
  /// Determines if allow stale reviews or approvals before merging to the
  /// branch.
  ///
  /// Optional.
  core.bool? allowStaleReviews;

  /// User annotations.
  ///
  /// These attributes can only be set and used by the user. See
  /// https://google.aip.dev/128#annotations for more details such as format and
  /// size limitations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Create timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Determines if the branch rule is disabled or not.
  ///
  /// Optional.
  core.bool? disabled;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// The pattern of the branch that can match to this BranchRule.
  ///
  /// Specified as regex. .* for all branches. Examples: main, (main|release.*).
  /// Current MVP phase only support `.*` for wildcard.
  ///
  /// Optional.
  core.String? includePattern;

  /// The minimum number of approvals required for the branch rule to be
  /// matched.
  ///
  /// Optional.
  core.int? minimumApprovalsCount;

  /// The minimum number of reviews required for the branch rule to be matched.
  ///
  /// Optional.
  core.int? minimumReviewsCount;

  /// A unique identifier for a BranchRule.
  ///
  /// The name should be of the format:
  /// `projects/{project}/locations/{location}/repositories/{repository}/branchRules/{branch_rule}`
  ///
  /// Optional.
  core.String? name;

  /// Determines if require comments resolved before merging to the branch.
  ///
  /// Optional.
  core.bool? requireCommentsResolved;

  /// Determines if require linear history before merging to the branch.
  ///
  /// Optional.
  core.bool? requireLinearHistory;

  /// Determines if the branch rule requires a pull request or not.
  ///
  /// Optional.
  core.bool? requirePullRequest;

  /// List of required status checks before merging to the branch.
  ///
  /// Optional.
  core.List<Check>? requiredStatusChecks;

  /// Unique identifier of the repository.
  ///
  /// Output only.
  core.String? uid;

  /// Update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  BranchRule({
    this.allowStaleReviews,
    this.annotations,
    this.createTime,
    this.disabled,
    this.etag,
    this.includePattern,
    this.minimumApprovalsCount,
    this.minimumReviewsCount,
    this.name,
    this.requireCommentsResolved,
    this.requireLinearHistory,
    this.requirePullRequest,
    this.requiredStatusChecks,
    this.uid,
    this.updateTime,
  });

  BranchRule.fromJson(core.Map json_)
      : this(
          allowStaleReviews: json_['allowStaleReviews'] as core.bool?,
          annotations:
              (json_['annotations'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          createTime: json_['createTime'] as core.String?,
          disabled: json_['disabled'] as core.bool?,
          etag: json_['etag'] as core.String?,
          includePattern: json_['includePattern'] as core.String?,
          minimumApprovalsCount: json_['minimumApprovalsCount'] as core.int?,
          minimumReviewsCount: json_['minimumReviewsCount'] as core.int?,
          name: json_['name'] as core.String?,
          requireCommentsResolved:
              json_['requireCommentsResolved'] as core.bool?,
          requireLinearHistory: json_['requireLinearHistory'] as core.bool?,
          requirePullRequest: json_['requirePullRequest'] as core.bool?,
          requiredStatusChecks: (json_['requiredStatusChecks'] as core.List?)
              ?.map((value) =>
                  Check.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowStaleReviews != null) 'allowStaleReviews': allowStaleReviews!,
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (disabled != null) 'disabled': disabled!,
        if (etag != null) 'etag': etag!,
        if (includePattern != null) 'includePattern': includePattern!,
        if (minimumApprovalsCount != null)
          'minimumApprovalsCount': minimumApprovalsCount!,
        if (minimumReviewsCount != null)
          'minimumReviewsCount': minimumReviewsCount!,
        if (name != null) 'name': name!,
        if (requireCommentsResolved != null)
          'requireCommentsResolved': requireCommentsResolved!,
        if (requireLinearHistory != null)
          'requireLinearHistory': requireLinearHistory!,
        if (requirePullRequest != null)
          'requirePullRequest': requirePullRequest!,
        if (requiredStatusChecks != null)
          'requiredStatusChecks': requiredStatusChecks!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Check is a type for status check.
class Check {
  /// The context of the check.
  ///
  /// Required.
  core.String? context;

  Check({
    this.context,
  });

  Check.fromJson(core.Map json_)
      : this(
          context: json_['context'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
      };
}

/// The request to close an issue.
class CloseIssueRequest {
  /// The current etag of the issue.
  ///
  /// If the etag is provided and does not match the current etag of the issue,
  /// closing will be blocked and an ABORTED error will be returned.
  ///
  /// Optional.
  core.String? etag;

  CloseIssueRequest({
    this.etag,
  });

  CloseIssueRequest.fromJson(core.Map json_)
      : this(
          etag: json_['etag'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
      };
}

/// ClosePullRequestRequest is the request to close a pull request.
typedef ClosePullRequestRequest = $Empty;

/// The comment on a code line.
class Code {
  /// The comment body.
  ///
  /// Required.
  core.String? body;

  /// The effective commit sha this code comment is pointing to.
  ///
  /// Output only.
  core.String? effectiveCommitSha;

  /// The root comment of the conversation, derived from the reply field.
  ///
  /// Output only.
  core.String? effectiveRootComment;

  /// The position of the comment.
  ///
  /// Optional.
  Position? position;

  /// Input only.
  ///
  /// The PullRequestComment resource name that this comment is replying to.
  ///
  /// Optional.
  core.String? reply;

  /// Boolean indicator if the comment is resolved.
  ///
  /// Output only.
  core.bool? resolved;

  Code({
    this.body,
    this.effectiveCommitSha,
    this.effectiveRootComment,
    this.position,
    this.reply,
    this.resolved,
  });

  Code.fromJson(core.Map json_)
      : this(
          body: json_['body'] as core.String?,
          effectiveCommitSha: json_['effectiveCommitSha'] as core.String?,
          effectiveRootComment: json_['effectiveRootComment'] as core.String?,
          position: json_.containsKey('position')
              ? Position.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
          reply: json_['reply'] as core.String?,
          resolved: json_['resolved'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (effectiveCommitSha != null)
          'effectiveCommitSha': effectiveCommitSha!,
        if (effectiveRootComment != null)
          'effectiveRootComment': effectiveRootComment!,
        if (position != null) 'position': position!,
        if (reply != null) 'reply': reply!,
        if (resolved != null) 'resolved': resolved!,
      };
}

/// The general pull request comment.
class Comment {
  /// The comment body.
  ///
  /// Required.
  core.String? body;

  Comment({
    this.body,
  });

  Comment.fromJson(core.Map json_)
      : this(
          body: json_['body'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
      };
}

/// The request to create a pull request comment.
class CreatePullRequestCommentRequest {
  /// The pull request in which to create the pull request comment.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}`
  ///
  /// Required.
  core.String? parent;

  /// The pull request comment to create.
  ///
  /// Required.
  PullRequestComment? pullRequestComment;

  CreatePullRequestCommentRequest({
    this.parent,
    this.pullRequestComment,
  });

  CreatePullRequestCommentRequest.fromJson(core.Map json_)
      : this(
          parent: json_['parent'] as core.String?,
          pullRequestComment: json_.containsKey('pullRequestComment')
              ? PullRequestComment.fromJson(json_['pullRequestComment']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parent != null) 'parent': parent!,
        if (pullRequestComment != null)
          'pullRequestComment': pullRequestComment!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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

/// Response message containing the content of a blob.
class FetchBlobResponse {
  /// The content of the blob, encoded as base64.
  core.String? content;

  /// The SHA-1 hash of the blob.
  core.String? sha;

  FetchBlobResponse({
    this.content,
    this.sha,
  });

  FetchBlobResponse.fromJson(core.Map json_)
      : this(
          content: json_['content'] as core.String?,
          sha: json_['sha'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (sha != null) 'sha': sha!,
      };
}

/// Response message containing a list of TreeEntry objects.
class FetchTreeResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of TreeEntry objects.
  core.List<TreeEntry>? treeEntries;

  FetchTreeResponse({
    this.nextPageToken,
    this.treeEntries,
  });

  FetchTreeResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          treeEntries: (json_['treeEntries'] as core.List?)
              ?.map((value) => TreeEntry.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (treeEntries != null) 'treeEntries': treeEntries!,
      };
}

/// Metadata of a FileDiff.
///
/// FileDiff represents a single file diff in a pull request.
class FileDiff {
  /// The action taken on the file (eg.
  ///
  /// added, modified, deleted).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : Unspecified.
  /// - "ADDED" : The file was added.
  /// - "MODIFIED" : The file was modified.
  /// - "DELETED" : The file was deleted.
  core.String? action;

  /// The name of the file.
  ///
  /// Output only.
  core.String? name;

  /// The git patch containing the file changes.
  ///
  /// Output only.
  core.String? patch;

  /// The commit pointing to the file changes.
  ///
  /// Output only.
  core.String? sha;

  FileDiff({
    this.action,
    this.name,
    this.patch,
    this.sha,
  });

  FileDiff.fromJson(core.Map json_)
      : this(
          action: json_['action'] as core.String?,
          name: json_['name'] as core.String?,
          patch: json_['patch'] as core.String?,
          sha: json_['sha'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (name != null) 'name': name!,
        if (patch != null) 'patch': patch!,
        if (sha != null) 'sha': sha!,
      };
}

/// Metadata of a Secure Source Manager Hook.
class Hook {
  /// Create timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Determines if the hook disabled or not.
  ///
  /// Set to true to stop sending traffic.
  ///
  /// Optional.
  core.bool? disabled;

  /// The events that trigger hook on.
  ///
  /// Optional.
  core.List<core.String>? events;

  /// Identifier.
  ///
  /// A unique identifier for a Hook. The name should be of the format:
  /// `projects/{project}/locations/{location_id}/repositories/{repository_id}/hooks/{hook_id}`
  core.String? name;

  /// The trigger option for push events.
  ///
  /// Optional.
  PushOption? pushOption;

  /// The sensitive query string to be appended to the target URI.
  ///
  /// Optional.
  core.String? sensitiveQueryString;

  /// The target URI to which the payloads will be delivered.
  ///
  /// Required.
  core.String? targetUri;

  /// Unique identifier of the hook.
  ///
  /// Output only.
  core.String? uid;

  /// Update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  Hook({
    this.createTime,
    this.disabled,
    this.events,
    this.name,
    this.pushOption,
    this.sensitiveQueryString,
    this.targetUri,
    this.uid,
    this.updateTime,
  });

  Hook.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          disabled: json_['disabled'] as core.bool?,
          events: (json_['events'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          name: json_['name'] as core.String?,
          pushOption: json_.containsKey('pushOption')
              ? PushOption.fromJson(
                  json_['pushOption'] as core.Map<core.String, core.dynamic>)
              : null,
          sensitiveQueryString: json_['sensitiveQueryString'] as core.String?,
          targetUri: json_['targetUri'] as core.String?,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (disabled != null) 'disabled': disabled!,
        if (events != null) 'events': events!,
        if (name != null) 'name': name!,
        if (pushOption != null) 'pushOption': pushOption!,
        if (sensitiveQueryString != null)
          'sensitiveQueryString': sensitiveQueryString!,
        if (targetUri != null) 'targetUri': targetUri!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// HostConfig has different instance endpoints.
class HostConfig {
  /// API hostname.
  ///
  /// Output only.
  core.String? api;

  /// Git HTTP hostname.
  ///
  /// Output only.
  core.String? gitHttp;

  /// Git SSH hostname.
  ///
  /// Output only.
  core.String? gitSsh;

  /// HTML hostname.
  ///
  /// Output only.
  core.String? html;

  HostConfig({
    this.api,
    this.gitHttp,
    this.gitSsh,
    this.html,
  });

  HostConfig.fromJson(core.Map json_)
      : this(
          api: json_['api'] as core.String?,
          gitHttp: json_['gitHttp'] as core.String?,
          gitSsh: json_['gitSsh'] as core.String?,
          html: json_['html'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (api != null) 'api': api!,
        if (gitHttp != null) 'gitHttp': gitHttp!,
        if (gitSsh != null) 'gitSsh': gitSsh!,
        if (html != null) 'html': html!,
      };
}

/// Repository initialization configuration.
class InitialConfig {
  /// Default branch name of the repository.
  core.String? defaultBranch;

  /// List of gitignore template names user can choose from.
  ///
  /// Valid values: actionscript, ada, agda, android, anjuta, ansible,
  /// appcelerator-titanium, app-engine, archives, arch-linux-packages,
  /// atmel-studio, autotools, backup, bazaar, bazel, bitrix, bricx-cc, c,
  /// cake-php, calabash, cf-wheels, chef-cookbook, clojure, cloud9, c-make,
  /// code-igniter, code-kit, code-sniffer, common-lisp, composer, concrete5,
  /// coq, cordova, cpp, craft-cms, cuda, cvs, d, dart, dart-editor, delphi,
  /// diff, dm, dreamweaver, dropbox, drupal, drupal-7, eagle, eclipse,
  /// eiffel-studio, elisp, elixir, elm, emacs, ensime, epi-server, erlang,
  /// esp-idf, espresso, exercism, expression-engine, ext-js, fancy, finale,
  /// flex-builder, force-dot-com, fortran, fuel-php, gcov, git-book,
  /// gnome-shell-extension, go, godot, gpg, gradle, grails, gwt, haskell, hugo,
  /// iar-ewarm, idris, igor-pro, images, infor-cms, java, jboss, jboss-4,
  /// jboss-6, jdeveloper, jekyll, jenkins-home, jenv, jet-brains, jigsaw,
  /// joomla, julia, jupyter-notebooks, kate, kdevelop4, kentico, ki-cad,
  /// kohana, kotlin, lab-view, laravel, lazarus, leiningen, lemon-stand,
  /// libre-office, lilypond, linux, lithium, logtalk, lua, lyx, mac-os,
  /// magento, magento-1, magento-2, matlab, maven, mercurial, mercury, metals,
  /// meta-programming-system, meteor, microsoft-office, model-sim, momentics,
  /// mono-develop, nanoc, net-beans, nikola, nim, ninja, node, notepad-pp,
  /// nwjs, objective--c, ocaml, octave, opa, open-cart, openssl, oracle-forms,
  /// otto, packer, patch, perl, perl6, phalcon, phoenix, pimcore,
  /// play-framework, plone, prestashop, processing, psoc-creator, puppet,
  /// pure-script, putty, python, qooxdoo, qt, r, racket, rails, raku, red,
  /// redcar, redis, rhodes-rhomobile, ros, ruby, rust, sam, sass, sbt, scala,
  /// scheme, scons, scrivener, sdcc, seam-gen, sketch-up, slick-edit,
  /// smalltalk, snap, splunk, stata, stella, sublime-text, sugar-crm, svn,
  /// swift, symfony, symphony-cms, synopsys-vcs, tags, terraform, tex,
  /// text-mate, textpattern, think-php, tortoise-git, turbo-gears-2, typo3,
  /// umbraco, unity, unreal-engine, vagrant, vim, virtual-env, virtuoso,
  /// visual-studio, visual-studio-code, vue, vvvv, waf, web-methods, windows,
  /// word-press, xcode, xilinx, xilinx-ise, xojo, yeoman, yii, zend-framework,
  /// zephir.
  core.List<core.String>? gitignores;

  /// License template name user can choose from.
  ///
  /// Valid values: license-0bsd, license-389-exception, aal, abstyles,
  /// adobe-2006, adobe-glyph, adsl, afl-1-1, afl-1-2, afl-2-0, afl-2-1,
  /// afl-3-0, afmparse, agpl-1-0, agpl-1-0-only, agpl-1-0-or-later,
  /// agpl-3-0-only, agpl-3-0-or-later, aladdin, amdplpa, aml, ampas, antlr-pd,
  /// antlr-pd-fallback, apache-1-0, apache-1-1, apache-2-0, apafml, apl-1-0,
  /// apsl-1-0, apsl-1-1, apsl-1-2, apsl-2-0, artistic-1-0, artistic-1-0-cl8,
  /// artistic-1-0-perl, artistic-2-0, autoconf-exception-2-0,
  /// autoconf-exception-3-0, bahyph, barr, beerware, bison-exception-2-2,
  /// bittorrent-1-0, bittorrent-1-1, blessing, blueoak-1-0-0,
  /// bootloader-exception, borceux, bsd-1-clause, bsd-2-clause,
  /// bsd-2-clause-freebsd, bsd-2-clause-netbsd, bsd-2-clause-patent,
  /// bsd-2-clause-views, bsd-3-clause, bsd-3-clause-attribution,
  /// bsd-3-clause-clear, bsd-3-clause-lbnl, bsd-3-clause-modification,
  /// bsd-3-clause-no-nuclear-license, bsd-3-clause-no-nuclear-license-2014,
  /// bsd-3-clause-no-nuclear-warranty, bsd-3-clause-open-mpi, bsd-4-clause,
  /// bsd-4-clause-shortened, bsd-4-clause-uc, bsd-protection, bsd-source-code,
  /// bsl-1-0, busl-1-1, cal-1-0, cal-1-0-combined-work-exception, caldera,
  /// catosl-1-1, cc0-1-0, cc-by-1-0, cc-by-2-0, cc-by-3-0, cc-by-3-0-at,
  /// cc-by-3-0-us, cc-by-4-0, cc-by-nc-1-0, cc-by-nc-2-0, cc-by-nc-3-0,
  /// cc-by-nc-4-0, cc-by-nc-nd-1-0, cc-by-nc-nd-2-0, cc-by-nc-nd-3-0,
  /// cc-by-nc-nd-3-0-igo, cc-by-nc-nd-4-0, cc-by-nc-sa-1-0, cc-by-nc-sa-2-0,
  /// cc-by-nc-sa-3-0, cc-by-nc-sa-4-0, cc-by-nd-1-0, cc-by-nd-2-0,
  /// cc-by-nd-3-0, cc-by-nd-4-0, cc-by-sa-1-0, cc-by-sa-2-0, cc-by-sa-2-0-uk,
  /// cc-by-sa-2-1-jp, cc-by-sa-3-0, cc-by-sa-3-0-at, cc-by-sa-4-0, cc-pddc,
  /// cddl-1-0, cddl-1-1, cdla-permissive-1-0, cdla-sharing-1-0, cecill-1-0,
  /// cecill-1-1, cecill-2-0, cecill-2-1, cecill-b, cecill-c, cern-ohl-1-1,
  /// cern-ohl-1-2, cern-ohl-p-2-0, cern-ohl-s-2-0, cern-ohl-w-2-0, clartistic,
  /// classpath-exception-2-0, clisp-exception-2-0, cnri-jython, cnri-python,
  /// cnri-python-gpl-compatible, condor-1-1, copyleft-next-0-3-0,
  /// copyleft-next-0-3-1, cpal-1-0, cpl-1-0, cpol-1-02, crossword,
  /// crystal-stacker, cua-opl-1-0, cube, c-uda-1-0, curl, d-fsl-1-0, diffmark,
  /// digirule-foss-exception, doc, dotseqn, drl-1-0, dsdp, dvipdfm, ecl-1-0,
  /// ecl-2-0, ecos-exception-2-0, efl-1-0, efl-2-0, egenix, entessa, epics,
  /// epl-1-0, epl-2-0, erlpl-1-1, etalab-2-0, eu-datagrid, eupl-1-0, eupl-1-1,
  /// eupl-1-2, eurosym, fair, fawkes-runtime-exception, fltk-exception,
  /// font-exception-2-0, frameworx-1-0, freebsd-doc, freeimage,
  /// freertos-exception-2-0, fsfap, fsful, fsfullr, ftl, gcc-exception-2-0,
  /// gcc-exception-3-1, gd, gfdl-1-1-invariants-only,
  /// gfdl-1-1-invariants-or-later, gfdl-1-1-no-invariants-only,
  /// gfdl-1-1-no-invariants-or-later, gfdl-1-1-only, gfdl-1-1-or-later,
  /// gfdl-1-2-invariants-only, gfdl-1-2-invariants-or-later,
  /// gfdl-1-2-no-invariants-only, gfdl-1-2-no-invariants-or-later,
  /// gfdl-1-2-only, gfdl-1-2-or-later, gfdl-1-3-invariants-only,
  /// gfdl-1-3-invariants-or-later, gfdl-1-3-no-invariants-only,
  /// gfdl-1-3-no-invariants-or-later, gfdl-1-3-only, gfdl-1-3-or-later,
  /// giftware, gl2ps, glide, glulxe, glwtpl, gnu-javamail-exception, gnuplot,
  /// gpl-1-0-only, gpl-1-0-or-later, gpl-2-0-only, gpl-2-0-or-later,
  /// gpl-3-0-linking-exception, gpl-3-0-linking-source-exception, gpl-3-0-only,
  /// gpl-3-0-or-later, gpl-cc-1-0, gsoap-1-3b, haskell-report, hippocratic-2-1,
  /// hpnd, hpnd-sell-variant, htmltidy, i2p-gpl-java-exception, ibm-pibs, icu,
  /// ijg, image-magick, imatix, imlib2, info-zip, intel, intel-acpi,
  /// interbase-1-0, ipa, ipl-1-0, isc, jasper-2-0, jpnic, json, lal-1-2,
  /// lal-1-3, latex2e, leptonica, lgpl-2-0-only, lgpl-2-0-or-later,
  /// lgpl-2-1-only, lgpl-2-1-or-later, lgpl-3-0-linking-exception,
  /// lgpl-3-0-only, lgpl-3-0-or-later, lgpllr, libpng, libpng-2-0,
  /// libselinux-1-0, libtiff, libtool-exception, liliq-p-1-1, liliq-r-1-1,
  /// liliq-rplus-1-1, linux-openib, linux-syscall-note, llvm-exception,
  /// lpl-1-0, lpl-1-02, lppl-1-0, lppl-1-1, lppl-1-2, lppl-1-3a, lppl-1-3c,
  /// lzma-exception, make-index, mif-exception, miros, mit, mit-0,
  /// mit-advertising, mit-cmu, mit-enna, mit-feh, mit-modern-variant, mitnfa,
  /// mit-open-group, motosoto, mpich2, mpl-1-0, mpl-1-1, mpl-2-0,
  /// mpl-2-0-no-copyleft-exception, ms-pl, ms-rl, mtll, mulanpsl-1-0,
  /// mulanpsl-2-0, multics, mup, naist-2003, nasa-1-3, naumen, nbpl-1-0,
  /// ncgl-uk-2-0, ncsa, netcdf, net-snmp, newsletr, ngpl, nist-pd,
  /// nist-pd-fallback, nlod-1-0, nlpl, nokia, nokia-qt-exception-1-1, nosl,
  /// noweb, npl-1-0, npl-1-1, nposl-3-0, nrl, ntp, ntp-0,
  /// ocaml-lgpl-linking-exception, occt-exception-1-0, occt-pl, oclc-2-0,
  /// odbl-1-0, odc-by-1-0, ofl-1-0, ofl-1-0-no-rfn, ofl-1-0-rfn, ofl-1-1,
  /// ofl-1-1-no-rfn, ofl-1-1-rfn, ogc-1-0, ogdl-taiwan-1-0, ogl-canada-2-0,
  /// ogl-uk-1-0, ogl-uk-2-0, ogl-uk-3-0, ogtsl, oldap-1-1, oldap-1-2,
  /// oldap-1-3, oldap-1-4, oldap-2-0, oldap-2-0-1, oldap-2-1, oldap-2-2,
  /// oldap-2-2-1, oldap-2-2-2, oldap-2-3, oldap-2-4, oldap-2-7, oml,
  /// openjdk-assembly-exception-1-0, openssl, openvpn-openssl-exception,
  /// opl-1-0, oset-pl-2-1, osl-1-0, osl-1-1, osl-2-0, osl-2-1, osl-3-0,
  /// o-uda-1-0, parity-6-0-0, parity-7-0-0, pddl-1-0, php-3-0, php-3-01,
  /// plexus, polyform-noncommercial-1-0-0, polyform-small-business-1-0-0,
  /// postgresql, psf-2-0, psfrag, ps-or-pdf-font-exception-20170817, psutils,
  /// python-2-0, qhull, qpl-1-0, qt-gpl-exception-1-0, qt-lgpl-exception-1-1,
  /// qwt-exception-1-0, rdisc, rhecos-1-1, rpl-1-1, rpsl-1-0, rsa-md, rscpl,
  /// ruby, saxpath, sax-pd, scea, sendmail, sendmail-8-23, sgi-b-1-0,
  /// sgi-b-1-1, sgi-b-2-0, shl-0-51, shl-2-0, shl-2-1, simpl-2-0, sissl,
  /// sissl-1-2, sleepycat, smlnj, smppl, snia, spencer-86, spencer-94,
  /// spencer-99, spl-1-0, ssh-openssh, ssh-short, sspl-1-0, sugarcrm-1-1-3,
  /// swift-exception, swl, tapr-ohl-1-0, tcl, tcp-wrappers, tmate, torque-1-1,
  /// tosl, tu-berlin-1-0, tu-berlin-2-0, u-boot-exception-2-0, ucl-1-0,
  /// unicode-dfs-2015, unicode-dfs-2016, unicode-tou,
  /// universal-foss-exception-1-0, unlicense, upl-1-0, vim, vostrom, vsl-1-0,
  /// w3c, w3c-19980720, w3c-20150513, watcom-1-0, wsuipa, wtfpl,
  /// wxwindows-exception-3-1, x11, xerox, xfree86-1-1, xinetd, xnet, xpp,
  /// xskat, ypl-1-0, ypl-1-1, zed, zend-2-0, zimbra-1-3, zimbra-1-4, zlib,
  /// zlib-acknowledgement, zpl-1-1, zpl-2-0, zpl-2-1.
  core.String? license;

  /// README template name.
  ///
  /// Valid template name(s) are: default.
  core.String? readme;

  InitialConfig({
    this.defaultBranch,
    this.gitignores,
    this.license,
    this.readme,
  });

  InitialConfig.fromJson(core.Map json_)
      : this(
          defaultBranch: json_['defaultBranch'] as core.String?,
          gitignores: (json_['gitignores'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          license: json_['license'] as core.String?,
          readme: json_['readme'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultBranch != null) 'defaultBranch': defaultBranch!,
        if (gitignores != null) 'gitignores': gitignores!,
        if (license != null) 'license': license!,
        if (readme != null) 'readme': readme!,
      };
}

/// A resource that represents a Secure Source Manager instance.
class Instance {
  /// Create timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// A list of hostnames for this instance.
  ///
  /// Output only.
  HostConfig? hostConfig;

  /// Customer-managed encryption key name, in the format projects / *
  /// /locations / * /keyRings / * /cryptoKeys / * .
  ///
  /// Optional. Immutable.
  core.String? kmsKey;

  /// Labels as key value pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// A unique identifier for an instance.
  ///
  /// The name should be of the format:
  /// `projects/{project_number}/locations/{location_id}/instances/{instance_id}`
  /// `project_number`: Maps to a unique int64 id assigned to each project.
  /// `location_id`: Refers to the region where the instance will be deployed.
  /// Since Secure Source Manager is a regional service, it must be one of the
  /// valid GCP regions. `instance_id`: User provided name for the instance,
  /// must be unique for a project_number and location_id combination.
  ///
  /// Optional.
  core.String? name;

  /// Private settings for private instance.
  ///
  /// Optional.
  PrivateConfig? privateConfig;

  /// Current state of the instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set. This should only be the case for incoming
  /// requests.
  /// - "CREATING" : Instance is being created.
  /// - "ACTIVE" : Instance is ready.
  /// - "DELETING" : Instance is being deleted.
  /// - "PAUSED" : Instance is paused.
  /// - "UNKNOWN" : Instance is unknown, we are not sure if it's functioning.
  core.String? state;

  /// An optional field providing information about the current instance state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_NOTE_UNSPECIFIED" : STATE_NOTE_UNSPECIFIED as the first value of
  /// State.
  /// - "PAUSED_CMEK_UNAVAILABLE" : CMEK access is unavailable.
  /// - "INSTANCE_RESUMING" : INSTANCE_RESUMING indicates that the instance was
  /// previously paused and is under the process of being brought back.
  core.String? stateNote;

  /// Update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  /// Configuration for Workforce Identity Federation to support third party
  /// identity provider.
  ///
  /// If unset, defaults to the Google OIDC IdP.
  ///
  /// Optional.
  WorkforceIdentityFederationConfig? workforceIdentityFederationConfig;

  Instance({
    this.createTime,
    this.hostConfig,
    this.kmsKey,
    this.labels,
    this.name,
    this.privateConfig,
    this.state,
    this.stateNote,
    this.updateTime,
    this.workforceIdentityFederationConfig,
  });

  Instance.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          hostConfig: json_.containsKey('hostConfig')
              ? HostConfig.fromJson(
                  json_['hostConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          kmsKey: json_['kmsKey'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          privateConfig: json_.containsKey('privateConfig')
              ? PrivateConfig.fromJson(
                  json_['privateConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          state: json_['state'] as core.String?,
          stateNote: json_['stateNote'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
          workforceIdentityFederationConfig:
              json_.containsKey('workforceIdentityFederationConfig')
                  ? WorkforceIdentityFederationConfig.fromJson(
                      json_['workforceIdentityFederationConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (hostConfig != null) 'hostConfig': hostConfig!,
        if (kmsKey != null) 'kmsKey': kmsKey!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (privateConfig != null) 'privateConfig': privateConfig!,
        if (state != null) 'state': state!,
        if (stateNote != null) 'stateNote': stateNote!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (workforceIdentityFederationConfig != null)
          'workforceIdentityFederationConfig':
              workforceIdentityFederationConfig!,
      };
}

/// Metadata of an Issue.
class Issue {
  /// Issue body.
  ///
  /// Provides a detailed description of the issue.
  ///
  /// Optional.
  core.String? body;

  /// Close timestamp (if closed).
  ///
  /// Cleared when is re-opened.
  ///
  /// Output only.
  core.String? closeTime;

  /// Creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// Identifier.
  ///
  /// Unique identifier for an issue. The issue id is generated by the server.
  /// Format:
  /// `projects/{project}/locations/{location}/repositories/{repository}/issues/{issue_id}`
  core.String? name;

  /// State of the issue.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified.
  /// - "OPEN" : An open issue.
  /// - "CLOSED" : A closed issue.
  core.String? state;

  /// Issue title.
  ///
  /// Required.
  core.String? title;

  /// Last updated timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  Issue({
    this.body,
    this.closeTime,
    this.createTime,
    this.etag,
    this.name,
    this.state,
    this.title,
    this.updateTime,
  });

  Issue.fromJson(core.Map json_)
      : this(
          body: json_['body'] as core.String?,
          closeTime: json_['closeTime'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          etag: json_['etag'] as core.String?,
          name: json_['name'] as core.String?,
          state: json_['state'] as core.String?,
          title: json_['title'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (closeTime != null) 'closeTime': closeTime!,
        if (createTime != null) 'createTime': createTime!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (title != null) 'title': title!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// IssueComment represents a comment on an issue.
class IssueComment {
  /// The comment body.
  ///
  /// Required.
  core.String? body;

  /// Creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Identifier.
  ///
  /// Unique identifier for an issue comment. The comment id is generated by the
  /// server. Format:
  /// `projects/{project}/locations/{location}/repositories/{repository}/issues/{issue}/issueComments/{comment_id}`
  core.String? name;

  /// Last updated timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  IssueComment({
    this.body,
    this.createTime,
    this.name,
    this.updateTime,
  });

  IssueComment.fromJson(core.Map json_)
      : this(
          body: json_['body'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          name: json_['name'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// ListBranchRulesResponse is the response to listing branchRules.
class ListBranchRulesResponse {
  /// The list of branch rules.
  core.List<BranchRule>? branchRules;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListBranchRulesResponse({
    this.branchRules,
    this.nextPageToken,
  });

  ListBranchRulesResponse.fromJson(core.Map json_)
      : this(
          branchRules: (json_['branchRules'] as core.List?)
              ?.map((value) => BranchRule.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (branchRules != null) 'branchRules': branchRules!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// ListHooksResponse is response to list hooks.
class ListHooksResponse {
  /// The list of hooks.
  core.List<Hook>? hooks;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListHooksResponse({
    this.hooks,
    this.nextPageToken,
  });

  ListHooksResponse.fromJson(core.Map json_)
      : this(
          hooks: (json_['hooks'] as core.List?)
              ?.map((value) =>
                  Hook.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hooks != null) 'hooks': hooks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListInstancesResponse {
  /// The list of instances.
  core.List<Instance>? instances;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListInstancesResponse({
    this.instances,
    this.nextPageToken,
    this.unreachable,
  });

  ListInstancesResponse.fromJson(core.Map json_)
      : this(
          instances: (json_['instances'] as core.List?)
              ?.map((value) => Instance.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response to list issue comments.
class ListIssueCommentsResponse {
  /// The list of issue comments.
  core.List<IssueComment>? issueComments;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListIssueCommentsResponse({
    this.issueComments,
    this.nextPageToken,
  });

  ListIssueCommentsResponse.fromJson(core.Map json_)
      : this(
          issueComments: (json_['issueComments'] as core.List?)
              ?.map((value) => IssueComment.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issueComments != null) 'issueComments': issueComments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response to list issues.
class ListIssuesResponse {
  /// The list of issues.
  core.List<Issue>? issues;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListIssuesResponse({
    this.issues,
    this.nextPageToken,
  });

  ListIssuesResponse.fromJson(core.Map json_)
      : this(
          issues: (json_['issues'] as core.List?)
              ?.map((value) =>
                  Issue.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issues != null) 'issues': issues!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: (json_['locations'] as core.List?)
              ?.map((value) => Location.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          operations: (json_['operations'] as core.List?)
              ?.map((value) => Operation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// The response to list pull request comments.
class ListPullRequestCommentsResponse {
  /// A token to set as page_token to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of pull request comments.
  core.List<PullRequestComment>? pullRequestComments;

  ListPullRequestCommentsResponse({
    this.nextPageToken,
    this.pullRequestComments,
  });

  ListPullRequestCommentsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          pullRequestComments: (json_['pullRequestComments'] as core.List?)
              ?.map((value) => PullRequestComment.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pullRequestComments != null)
          'pullRequestComments': pullRequestComments!,
      };
}

/// ListPullRequestFileDiffsResponse is the response containing file diffs
/// returned from ListPullRequestFileDiffs.
class ListPullRequestFileDiffsResponse {
  /// The list of pull request file diffs.
  core.List<FileDiff>? fileDiffs;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListPullRequestFileDiffsResponse({
    this.fileDiffs,
    this.nextPageToken,
  });

  ListPullRequestFileDiffsResponse.fromJson(core.Map json_)
      : this(
          fileDiffs: (json_['fileDiffs'] as core.List?)
              ?.map((value) => FileDiff.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileDiffs != null) 'fileDiffs': fileDiffs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// ListPullRequestsResponse is the response to list pull requests.
class ListPullRequestsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of pull requests.
  core.List<PullRequest>? pullRequests;

  ListPullRequestsResponse({
    this.nextPageToken,
    this.pullRequests,
  });

  ListPullRequestsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          pullRequests: (json_['pullRequests'] as core.List?)
              ?.map((value) => PullRequest.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pullRequests != null) 'pullRequests': pullRequests!,
      };
}

class ListRepositoriesResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of repositories.
  core.List<Repository>? repositories;

  ListRepositoriesResponse({
    this.nextPageToken,
    this.repositories,
  });

  ListRepositoriesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          repositories: (json_['repositories'] as core.List?)
              ?.map((value) => Repository.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (repositories != null) 'repositories': repositories!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// MergePullRequestRequest is the request to merge a pull request.
typedef MergePullRequestRequest = $Empty;

/// The request to open an issue.
class OpenIssueRequest {
  /// The current etag of the issue.
  ///
  /// If the etag is provided and does not match the current etag of the issue,
  /// opening will be blocked and an ABORTED error will be returned.
  ///
  /// Optional.
  core.String? etag;

  OpenIssueRequest({
    this.etag,
  });

  OpenIssueRequest.fromJson(core.Map json_)
      : this(
          etag: json_['etag'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
      };
}

/// OpenPullRequestRequest is the request to open a pull request.
typedef OpenPullRequestRequest = $Empty;

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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_['done'] as core.bool?,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
          response: json_.containsKey('response')
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
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

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
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
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

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: (json_['auditConfigs'] as core.List?)
              ?.map((value) => AuditConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          bindings: (json_['bindings'] as core.List?)
              ?.map((value) => Binding.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          etag: json_['etag'] as core.String?,
          version: json_['version'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// The position of the code comment.
class Position {
  /// The line number of the comment.
  ///
  /// Positive value means it's on the new side of the diff, negative value
  /// means it's on the old side.
  ///
  /// Required.
  core.String? line;

  /// The path of the file.
  ///
  /// Required.
  core.String? path;

  Position({
    this.line,
    this.path,
  });

  Position.fromJson(core.Map json_)
      : this(
          line: json_['line'] as core.String?,
          path: json_['path'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (line != null) 'line': line!,
        if (path != null) 'path': path!,
      };
}

/// PrivateConfig includes settings for private instance.
class PrivateConfig {
  /// CA pool resource, resource must in the format of
  /// `projects/{project}/locations/{location}/caPools/{ca_pool}`.
  ///
  /// Optional. Immutable.
  core.String? caPool;

  /// Service Attachment for HTTP, resource is in the format of
  /// `projects/{project}/regions/{region}/serviceAttachments/{service_attachment}`.
  ///
  /// Output only.
  core.String? httpServiceAttachment;

  /// Indicate if it's private instance.
  ///
  /// Required. Immutable.
  core.bool? isPrivate;

  /// Additional allowed projects for setting up PSC connections.
  ///
  /// Instance host project is automatically allowed and does not need to be
  /// included in this list.
  ///
  /// Optional.
  core.List<core.String>? pscAllowedProjects;

  /// Service Attachment for SSH, resource is in the format of
  /// `projects/{project}/regions/{region}/serviceAttachments/{service_attachment}`.
  ///
  /// Output only.
  core.String? sshServiceAttachment;

  PrivateConfig({
    this.caPool,
    this.httpServiceAttachment,
    this.isPrivate,
    this.pscAllowedProjects,
    this.sshServiceAttachment,
  });

  PrivateConfig.fromJson(core.Map json_)
      : this(
          caPool: json_['caPool'] as core.String?,
          httpServiceAttachment: json_['httpServiceAttachment'] as core.String?,
          isPrivate: json_['isPrivate'] as core.bool?,
          pscAllowedProjects: (json_['pscAllowedProjects'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          sshServiceAttachment: json_['sshServiceAttachment'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caPool != null) 'caPool': caPool!,
        if (httpServiceAttachment != null)
          'httpServiceAttachment': httpServiceAttachment!,
        if (isPrivate != null) 'isPrivate': isPrivate!,
        if (pscAllowedProjects != null)
          'pscAllowedProjects': pscAllowedProjects!,
        if (sshServiceAttachment != null)
          'sshServiceAttachment': sshServiceAttachment!,
      };
}

/// Metadata of a PullRequest.
///
/// PullRequest is the request from a user to merge a branch (head) into another
/// branch (base).
class PullRequest {
  /// The branch to merge changes in.
  ///
  /// Required.
  Branch? base;

  /// The pull request body.
  ///
  /// Provides a detailed description of the changes.
  ///
  /// Optional.
  core.String? body;

  /// Close timestamp (if closed or merged).
  ///
  /// Cleared when pull request is re-opened.
  ///
  /// Output only.
  core.String? closeTime;

  /// Creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// The branch containing the changes to be merged.
  ///
  /// Immutable.
  Branch? head;

  /// A unique identifier for a PullRequest.
  ///
  /// The number appended at the end is generated by the server. Format:
  /// `projects/{project}/locations/{location}/repositories/{repository}/pullRequests/{pull_request_id}`
  ///
  /// Output only.
  core.String? name;

  /// State of the pull request (open, closed or merged).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified.
  /// - "OPEN" : An open pull request.
  /// - "CLOSED" : A closed pull request.
  /// - "MERGED" : A merged pull request.
  core.String? state;

  /// The pull request title.
  ///
  /// Required.
  core.String? title;

  /// Last updated timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  PullRequest({
    this.base,
    this.body,
    this.closeTime,
    this.createTime,
    this.head,
    this.name,
    this.state,
    this.title,
    this.updateTime,
  });

  PullRequest.fromJson(core.Map json_)
      : this(
          base: json_.containsKey('base')
              ? Branch.fromJson(
                  json_['base'] as core.Map<core.String, core.dynamic>)
              : null,
          body: json_['body'] as core.String?,
          closeTime: json_['closeTime'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          head: json_.containsKey('head')
              ? Branch.fromJson(
                  json_['head'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          state: json_['state'] as core.String?,
          title: json_['title'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (base != null) 'base': base!,
        if (body != null) 'body': body!,
        if (closeTime != null) 'closeTime': closeTime!,
        if (createTime != null) 'createTime': createTime!,
        if (head != null) 'head': head!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (title != null) 'title': title!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// PullRequestComment represents a comment on a pull request.
class PullRequestComment {
  /// The comment on a code line.
  ///
  /// Optional.
  Code? code;

  /// The general pull request comment.
  ///
  /// Optional.
  Comment? comment;

  /// Creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Identifier.
  ///
  /// Unique identifier for the pull request comment. The comment id is
  /// generated by the server. Format:
  /// `projects/{project}/locations/{location}/repositories/{repository}/pullRequests/{pull_request}/pullRequestComments/{comment_id}`
  core.String? name;

  /// The review summary comment.
  ///
  /// Optional.
  Review? review;

  /// Last updated timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  PullRequestComment({
    this.code,
    this.comment,
    this.createTime,
    this.name,
    this.review,
    this.updateTime,
  });

  PullRequestComment.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code')
              ? Code.fromJson(
                  json_['code'] as core.Map<core.String, core.dynamic>)
              : null,
          comment: json_.containsKey('comment')
              ? Comment.fromJson(
                  json_['comment'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_['createTime'] as core.String?,
          name: json_['name'] as core.String?,
          review: json_.containsKey('review')
              ? Review.fromJson(
                  json_['review'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (comment != null) 'comment': comment!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (review != null) 'review': review!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

class PushOption {
  /// Trigger hook for matching branches only.
  ///
  /// Specified as glob pattern. If empty or *, events for all branches are
  /// reported. Examples: main, {main,release*}. See
  /// https://pkg.go.dev/github.com/gobwas/glob documentation.
  ///
  /// Optional.
  core.String? branchFilter;

  PushOption({
    this.branchFilter,
  });

  PushOption.fromJson(core.Map json_)
      : this(
          branchFilter: json_['branchFilter'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (branchFilter != null) 'branchFilter': branchFilter!,
      };
}

/// Metadata of a Secure Source Manager repository.
class Repository {
  /// Create timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the repository, which cannot exceed 500 characters.
  ///
  /// Optional.
  core.String? description;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// Input only.
  ///
  /// Initial configurations for the repository.
  InitialConfig? initialConfig;

  /// The name of the instance in which the repository is hosted, formatted as
  /// `projects/{project_number}/locations/{location_id}/instances/{instance_id}`
  /// When creating repository via securesourcemanager.googleapis.com, this
  /// field is used as input.
  ///
  /// When creating repository via *.sourcemanager.dev, this field is output
  /// only.
  ///
  /// Optional.
  core.String? instance;

  /// A unique identifier for a repository.
  ///
  /// The name should be of the format:
  /// `projects/{project}/locations/{location_id}/repositories/{repository_id}`
  ///
  /// Optional.
  core.String? name;

  /// Unique identifier of the repository.
  ///
  /// Output only.
  core.String? uid;

  /// Update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  /// URIs for the repository.
  ///
  /// Output only.
  URIs? uris;

  Repository({
    this.createTime,
    this.description,
    this.etag,
    this.initialConfig,
    this.instance,
    this.name,
    this.uid,
    this.updateTime,
    this.uris,
  });

  Repository.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          etag: json_['etag'] as core.String?,
          initialConfig: json_.containsKey('initialConfig')
              ? InitialConfig.fromJson(
                  json_['initialConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          instance: json_['instance'] as core.String?,
          name: json_['name'] as core.String?,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
          uris: json_.containsKey('uris')
              ? URIs.fromJson(
                  json_['uris'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (initialConfig != null) 'initialConfig': initialConfig!,
        if (instance != null) 'instance': instance!,
        if (name != null) 'name': name!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (uris != null) 'uris': uris!,
      };
}

/// The request to resolve multiple pull request comments.
class ResolvePullRequestCommentsRequest {
  /// If set, at least one comment in a thread is required, rest of the comments
  /// in the same thread will be automatically updated to resolved.
  ///
  /// If unset, all comments in the same thread need be present.
  ///
  /// Optional.
  core.bool? autoFill;

  /// The names of the pull request comments to resolve.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}/pullRequestComments/{comment_id}`
  /// Only comments from the same threads are allowed in the same request.
  ///
  /// Required.
  core.List<core.String>? names;

  ResolvePullRequestCommentsRequest({
    this.autoFill,
    this.names,
  });

  ResolvePullRequestCommentsRequest.fromJson(core.Map json_)
      : this(
          autoFill: json_['autoFill'] as core.bool?,
          names: (json_['names'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoFill != null) 'autoFill': autoFill!,
        if (names != null) 'names': names!,
      };
}

/// The review summary comment.
class Review {
  /// The review action type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACTION_TYPE_UNSPECIFIED" : Unspecified.
  /// - "COMMENT" : A general review comment.
  /// - "CHANGE_REQUESTED" : Change required from this review.
  /// - "APPROVED" : Change approved from this review.
  core.String? actionType;

  /// The comment body.
  ///
  /// Optional.
  core.String? body;

  /// The effective commit sha this review is pointing to.
  ///
  /// Output only.
  core.String? effectiveCommitSha;

  Review({
    this.actionType,
    this.body,
    this.effectiveCommitSha,
  });

  Review.fromJson(core.Map json_)
      : this(
          actionType: json_['actionType'] as core.String?,
          body: json_['body'] as core.String?,
          effectiveCommitSha: json_['effectiveCommitSha'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionType != null) 'actionType': actionType!,
        if (body != null) 'body': body!,
        if (effectiveCommitSha != null)
          'effectiveCommitSha': effectiveCommitSha!,
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

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_['updateMask'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
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

/// Represents an entry within a tree structure (like a Git tree).
class TreeEntry {
  /// The file mode as a string (e.g., "100644").
  ///
  /// Indicates file type. Output-only.
  ///
  /// Output only.
  core.String? mode;

  /// The path of the file or directory within the tree (e.g.,
  /// "src/main/java/MyClass.java").
  ///
  /// Output-only.
  ///
  /// Output only.
  core.String? path;

  /// The SHA-1 hash of the object (unique identifier).
  ///
  /// Output-only.
  ///
  /// Output only.
  core.String? sha;

  /// The size of the object in bytes (only for blobs).
  ///
  /// Output-only.
  ///
  /// Output only.
  core.String? size;

  /// The type of the object (TREE, BLOB, COMMIT).
  ///
  /// Output-only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OBJECT_TYPE_UNSPECIFIED" : Default value, indicating the object type is
  /// unspecified.
  /// - "TREE" : Represents a directory (folder).
  /// - "BLOB" : Represents a file (contains file data).
  /// - "COMMIT" : Represents a pointer to another repository (submodule).
  core.String? type;

  TreeEntry({
    this.mode,
    this.path,
    this.sha,
    this.size,
    this.type,
  });

  TreeEntry.fromJson(core.Map json_)
      : this(
          mode: json_['mode'] as core.String?,
          path: json_['path'] as core.String?,
          sha: json_['sha'] as core.String?,
          size: json_['size'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
        if (path != null) 'path': path!,
        if (sha != null) 'sha': sha!,
        if (size != null) 'size': size!,
        if (type != null) 'type': type!,
      };
}

/// URIs for the repository.
class URIs {
  /// API is the URI for API access.
  ///
  /// Output only.
  core.String? api;

  /// git_https is the git HTTPS URI for git operations.
  ///
  /// Output only.
  core.String? gitHttps;

  /// HTML is the URI for user to view the repository in a browser.
  ///
  /// Output only.
  core.String? html;

  URIs({
    this.api,
    this.gitHttps,
    this.html,
  });

  URIs.fromJson(core.Map json_)
      : this(
          api: json_['api'] as core.String?,
          gitHttps: json_['gitHttps'] as core.String?,
          html: json_['html'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (api != null) 'api': api!,
        if (gitHttps != null) 'gitHttps': gitHttps!,
        if (html != null) 'html': html!,
      };
}

/// The request to unresolve multiple pull request comments.
class UnresolvePullRequestCommentsRequest {
  /// If set, at least one comment in a thread is required, rest of the comments
  /// in the same thread will be automatically updated to unresolved.
  ///
  /// If unset, all comments in the same thread need be present.
  ///
  /// Optional.
  core.bool? autoFill;

  /// The names of the pull request comments to unresolve.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location_id}/repositories/{repository_id}/pullRequests/{pull_request_id}/pullRequestComments/{comment_id}`
  /// Only comments from the same threads are allowed in the same request.
  ///
  /// Required.
  core.List<core.String>? names;

  UnresolvePullRequestCommentsRequest({
    this.autoFill,
    this.names,
  });

  UnresolvePullRequestCommentsRequest.fromJson(core.Map json_)
      : this(
          autoFill: json_['autoFill'] as core.bool?,
          names: (json_['names'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoFill != null) 'autoFill': autoFill!,
        if (names != null) 'names': names!,
      };
}

/// WorkforceIdentityFederationConfig allows this instance to support users from
/// external identity providers.
class WorkforceIdentityFederationConfig {
  /// Whether Workforce Identity Federation is enabled.
  ///
  /// Optional. Immutable.
  core.bool? enabled;

  WorkforceIdentityFederationConfig({
    this.enabled,
  });

  WorkforceIdentityFederationConfig.fromJson(core.Map json_)
      : this(
          enabled: json_['enabled'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}
