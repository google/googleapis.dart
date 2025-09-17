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

/// Network Management API - v1
///
/// The Network Management API provides a collection of network performance
/// monitoring and diagnostic capabilities.
///
/// For more information, see <https://cloud.google.com/>
///
/// Create an instance of [NetworkManagementApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsOperationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsGlobalResource]
///       - [ProjectsLocationsGlobalConnectivityTestsResource]
///       - [ProjectsLocationsGlobalOperationsResource]
///     - [ProjectsLocationsNetworkMonitoringProvidersResource]
/// - [ProjectsLocationsNetworkMonitoringProvidersMonitoringPointsResource]
///       - [ProjectsLocationsNetworkMonitoringProvidersNetworkPathsResource]
///       - [ProjectsLocationsNetworkMonitoringProvidersWebPathsResource]
///     - [ProjectsLocationsVpcFlowLogsConfigsResource]
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

/// The Network Management API provides a collection of network performance
/// monitoring and diagnostic capabilities.
class NetworkManagementApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  NetworkManagementApi(
    http.Client client, {
    core.String rootUrl = 'https://networkmanagement.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsOperationsResource get operations =>
      OrganizationsLocationsOperationsResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
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
  /// Value must have pattern `^organizations/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsOperationsResource(commons.ApiRequester client)
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
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^organizations/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalResource get global =>
      ProjectsLocationsGlobalResource(_requester);
  ProjectsLocationsNetworkMonitoringProvidersResource
  get networkMonitoringProviders =>
      ProjectsLocationsNetworkMonitoringProvidersResource(_requester);
  ProjectsLocationsVpcFlowLogsConfigsResource get vpcFlowLogsConfigs =>
      ProjectsLocationsVpcFlowLogsConfigsResource(_requester);

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
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGlobalResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalConnectivityTestsResource get connectivityTests =>
      ProjectsLocationsGlobalConnectivityTestsResource(_requester);
  ProjectsLocationsGlobalOperationsResource get operations =>
      ProjectsLocationsGlobalOperationsResource(_requester);

  ProjectsLocationsGlobalResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsLocationsGlobalConnectivityTestsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalConnectivityTestsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Connectivity Test.
  ///
  /// After you create a test, the reachability analysis is performed as part of
  /// the long running operation, which completes when the analysis completes.
  /// If the endpoint specifications in `ConnectivityTest` are invalid (for
  /// example, containing non-existent resources in the network, or you don't
  /// have read permissions to the network configurations of listed projects),
  /// then the reachability result returns a value of `UNKNOWN`. If the endpoint
  /// specifications in `ConnectivityTest` are incomplete, the reachability
  /// result returns a value of AMBIGUOUS. For more information, see the
  /// Connectivity Test documentation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the Connectivity Test to
  /// create: `projects/{project_id}/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [testId] - Required. The logical name of the Connectivity Test in your
  /// project with the following restrictions: * Must contain only lowercase
  /// letters, numbers, and hyphens. * Must start with a letter. * Must be
  /// between 1-40 characters. * Must end with a number or a letter. * Must be
  /// unique within the customer project
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
    ConnectivityTest request,
    core.String parent, {
    core.String? testId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (testId != null) 'testId': [testId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connectivityTests';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a specific `ConnectivityTest`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Connectivity Test resource name using the form:
  /// `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/connectivityTests/\[^/\]+$`.
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

  /// Gets the details of a specific Connectivity Test.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. `ConnectivityTest` resource name using the form:
  /// `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/connectivityTests/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConnectivityTest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConnectivityTest> get(
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
    return ConnectivityTest.fromJson(
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/connectivityTests/\[^/\]+$`.
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

  /// Lists all Connectivity Tests owned by a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the Connectivity Tests:
  /// `projects/{project_id}/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [filter] - Lists the `ConnectivityTests` that match the filter expression.
  /// A filter expression filters the resources listed in the response. The
  /// expression must be of the form ` ` where operators: `<`, `>`, `<=`, `>=`,
  /// `!=`, `=`, `:` are supported (colon `:` represents a HAS operator which is
  /// roughly synonymous with equality). can refer to a proto or JSON field, or
  /// a synthetic field. Field names can be camelCase or snake_case. Examples: -
  /// Filter by name: name =
  /// "projects/proj-1/locations/global/connectivityTests/test-1 - Filter by
  /// labels: - Resources that have a key called `foo` labels.foo:* - Resources
  /// that have a key called `foo` whose value is `bar` labels.foo = bar
  ///
  /// [orderBy] - Field to use to sort the list.
  ///
  /// [pageSize] - Number of `ConnectivityTests` to return.
  ///
  /// [pageToken] - Page token from an earlier query, as returned in
  /// `next_page_token`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectivityTestsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectivityTestsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connectivityTests';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectivityTestsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the configuration of an existing `ConnectivityTest`.
  ///
  /// After you update a test, the reachability analysis is performed as part of
  /// the long running operation, which completes when the analysis completes.
  /// The Reachability state in the test resource is updated with the new
  /// result. If the endpoint specifications in `ConnectivityTest` are invalid
  /// (for example, they contain non-existent resources in the network, or the
  /// user does not have read permissions to the network configurations of
  /// listed projects), then the reachability result returns a value of UNKNOWN.
  /// If the endpoint specifications in `ConnectivityTest` are incomplete, the
  /// reachability result returns a value of `AMBIGUOUS`. See the documentation
  /// in `ConnectivityTest` for more details.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Unique name of the resource using the form:
  /// `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/connectivityTests/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field.
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
    ConnectivityTest request,
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

  /// Rerun an existing `ConnectivityTest`.
  ///
  /// After the user triggers the rerun, the reachability analysis is performed
  /// as part of the long running operation, which completes when the analysis
  /// completes. Even though the test configuration remains the same, the
  /// reachability result may change due to underlying network configuration
  /// changes. If the endpoint specifications in `ConnectivityTest` become
  /// invalid (for example, specified resources are deleted in the network, or
  /// you lost read permissions to the network configurations of listed
  /// projects), then the reachability result returns a value of `UNKNOWN`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Connectivity Test resource name using the form:
  /// `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/connectivityTests/\[^/\]+$`.
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
  async.Future<Operation> rerun(
    RerunConnectivityTestRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':rerun';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/global/connectivityTests/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/global/connectivityTests/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGlobalOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalOperationsResource(commons.ApiRequester client)
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
  /// `^projects/\[^/\]+/locations/global/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/global/operations/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/global/operations/\[^/\]+$`.
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
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsNetworkMonitoringProvidersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNetworkMonitoringProvidersMonitoringPointsResource
  get monitoringPoints =>
      ProjectsLocationsNetworkMonitoringProvidersMonitoringPointsResource(
        _requester,
      );
  ProjectsLocationsNetworkMonitoringProvidersNetworkPathsResource
  get networkPaths =>
      ProjectsLocationsNetworkMonitoringProvidersNetworkPathsResource(
        _requester,
      );
  ProjectsLocationsNetworkMonitoringProvidersWebPathsResource get webPaths =>
      ProjectsLocationsNetworkMonitoringProvidersWebPathsResource(_requester);

  ProjectsLocationsNetworkMonitoringProvidersResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a NetworkMonitoringProvider resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for
  /// CreateNetworkMonitoringProviderRequest. Format:
  /// projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [networkMonitoringProviderId] - Required. The ID to use for the
  /// NetworkMonitoringProvider resource, which will become the final component
  /// of the NetworkMonitoringProvider resource's name.
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
    NetworkMonitoringProvider request,
    core.String parent, {
    core.String? networkMonitoringProviderId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (networkMonitoringProviderId != null)
        'networkMonitoringProviderId': [networkMonitoringProviderId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/networkMonitoringProviders';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a NetworkMonitoringProvider resource and all of its child
  /// resources.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. Format:
  /// projects/{project}/locations/{location}/networkMonitoringProviders/{network_monitoring_provider}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkMonitoringProviders/\[^/\]+$`.
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

  /// Gets the NetworkMonitoringProvider resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. Format:
  /// projects/{project}/locations/{location}/networkMonitoringProviders/{network_monitoring_provider}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkMonitoringProviders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NetworkMonitoringProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NetworkMonitoringProvider> get(
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
    return NetworkMonitoringProvider.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists NetworkMonitoringProviders for a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for
  /// ListNetworkMonitoringProvidersRequest. Format:
  /// projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of monitoring points to return.
  /// The service may return fewer than this value. If unspecified, at most 20
  /// monitoring points will be returned. The maximum value is 1000; values
  /// above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListMonitoringPoints` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListMonitoringPoints`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNetworkMonitoringProvidersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNetworkMonitoringProvidersResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/networkMonitoringProviders';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNetworkMonitoringProvidersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsNetworkMonitoringProvidersMonitoringPointsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNetworkMonitoringProvidersMonitoringPointsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets the MonitoringPoint resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. Format:
  /// projects/{project}/locations/{location}/networkMonitoringProviders/{network_monitoring_provider}/monitoringPoints/{monitoring_point}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkMonitoringProviders/\[^/\]+/monitoringPoints/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MonitoringPoint].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MonitoringPoint> get(
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
    return MonitoringPoint.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists MonitoringPoints for a given network monitoring provider.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListMonitoringPointsRequest. Format:
  /// projects/{project}/locations/{location}/networkMonitoringProviders/{network_monitoring_provider}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkMonitoringProviders/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of monitoring points to return.
  /// The service may return fewer than this value. If unspecified, at most 20
  /// monitoring points will be returned. The maximum value is 1000; values
  /// above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListMonitoringPoints` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListMonitoringPoints`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMonitoringPointsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMonitoringPointsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/monitoringPoints';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMonitoringPointsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsNetworkMonitoringProvidersNetworkPathsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNetworkMonitoringProvidersNetworkPathsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets the NetworkPath resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. Format:
  /// projects/{project}/locations/{location}/networkMonitoringProviders/{network_monitoring_provider}/networkPaths/{network_path}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkMonitoringProviders/\[^/\]+/networkPaths/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NetworkPath].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NetworkPath> get(
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
    return NetworkPath.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists NetworkPaths for a given network monitoring provider.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListNetworkPathsRequest. Format:
  /// projects/{project}/locations/{location}/networkMonitoringProviders/{network_monitoring_provider}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkMonitoringProviders/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of network paths to return. The
  /// service may return fewer than this value. If unspecified, at most 20
  /// network pathswill be returned. The maximum value is 1000; values above
  /// 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListNetworkPaths` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListNetworkPaths` must
  /// match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNetworkPathsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNetworkPathsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/networkPaths';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNetworkPathsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsNetworkMonitoringProvidersWebPathsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNetworkMonitoringProvidersWebPathsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets the WebPath resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.. Format:
  /// projects/{project}/locations/{location}/networkMonitoringProviders/{network_monitoring_provider}/webPaths/{web_path}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkMonitoringProviders/\[^/\]+/webPaths/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WebPath].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WebPath> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WebPath.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists WebPaths for a given network monitoring provider.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListWebPathsRequest. Format:
  /// projects/{project}/locations/{location}/networkMonitoringProviders/{network_monitoring_provider}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkMonitoringProviders/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of web paths to return. The
  /// service may return fewer than this value. If unspecified, at most 20 web
  /// paths will be returned. The maximum value is 1000; values above 1000 will
  /// be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListWebPaths` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListWebPaths` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWebPathsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWebPathsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/webPaths';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWebPathsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsVpcFlowLogsConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVpcFlowLogsConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new `VpcFlowLogsConfig`.
  ///
  /// If a configuration with the exact same settings already exists (even if
  /// the ID is different), the creation fails. Notes: 1. Creating a
  /// configuration with `state=DISABLED` will fail 2. The following fields are
  /// not considered as settings for the purpose of the check mentioned above,
  /// therefore - creating another configuration with the same fields but
  /// different values for the following fields will fail as well: * name *
  /// create_time * update_time * labels * description
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the VpcFlowLogsConfig to
  /// create, in one of the following formats: - For project-level resources:
  /// `projects/{project_id}/locations/global` - For organization-level
  /// resources: `organizations/{organization_id}/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [vpcFlowLogsConfigId] - Required. ID of the `VpcFlowLogsConfig`.
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
    VpcFlowLogsConfig request,
    core.String parent, {
    core.String? vpcFlowLogsConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (vpcFlowLogsConfigId != null)
        'vpcFlowLogsConfigId': [vpcFlowLogsConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/vpcFlowLogsConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a specific `VpcFlowLogsConfig`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the VpcFlowLogsConfig, in one of
  /// the following formats: - For a project-level resource:
  /// `projects/{project_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  /// - For an organization-level resource:
  /// `organizations/{organization_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vpcFlowLogsConfigs/\[^/\]+$`.
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

  /// Gets the details of a specific `VpcFlowLogsConfig`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the VpcFlowLogsConfig, in one of
  /// the following formats: - For project-level resources:
  /// `projects/{project_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  /// - For organization-level resources:
  /// `organizations/{organization_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vpcFlowLogsConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VpcFlowLogsConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VpcFlowLogsConfig> get(
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
    return VpcFlowLogsConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all `VpcFlowLogsConfigs` in a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the VpcFlowLogsConfig, in one
  /// of the following formats: - For project-level resourcs:
  /// `projects/{project_id}/locations/global` - For organization-level
  /// resources: `organizations/{organization_id}/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Lists the `VpcFlowLogsConfigs` that match the filter
  /// expression. A filter expression must use the supported
  /// [CEL logic operators](https://cloud.google.com/vpc/docs/about-flow-logs-records#supported_cel_logic_operators).
  ///
  /// [orderBy] - Optional. Field to use to sort the list.
  ///
  /// [pageSize] - Optional. Number of `VpcFlowLogsConfigs` to return.
  ///
  /// [pageToken] - Optional. Page token from an earlier query, as returned in
  /// `next_page_token`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVpcFlowLogsConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVpcFlowLogsConfigsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/vpcFlowLogsConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVpcFlowLogsConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing `VpcFlowLogsConfig`.
  ///
  /// If a configuration with the exact same settings already exists (even if
  /// the ID is different), the creation fails. Notes: 1. Updating a
  /// configuration with `state=DISABLED` will fail. 2. The following fields are
  /// not considered as settings for the purpose of the check mentioned above,
  /// therefore - updating another configuration with the same fields but
  /// different values for the following fields will fail as well: * name *
  /// create_time * update_time * labels * description
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Unique name of the configuration. The name can have
  /// one of the following forms: - For project-level configurations:
  /// `projects/{project_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  /// - For organization-level configurations:
  /// `organizations/{organization_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vpcFlowLogsConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field. For example, to change the state of the
  /// configuration to ENABLED, specify `update_mask` = `"state"`, and the
  /// `vpc_flow_logs_config` would be: `vpc_flow_logs_config = { name =
  /// "projects/my-project/locations/global/vpcFlowLogsConfigs/my-config" state
  /// = "ENABLED" }`
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
    VpcFlowLogsConfig request,
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

/// Details of the final state "abort" and associated resource.
typedef AbortInfo = $AbortInfo;

/// Wrapper for the App Engine service version attributes.
typedef AppEngineVersionEndpoint = $AppEngineVersionEndpoint;

/// For display only.
///
/// Metadata associated with an App Engine version.
typedef AppEngineVersionInfo = $AppEngineVersionInfo;

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

  AuditConfig({this.auditLogConfigs, this.service});

  AuditConfig.fromJson(core.Map json_)
    : this(
        auditLogConfigs:
            (json_['auditLogConfigs'] as core.List?)
                ?.map(
                  (value) => AuditLogConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
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
typedef AuditLogConfig = $AuditLogConfig00;

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

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Wrapper for Cloud Function attributes.
typedef CloudFunctionEndpoint = $CloudFunctionEndpoint;

/// For display only.
///
/// Metadata associated with a Cloud Function.
typedef CloudFunctionInfo = $CloudFunctionInfo;

/// Wrapper for Cloud Run revision attributes.
typedef CloudRunRevisionEndpoint = $CloudRunRevisionEndpoint;

/// For display only.
///
/// Metadata associated with a Cloud Run revision.
typedef CloudRunRevisionInfo = $CloudRunRevisionInfo;

/// For display only.
///
/// Metadata associated with a Cloud SQL instance.
typedef CloudSQLInstanceInfo = $CloudSQLInstanceInfo;

/// A Connectivity Test for a network reachability analysis.
class ConnectivityTest {
  /// Whether the analysis should skip firewall checking.
  ///
  /// Default value is false.
  core.bool? bypassFirewallChecks;

  /// The time the test was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user-supplied description of the Connectivity Test.
  ///
  /// Maximum of 512 characters.
  core.String? description;

  /// Destination specification of the Connectivity Test.
  ///
  /// You can use a combination of destination IP address, URI of a supported
  /// endpoint, project ID, or VPC network to identify the destination location.
  /// Reachability analysis proceeds even if the destination location is
  /// ambiguous. However, the test result might include endpoints or use a
  /// destination that you don't intend to test.
  ///
  /// Required.
  Endpoint? destination;

  /// The display name of a Connectivity Test.
  ///
  /// Output only.
  core.String? displayName;

  /// Resource labels to represent user-provided metadata.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Unique name of the resource using the form:
  /// `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  core.String? name;

  /// The probing details of this test from the latest run, present for
  /// applicable tests only.
  ///
  /// The details are updated when creating a new test, updating an existing
  /// test, or triggering a one-time rerun of an existing test.
  ///
  /// Output only.
  ProbingDetails? probingDetails;

  /// IP Protocol of the test.
  ///
  /// When not provided, "TCP" is assumed.
  core.String? protocol;

  /// The reachability details of this test from the latest run.
  ///
  /// The details are updated when creating a new test, updating an existing
  /// test, or triggering a one-time rerun of an existing test.
  ///
  /// Output only.
  ReachabilityDetails? reachabilityDetails;

  /// Other projects that may be relevant for reachability analysis.
  ///
  /// This is applicable to scenarios where a test can cross project boundaries.
  core.List<core.String>? relatedProjects;

  /// The reachability details of this test from the latest run for the return
  /// path.
  ///
  /// The details are updated when creating a new test, updating an existing
  /// test, or triggering a one-time rerun of an existing test.
  ///
  /// Output only.
  ReachabilityDetails? returnReachabilityDetails;

  /// Whether run analysis for the return path from destination to source.
  ///
  /// Default value is false.
  core.bool? roundTrip;

  /// Source specification of the Connectivity Test.
  ///
  /// You can use a combination of source IP address, URI of a supported
  /// endpoint, project ID, or VPC network to identify the source location.
  /// Reachability analysis might proceed even if the source location is
  /// ambiguous. However, the test result might include endpoints or use a
  /// source that you don't intend to test.
  ///
  /// Required.
  Endpoint? source;

  /// The time the test's configuration was updated.
  ///
  /// Output only.
  core.String? updateTime;

  ConnectivityTest({
    this.bypassFirewallChecks,
    this.createTime,
    this.description,
    this.destination,
    this.displayName,
    this.labels,
    this.name,
    this.probingDetails,
    this.protocol,
    this.reachabilityDetails,
    this.relatedProjects,
    this.returnReachabilityDetails,
    this.roundTrip,
    this.source,
    this.updateTime,
  });

  ConnectivityTest.fromJson(core.Map json_)
    : this(
        bypassFirewallChecks: json_['bypassFirewallChecks'] as core.bool?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        destination:
            json_.containsKey('destination')
                ? Endpoint.fromJson(
                  json_['destination'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        probingDetails:
            json_.containsKey('probingDetails')
                ? ProbingDetails.fromJson(
                  json_['probingDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        protocol: json_['protocol'] as core.String?,
        reachabilityDetails:
            json_.containsKey('reachabilityDetails')
                ? ReachabilityDetails.fromJson(
                  json_['reachabilityDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        relatedProjects:
            (json_['relatedProjects'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        returnReachabilityDetails:
            json_.containsKey('returnReachabilityDetails')
                ? ReachabilityDetails.fromJson(
                  json_['returnReachabilityDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        roundTrip: json_['roundTrip'] as core.bool?,
        source:
            json_.containsKey('source')
                ? Endpoint.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bypassFirewallChecks != null)
      'bypassFirewallChecks': bypassFirewallChecks!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (destination != null) 'destination': destination!,
    if (displayName != null) 'displayName': displayName!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (probingDetails != null) 'probingDetails': probingDetails!,
    if (protocol != null) 'protocol': protocol!,
    if (reachabilityDetails != null)
      'reachabilityDetails': reachabilityDetails!,
    if (relatedProjects != null) 'relatedProjects': relatedProjects!,
    if (returnReachabilityDetails != null)
      'returnReachabilityDetails': returnReachabilityDetails!,
    if (roundTrip != null) 'roundTrip': roundTrip!,
    if (source != null) 'source': source!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Details of the final state "deliver" and associated resource.
class DeliverInfo {
  /// Recognized type of a Google Service the packet is delivered to (if
  /// applicable).
  /// Possible string values are:
  /// - "GOOGLE_SERVICE_TYPE_UNSPECIFIED" : Unspecified Google Service.
  /// - "IAP" : Identity aware proxy.
  /// https://cloud.google.com/iap/docs/using-tcp-forwarding
  /// - "GFE_PROXY_OR_HEALTH_CHECK_PROBER" : One of two services sharing IP
  /// ranges: * Load Balancer proxy * Centralized Health Check prober
  /// https://cloud.google.com/load-balancing/docs/firewall-rules
  /// - "CLOUD_DNS" : Connectivity from Cloud DNS to forwarding targets or
  /// alternate name servers that use private routing.
  /// https://cloud.google.com/dns/docs/zones/forwarding-zones#firewall-rules
  /// https://cloud.google.com/dns/docs/policies#firewall-rules
  /// - "PRIVATE_GOOGLE_ACCESS" : private.googleapis.com and
  /// restricted.googleapis.com
  /// - "SERVERLESS_VPC_ACCESS" : Google API via Private Service Connect.
  /// https://cloud.google.com/vpc/docs/configure-private-service-connect-apis
  /// Google API via Serverless VPC Access.
  /// https://cloud.google.com/vpc/docs/serverless-vpc-access
  core.String? googleServiceType;

  /// IP address of the target (if applicable).
  core.String? ipAddress;

  /// PSC Google API target the packet is delivered to (if applicable).
  core.String? pscGoogleApiTarget;

  /// URI of the resource that the packet is delivered to.
  core.String? resourceUri;

  /// Name of the Cloud Storage Bucket the packet is delivered to (if
  /// applicable).
  core.String? storageBucket;

  /// Target type where the packet is delivered to.
  /// Possible string values are:
  /// - "TARGET_UNSPECIFIED" : Target not specified.
  /// - "INSTANCE" : Target is a Compute Engine instance.
  /// - "INTERNET" : Target is the internet.
  /// - "GOOGLE_API" : Target is a Google API.
  /// - "GKE_MASTER" : Target is a Google Kubernetes Engine cluster master.
  /// - "CLOUD_SQL_INSTANCE" : Target is a Cloud SQL instance.
  /// - "PSC_PUBLISHED_SERVICE" : Target is a published service that uses
  /// [Private Service Connect](https://cloud.google.com/vpc/docs/configure-private-service-connect-services).
  /// - "PSC_GOOGLE_API" : Target is Google APIs that use
  /// [Private Service Connect](https://cloud.google.com/vpc/docs/configure-private-service-connect-apis).
  /// - "PSC_VPC_SC" : Target is a VPC-SC that uses
  /// [Private Service Connect](https://cloud.google.com/vpc/docs/configure-private-service-connect-apis).
  /// - "SERVERLESS_NEG" : Target is a serverless network endpoint group.
  /// - "STORAGE_BUCKET" : Target is a Cloud Storage bucket.
  /// - "PRIVATE_NETWORK" : Target is a private network. Used only for return
  /// traces.
  /// - "CLOUD_FUNCTION" : Target is a Cloud Function. Used only for return
  /// traces.
  /// - "APP_ENGINE_VERSION" : Target is a App Engine service version. Used only
  /// for return traces.
  /// - "CLOUD_RUN_REVISION" : Target is a Cloud Run revision. Used only for
  /// return traces.
  /// - "GOOGLE_MANAGED_SERVICE" : Target is a Google-managed service. Used only
  /// for return traces.
  /// - "REDIS_INSTANCE" : Target is a Redis Instance.
  /// - "REDIS_CLUSTER" : Target is a Redis Cluster.
  core.String? target;

  DeliverInfo({
    this.googleServiceType,
    this.ipAddress,
    this.pscGoogleApiTarget,
    this.resourceUri,
    this.storageBucket,
    this.target,
  });

  DeliverInfo.fromJson(core.Map json_)
    : this(
        googleServiceType: json_['googleServiceType'] as core.String?,
        ipAddress: json_['ipAddress'] as core.String?,
        pscGoogleApiTarget: json_['pscGoogleApiTarget'] as core.String?,
        resourceUri: json_['resourceUri'] as core.String?,
        storageBucket: json_['storageBucket'] as core.String?,
        target: json_['target'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (googleServiceType != null) 'googleServiceType': googleServiceType!,
    if (ipAddress != null) 'ipAddress': ipAddress!,
    if (pscGoogleApiTarget != null) 'pscGoogleApiTarget': pscGoogleApiTarget!,
    if (resourceUri != null) 'resourceUri': resourceUri!,
    if (storageBucket != null) 'storageBucket': storageBucket!,
    if (target != null) 'target': target!,
  };
}

/// For display only.
///
/// Metadata associated with a serverless direct VPC egress connection.
typedef DirectVpcEgressConnectionInfo = $DirectVpcEgressConnectionInfo;

/// Details of the final state "drop" and associated resource.
typedef DropInfo = $DropInfo;

/// Representation of a network edge location as per
/// https://cloud.google.com/vpc/docs/edge-locations.
typedef EdgeLocation = $EdgeLocation;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Source or destination of the Connectivity Test.
class Endpoint {
  /// An [App Engine](https://cloud.google.com/appengine)
  /// [service version](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions).
  ///
  /// Applicable only to source endpoint.
  AppEngineVersionEndpoint? appEngineVersion;

  /// A [Cloud Function](https://cloud.google.com/functions).
  ///
  /// Applicable only to source endpoint.
  CloudFunctionEndpoint? cloudFunction;

  /// A [Cloud Run](https://cloud.google.com/run)
  /// [revision](https://cloud.google.com/run/docs/reference/rest/v1/namespaces.revisions/get)
  /// Applicable only to source endpoint.
  CloudRunRevisionEndpoint? cloudRunRevision;

  /// A [Cloud SQL](https://cloud.google.com/sql) instance URI.
  core.String? cloudSqlInstance;

  /// A forwarding rule and its corresponding IP address represent the frontend
  /// configuration of a Google Cloud load balancer.
  ///
  /// Forwarding rules are also used for protocol forwarding, Private Service
  /// Connect and other network services to provide forwarding information in
  /// the control plane. Applicable only to destination endpoint. Format:
  /// projects/{project}/global/forwardingRules/{id} or
  /// projects/{project}/regions/{region}/forwardingRules/{id}
  core.String? forwardingRule;

  /// Specifies the type of the target of the forwarding rule.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FORWARDING_RULE_TARGET_UNSPECIFIED" : Forwarding rule target is
  /// unknown.
  /// - "INSTANCE" : Compute Engine instance for protocol forwarding.
  /// - "LOAD_BALANCER" : Load Balancer. The specific type can be found from
  /// load_balancer_type.
  /// - "VPN_GATEWAY" : Classic Cloud VPN Gateway.
  /// - "PSC" : Forwarding Rule is a Private Service Connect endpoint.
  core.String? forwardingRuleTarget;

  /// DNS endpoint of
  /// [Google Kubernetes Engine cluster control plane](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).
  ///
  /// Requires gke_master_cluster to be set, can't be used simultaneoulsly with
  /// ip_address or network. Applicable only to destination endpoint.
  core.String? fqdn;

  /// A cluster URI for
  /// [Google Kubernetes Engine cluster control plane](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture).
  core.String? gkeMasterCluster;

  /// A Compute Engine instance URI.
  core.String? instance;

  /// The IP address of the endpoint, which can be an external or internal IP.
  core.String? ipAddress;

  /// ID of the load balancer the forwarding rule points to.
  ///
  /// Empty for forwarding rules not related to load balancers.
  ///
  /// Output only.
  core.String? loadBalancerId;

  /// Type of the load balancer the forwarding rule points to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LOAD_BALANCER_TYPE_UNSPECIFIED" : Forwarding rule points to a different
  /// target than a load balancer or a load balancer type is unknown.
  /// - "HTTPS_ADVANCED_LOAD_BALANCER" : Global external HTTP(S) load balancer.
  /// - "HTTPS_LOAD_BALANCER" : Global external HTTP(S) load balancer (classic)
  /// - "REGIONAL_HTTPS_LOAD_BALANCER" : Regional external HTTP(S) load
  /// balancer.
  /// - "INTERNAL_HTTPS_LOAD_BALANCER" : Internal HTTP(S) load balancer.
  /// - "SSL_PROXY_LOAD_BALANCER" : External SSL proxy load balancer.
  /// - "TCP_PROXY_LOAD_BALANCER" : External TCP proxy load balancer.
  /// - "INTERNAL_TCP_PROXY_LOAD_BALANCER" : Internal regional TCP proxy load
  /// balancer.
  /// - "NETWORK_LOAD_BALANCER" : External TCP/UDP Network load balancer.
  /// - "LEGACY_NETWORK_LOAD_BALANCER" : Target-pool based external TCP/UDP
  /// Network load balancer.
  /// - "TCP_UDP_INTERNAL_LOAD_BALANCER" : Internal TCP/UDP load balancer.
  core.String? loadBalancerType;

  /// A VPC network URI.
  core.String? network;

  /// Type of the network where the endpoint is located.
  ///
  /// Applicable only to source endpoint, as destination network type can be
  /// inferred from the source.
  /// Possible string values are:
  /// - "NETWORK_TYPE_UNSPECIFIED" : Default type if unspecified.
  /// - "GCP_NETWORK" : A network hosted within Google Cloud. To receive more
  /// detailed output, specify the URI for the source or destination network.
  /// - "NON_GCP_NETWORK" : A network hosted outside of Google Cloud. This can
  /// be an on-premises network, an internet resource or a network hosted by
  /// another cloud provider.
  core.String? networkType;

  /// The IP protocol port of the endpoint.
  ///
  /// Only applicable when protocol is TCP or UDP.
  core.int? port;

  /// Project ID where the endpoint is located.
  ///
  /// The project ID can be derived from the URI if you provide a endpoint or
  /// network URI. The following are two cases where you may need to provide the
  /// project ID: 1. Only the IP address is specified, and the IP address is
  /// within a Google Cloud project. 2. When you are using Shared VPC and the IP
  /// address that you provide is from the service project. In this case, the
  /// network that the IP address resides in is defined in the host project.
  core.String? projectId;

  /// A [Redis Cluster](https://cloud.google.com/memorystore/docs/cluster) URI.
  ///
  /// Applicable only to destination endpoint.
  core.String? redisCluster;

  /// A [Redis Instance](https://cloud.google.com/memorystore/docs/redis) URI.
  ///
  /// Applicable only to destination endpoint.
  core.String? redisInstance;

  Endpoint({
    this.appEngineVersion,
    this.cloudFunction,
    this.cloudRunRevision,
    this.cloudSqlInstance,
    this.forwardingRule,
    this.forwardingRuleTarget,
    this.fqdn,
    this.gkeMasterCluster,
    this.instance,
    this.ipAddress,
    this.loadBalancerId,
    this.loadBalancerType,
    this.network,
    this.networkType,
    this.port,
    this.projectId,
    this.redisCluster,
    this.redisInstance,
  });

  Endpoint.fromJson(core.Map json_)
    : this(
        appEngineVersion:
            json_.containsKey('appEngineVersion')
                ? AppEngineVersionEndpoint.fromJson(
                  json_['appEngineVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cloudFunction:
            json_.containsKey('cloudFunction')
                ? CloudFunctionEndpoint.fromJson(
                  json_['cloudFunction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cloudRunRevision:
            json_.containsKey('cloudRunRevision')
                ? CloudRunRevisionEndpoint.fromJson(
                  json_['cloudRunRevision']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cloudSqlInstance: json_['cloudSqlInstance'] as core.String?,
        forwardingRule: json_['forwardingRule'] as core.String?,
        forwardingRuleTarget: json_['forwardingRuleTarget'] as core.String?,
        fqdn: json_['fqdn'] as core.String?,
        gkeMasterCluster: json_['gkeMasterCluster'] as core.String?,
        instance: json_['instance'] as core.String?,
        ipAddress: json_['ipAddress'] as core.String?,
        loadBalancerId: json_['loadBalancerId'] as core.String?,
        loadBalancerType: json_['loadBalancerType'] as core.String?,
        network: json_['network'] as core.String?,
        networkType: json_['networkType'] as core.String?,
        port: json_['port'] as core.int?,
        projectId: json_['projectId'] as core.String?,
        redisCluster: json_['redisCluster'] as core.String?,
        redisInstance: json_['redisInstance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appEngineVersion != null) 'appEngineVersion': appEngineVersion!,
    if (cloudFunction != null) 'cloudFunction': cloudFunction!,
    if (cloudRunRevision != null) 'cloudRunRevision': cloudRunRevision!,
    if (cloudSqlInstance != null) 'cloudSqlInstance': cloudSqlInstance!,
    if (forwardingRule != null) 'forwardingRule': forwardingRule!,
    if (forwardingRuleTarget != null)
      'forwardingRuleTarget': forwardingRuleTarget!,
    if (fqdn != null) 'fqdn': fqdn!,
    if (gkeMasterCluster != null) 'gkeMasterCluster': gkeMasterCluster!,
    if (instance != null) 'instance': instance!,
    if (ipAddress != null) 'ipAddress': ipAddress!,
    if (loadBalancerId != null) 'loadBalancerId': loadBalancerId!,
    if (loadBalancerType != null) 'loadBalancerType': loadBalancerType!,
    if (network != null) 'network': network!,
    if (networkType != null) 'networkType': networkType!,
    if (port != null) 'port': port!,
    if (projectId != null) 'projectId': projectId!,
    if (redisCluster != null) 'redisCluster': redisCluster!,
    if (redisInstance != null) 'redisInstance': redisInstance!,
  };
}

/// For display only.
///
/// The specification of the endpoints for the test. EndpointInfo is derived
/// from source and destination Endpoint and validated by the backend data plane
/// model.
typedef EndpointInfo = $EndpointInfo;

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

/// For display only.
///
/// Metadata associated with a VPC firewall rule, an implied VPC firewall rule,
/// or a firewall policy rule.
typedef FirewallInfo = $FirewallInfo;

/// Details of the final state "forward" and associated resource.
typedef ForwardInfo = $ForwardInfo;

/// For display only.
///
/// Metadata associated with a Compute Engine forwarding rule.
typedef ForwardingRuleInfo = $ForwardingRuleInfo;

/// For display only.
///
/// Metadata associated with a Google Kubernetes Engine (GKE) cluster master.
typedef GKEMasterInfo = $GKEMasterInfo;

/// For display only.
///
/// Details of a Google Service sending packets to a VPC network. Although the
/// source IP might be a publicly routable address, some Google Services use
/// special routes within Google production infrastructure to reach Compute
/// Engine Instances.
/// https://cloud.google.com/vpc/docs/routes#special_return_paths
typedef GoogleServiceInfo = $GoogleServiceInfo;

/// Message describing information about the host.
class Host {
  /// The cloud instance id of the host.
  ///
  /// Output only.
  core.String? cloudInstanceId;

  /// The cloud project id of the host.
  ///
  /// Output only.
  core.String? cloudProjectId;

  /// The cloud provider of the host.
  ///
  /// Output only.
  core.String? cloudProvider;

  /// The cloud region of the host.
  ///
  /// Output only.
  core.String? cloudRegion;

  /// The ids of cloud virtual networks of the host.
  ///
  /// Output only.
  core.List<core.String>? cloudVirtualNetworkIds;

  /// The id of Virtual Private Cloud (VPC) of the host.
  ///
  /// Output only.
  core.String? cloudVpcId;

  /// The cloud zone of the host.
  ///
  /// Output only.
  core.String? cloudZone;

  /// The operating system of the host.
  ///
  /// Output only.
  core.String? os;

  Host({
    this.cloudInstanceId,
    this.cloudProjectId,
    this.cloudProvider,
    this.cloudRegion,
    this.cloudVirtualNetworkIds,
    this.cloudVpcId,
    this.cloudZone,
    this.os,
  });

  Host.fromJson(core.Map json_)
    : this(
        cloudInstanceId: json_['cloudInstanceId'] as core.String?,
        cloudProjectId: json_['cloudProjectId'] as core.String?,
        cloudProvider: json_['cloudProvider'] as core.String?,
        cloudRegion: json_['cloudRegion'] as core.String?,
        cloudVirtualNetworkIds:
            (json_['cloudVirtualNetworkIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        cloudVpcId: json_['cloudVpcId'] as core.String?,
        cloudZone: json_['cloudZone'] as core.String?,
        os: json_['os'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloudInstanceId != null) 'cloudInstanceId': cloudInstanceId!,
    if (cloudProjectId != null) 'cloudProjectId': cloudProjectId!,
    if (cloudProvider != null) 'cloudProvider': cloudProvider!,
    if (cloudRegion != null) 'cloudRegion': cloudRegion!,
    if (cloudVirtualNetworkIds != null)
      'cloudVirtualNetworkIds': cloudVirtualNetworkIds!,
    if (cloudVpcId != null) 'cloudVpcId': cloudVpcId!,
    if (cloudZone != null) 'cloudZone': cloudZone!,
    if (os != null) 'os': os!,
  };
}

/// For display only.
///
/// Metadata associated with a Compute Engine instance.
typedef InstanceInfo = $InstanceInfo;

/// Describes measured latency distribution.
class LatencyDistribution {
  /// Representative latency percentiles.
  core.List<LatencyPercentile>? latencyPercentiles;

  LatencyDistribution({this.latencyPercentiles});

  LatencyDistribution.fromJson(core.Map json_)
    : this(
        latencyPercentiles:
            (json_['latencyPercentiles'] as core.List?)
                ?.map(
                  (value) => LatencyPercentile.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (latencyPercentiles != null) 'latencyPercentiles': latencyPercentiles!,
  };
}

/// Latency percentile rank and value.
typedef LatencyPercentile = $LatencyPercentile;

/// Response for the `ListConnectivityTests` method.
class ListConnectivityTestsResponse {
  /// Page token to fetch the next set of Connectivity Tests.
  core.String? nextPageToken;

  /// List of Connectivity Tests.
  core.List<ConnectivityTest>? resources;

  /// Locations that could not be reached (when querying all locations with
  /// `-`).
  core.List<core.String>? unreachable;

  ListConnectivityTestsResponse({
    this.nextPageToken,
    this.resources,
    this.unreachable,
  });

  ListConnectivityTestsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => ConnectivityTest.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (resources != null) 'resources': resources!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locations != null) 'locations': locations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to listing MonitoringPoints
class ListMonitoringPointsResponse {
  /// The list of MonitoringPoints.
  core.List<MonitoringPoint>? monitoringPoints;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListMonitoringPointsResponse({this.monitoringPoints, this.nextPageToken});

  ListMonitoringPointsResponse.fromJson(core.Map json_)
    : this(
        monitoringPoints:
            (json_['monitoringPoints'] as core.List?)
                ?.map(
                  (value) => MonitoringPoint.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (monitoringPoints != null) 'monitoringPoints': monitoringPoints!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to listing NetworkMonitoringProviders
class ListNetworkMonitoringProvidersResponse {
  /// The list of NetworkMonitoringProvider
  core.List<NetworkMonitoringProvider>? networkMonitoringProviders;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListNetworkMonitoringProvidersResponse({
    this.networkMonitoringProviders,
    this.nextPageToken,
  });

  ListNetworkMonitoringProvidersResponse.fromJson(core.Map json_)
    : this(
        networkMonitoringProviders:
            (json_['networkMonitoringProviders'] as core.List?)
                ?.map(
                  (value) => NetworkMonitoringProvider.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (networkMonitoringProviders != null)
      'networkMonitoringProviders': networkMonitoringProviders!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to listing NetworkPaths
class ListNetworkPathsResponse {
  /// The list of NetworkPath
  core.List<NetworkPath>? networkPaths;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListNetworkPathsResponse({this.networkPaths, this.nextPageToken});

  ListNetworkPathsResponse.fromJson(core.Map json_)
    : this(
        networkPaths:
            (json_['networkPaths'] as core.List?)
                ?.map(
                  (value) => NetworkPath.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (networkPaths != null) 'networkPaths': networkPaths!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({this.nextPageToken, this.operations});

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (operations != null) 'operations': operations!,
  };
}

/// Response for the `ListVpcFlowLogsConfigs` method.
class ListVpcFlowLogsConfigsResponse {
  /// Page token to fetch the next set of configurations.
  core.String? nextPageToken;

  /// Locations that could not be reached (when querying all locations with
  /// `-`).
  core.List<core.String>? unreachable;

  /// List of VPC Flow Log configurations.
  core.List<VpcFlowLogsConfig>? vpcFlowLogsConfigs;

  ListVpcFlowLogsConfigsResponse({
    this.nextPageToken,
    this.unreachable,
    this.vpcFlowLogsConfigs,
  });

  ListVpcFlowLogsConfigsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        vpcFlowLogsConfigs:
            (json_['vpcFlowLogsConfigs'] as core.List?)
                ?.map(
                  (value) => VpcFlowLogsConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
    if (vpcFlowLogsConfigs != null) 'vpcFlowLogsConfigs': vpcFlowLogsConfigs!,
  };
}

/// Message for response to listing WebPaths
class ListWebPathsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of WebPath.
  core.List<WebPath>? webPaths;

  ListWebPathsResponse({this.nextPageToken, this.webPaths});

  ListWebPathsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        webPaths:
            (json_['webPaths'] as core.List?)
                ?.map(
                  (value) => WebPath.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (webPaths != null) 'webPaths': webPaths!,
  };
}

/// For display only.
///
/// Metadata associated with a specific load balancer backend.
typedef LoadBalancerBackend = $LoadBalancerBackend;

/// For display only.
///
/// Metadata associated with the load balancer backend.
typedef LoadBalancerBackendInfo = $LoadBalancerBackendInfo;

/// For display only.
///
/// Metadata associated with a load balancer.
class LoadBalancerInfo {
  /// Type of load balancer's backend configuration.
  /// Possible string values are:
  /// - "BACKEND_TYPE_UNSPECIFIED" : Type is unspecified.
  /// - "BACKEND_SERVICE" : Backend Service as the load balancer's backend.
  /// - "TARGET_POOL" : Target Pool as the load balancer's backend.
  /// - "TARGET_INSTANCE" : Target Instance as the load balancer's backend.
  core.String? backendType;

  /// Backend configuration URI.
  core.String? backendUri;

  /// Information for the loadbalancer backends.
  core.List<LoadBalancerBackend>? backends;

  /// URI of the health check for the load balancer.
  ///
  /// Deprecated and no longer populated as different load balancer backends
  /// might have different health checks.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? healthCheckUri;

  /// Type of the load balancer.
  /// Possible string values are:
  /// - "LOAD_BALANCER_TYPE_UNSPECIFIED" : Type is unspecified.
  /// - "INTERNAL_TCP_UDP" : Internal TCP/UDP load balancer.
  /// - "NETWORK_TCP_UDP" : Network TCP/UDP load balancer.
  /// - "HTTP_PROXY" : HTTP(S) proxy load balancer.
  /// - "TCP_PROXY" : TCP proxy load balancer.
  /// - "SSL_PROXY" : SSL proxy load balancer.
  core.String? loadBalancerType;

  LoadBalancerInfo({
    this.backendType,
    this.backendUri,
    this.backends,
    this.healthCheckUri,
    this.loadBalancerType,
  });

  LoadBalancerInfo.fromJson(core.Map json_)
    : this(
        backendType: json_['backendType'] as core.String?,
        backendUri: json_['backendUri'] as core.String?,
        backends:
            (json_['backends'] as core.List?)
                ?.map(
                  (value) => LoadBalancerBackend.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        healthCheckUri: json_['healthCheckUri'] as core.String?,
        loadBalancerType: json_['loadBalancerType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backendType != null) 'backendType': backendType!,
    if (backendUri != null) 'backendUri': backendUri!,
    if (backends != null) 'backends': backends!,
    if (healthCheckUri != null) 'healthCheckUri': healthCheckUri!,
    if (loadBalancerType != null) 'loadBalancerType': loadBalancerType!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Message describing MonitoringPoint resource.
class MonitoringPoint {
  /// Indicates if automaitic geographic location is enabled for the
  /// MonitoringPoint.
  ///
  /// Output only.
  core.bool? autoGeoLocationEnabled;

  /// Connection status of the MonitoringPoint.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONNECTION_STATUS_UNSPECIFIED" : The default value. This value is used
  /// if the status is omitted.
  /// - "ONLINE" : MonitoringPoint is online.
  /// - "OFFLINE" : MonitoringPoint is offline.
  core.String? connectionStatus;

  /// The time the MonitoringPoint was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Display name of the MonitoringPoint.
  ///
  /// Output only.
  core.String? displayName;

  /// The codes of errors detected in the MonitoringPoint.
  ///
  /// Output only.
  core.List<core.String>? errors;

  /// The geographical location of the MonitoringPoint.
  ///
  /// Examples: - "New York, NY, USA" - "Berlin, Germany"
  ///
  /// Output only.
  core.String? geoLocation;

  /// The host information of the MonitoringPoint.
  ///
  /// Output only.
  Host? host;

  /// The hostname of the MonitoringPoint.
  ///
  /// Output only.
  core.String? hostname;

  /// Identifier.
  ///
  /// Name of the resource. Format:
  /// `projects/{project}/locations/{location}/networkMonitoringProviders/{network_monitoring_provider}/monitoringPoints/{monitoring_point}`
  core.String? name;

  /// The network interfaces of the MonitoringPoint.
  ///
  /// Output only.
  core.List<NetworkInterface>? networkInterfaces;

  /// IP address visible when MonitoringPoint connects to the provider.
  ///
  /// Output only.
  core.String? originatingIp;

  /// The provider tags of the MonitoringPoint.
  ///
  /// Output only.
  core.List<ProviderTag>? providerTags;

  /// Deployment type of the MonitoringPoint.
  ///
  /// Output only.
  core.String? type;

  /// The time the MonitoringPoint was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The type of upgrade available for the MonitoringPoint.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UPGRADE_TYPE_UNSPECIFIED" : The default value. This value is used if
  /// the upgrade type is omitted.
  /// - "MANUAL" : Upgrades are performed manually.
  /// - "MANAGED" : Upgrades are managed.
  /// - "SCHEDULED" : Upgrade is scheduled.
  /// - "AUTO" : Upgrades are performed automatically.
  /// - "EXTERNAL" : Upgrades are performed externally.
  core.String? upgradeType;

  /// Version of the software running on the MonitoringPoint.
  ///
  /// Output only.
  core.String? version;

  MonitoringPoint({
    this.autoGeoLocationEnabled,
    this.connectionStatus,
    this.createTime,
    this.displayName,
    this.errors,
    this.geoLocation,
    this.host,
    this.hostname,
    this.name,
    this.networkInterfaces,
    this.originatingIp,
    this.providerTags,
    this.type,
    this.updateTime,
    this.upgradeType,
    this.version,
  });

  MonitoringPoint.fromJson(core.Map json_)
    : this(
        autoGeoLocationEnabled: json_['autoGeoLocationEnabled'] as core.bool?,
        connectionStatus: json_['connectionStatus'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        errors:
            (json_['errors'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        geoLocation: json_['geoLocation'] as core.String?,
        host:
            json_.containsKey('host')
                ? Host.fromJson(
                  json_['host'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        hostname: json_['hostname'] as core.String?,
        name: json_['name'] as core.String?,
        networkInterfaces:
            (json_['networkInterfaces'] as core.List?)
                ?.map(
                  (value) => NetworkInterface.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        originatingIp: json_['originatingIp'] as core.String?,
        providerTags:
            (json_['providerTags'] as core.List?)
                ?.map(
                  (value) => ProviderTag.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        upgradeType: json_['upgradeType'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoGeoLocationEnabled != null)
      'autoGeoLocationEnabled': autoGeoLocationEnabled!,
    if (connectionStatus != null) 'connectionStatus': connectionStatus!,
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (errors != null) 'errors': errors!,
    if (geoLocation != null) 'geoLocation': geoLocation!,
    if (host != null) 'host': host!,
    if (hostname != null) 'hostname': hostname!,
    if (name != null) 'name': name!,
    if (networkInterfaces != null) 'networkInterfaces': networkInterfaces!,
    if (originatingIp != null) 'originatingIp': originatingIp!,
    if (providerTags != null) 'providerTags': providerTags!,
    if (type != null) 'type': type!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (upgradeType != null) 'upgradeType': upgradeType!,
    if (version != null) 'version': version!,
  };
}

/// For display only.
///
/// Metadata associated with NAT.
typedef NatInfo = $NatInfo;

/// For display only.
///
/// Metadata associated with a Compute Engine network.
typedef NetworkInfo = $NetworkInfo;

/// Message describing network interfaces.
class NetworkInterface {
  /// The description of the interface.
  ///
  /// Output only.
  core.String? adapterDescription;

  /// The IP address of the interface and subnet mask in CIDR format.
  ///
  /// Examples: 192.168.1.0/24, 2001:db8::/32
  ///
  /// Output only.
  core.String? cidr;

  /// The name of the network interface.
  ///
  /// Examples: eth0, eno1
  ///
  /// Output only.
  core.String? interfaceName;

  /// The IP address of the interface.
  ///
  /// Output only.
  core.String? ipAddress;

  /// The MAC address of the interface.
  ///
  /// Output only.
  core.String? macAddress;

  /// Speed of the interface in millions of bits per second.
  ///
  /// Output only.
  core.String? speed;

  /// The id of the VLAN.
  ///
  /// Output only.
  core.String? vlanId;

  NetworkInterface({
    this.adapterDescription,
    this.cidr,
    this.interfaceName,
    this.ipAddress,
    this.macAddress,
    this.speed,
    this.vlanId,
  });

  NetworkInterface.fromJson(core.Map json_)
    : this(
        adapterDescription: json_['adapterDescription'] as core.String?,
        cidr: json_['cidr'] as core.String?,
        interfaceName: json_['interfaceName'] as core.String?,
        ipAddress: json_['ipAddress'] as core.String?,
        macAddress: json_['macAddress'] as core.String?,
        speed: json_['speed'] as core.String?,
        vlanId: json_['vlanId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adapterDescription != null) 'adapterDescription': adapterDescription!,
    if (cidr != null) 'cidr': cidr!,
    if (interfaceName != null) 'interfaceName': interfaceName!,
    if (ipAddress != null) 'ipAddress': ipAddress!,
    if (macAddress != null) 'macAddress': macAddress!,
    if (speed != null) 'speed': speed!,
    if (vlanId != null) 'vlanId': vlanId!,
  };
}

/// Message describing NetworkMonitoringProvider resource.
class NetworkMonitoringProvider {
  /// The time the NetworkMonitoringProvider was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Identifier.
  ///
  /// Name of the resource. Format:
  /// `projects/{project}/locations/{location}/networkMonitoringProviders/{network_monitoring_provider}`
  ///
  /// Output only.
  core.String? name;

  /// Type of the NetworkMonitoringProvider.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PROVIDER_TYPE_UNSPECIFIED" : The default value. This value is used if
  /// the type is omitted.
  /// - "EXTERNAL" : External provider.
  core.String? providerType;

  /// Link to the provider's UI.
  ///
  /// Output only.
  core.String? providerUri;

  /// State of the NetworkMonitoringProvider.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the
  /// status is omitted.
  /// - "ACTIVATING" : NetworkMonitoringProvider is being activated.
  /// - "ACTIVE" : NetworkMonitoringProvider is active.
  /// - "SUSPENDING" : NetworkMonitoringProvider is being suspended.
  /// - "SUSPENDED" : NetworkMonitoringProvider is suspended.
  /// - "DELETING" : NetworkMonitoringProvider is being deleted.
  /// - "DELETED" : NetworkMonitoringProvider is deleted.
  core.String? state;

  /// The time the NetworkMonitoringProvider was updated.
  ///
  /// Output only.
  core.String? updateTime;

  NetworkMonitoringProvider({
    this.createTime,
    this.name,
    this.providerType,
    this.providerUri,
    this.state,
    this.updateTime,
  });

  NetworkMonitoringProvider.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        name: json_['name'] as core.String?,
        providerType: json_['providerType'] as core.String?,
        providerUri: json_['providerUri'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (name != null) 'name': name!,
    if (providerType != null) 'providerType': providerType!,
    if (providerUri != null) 'providerUri': providerUri!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Message describing NetworkPath resource.
class NetworkPath {
  /// The time the NetworkPath was created.
  ///
  /// Output only.
  core.String? createTime;

  /// IP address or hostname of the network path destination.
  ///
  /// Output only.
  core.String? destination;

  /// Geographical location of the destination MonitoringPoint.
  ///
  /// Output only.
  core.String? destinationGeoLocation;

  /// The display name of the network path.
  ///
  /// Output only.
  core.String? displayName;

  /// Indicates if the network path is dual ended.
  ///
  /// When true, the network path is measured both: from both source to
  /// destination, and from destination to source. When false, the network path
  /// is measured from the source through the destination back to the source
  /// (round trip measurement).
  ///
  /// Output only.
  core.bool? dualEnded;

  /// Is monitoring enabled for the network path.
  ///
  /// Output only.
  core.bool? monitoringEnabled;

  /// Display name of the monitoring policy.
  ///
  /// Output only.
  core.String? monitoringPolicyDisplayName;

  /// ID of monitoring policy.
  ///
  /// Output only.
  core.String? monitoringPolicyId;

  /// The monitoring status of the network path.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MONITORING_STATUS_UNSPECIFIED" : The default value. This value is used
  /// if the status is omitted.
  /// - "MONITORING" : Monitoring is enabled.
  /// - "POLICY_MISMATCH" : Policy is mismatched.
  /// - "MONITORING_POINT_OFFLINE" : Monitoring point is offline.
  /// - "DISABLED" : Monitoring is disabled.
  core.String? monitoringStatus;

  /// Identifier.
  ///
  /// Name of the resource. Format:
  /// `projects/{project}/locations/{location}/networkMonitoringProviders/{network_monitoring_provider}/networkPaths/{network_path}`
  core.String? name;

  /// The network protocol of the network path.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NETWORK_PROTOCOL_UNSPECIFIED" : The default value. This value is used
  /// if the network protocol is omitted.
  /// - "ICMP" : ICMP.
  /// - "UDP" : UDP.
  /// - "TCP" : TCP.
  core.String? networkProtocol;

  /// The provider tags of the network path.
  ///
  /// Output only.
  core.List<ProviderTag>? providerTags;

  /// Link to provider's UI; link shows the NetworkPath.
  ///
  /// Output only.
  core.String? providerUiUri;

  /// Provider's UUID of the source MonitoringPoint.
  ///
  /// This id may not point to a resource in the GCP.
  ///
  /// Output only.
  core.String? sourceMonitoringPointId;

  /// The time the NetworkPath was updated.
  ///
  /// Output only.
  core.String? updateTime;

  NetworkPath({
    this.createTime,
    this.destination,
    this.destinationGeoLocation,
    this.displayName,
    this.dualEnded,
    this.monitoringEnabled,
    this.monitoringPolicyDisplayName,
    this.monitoringPolicyId,
    this.monitoringStatus,
    this.name,
    this.networkProtocol,
    this.providerTags,
    this.providerUiUri,
    this.sourceMonitoringPointId,
    this.updateTime,
  });

  NetworkPath.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        destination: json_['destination'] as core.String?,
        destinationGeoLocation: json_['destinationGeoLocation'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        dualEnded: json_['dualEnded'] as core.bool?,
        monitoringEnabled: json_['monitoringEnabled'] as core.bool?,
        monitoringPolicyDisplayName:
            json_['monitoringPolicyDisplayName'] as core.String?,
        monitoringPolicyId: json_['monitoringPolicyId'] as core.String?,
        monitoringStatus: json_['monitoringStatus'] as core.String?,
        name: json_['name'] as core.String?,
        networkProtocol: json_['networkProtocol'] as core.String?,
        providerTags:
            (json_['providerTags'] as core.List?)
                ?.map(
                  (value) => ProviderTag.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        providerUiUri: json_['providerUiUri'] as core.String?,
        sourceMonitoringPointId:
            json_['sourceMonitoringPointId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (destination != null) 'destination': destination!,
    if (destinationGeoLocation != null)
      'destinationGeoLocation': destinationGeoLocation!,
    if (displayName != null) 'displayName': displayName!,
    if (dualEnded != null) 'dualEnded': dualEnded!,
    if (monitoringEnabled != null) 'monitoringEnabled': monitoringEnabled!,
    if (monitoringPolicyDisplayName != null)
      'monitoringPolicyDisplayName': monitoringPolicyDisplayName!,
    if (monitoringPolicyId != null) 'monitoringPolicyId': monitoringPolicyId!,
    if (monitoringStatus != null) 'monitoringStatus': monitoringStatus!,
    if (name != null) 'name': name!,
    if (networkProtocol != null) 'networkProtocol': networkProtocol!,
    if (providerTags != null) 'providerTags': providerTags!,
    if (providerUiUri != null) 'providerUiUri': providerUiUri!,
    if (sourceMonitoringPointId != null)
      'sourceMonitoringPointId': sourceMonitoringPointId!,
    if (updateTime != null) 'updateTime': updateTime!,
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

  Policy({this.auditConfigs, this.bindings, this.etag, this.version});

  Policy.fromJson(core.Map json_)
    : this(
        auditConfigs:
            (json_['auditConfigs'] as core.List?)
                ?.map(
                  (value) => AuditConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
    if (auditConfigs != null) 'auditConfigs': auditConfigs!,
    if (bindings != null) 'bindings': bindings!,
    if (etag != null) 'etag': etag!,
    if (version != null) 'version': version!,
  };
}

/// Results of active probing from the last run of the test.
class ProbingDetails {
  /// The reason probing was aborted.
  /// Possible string values are:
  /// - "PROBING_ABORT_CAUSE_UNSPECIFIED" : No reason was specified.
  /// - "PERMISSION_DENIED" : The user lacks permission to access some of the
  /// network resources required to run the test.
  /// - "NO_SOURCE_LOCATION" : No valid source endpoint could be derived from
  /// the request.
  core.String? abortCause;

  /// The EdgeLocation from which a packet, destined to the internet, will
  /// egress the Google network.
  ///
  /// This will only be populated for a connectivity test which has an internet
  /// destination address. The absence of this field *must not* be used as an
  /// indication that the destination is part of the Google network.
  EdgeLocation? destinationEgressLocation;

  /// Probing results for all edge devices.
  core.List<SingleEdgeResponse>? edgeResponses;

  /// The source and destination endpoints derived from the test input and used
  /// for active probing.
  EndpointInfo? endpointInfo;

  /// Details about an internal failure or the cancellation of active probing.
  Status? error;

  /// Whether all relevant edge devices were probed.
  core.bool? probedAllDevices;

  /// Latency as measured by active probing in one direction: from the source to
  /// the destination endpoint.
  LatencyDistribution? probingLatency;

  /// The overall result of active probing.
  /// Possible string values are:
  /// - "PROBING_RESULT_UNSPECIFIED" : No result was specified.
  /// - "REACHABLE" : At least 95% of packets reached the destination.
  /// - "UNREACHABLE" : No packets reached the destination.
  /// - "REACHABILITY_INCONSISTENT" : Less than 95% of packets reached the
  /// destination.
  /// - "UNDETERMINED" : Reachability could not be determined. Possible reasons
  /// are: * The user lacks permission to access some of the network resources
  /// required to run the test. * No valid source endpoint could be derived from
  /// the request. * An internal error occurred.
  core.String? result;

  /// Number of probes sent.
  core.int? sentProbeCount;

  /// Number of probes that reached the destination.
  core.int? successfulProbeCount;

  /// The time that reachability was assessed through active probing.
  core.String? verifyTime;

  ProbingDetails({
    this.abortCause,
    this.destinationEgressLocation,
    this.edgeResponses,
    this.endpointInfo,
    this.error,
    this.probedAllDevices,
    this.probingLatency,
    this.result,
    this.sentProbeCount,
    this.successfulProbeCount,
    this.verifyTime,
  });

  ProbingDetails.fromJson(core.Map json_)
    : this(
        abortCause: json_['abortCause'] as core.String?,
        destinationEgressLocation:
            json_.containsKey('destinationEgressLocation')
                ? EdgeLocation.fromJson(
                  json_['destinationEgressLocation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        edgeResponses:
            (json_['edgeResponses'] as core.List?)
                ?.map(
                  (value) => SingleEdgeResponse.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        endpointInfo:
            json_.containsKey('endpointInfo')
                ? EndpointInfo.fromJson(
                  json_['endpointInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        probedAllDevices: json_['probedAllDevices'] as core.bool?,
        probingLatency:
            json_.containsKey('probingLatency')
                ? LatencyDistribution.fromJson(
                  json_['probingLatency']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        result: json_['result'] as core.String?,
        sentProbeCount: json_['sentProbeCount'] as core.int?,
        successfulProbeCount: json_['successfulProbeCount'] as core.int?,
        verifyTime: json_['verifyTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (abortCause != null) 'abortCause': abortCause!,
    if (destinationEgressLocation != null)
      'destinationEgressLocation': destinationEgressLocation!,
    if (edgeResponses != null) 'edgeResponses': edgeResponses!,
    if (endpointInfo != null) 'endpointInfo': endpointInfo!,
    if (error != null) 'error': error!,
    if (probedAllDevices != null) 'probedAllDevices': probedAllDevices!,
    if (probingLatency != null) 'probingLatency': probingLatency!,
    if (result != null) 'result': result!,
    if (sentProbeCount != null) 'sentProbeCount': sentProbeCount!,
    if (successfulProbeCount != null)
      'successfulProbeCount': successfulProbeCount!,
    if (verifyTime != null) 'verifyTime': verifyTime!,
  };
}

/// Message describing the provider tag.
class ProviderTag {
  /// The category of the provider tag.
  ///
  /// Output only.
  core.String? category;

  /// The resource type of the provider tag.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED" : The default value. This value is used if
  /// the status is omitted.
  /// - "NETWORK_PATH" : Network path.
  /// - "PATH_TEMPLATE" : Path template.
  /// - "WEB_PATH" : Web path.
  /// - "MONITORING_POLICY" : Monitoring policy.
  /// - "MONITORING_POINT" : Monitoring point.
  core.String? resourceType;

  /// The value of the provider tag.
  ///
  /// Output only.
  core.String? value;

  ProviderTag({this.category, this.resourceType, this.value});

  ProviderTag.fromJson(core.Map json_)
    : this(
        category: json_['category'] as core.String?,
        resourceType: json_['resourceType'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (category != null) 'category': category!,
    if (resourceType != null) 'resourceType': resourceType!,
    if (value != null) 'value': value!,
  };
}

/// For display only.
///
/// Metadata associated with ProxyConnection.
typedef ProxyConnectionInfo = $ProxyConnectionInfo;

/// Results of the configuration analysis from the last run of the test.
class ReachabilityDetails {
  /// The details of a failure or a cancellation of reachability analysis.
  Status? error;

  /// The overall result of the test's configuration analysis.
  /// Possible string values are:
  /// - "RESULT_UNSPECIFIED" : No result was specified.
  /// - "REACHABLE" : Possible scenarios are: * The configuration analysis
  /// determined that a packet originating from the source is expected to reach
  /// the destination. * The analysis didn't complete because the user lacks
  /// permission for some of the resources in the trace. However, at the time
  /// the user's permission became insufficient, the trace had been successful
  /// so far.
  /// - "UNREACHABLE" : A packet originating from the source is expected to be
  /// dropped before reaching the destination.
  /// - "AMBIGUOUS" : The source and destination endpoints do not uniquely
  /// identify the test location in the network, and the reachability result
  /// contains multiple traces. For some traces, a packet could be delivered,
  /// and for others, it would not be. This result is also assigned to
  /// configuration analysis of return path if on its own it should be
  /// REACHABLE, but configuration analysis of forward path is AMBIGUOUS.
  /// - "UNDETERMINED" : The configuration analysis did not complete. Possible
  /// reasons are: * A permissions error occurred--for example, the user might
  /// not have read permission for all of the resources named in the test. * An
  /// internal error occurred. * The analyzer received an invalid or unsupported
  /// argument or was unable to identify a known endpoint.
  core.String? result;

  /// Result may contain a list of traces if a test has multiple possible paths
  /// in the network, such as when destination endpoint is a load balancer with
  /// multiple backends.
  core.List<Trace>? traces;

  /// The time of the configuration analysis.
  core.String? verifyTime;

  ReachabilityDetails({this.error, this.result, this.traces, this.verifyTime});

  ReachabilityDetails.fromJson(core.Map json_)
    : this(
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        result: json_['result'] as core.String?,
        traces:
            (json_['traces'] as core.List?)
                ?.map(
                  (value) => Trace.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        verifyTime: json_['verifyTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (error != null) 'error': error!,
    if (result != null) 'result': result!,
    if (traces != null) 'traces': traces!,
    if (verifyTime != null) 'verifyTime': verifyTime!,
  };
}

/// For display only.
///
/// Metadata associated with a Redis Cluster.
typedef RedisClusterInfo = $RedisClusterInfo;

/// For display only.
///
/// Metadata associated with a Cloud Redis Instance.
typedef RedisInstanceInfo = $RedisInstanceInfo;

/// Request for the `RerunConnectivityTest` method.
typedef RerunConnectivityTestRequest = $Empty;

/// For display only.
///
/// Metadata associated with a Compute Engine route.
typedef RouteInfo = $RouteInfo;

/// For display only.
///
/// Metadata associated with a serverless public connection.
typedef ServerlessExternalConnectionInfo = $ServerlessExternalConnectionInfo;

/// For display only.
///
/// Metadata associated with the serverless network endpoint group backend.
typedef ServerlessNegInfo = $ServerlessNegInfo;

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

  SetIamPolicyRequest({this.policy, this.updateMask});

  SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy:
            json_.containsKey('policy')
                ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (policy != null) 'policy': policy!,
    if (updateMask != null) 'updateMask': updateMask!,
  };
}

/// Probing results for a single edge device.
class SingleEdgeResponse {
  /// The EdgeLocation from which a packet, destined to the internet, will
  /// egress the Google network.
  ///
  /// This will only be populated for a connectivity test which has an internet
  /// destination address. The absence of this field *must not* be used as an
  /// indication that the destination is part of the Google network.
  EdgeLocation? destinationEgressLocation;

  /// Router name in the format '{router}.{metroshard}'.
  ///
  /// For example: pf01.aaa01, pr02.aaa01.
  core.String? destinationRouter;

  /// Latency as measured by active probing in one direction: from the source to
  /// the destination endpoint.
  LatencyDistribution? probingLatency;

  /// The overall result of active probing for this egress device.
  /// Possible string values are:
  /// - "PROBING_RESULT_UNSPECIFIED" : No result was specified.
  /// - "REACHABLE" : At least 95% of packets reached the destination.
  /// - "UNREACHABLE" : No packets reached the destination.
  /// - "REACHABILITY_INCONSISTENT" : Less than 95% of packets reached the
  /// destination.
  /// - "UNDETERMINED" : Reachability could not be determined. Possible reasons
  /// are: * The user lacks permission to access some of the network resources
  /// required to run the test. * No valid source endpoint could be derived from
  /// the request. * An internal error occurred.
  core.String? result;

  /// Number of probes sent.
  core.int? sentProbeCount;

  /// Number of probes that reached the destination.
  core.int? successfulProbeCount;

  SingleEdgeResponse({
    this.destinationEgressLocation,
    this.destinationRouter,
    this.probingLatency,
    this.result,
    this.sentProbeCount,
    this.successfulProbeCount,
  });

  SingleEdgeResponse.fromJson(core.Map json_)
    : this(
        destinationEgressLocation:
            json_.containsKey('destinationEgressLocation')
                ? EdgeLocation.fromJson(
                  json_['destinationEgressLocation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        destinationRouter: json_['destinationRouter'] as core.String?,
        probingLatency:
            json_.containsKey('probingLatency')
                ? LatencyDistribution.fromJson(
                  json_['probingLatency']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        result: json_['result'] as core.String?,
        sentProbeCount: json_['sentProbeCount'] as core.int?,
        successfulProbeCount: json_['successfulProbeCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destinationEgressLocation != null)
      'destinationEgressLocation': destinationEgressLocation!,
    if (destinationRouter != null) 'destinationRouter': destinationRouter!,
    if (probingLatency != null) 'probingLatency': probingLatency!,
    if (result != null) 'result': result!,
    if (sentProbeCount != null) 'sentProbeCount': sentProbeCount!,
    if (successfulProbeCount != null)
      'successfulProbeCount': successfulProbeCount!,
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

/// A simulated forwarding path is composed of multiple steps.
///
/// Each step has a well-defined state and an associated configuration.
class Step {
  /// Display information of the final state "abort" and reason.
  AbortInfo? abort;

  /// Display information of an App Engine service version.
  AppEngineVersionInfo? appEngineVersion;

  /// This is a step that leads to the final state Drop.
  core.bool? causesDrop;

  /// Display information of a Cloud Function.
  CloudFunctionInfo? cloudFunction;

  /// Display information of a Cloud Run revision.
  CloudRunRevisionInfo? cloudRunRevision;

  /// Display information of a Cloud SQL instance.
  CloudSQLInstanceInfo? cloudSqlInstance;

  /// Display information of the final state "deliver" and reason.
  DeliverInfo? deliver;

  /// A description of the step.
  ///
  /// Usually this is a summary of the state.
  core.String? description;

  /// Display information of a serverless direct VPC egress connection.
  DirectVpcEgressConnectionInfo? directVpcEgressConnection;

  /// Display information of the final state "drop" and reason.
  DropInfo? drop;

  /// Display information of the source and destination under analysis.
  ///
  /// The endpoint information in an intermediate state may differ with the
  /// initial input, as it might be modified by state like NAT, or Connection
  /// Proxy.
  EndpointInfo? endpoint;

  /// Display information of a Compute Engine firewall rule.
  FirewallInfo? firewall;

  /// Display information of the final state "forward" and reason.
  ForwardInfo? forward;

  /// Display information of a Compute Engine forwarding rule.
  ForwardingRuleInfo? forwardingRule;

  /// Display information of a Google Kubernetes Engine cluster master.
  GKEMasterInfo? gkeMaster;

  /// Display information of a Google service
  GoogleServiceInfo? googleService;

  /// Display information of a Compute Engine instance.
  InstanceInfo? instance;

  /// Display information of the load balancers.
  ///
  /// Deprecated in favor of the `load_balancer_backend_info` field, not used in
  /// new tests.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  LoadBalancerInfo? loadBalancer;

  /// Display information of a specific load balancer backend.
  LoadBalancerBackendInfo? loadBalancerBackendInfo;

  /// Display information of a NAT.
  NatInfo? nat;

  /// Display information of a Google Cloud network.
  NetworkInfo? network;

  /// Project ID that contains the configuration this step is validating.
  core.String? projectId;

  /// Display information of a ProxyConnection.
  ProxyConnectionInfo? proxyConnection;

  /// Display information of a Redis Cluster.
  RedisClusterInfo? redisCluster;

  /// Display information of a Redis Instance.
  RedisInstanceInfo? redisInstance;

  /// Display information of a Compute Engine route.
  RouteInfo? route;

  /// Display information of a serverless public (external) connection.
  ServerlessExternalConnectionInfo? serverlessExternalConnection;

  /// Display information of a Serverless network endpoint group backend.
  ///
  /// Used only for return traces.
  ServerlessNegInfo? serverlessNeg;

  /// Each step is in one of the pre-defined states.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "START_FROM_INSTANCE" : Initial state: packet originating from a Compute
  /// Engine instance. An InstanceInfo is populated with starting instance
  /// information.
  /// - "START_FROM_INTERNET" : Initial state: packet originating from the
  /// internet. The endpoint information is populated.
  /// - "START_FROM_GOOGLE_SERVICE" : Initial state: packet originating from a
  /// Google service. The google_service information is populated.
  /// - "START_FROM_PRIVATE_NETWORK" : Initial state: packet originating from a
  /// VPC or on-premises network with internal source IP. If the source is a VPC
  /// network visible to the user, a NetworkInfo is populated with details of
  /// the network.
  /// - "START_FROM_GKE_MASTER" : Initial state: packet originating from a
  /// Google Kubernetes Engine cluster master. A GKEMasterInfo is populated with
  /// starting instance information.
  /// - "START_FROM_CLOUD_SQL_INSTANCE" : Initial state: packet originating from
  /// a Cloud SQL instance. A CloudSQLInstanceInfo is populated with starting
  /// instance information.
  /// - "START_FROM_REDIS_INSTANCE" : Initial state: packet originating from a
  /// Redis instance. A RedisInstanceInfo is populated with starting instance
  /// information.
  /// - "START_FROM_REDIS_CLUSTER" : Initial state: packet originating from a
  /// Redis Cluster. A RedisClusterInfo is populated with starting Cluster
  /// information.
  /// - "START_FROM_CLOUD_FUNCTION" : Initial state: packet originating from a
  /// Cloud Function. A CloudFunctionInfo is populated with starting function
  /// information.
  /// - "START_FROM_APP_ENGINE_VERSION" : Initial state: packet originating from
  /// an App Engine service version. An AppEngineVersionInfo is populated with
  /// starting version information.
  /// - "START_FROM_CLOUD_RUN_REVISION" : Initial state: packet originating from
  /// a Cloud Run revision. A CloudRunRevisionInfo is populated with starting
  /// revision information.
  /// - "START_FROM_STORAGE_BUCKET" : Initial state: packet originating from a
  /// Storage Bucket. Used only for return traces. The storage_bucket
  /// information is populated.
  /// - "START_FROM_PSC_PUBLISHED_SERVICE" : Initial state: packet originating
  /// from a published service that uses Private Service Connect. Used only for
  /// return traces.
  /// - "START_FROM_SERVERLESS_NEG" : Initial state: packet originating from a
  /// serverless network endpoint group backend. Used only for return traces.
  /// The serverless_neg information is populated.
  /// - "APPLY_INGRESS_FIREWALL_RULE" : Config checking state: verify ingress
  /// firewall rule.
  /// - "APPLY_EGRESS_FIREWALL_RULE" : Config checking state: verify egress
  /// firewall rule.
  /// - "APPLY_ROUTE" : Config checking state: verify route.
  /// - "APPLY_FORWARDING_RULE" : Config checking state: match forwarding rule.
  /// - "ANALYZE_LOAD_BALANCER_BACKEND" : Config checking state: verify load
  /// balancer backend configuration.
  /// - "SPOOFING_APPROVED" : Config checking state: packet sent or received
  /// under foreign IP address and allowed.
  /// - "ARRIVE_AT_INSTANCE" : Forwarding state: arriving at a Compute Engine
  /// instance.
  /// - "ARRIVE_AT_INTERNAL_LOAD_BALANCER" : Forwarding state: arriving at a
  /// Compute Engine internal load balancer.
  /// - "ARRIVE_AT_EXTERNAL_LOAD_BALANCER" : Forwarding state: arriving at a
  /// Compute Engine external load balancer.
  /// - "ARRIVE_AT_VPN_GATEWAY" : Forwarding state: arriving at a Cloud VPN
  /// gateway.
  /// - "ARRIVE_AT_VPN_TUNNEL" : Forwarding state: arriving at a Cloud VPN
  /// tunnel.
  /// - "ARRIVE_AT_VPC_CONNECTOR" : Forwarding state: arriving at a VPC
  /// connector.
  /// - "DIRECT_VPC_EGRESS_CONNECTION" : Forwarding state: for packets
  /// originating from a serverless endpoint forwarded through Direct VPC
  /// egress.
  /// - "SERVERLESS_EXTERNAL_CONNECTION" : Forwarding state: for packets
  /// originating from a serverless endpoint forwarded through public (external)
  /// connectivity.
  /// - "NAT" : Transition state: packet header translated.
  /// - "PROXY_CONNECTION" : Transition state: original connection is terminated
  /// and a new proxied connection is initiated.
  /// - "DELIVER" : Final state: packet could be delivered.
  /// - "DROP" : Final state: packet could be dropped.
  /// - "FORWARD" : Final state: packet could be forwarded to a network with an
  /// unknown configuration.
  /// - "ABORT" : Final state: analysis is aborted.
  /// - "VIEWER_PERMISSION_MISSING" : Special state: viewer of the test result
  /// does not have permission to see the configuration in this step.
  core.String? state;

  /// Display information of a Storage Bucket.
  ///
  /// Used only for return traces.
  StorageBucketInfo? storageBucket;

  /// Display information of a VPC connector.
  VpcConnectorInfo? vpcConnector;

  /// Display information of a Compute Engine VPN gateway.
  VpnGatewayInfo? vpnGateway;

  /// Display information of a Compute Engine VPN tunnel.
  VpnTunnelInfo? vpnTunnel;

  Step({
    this.abort,
    this.appEngineVersion,
    this.causesDrop,
    this.cloudFunction,
    this.cloudRunRevision,
    this.cloudSqlInstance,
    this.deliver,
    this.description,
    this.directVpcEgressConnection,
    this.drop,
    this.endpoint,
    this.firewall,
    this.forward,
    this.forwardingRule,
    this.gkeMaster,
    this.googleService,
    this.instance,
    this.loadBalancer,
    this.loadBalancerBackendInfo,
    this.nat,
    this.network,
    this.projectId,
    this.proxyConnection,
    this.redisCluster,
    this.redisInstance,
    this.route,
    this.serverlessExternalConnection,
    this.serverlessNeg,
    this.state,
    this.storageBucket,
    this.vpcConnector,
    this.vpnGateway,
    this.vpnTunnel,
  });

  Step.fromJson(core.Map json_)
    : this(
        abort:
            json_.containsKey('abort')
                ? AbortInfo.fromJson(
                  json_['abort'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        appEngineVersion:
            json_.containsKey('appEngineVersion')
                ? AppEngineVersionInfo.fromJson(
                  json_['appEngineVersion']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        causesDrop: json_['causesDrop'] as core.bool?,
        cloudFunction:
            json_.containsKey('cloudFunction')
                ? CloudFunctionInfo.fromJson(
                  json_['cloudFunction'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cloudRunRevision:
            json_.containsKey('cloudRunRevision')
                ? CloudRunRevisionInfo.fromJson(
                  json_['cloudRunRevision']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cloudSqlInstance:
            json_.containsKey('cloudSqlInstance')
                ? CloudSQLInstanceInfo.fromJson(
                  json_['cloudSqlInstance']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        deliver:
            json_.containsKey('deliver')
                ? DeliverInfo.fromJson(
                  json_['deliver'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        directVpcEgressConnection:
            json_.containsKey('directVpcEgressConnection')
                ? DirectVpcEgressConnectionInfo.fromJson(
                  json_['directVpcEgressConnection']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        drop:
            json_.containsKey('drop')
                ? DropInfo.fromJson(
                  json_['drop'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        endpoint:
            json_.containsKey('endpoint')
                ? EndpointInfo.fromJson(
                  json_['endpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        firewall:
            json_.containsKey('firewall')
                ? FirewallInfo.fromJson(
                  json_['firewall'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        forward:
            json_.containsKey('forward')
                ? ForwardInfo.fromJson(
                  json_['forward'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        forwardingRule:
            json_.containsKey('forwardingRule')
                ? ForwardingRuleInfo.fromJson(
                  json_['forwardingRule']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gkeMaster:
            json_.containsKey('gkeMaster')
                ? GKEMasterInfo.fromJson(
                  json_['gkeMaster'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        googleService:
            json_.containsKey('googleService')
                ? GoogleServiceInfo.fromJson(
                  json_['googleService'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        instance:
            json_.containsKey('instance')
                ? InstanceInfo.fromJson(
                  json_['instance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        loadBalancer:
            json_.containsKey('loadBalancer')
                ? LoadBalancerInfo.fromJson(
                  json_['loadBalancer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        loadBalancerBackendInfo:
            json_.containsKey('loadBalancerBackendInfo')
                ? LoadBalancerBackendInfo.fromJson(
                  json_['loadBalancerBackendInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        nat:
            json_.containsKey('nat')
                ? NatInfo.fromJson(
                  json_['nat'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        network:
            json_.containsKey('network')
                ? NetworkInfo.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        projectId: json_['projectId'] as core.String?,
        proxyConnection:
            json_.containsKey('proxyConnection')
                ? ProxyConnectionInfo.fromJson(
                  json_['proxyConnection']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        redisCluster:
            json_.containsKey('redisCluster')
                ? RedisClusterInfo.fromJson(
                  json_['redisCluster'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        redisInstance:
            json_.containsKey('redisInstance')
                ? RedisInstanceInfo.fromJson(
                  json_['redisInstance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        route:
            json_.containsKey('route')
                ? RouteInfo.fromJson(
                  json_['route'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serverlessExternalConnection:
            json_.containsKey('serverlessExternalConnection')
                ? ServerlessExternalConnectionInfo.fromJson(
                  json_['serverlessExternalConnection']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        serverlessNeg:
            json_.containsKey('serverlessNeg')
                ? ServerlessNegInfo.fromJson(
                  json_['serverlessNeg'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        storageBucket:
            json_.containsKey('storageBucket')
                ? StorageBucketInfo.fromJson(
                  json_['storageBucket'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vpcConnector:
            json_.containsKey('vpcConnector')
                ? VpcConnectorInfo.fromJson(
                  json_['vpcConnector'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vpnGateway:
            json_.containsKey('vpnGateway')
                ? VpnGatewayInfo.fromJson(
                  json_['vpnGateway'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        vpnTunnel:
            json_.containsKey('vpnTunnel')
                ? VpnTunnelInfo.fromJson(
                  json_['vpnTunnel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (abort != null) 'abort': abort!,
    if (appEngineVersion != null) 'appEngineVersion': appEngineVersion!,
    if (causesDrop != null) 'causesDrop': causesDrop!,
    if (cloudFunction != null) 'cloudFunction': cloudFunction!,
    if (cloudRunRevision != null) 'cloudRunRevision': cloudRunRevision!,
    if (cloudSqlInstance != null) 'cloudSqlInstance': cloudSqlInstance!,
    if (deliver != null) 'deliver': deliver!,
    if (description != null) 'description': description!,
    if (directVpcEgressConnection != null)
      'directVpcEgressConnection': directVpcEgressConnection!,
    if (drop != null) 'drop': drop!,
    if (endpoint != null) 'endpoint': endpoint!,
    if (firewall != null) 'firewall': firewall!,
    if (forward != null) 'forward': forward!,
    if (forwardingRule != null) 'forwardingRule': forwardingRule!,
    if (gkeMaster != null) 'gkeMaster': gkeMaster!,
    if (googleService != null) 'googleService': googleService!,
    if (instance != null) 'instance': instance!,
    if (loadBalancer != null) 'loadBalancer': loadBalancer!,
    if (loadBalancerBackendInfo != null)
      'loadBalancerBackendInfo': loadBalancerBackendInfo!,
    if (nat != null) 'nat': nat!,
    if (network != null) 'network': network!,
    if (projectId != null) 'projectId': projectId!,
    if (proxyConnection != null) 'proxyConnection': proxyConnection!,
    if (redisCluster != null) 'redisCluster': redisCluster!,
    if (redisInstance != null) 'redisInstance': redisInstance!,
    if (route != null) 'route': route!,
    if (serverlessExternalConnection != null)
      'serverlessExternalConnection': serverlessExternalConnection!,
    if (serverlessNeg != null) 'serverlessNeg': serverlessNeg!,
    if (state != null) 'state': state!,
    if (storageBucket != null) 'storageBucket': storageBucket!,
    if (vpcConnector != null) 'vpcConnector': vpcConnector!,
    if (vpnGateway != null) 'vpnGateway': vpnGateway!,
    if (vpnTunnel != null) 'vpnTunnel': vpnTunnel!,
  };
}

/// For display only.
///
/// Metadata associated with Storage Bucket.
typedef StorageBucketInfo = $StorageBucketInfo;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Trace represents one simulated packet forwarding path.
///
/// * Each trace contains multiple ordered steps. * Each step is in a particular
/// state with associated configuration. * State is categorized as final or
/// non-final states. * Each final state has a reason associated. * Each trace
/// must end with a final state (the last step). ```
/// |---------------------Trace----------------------| Step1(State) Step2(State)
/// --- StepN(State(final)) ```
class Trace {
  /// Derived from the source and destination endpoints definition specified by
  /// user request, and validated by the data plane model.
  ///
  /// If there are multiple traces starting from different source locations,
  /// then the endpoint_info may be different between traces.
  EndpointInfo? endpointInfo;

  /// ID of trace.
  ///
  /// For forward traces, this ID is unique for each trace. For return traces,
  /// it matches ID of associated forward trace. A single forward trace can be
  /// associated with none, one or more than one return trace.
  core.int? forwardTraceId;

  /// A trace of a test contains multiple steps from the initial state to the
  /// final state (delivered, dropped, forwarded, or aborted).
  ///
  /// The steps are ordered by the processing sequence within the simulated
  /// network state machine. It is critical to preserve the order of the steps
  /// and avoid reordering or sorting them.
  core.List<Step>? steps;

  Trace({this.endpointInfo, this.forwardTraceId, this.steps});

  Trace.fromJson(core.Map json_)
    : this(
        endpointInfo:
            json_.containsKey('endpointInfo')
                ? EndpointInfo.fromJson(
                  json_['endpointInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        forwardTraceId: json_['forwardTraceId'] as core.int?,
        steps:
            (json_['steps'] as core.List?)
                ?.map(
                  (value) => Step.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endpointInfo != null) 'endpointInfo': endpointInfo!,
    if (forwardTraceId != null) 'forwardTraceId': forwardTraceId!,
    if (steps != null) 'steps': steps!,
  };
}

/// For display only.
///
/// Metadata associated with a VPC connector.
typedef VpcConnectorInfo = $VpcConnectorInfo;

/// A configuration to generate VPC Flow Logs.
class VpcFlowLogsConfig {
  /// The aggregation interval for the logs.
  ///
  /// Default value is INTERVAL_5_SEC.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AGGREGATION_INTERVAL_UNSPECIFIED" : If not specified, will default to
  /// INTERVAL_5_SEC.
  /// - "INTERVAL_5_SEC" : Aggregate logs in 5s intervals.
  /// - "INTERVAL_30_SEC" : Aggregate logs in 30s intervals.
  /// - "INTERVAL_1_MIN" : Aggregate logs in 1m intervals.
  /// - "INTERVAL_5_MIN" : Aggregate logs in 5m intervals.
  /// - "INTERVAL_10_MIN" : Aggregate logs in 10m intervals.
  /// - "INTERVAL_15_MIN" : Aggregate logs in 15m intervals.
  core.String? aggregationInterval;

  /// The time the config was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user-supplied description of the VPC Flow Logs configuration.
  ///
  /// Maximum of 512 characters.
  ///
  /// Optional.
  core.String? description;

  /// Export filter used to define which VPC Flow Logs should be logged.
  ///
  /// Optional.
  core.String? filterExpr;

  /// The value of the field must be in (0, 1\].
  ///
  /// The sampling rate of VPC Flow Logs where 1.0 means all collected logs are
  /// reported. Setting the sampling rate to 0.0 is not allowed. If you want to
  /// disable VPC Flow Logs, use the state field instead. Default value is 1.0.
  ///
  /// Optional.
  core.double? flowSampling;

  /// Traffic will be logged from the Interconnect Attachment.
  ///
  /// Format:
  /// projects/{project_id}/regions/{region}/interconnectAttachments/{name}
  core.String? interconnectAttachment;

  /// Resource labels to represent user-provided metadata.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Configures whether all, none or a subset of metadata fields should be
  /// added to the reported VPC flow logs.
  ///
  /// Default value is INCLUDE_ALL_METADATA.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "METADATA_UNSPECIFIED" : If not specified, will default to
  /// INCLUDE_ALL_METADATA.
  /// - "INCLUDE_ALL_METADATA" : Include all metadata fields.
  /// - "EXCLUDE_ALL_METADATA" : Exclude all metadata fields.
  /// - "CUSTOM_METADATA" : Include only custom fields (specified in
  /// metadata_fields).
  core.String? metadata;

  /// Custom metadata fields to include in the reported VPC flow logs.
  ///
  /// Can only be specified if "metadata" was set to CUSTOM_METADATA.
  ///
  /// Optional.
  core.List<core.String>? metadataFields;

  /// Identifier.
  ///
  /// Unique name of the configuration. The name can have one of the following
  /// forms: - For project-level configurations:
  /// `projects/{project_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  /// - For organization-level configurations:
  /// `organizations/{organization_id}/locations/global/vpcFlowLogsConfigs/{vpc_flow_logs_config_id}`
  core.String? name;

  /// The state of the VPC Flow Log configuration.
  ///
  /// Default value is ENABLED. When creating a new configuration, it must be
  /// enabled. Setting state=DISABLED will pause the log generation for this
  /// config.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : If not specified, will default to ENABLED.
  /// - "ENABLED" : When ENABLED, this configuration will generate logs.
  /// - "DISABLED" : When DISABLED, this configuration will not generate logs.
  core.String? state;

  /// Describes the state of the configured target resource for diagnostic
  /// purposes.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TARGET_RESOURCE_STATE_UNSPECIFIED" : Unspecified target resource state.
  /// - "TARGET_RESOURCE_EXISTS" : Indicates that the target resource exists.
  /// - "TARGET_RESOURCE_DOES_NOT_EXIST" : Indicates that the target resource
  /// does not exist.
  core.String? targetResourceState;

  /// The time the config was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Traffic will be logged from the VPN Tunnel.
  ///
  /// Format: projects/{project_id}/regions/{region}/vpnTunnels/{name}
  core.String? vpnTunnel;

  VpcFlowLogsConfig({
    this.aggregationInterval,
    this.createTime,
    this.description,
    this.filterExpr,
    this.flowSampling,
    this.interconnectAttachment,
    this.labels,
    this.metadata,
    this.metadataFields,
    this.name,
    this.state,
    this.targetResourceState,
    this.updateTime,
    this.vpnTunnel,
  });

  VpcFlowLogsConfig.fromJson(core.Map json_)
    : this(
        aggregationInterval: json_['aggregationInterval'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        filterExpr: json_['filterExpr'] as core.String?,
        flowSampling: (json_['flowSampling'] as core.num?)?.toDouble(),
        interconnectAttachment: json_['interconnectAttachment'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        metadata: json_['metadata'] as core.String?,
        metadataFields:
            (json_['metadataFields'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        targetResourceState: json_['targetResourceState'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        vpnTunnel: json_['vpnTunnel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (aggregationInterval != null)
      'aggregationInterval': aggregationInterval!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (filterExpr != null) 'filterExpr': filterExpr!,
    if (flowSampling != null) 'flowSampling': flowSampling!,
    if (interconnectAttachment != null)
      'interconnectAttachment': interconnectAttachment!,
    if (labels != null) 'labels': labels!,
    if (metadata != null) 'metadata': metadata!,
    if (metadataFields != null) 'metadataFields': metadataFields!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (targetResourceState != null)
      'targetResourceState': targetResourceState!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (vpnTunnel != null) 'vpnTunnel': vpnTunnel!,
  };
}

/// For display only.
///
/// Metadata associated with a Compute Engine VPN gateway.
typedef VpnGatewayInfo = $VpnGatewayInfo;

/// For display only.
///
/// Metadata associated with a Compute Engine VPN tunnel.
typedef VpnTunnelInfo = $VpnTunnelInfo;

/// Message describing WebPath resource.
class WebPath {
  /// The time the WebPath was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Web monitoring target.
  ///
  /// Output only.
  core.String? destination;

  /// Display name of the WebPath.
  ///
  /// Output only.
  core.String? displayName;

  /// Monitoring interval.
  ///
  /// Output only.
  core.String? interval;

  /// Is monitoring enabled for the WebPath.
  ///
  /// Output only.
  core.bool? monitoringEnabled;

  /// Display name of the monitoring policy.
  ///
  /// Output only.
  core.String? monitoringPolicyDisplayName;

  /// ID of the monitoring policy.
  ///
  /// Output only.
  core.String? monitoringPolicyId;

  /// The monitoring status of the WebPath.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MONITORING_STATUS_UNSPECIFIED" : The default value. This value is used
  /// if the status is omitted.
  /// - "MONITORING" : Monitoring is enabled.
  /// - "POLICY_MISMATCH" : Policy is mismatched.
  /// - "MONITORING_POINT_OFFLINE" : Monitoring point is offline.
  /// - "DISABLED" : Monitoring is disabled.
  core.String? monitoringStatus;

  /// Identifier.
  ///
  /// Name of the resource. Format:
  /// `projects/{project}/locations/{location}/networkMonitoringProviders/{network_monitoring_provider}/webPaths/{web_path}`
  core.String? name;

  /// The provider tags of the web path.
  ///
  /// Output only.
  core.List<ProviderTag>? providerTags;

  /// Link to provider's UI; link shows the WebPath.
  ///
  /// Output only.
  core.String? providerUiUri;

  /// Provider's UUID of the related NetworkPath.
  ///
  /// Output only.
  core.String? relatedNetworkPathId;

  /// ID of the source MonitoringPoint.
  ///
  /// Output only.
  core.String? sourceMonitoringPointId;

  /// The time the WebPath was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The workflow type of the WebPath.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "WORKFLOW_TYPE_UNSPECIFIED" : The default value. This value is used if
  /// the status is omitted.
  /// - "BROWSER" : Browser.
  /// - "HTTP" : HTTP.
  core.String? workflowType;

  WebPath({
    this.createTime,
    this.destination,
    this.displayName,
    this.interval,
    this.monitoringEnabled,
    this.monitoringPolicyDisplayName,
    this.monitoringPolicyId,
    this.monitoringStatus,
    this.name,
    this.providerTags,
    this.providerUiUri,
    this.relatedNetworkPathId,
    this.sourceMonitoringPointId,
    this.updateTime,
    this.workflowType,
  });

  WebPath.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        destination: json_['destination'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        interval: json_['interval'] as core.String?,
        monitoringEnabled: json_['monitoringEnabled'] as core.bool?,
        monitoringPolicyDisplayName:
            json_['monitoringPolicyDisplayName'] as core.String?,
        monitoringPolicyId: json_['monitoringPolicyId'] as core.String?,
        monitoringStatus: json_['monitoringStatus'] as core.String?,
        name: json_['name'] as core.String?,
        providerTags:
            (json_['providerTags'] as core.List?)
                ?.map(
                  (value) => ProviderTag.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        providerUiUri: json_['providerUiUri'] as core.String?,
        relatedNetworkPathId: json_['relatedNetworkPathId'] as core.String?,
        sourceMonitoringPointId:
            json_['sourceMonitoringPointId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        workflowType: json_['workflowType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (destination != null) 'destination': destination!,
    if (displayName != null) 'displayName': displayName!,
    if (interval != null) 'interval': interval!,
    if (monitoringEnabled != null) 'monitoringEnabled': monitoringEnabled!,
    if (monitoringPolicyDisplayName != null)
      'monitoringPolicyDisplayName': monitoringPolicyDisplayName!,
    if (monitoringPolicyId != null) 'monitoringPolicyId': monitoringPolicyId!,
    if (monitoringStatus != null) 'monitoringStatus': monitoringStatus!,
    if (name != null) 'name': name!,
    if (providerTags != null) 'providerTags': providerTags!,
    if (providerUiUri != null) 'providerUiUri': providerUiUri!,
    if (relatedNetworkPathId != null)
      'relatedNetworkPathId': relatedNetworkPathId!,
    if (sourceMonitoringPointId != null)
      'sourceMonitoringPointId': sourceMonitoringPointId!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (workflowType != null) 'workflowType': workflowType!,
  };
}
