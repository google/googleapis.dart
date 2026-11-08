// Copyright 2023 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Workload Manager API - v1
///
/// Workload Manager is a service that provides tooling for enterprise workloads
/// to automate the deployment and validation of your workloads against best
/// practices and recommendations.
///
/// For more information, see <https://cloud.google.com/workload-manager/docs>
///
/// Create an instance of [WorkloadManagerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsDeploymentsResource]
///       - [ProjectsLocationsDeploymentsActuationsResource]
///     - [ProjectsLocationsDiscoveredprofilesResource]
///       - [ProjectsLocationsDiscoveredprofilesHealthResource]
///     - [ProjectsLocationsEvaluationsResource]
///       - [ProjectsLocationsEvaluationsExecutionsResource]
///         - [ProjectsLocationsEvaluationsExecutionsResultsResource]
///         - [ProjectsLocationsEvaluationsExecutionsScannedResourcesResource]
///     - [ProjectsLocationsInsightsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRulesResource]
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

/// Workload Manager is a service that provides tooling for enterprise workloads
/// to automate the deployment and validation of your workloads against best
/// practices and recommendations.
class WorkloadManagerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  WorkloadManagerApi(
    http.Client client, {
    core.String rootUrl = 'https://workloadmanager.googleapis.com/',
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

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeploymentsResource get deployments =>
      ProjectsLocationsDeploymentsResource(_requester);
  ProjectsLocationsDiscoveredprofilesResource get discoveredprofiles =>
      ProjectsLocationsDiscoveredprofilesResource(_requester);
  ProjectsLocationsEvaluationsResource get evaluations =>
      ProjectsLocationsEvaluationsResource(_requester);
  ProjectsLocationsInsightsResource get insights =>
      ProjectsLocationsInsightsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsRulesResource get rules =>
      ProjectsLocationsRulesResource(_requester);

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
      'fields': ?$fields == null ? null : [$fields],
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
  /// This method lists locations based on the resource scope provided in the
  /// ListLocationsRequest.name field: * **Global locations**: If `name` is
  /// empty, the method lists the public locations available to all projects. *
  /// **Project-specific locations**: If `name` follows the format
  /// `projects/{project}`, the method lists locations visible to that specific
  /// project. This includes public, private, or other project-specific
  /// locations enabled for the project. For gRPC and client library
  /// implementations, the resource name is passed as the `name` field. For
  /// direct service calls, the resource name is incorporated into the request
  /// path based on the specific service implementation and version.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. Do not use this field unless explicitly
  /// documented otherwise. This is primarily for internal usage.
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
      'extraLocationTypes': ?extraLocationTypes,
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsLocationsDeploymentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeploymentsActuationsResource get actuations =>
      ProjectsLocationsDeploymentsActuationsResource(_requester);

  ProjectsLocationsDeploymentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Deployment in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource prefix of the Deployment using the form:
  /// `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [deploymentId] - Required. ID of the deployment.
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
    Deployment request,
    core.String parent, {
    core.String? deploymentId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'deploymentId': ?deploymentId == null ? null : [deploymentId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, any actuation will also be deleted.
  /// Follows the best practice from https://aip.dev/135#cascading-delete.
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Deployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. The format is
  /// 'projects/{project_id}/locations/{location_id}/deployments/{deployment_id}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Deployment> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Deployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Deployments in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource prefix of the Deployment using the form:
  /// `projects/{project_id}/locations/{location_id}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter resource following https://google.aip.dev/160.
  ///
  /// [orderBy] - Optional. Field to sort by. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. The maximum value is 1000; values above 1000 will be
  /// coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDeploymentsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/deployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDeploymentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDeploymentsActuationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeploymentsActuationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new actuation for an existing Deployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the Actuation location using the
  /// form:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
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
    Actuation request,
    core.String parent, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/actuations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Actuation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the actuation to delete.
  /// projects/{project}/locations/{location}/deployments/{deployment}/actuations/{actuation}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+/actuations/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Actuation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+/actuations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Actuation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Actuation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Actuation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Actuations in a given project, location and deployment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource prefix of the Actuation using the form:
  /// 'projects/{project_id}/locations/{location}/deployments/{deployment}'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deployments/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Field to sort by. See
  /// https://google.aip.dev/132#ordering for more details.
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
  /// Completes with a [ListActuationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListActuationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/actuations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListActuationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDiscoveredprofilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDiscoveredprofilesHealthResource get health =>
      ProjectsLocationsDiscoveredprofilesHealthResource(_requester);

  ProjectsLocationsDiscoveredprofilesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a discovered workload profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/discoveredprofiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkloadProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkloadProfile> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WorkloadProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List discovered workload profiles
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListDiscoveredProfilesRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
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
  /// Completes with a [ListDiscoveredProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDiscoveredProfilesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/discoveredprofiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDiscoveredProfilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDiscoveredprofilesHealthResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDiscoveredprofilesHealthResource(commons.ApiRequester client)
    : _requester = client;

  /// Get the health of a discovered workload profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/discoveredprofiles/\[^/\]+/health/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkloadProfileHealth].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkloadProfileHealth> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WorkloadProfileHealth.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsEvaluationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEvaluationsExecutionsResource get executions =>
      ProjectsLocationsEvaluationsExecutionsResource(_requester);

  ProjectsLocationsEvaluationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Evaluation in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource prefix of the evaluation location using
  /// the form: `projects/{project_id}/locations/{location_id}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [evaluationId] - Required. Id of the requesting object.
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
    Evaluation request,
    core.String parent, {
    core.String? evaluationId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'evaluationId': ?evaluationId == null ? null : [evaluationId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/evaluations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Evaluation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+$`.
  ///
  /// [force] - Optional. Followed the best practice from
  /// https://aip.dev/135#cascading-delete.
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
    core.bool? force,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'force': ?force == null ? null : ['${force}'],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Evaluation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Evaluation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Evaluation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Evaluation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Evaluations in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListEvaluationsRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter to be applied when listing the evaluation results.
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
  /// Completes with a [ListEvaluationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEvaluationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/evaluations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEvaluationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Evaluation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of resource that has the form
  /// `projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+$`.
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
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Evaluation resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask.
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
    Evaluation request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsLocationsEvaluationsExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEvaluationsExecutionsResultsResource get results =>
      ProjectsLocationsEvaluationsExecutionsResultsResource(_requester);
  ProjectsLocationsEvaluationsExecutionsScannedResourcesResource
  get scannedResources =>
      ProjectsLocationsEvaluationsExecutionsScannedResourcesResource(
        _requester,
      );

  ProjectsLocationsEvaluationsExecutionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes a single Execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+/executions/\[^/\]+$`.
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
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Execution.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Execution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Execution> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Execution.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Executions in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource prefix of the Execution using the form:
  /// `projects/{project}/locations/{location}/evaluations/{evaluation}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results.
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
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
  /// Completes with a [ListExecutionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExecutionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/executions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListExecutionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new Execution in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Evaluation using the form:
  /// `projects/{project}/locations/{location}/evaluations/{evaluation}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+$`.
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
  async.Future<Operation> run(
    RunEvaluationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/executions:run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEvaluationsExecutionsResultsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEvaluationsExecutionsResultsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists the result of a single evaluation.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The execution results. Format: {parent}/evaluations /
  /// * /executions / * /results.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [filter] - Filtering results.
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
  /// Completes with a [ListExecutionResultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExecutionResultsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/results';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListExecutionResultsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsEvaluationsExecutionsScannedResourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEvaluationsExecutionsScannedResourcesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// List all scanned resources for a single Execution.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent for ListScannedResourcesRequest.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/evaluations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [filter] - Filtering results.
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [rule] - Rule name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListScannedResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListScannedResourcesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? rule,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'rule': ?rule == null ? null : [rule],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/scannedResources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListScannedResourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsInsightsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInsightsResource(commons.ApiRequester client)
    : _requester = client;

  /// Delete the data insights from workload manager data warehouse.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The system id of the SAP system resource to delete.
  /// Formatted as
  /// projects/{project}/locations/{location}/sapSystems/{sap_system_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/insights/\[^/\]+$`.
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
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Write the data insights to workload manager data warehouse.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The GCP location. The format is:
  /// projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WriteInsightResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WriteInsightResponse> writeInsight(
    WriteInsightRequest request,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$location') + '/insights:writeInsight';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WriteInsightResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
  /// [returnPartialSuccess] - When set to `true`, operations that are reachable
  /// are returned as normal, and those that are unreachable are returned in the
  /// ListOperationsResponse.unreachable field. This can only be `true` when
  /// reading across collections. For example, when `parent` is set to
  /// `"projects/example/locations/-"`. This field is not supported by default
  /// and will result in an `UNIMPLEMENTED` error if set unless explicitly
  /// documented otherwise in service or product specific documentation.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsLocationsRulesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRulesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists rules in a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The \[project\] on which to execute the request. The
  /// format is: projects/{project_id}/locations/{location} Currently, the
  /// pre-defined rules are global available to all projects and all regions.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [customRulesBucket] - The Cloud Storage bucket name for custom rules.
  ///
  /// [evaluationType] - Optional. The evaluation type of the rules will be
  /// applied to. The Cloud Storage bucket name for custom rules.
  /// Possible string values are:
  /// - "EVALUATION_TYPE_UNSPECIFIED" : Not specified.
  /// - "SAP" : SAP best practices.
  /// - "SQL_SERVER" : SQL best practices.
  /// - "OTHER" : Customized best practices.
  ///
  /// [filter] - Filter based on primary_category, secondary_category.
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
  /// Completes with a [ListRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRulesResponse> list(
    core.String parent, {
    core.String? customRulesBucket,
    core.String? evaluationType,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'customRulesBucket': ?customRulesBucket == null
          ? null
          : [customRulesBucket],
      'evaluationType': ?evaluationType == null ? null : [evaluationType],
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/rules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Active Directory details.
class ActiveDirectory {
  /// DNS IP address.
  ///
  /// Optional.
  core.String? dnsAddress;

  /// Human readable form of a domain such as `example.com`.
  ///
  /// Optional.
  core.String? domain;

  /// Domain username.
  ///
  /// Optional.
  core.String? domainUsername;

  /// Secret Manager secret.
  ///
  /// Required.
  core.String? secretManagerSecret;

  /// Active Directory type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACTIVE_DIRECTORY_TYPE_UNSPECIFIED" : Unspecified Active Directory type.
  /// - "GCP_MANAGED" : GCP managed Active Directory type.
  /// - "SELF_MANAGED" : Self managed Active Directory type.
  core.String? type;

  ActiveDirectory({
    this.dnsAddress,
    this.domain,
    this.domainUsername,
    this.secretManagerSecret,
    this.type,
  });

  ActiveDirectory.fromJson(core.Map json_)
    : this(
        dnsAddress: json_['dnsAddress'] as core.String?,
        domain: json_['domain'] as core.String?,
        domainUsername: json_['domainUsername'] as core.String?,
        secretManagerSecret: json_['secretManagerSecret'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dnsAddress = this.dnsAddress;
    final domain = this.domain;
    final domainUsername = this.domainUsername;
    final secretManagerSecret = this.secretManagerSecret;
    final type = this.type;
    return {
      'dnsAddress': ?dnsAddress,
      'domain': ?domain,
      'domainUsername': ?domainUsername,
      'secretManagerSecret': ?secretManagerSecret,
      'type': ?type,
    };
  }
}

/// The Actuation object represents the bootstrap state and output results of
/// deployed infrastructure and software.
class Actuation {
  /// Actuation output.
  ///
  /// Output only.
  ActuationOutput? actuationOutput;

  /// Deployment output.
  ///
  /// Output only.
  core.List<DeploymentOutput>? deploymentOutput;

  /// End time stamp.
  ///
  /// Output only.
  core.String? endTime;

  /// The name of the actuation resource.
  ///
  /// The format is
  /// projects/{project}/locations/{location}/deployments/{deployment}/actuations/{actuation}.
  core.String? name;

  /// Start time stamp.
  ///
  /// Output only.
  core.String? startTime;

  /// Actuation state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "INFRA_CREATING" : Creating infrastructure in backend (Terraform
  /// applying).
  /// - "SUCCEEDED" : Success.
  /// - "FAILED" : Failed either in infra creating, post infra configuring, or
  /// infra destroying.
  /// - "POST_INFRA_CONFIGURING" : Configure workload after infrastructure is
  /// ready (Ansible running).
  /// - "INFRA_DESTROYING" : Destroying infrastructure in backend (Terraform
  /// destroying).
  /// - "TIMEOUT" : Ansible timed out due to losing heartbeat in post infra
  /// configuring.
  core.String? state;

  Actuation({
    this.actuationOutput,
    this.deploymentOutput,
    this.endTime,
    this.name,
    this.startTime,
    this.state,
  });

  Actuation.fromJson(core.Map json_)
    : this(
        actuationOutput: json_.containsKey('actuationOutput')
            ? ActuationOutput.fromJson(
                json_['actuationOutput'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deploymentOutput: (json_['deploymentOutput'] as core.List?)
            ?.map(
              (value) => DeploymentOutput.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        endTime: json_['endTime'] as core.String?,
        name: json_['name'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actuationOutput = this.actuationOutput;
    final deploymentOutput = this.deploymentOutput;
    final endTime = this.endTime;
    final name = this.name;
    final startTime = this.startTime;
    final state = this.state;
    return {
      'actuationOutput': ?actuationOutput,
      'deploymentOutput': ?deploymentOutput,
      'endTime': ?endTime,
      'name': ?name,
      'startTime': ?startTime,
      'state': ?state,
    };
  }
}

/// Message for output of actuation.
class ActuationOutput {
  /// A link to the Cloud Storage file that stores build logs.
  core.String? actuateLogs;

  /// Error message returned from Ansible.
  ///
  /// Output only.
  core.String? ansibleError;

  /// Failed task name returned from Ansible.
  ///
  /// Output only.
  core.List<core.String>? ansibleFailedTask;

  /// Reference to the Blueprint Controller deployment and revision resource.
  core.String? blueprintId;

  /// Cloud Build instance UUID associated with this revision, without any
  /// suffix or prefix
  core.String? cloudbuildId;

  /// Code describing any errors that may have occurred.
  ///
  /// If not specified, there is no error in actuation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ERROR_CODE_UNSPECIFIED" : No error code was specified.
  /// - "TERRAFORM_FAILED" : General Terraform failure.
  /// - "PERMISSION_DENIED_IN_TERRAFORM" : Permission error in Terraform.
  /// - "QUOTA_EXCEED_IN_TERRAFORM" : Quota related error in Terraform.
  /// - "ANSIBLE_FAILED" : General Ansible failure.
  /// - "CONSTRAINT_VIOLATION_IN_TERRAFORM" : Constraint related error in
  /// Terraform.
  /// - "RESOURCE_ALREADY_EXISTS_IN_TERRAFORM" : Resource already exists error
  /// in Terraform.
  /// - "RESOURCE_UNAVAILABLE_IN_TERRAFORM" : Resource not found error in
  /// Terraform.
  /// - "PERMISSION_DENIED_IN_ANSIBLE" : Permission denied error in Ansible.
  /// - "INVALID_SECRET_IN_ANSIBLE" : Secret related error in Ansible.
  /// - "TERRAFORM_DELETION_FAILED" : General Terraform failure during deletion.
  /// - "RESOURCE_IN_USE_IN_TERRAFORM_DELETION" : Resource in use error in
  /// Terraform deletion.
  /// - "ANSIBLE_START_FAILED" : Startup failure in Ansible.
  core.String? errorCode;

  /// A link to the actuation Cloud Build log.
  core.String? errorLogs;

  /// Whether the error message is user facing.
  ///
  /// If true, the error message will be shown in the UI.
  ///
  /// Output only.
  core.bool? hasUserFacingErrorMsg;

  /// Error message returned from Terraform.
  ///
  /// Output only.
  core.String? terraformError;

  /// Reference to the Terraform template used.
  core.String? terraformTemplate;

  ActuationOutput({
    this.actuateLogs,
    this.ansibleError,
    this.ansibleFailedTask,
    this.blueprintId,
    this.cloudbuildId,
    this.errorCode,
    this.errorLogs,
    this.hasUserFacingErrorMsg,
    this.terraformError,
    this.terraformTemplate,
  });

  ActuationOutput.fromJson(core.Map json_)
    : this(
        actuateLogs: json_['actuateLogs'] as core.String?,
        ansibleError: json_['ansibleError'] as core.String?,
        ansibleFailedTask: (json_['ansibleFailedTask'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        blueprintId: json_['blueprintId'] as core.String?,
        cloudbuildId: json_['cloudbuildId'] as core.String?,
        errorCode: json_['errorCode'] as core.String?,
        errorLogs: json_['errorLogs'] as core.String?,
        hasUserFacingErrorMsg: json_['hasUserFacingErrorMsg'] as core.bool?,
        terraformError: json_['terraformError'] as core.String?,
        terraformTemplate: json_['terraformTemplate'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actuateLogs = this.actuateLogs;
    final ansibleError = this.ansibleError;
    final ansibleFailedTask = this.ansibleFailedTask;
    final blueprintId = this.blueprintId;
    final cloudbuildId = this.cloudbuildId;
    final errorCode = this.errorCode;
    final errorLogs = this.errorLogs;
    final hasUserFacingErrorMsg = this.hasUserFacingErrorMsg;
    final terraformError = this.terraformError;
    final terraformTemplate = this.terraformTemplate;
    return {
      'actuateLogs': ?actuateLogs,
      'ansibleError': ?ansibleError,
      'ansibleFailedTask': ?ansibleFailedTask,
      'blueprintId': ?blueprintId,
      'cloudbuildId': ?cloudbuildId,
      'errorCode': ?errorCode,
      'errorLogs': ?errorLogs,
      'hasUserFacingErrorMsg': ?hasUserFacingErrorMsg,
      'terraformError': ?terraformError,
      'terraformTemplate': ?terraformTemplate,
    };
  }
}

/// An AgentCommand specifies a one-time executable program for the agent to
/// run.
class AgentCommand {
  /// The name of the agent one-time executable that will be invoked.
  core.String? command;

  /// A map of key/value pairs that can be used to specify additional one-time
  /// executable settings.
  core.Map<core.String, core.String>? parameters;

  AgentCommand({this.command, this.parameters});

  AgentCommand.fromJson(core.Map json_)
    : this(
        command: json_['command'] as core.String?,
        parameters:
            (json_['parameters'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final command = this.command;
    final parameters = this.parameters;
    return {'command': ?command, 'parameters': ?parameters};
  }
}

/// Agent status.
class AgentStates {
  /// The available version of the agent in artifact registry.
  ///
  /// Optional.
  core.String? availableVersion;

  /// HANA monitoring metrics of the agent.
  ///
  /// Optional.
  ServiceStates? hanaMonitoring;

  /// The installed version of the agent on the host.
  ///
  /// Optional.
  core.String? installedVersion;

  /// Whether the agent is fully enabled.
  ///
  /// If false, the agent is has some issues.
  ///
  /// Optional.
  core.bool? isFullyEnabled;

  /// The Process metrics of the agent.
  ///
  /// Optional.
  ServiceStates? processMetrics;

  /// The System discovery metrics of the agent.
  ///
  /// Optional.
  ServiceStates? systemDiscovery;

  AgentStates({
    this.availableVersion,
    this.hanaMonitoring,
    this.installedVersion,
    this.isFullyEnabled,
    this.processMetrics,
    this.systemDiscovery,
  });

  AgentStates.fromJson(core.Map json_)
    : this(
        availableVersion: json_['availableVersion'] as core.String?,
        hanaMonitoring: json_.containsKey('hanaMonitoring')
            ? ServiceStates.fromJson(
                json_['hanaMonitoring'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        installedVersion: json_['installedVersion'] as core.String?,
        isFullyEnabled: json_['isFullyEnabled'] as core.bool?,
        processMetrics: json_.containsKey('processMetrics')
            ? ServiceStates.fromJson(
                json_['processMetrics'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        systemDiscovery: json_.containsKey('systemDiscovery')
            ? ServiceStates.fromJson(
                json_['systemDiscovery'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final availableVersion = this.availableVersion;
    final hanaMonitoring = this.hanaMonitoring;
    final installedVersion = this.installedVersion;
    final isFullyEnabled = this.isFullyEnabled;
    final processMetrics = this.processMetrics;
    final systemDiscovery = this.systemDiscovery;
    return {
      'availableVersion': ?availableVersion,
      'hanaMonitoring': ?hanaMonitoring,
      'installedVersion': ?installedVersion,
      'isFullyEnabled': ?isFullyEnabled,
      'processMetrics': ?processMetrics,
      'systemDiscovery': ?systemDiscovery,
    };
  }
}

/// The schema of agent status data.
class AgentStatus {
  /// The name of the agent.
  ///
  /// Output only.
  core.String? agentName;

  /// The available version of the agent in artifact registry.
  ///
  /// Output only.
  core.String? availableVersion;

  /// Whether the agent has full access to Cloud APIs.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED_STATE" : The state is unspecified and has not been checked
  /// yet.
  /// - "SUCCESS_STATE" : The state is successful (enabled, granted, fully
  /// functional).
  /// - "FAILURE_STATE" : The state is failed (disabled, denied, not fully
  /// functional).
  /// - "ERROR_STATE" : There was an internal error while checking the state,
  /// state is unknown.
  core.String? cloudApiAccessFullScopesGranted;

  /// The error message for the agent configuration if invalid.
  ///
  /// Output only.
  core.String? configurationErrorMessage;

  /// The path to the agent configuration file.
  ///
  /// Output only.
  core.String? configurationFilePath;

  /// Whether the agent configuration is valid.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED_STATE" : The state is unspecified and has not been checked
  /// yet.
  /// - "SUCCESS_STATE" : The state is successful (enabled, granted, fully
  /// functional).
  /// - "FAILURE_STATE" : The state is failed (disabled, denied, not fully
  /// functional).
  /// - "ERROR_STATE" : There was an internal error while checking the state,
  /// state is unknown.
  core.String? configurationValid;

  /// The installed version of the agent on the host.
  ///
  /// Output only.
  core.String? installedVersion;

  /// The URI of the instance.
  ///
  /// Format: projects//zones//instances/
  ///
  /// Output only.
  core.String? instanceUri;

  /// The kernel version of the system.
  ///
  /// Output only.
  SapDiscoveryResourceInstancePropertiesKernelVersion? kernelVersion;

  /// Optional references to public documentation.
  ///
  /// Output only.
  core.List<AgentStatusReference>? references;

  /// The services (process metrics, host metrics, etc.).
  ///
  /// Output only.
  core.List<AgentStatusServiceStatus>? services;

  /// Whether the agent service is enabled in systemd.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED_STATE" : The state is unspecified and has not been checked
  /// yet.
  /// - "SUCCESS_STATE" : The state is successful (enabled, granted, fully
  /// functional).
  /// - "FAILURE_STATE" : The state is failed (disabled, denied, not fully
  /// functional).
  /// - "ERROR_STATE" : There was an internal error while checking the state,
  /// state is unknown.
  core.String? systemdServiceEnabled;

  /// Whether the agent service is running in systemd.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED_STATE" : The state is unspecified and has not been checked
  /// yet.
  /// - "SUCCESS_STATE" : The state is successful (enabled, granted, fully
  /// functional).
  /// - "FAILURE_STATE" : The state is failed (disabled, denied, not fully
  /// functional).
  /// - "ERROR_STATE" : There was an internal error while checking the state,
  /// state is unknown.
  core.String? systemdServiceRunning;

  AgentStatus({
    this.agentName,
    this.availableVersion,
    this.cloudApiAccessFullScopesGranted,
    this.configurationErrorMessage,
    this.configurationFilePath,
    this.configurationValid,
    this.installedVersion,
    this.instanceUri,
    this.kernelVersion,
    this.references,
    this.services,
    this.systemdServiceEnabled,
    this.systemdServiceRunning,
  });

  AgentStatus.fromJson(core.Map json_)
    : this(
        agentName: json_['agentName'] as core.String?,
        availableVersion: json_['availableVersion'] as core.String?,
        cloudApiAccessFullScopesGranted:
            json_['cloudApiAccessFullScopesGranted'] as core.String?,
        configurationErrorMessage:
            json_['configurationErrorMessage'] as core.String?,
        configurationFilePath: json_['configurationFilePath'] as core.String?,
        configurationValid: json_['configurationValid'] as core.String?,
        installedVersion: json_['installedVersion'] as core.String?,
        instanceUri: json_['instanceUri'] as core.String?,
        kernelVersion: json_.containsKey('kernelVersion')
            ? SapDiscoveryResourceInstancePropertiesKernelVersion.fromJson(
                json_['kernelVersion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        references: (json_['references'] as core.List?)
            ?.map(
              (value) => AgentStatusReference.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        services: (json_['services'] as core.List?)
            ?.map(
              (value) => AgentStatusServiceStatus.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        systemdServiceEnabled: json_['systemdServiceEnabled'] as core.String?,
        systemdServiceRunning: json_['systemdServiceRunning'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentName = this.agentName;
    final availableVersion = this.availableVersion;
    final cloudApiAccessFullScopesGranted =
        this.cloudApiAccessFullScopesGranted;
    final configurationErrorMessage = this.configurationErrorMessage;
    final configurationFilePath = this.configurationFilePath;
    final configurationValid = this.configurationValid;
    final installedVersion = this.installedVersion;
    final instanceUri = this.instanceUri;
    final kernelVersion = this.kernelVersion;
    final references = this.references;
    final services = this.services;
    final systemdServiceEnabled = this.systemdServiceEnabled;
    final systemdServiceRunning = this.systemdServiceRunning;
    return {
      'agentName': ?agentName,
      'availableVersion': ?availableVersion,
      'cloudApiAccessFullScopesGranted': ?cloudApiAccessFullScopesGranted,
      'configurationErrorMessage': ?configurationErrorMessage,
      'configurationFilePath': ?configurationFilePath,
      'configurationValid': ?configurationValid,
      'installedVersion': ?installedVersion,
      'instanceUri': ?instanceUri,
      'kernelVersion': ?kernelVersion,
      'references': ?references,
      'services': ?services,
      'systemdServiceEnabled': ?systemdServiceEnabled,
      'systemdServiceRunning': ?systemdServiceRunning,
    };
  }
}

/// The configuration value.
class AgentStatusConfigValue {
  /// Whether the configuration value is the default value or overridden.
  ///
  /// Output only.
  core.bool? isDefault;

  /// The name of the configuration value.
  ///
  /// Output only.
  core.String? name;

  /// The value of the configuration value.
  ///
  /// Output only.
  core.String? value;

  AgentStatusConfigValue({this.isDefault, this.name, this.value});

  AgentStatusConfigValue.fromJson(core.Map json_)
    : this(
        isDefault: json_['isDefault'] as core.bool?,
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final isDefault = this.isDefault;
    final name = this.name;
    final value = this.value;
    return {'isDefault': ?isDefault, 'name': ?name, 'value': ?value};
  }
}

/// The IAM permission status.
class AgentStatusIAMPermission {
  /// Whether the permission is granted.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED_STATE" : The state is unspecified and has not been checked
  /// yet.
  /// - "SUCCESS_STATE" : The state is successful (enabled, granted, fully
  /// functional).
  /// - "FAILURE_STATE" : The state is failed (disabled, denied, not fully
  /// functional).
  /// - "ERROR_STATE" : There was an internal error while checking the state,
  /// state is unknown.
  core.String? granted;

  /// The name of the permission.
  ///
  /// Output only.
  core.String? name;

  AgentStatusIAMPermission({this.granted, this.name});

  AgentStatusIAMPermission.fromJson(core.Map json_)
    : this(
        granted: json_['granted'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final granted = this.granted;
    final name = this.name;
    return {'granted': ?granted, 'name': ?name};
  }
}

/// The reference to public documentation.
class AgentStatusReference {
  /// The name of the reference.
  ///
  /// Output only.
  core.String? name;

  /// The URL of the reference.
  ///
  /// Output only.
  core.String? url;

  AgentStatusReference({this.name, this.url});

  AgentStatusReference.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final url = this.url;
    return {'name': ?name, 'url': ?url};
  }
}

/// The status of a service (process metrics, host metrics, etc.).
class AgentStatusServiceStatus {
  /// The configuration values for the service.
  ///
  /// Output only.
  core.List<AgentStatusConfigValue>? configValues;

  /// The error message for the service if it is not fully functional.
  ///
  /// Output only.
  core.String? errorMessage;

  /// Whether the service is fully functional (all checks passed).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED_STATE" : The state is unspecified and has not been checked
  /// yet.
  /// - "SUCCESS_STATE" : The state is successful (enabled, granted, fully
  /// functional).
  /// - "FAILURE_STATE" : The state is failed (disabled, denied, not fully
  /// functional).
  /// - "ERROR_STATE" : There was an internal error while checking the state,
  /// state is unknown.
  core.String? fullyFunctional;

  /// The permissions required for the service.
  ///
  /// Output only.
  core.List<AgentStatusIAMPermission>? iamPermissions;

  /// The name of the service.
  ///
  /// Output only.
  core.String? name;

  /// The state of the service (enabled or disabled in the configuration).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED_STATE" : The state is unspecified and has not been checked
  /// yet.
  /// - "SUCCESS_STATE" : The state is successful (enabled, granted, fully
  /// functional).
  /// - "FAILURE_STATE" : The state is failed (disabled, denied, not fully
  /// functional).
  /// - "ERROR_STATE" : There was an internal error while checking the state,
  /// state is unknown.
  core.String? state;

  /// The message to display when the service state is unspecified.
  ///
  /// Output only.
  core.String? unspecifiedStateMessage;

  AgentStatusServiceStatus({
    this.configValues,
    this.errorMessage,
    this.fullyFunctional,
    this.iamPermissions,
    this.name,
    this.state,
    this.unspecifiedStateMessage,
  });

  AgentStatusServiceStatus.fromJson(core.Map json_)
    : this(
        configValues: (json_['configValues'] as core.List?)
            ?.map(
              (value) => AgentStatusConfigValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        errorMessage: json_['errorMessage'] as core.String?,
        fullyFunctional: json_['fullyFunctional'] as core.String?,
        iamPermissions: (json_['iamPermissions'] as core.List?)
            ?.map(
              (value) => AgentStatusIAMPermission.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        unspecifiedStateMessage:
            json_['unspecifiedStateMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final configValues = this.configValues;
    final errorMessage = this.errorMessage;
    final fullyFunctional = this.fullyFunctional;
    final iamPermissions = this.iamPermissions;
    final name = this.name;
    final state = this.state;
    final unspecifiedStateMessage = this.unspecifiedStateMessage;
    return {
      'configValues': ?configValues,
      'errorMessage': ?errorMessage,
      'fullyFunctional': ?fullyFunctional,
      'iamPermissions': ?iamPermissions,
      'name': ?name,
      'state': ?state,
      'unspecifiedStateMessage': ?unspecifiedStateMessage,
    };
  }
}

/// Message for SAP instance details.
class AppDetails {
  /// Instance ID for app.
  ///
  /// Optional.
  core.String? appInstanceId;

  /// Application service account.
  ///
  /// Let customers bring their own service account for the application.
  core.String? appServiceAccount;

  /// Customized VM names.
  ///
  /// Optional.
  core.List<core.String>? appVmNames;

  /// Image for the ASCS server.
  ///
  /// Required.
  core.String? ascsImage;

  /// Instance ID for ASCS.
  ///
  /// Optional.
  core.String? ascsInstanceId;

  /// ASCS machine type.
  ///
  /// Required.
  core.String? ascsMachineType;

  /// ASCS service account.
  ///
  /// Let customers bring their own service account for ASCS.
  core.String? ascsServiceAccount;

  /// ASCS VM name.
  ///
  /// Optional.
  core.String? ascsVm;

  /// Instance ID for ERS.
  ///
  /// Optional.
  core.String? ersInstanceId;

  /// ERS VM name.
  ///
  /// Optional.
  core.String? ersVm;

  /// Image for the app server and ASCS server.
  ///
  /// Required.
  core.String? image;

  /// Machine type.
  ///
  /// Required.
  core.String? machineType;

  /// Secret Manager secret.
  ///
  /// Required.
  core.String? secretManagerSecret;

  /// Storage location.
  ///
  /// Optional.
  core.String? sharedStorage;

  /// The SAP SID is a three-digit server-specific unique identification code.
  ///
  /// Required.
  core.String? sid;

  /// VMs multiplier.
  ///
  /// Required.
  core.int? vmsMultiplier;

  AppDetails({
    this.appInstanceId,
    this.appServiceAccount,
    this.appVmNames,
    this.ascsImage,
    this.ascsInstanceId,
    this.ascsMachineType,
    this.ascsServiceAccount,
    this.ascsVm,
    this.ersInstanceId,
    this.ersVm,
    this.image,
    this.machineType,
    this.secretManagerSecret,
    this.sharedStorage,
    this.sid,
    this.vmsMultiplier,
  });

  AppDetails.fromJson(core.Map json_)
    : this(
        appInstanceId: json_['appInstanceId'] as core.String?,
        appServiceAccount: json_['appServiceAccount'] as core.String?,
        appVmNames: (json_['appVmNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        ascsImage: json_['ascsImage'] as core.String?,
        ascsInstanceId: json_['ascsInstanceId'] as core.String?,
        ascsMachineType: json_['ascsMachineType'] as core.String?,
        ascsServiceAccount: json_['ascsServiceAccount'] as core.String?,
        ascsVm: json_['ascsVm'] as core.String?,
        ersInstanceId: json_['ersInstanceId'] as core.String?,
        ersVm: json_['ersVm'] as core.String?,
        image: json_['image'] as core.String?,
        machineType: json_['machineType'] as core.String?,
        secretManagerSecret: json_['secretManagerSecret'] as core.String?,
        sharedStorage: json_['sharedStorage'] as core.String?,
        sid: json_['sid'] as core.String?,
        vmsMultiplier: json_['vmsMultiplier'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appInstanceId = this.appInstanceId;
    final appServiceAccount = this.appServiceAccount;
    final appVmNames = this.appVmNames;
    final ascsImage = this.ascsImage;
    final ascsInstanceId = this.ascsInstanceId;
    final ascsMachineType = this.ascsMachineType;
    final ascsServiceAccount = this.ascsServiceAccount;
    final ascsVm = this.ascsVm;
    final ersInstanceId = this.ersInstanceId;
    final ersVm = this.ersVm;
    final image = this.image;
    final machineType = this.machineType;
    final secretManagerSecret = this.secretManagerSecret;
    final sharedStorage = this.sharedStorage;
    final sid = this.sid;
    final vmsMultiplier = this.vmsMultiplier;
    return {
      'appInstanceId': ?appInstanceId,
      'appServiceAccount': ?appServiceAccount,
      'appVmNames': ?appVmNames,
      'ascsImage': ?ascsImage,
      'ascsInstanceId': ?ascsInstanceId,
      'ascsMachineType': ?ascsMachineType,
      'ascsServiceAccount': ?ascsServiceAccount,
      'ascsVm': ?ascsVm,
      'ersInstanceId': ?ersInstanceId,
      'ersVm': ?ersVm,
      'image': ?image,
      'machineType': ?machineType,
      'secretManagerSecret': ?secretManagerSecret,
      'sharedStorage': ?sharedStorage,
      'sid': ?sid,
      'vmsMultiplier': ?vmsMultiplier,
    };
  }
}

/// Backup properties.
class BackupProperties {
  /// The state of the latest backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BACKUP_STATE_UNSPECIFIED" : unspecified
  /// - "BACKUP_STATE_SUCCESS" : SUCCESS state
  /// - "BACKUP_STATE_FAILURE" : FAILURE state
  core.String? latestBackupStatus;

  /// The time when the latest backup was performed.
  core.String? latestBackupTime;

  BackupProperties({this.latestBackupStatus, this.latestBackupTime});

  BackupProperties.fromJson(core.Map json_)
    : this(
        latestBackupStatus: json_['latestBackupStatus'] as core.String?,
        latestBackupTime: json_['latestBackupTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final latestBackupStatus = this.latestBackupStatus;
    final latestBackupTime = this.latestBackupTime;
    return {
      'latestBackupStatus': ?latestBackupStatus,
      'latestBackupTime': ?latestBackupTime,
    };
  }
}

/// BigQuery destination for evaluation results.
class BigQueryDestination {
  /// Determines if a new results table will be created when an Execution is
  /// created.
  ///
  /// Optional.
  core.bool? createNewResultsTable;

  /// Destination dataset to save evaluation results.
  ///
  /// Optional.
  core.String? destinationDataset;

  BigQueryDestination({this.createNewResultsTable, this.destinationDataset});

  BigQueryDestination.fromJson(core.Map json_)
    : this(
        createNewResultsTable: json_['createNewResultsTable'] as core.bool?,
        destinationDataset: json_['destinationDataset'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createNewResultsTable = this.createNewResultsTable;
    final destinationDataset = this.destinationDataset;
    return {
      'createNewResultsTable': ?createNewResultsTable,
      'destinationDataset': ?destinationDataset,
    };
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// The resource on GCP
class CloudResource {
  /// All instance properties.
  ///
  /// Output only.
  InstanceProperties? instanceProperties;

  ///
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RESOURCE_KIND_UNSPECIFIED" : Unspecified resource kind.
  /// - "RESOURCE_KIND_INSTANCE" : This is a compute instance.
  /// - "RESOURCE_KIND_DISK" : This is a compute disk.
  /// - "RESOURCE_KIND_ADDRESS" : This is a compute address.
  /// - "RESOURCE_KIND_FILESTORE" : This is a filestore instance.
  /// - "RESOURCE_KIND_HEALTH_CHECK" : This is a compute health check.
  /// - "RESOURCE_KIND_FORWARDING_RULE" : This is a compute forwarding rule.
  /// - "RESOURCE_KIND_BACKEND_SERVICE" : This is a compute backend service.
  /// - "RESOURCE_KIND_SUBNETWORK" : This is a compute subnetwork.
  /// - "RESOURCE_KIND_NETWORK" : This is a compute network.
  /// - "RESOURCE_KIND_PUBLIC_ADDRESS" : This is a public accessible IP Address.
  /// - "RESOURCE_KIND_INSTANCE_GROUP" : This is a compute instance group.
  core.String? kind;

  /// resource name Example:
  /// compute.googleapis.com/projects/wlm-obs-dev/zones/us-central1-a/instances/sap-pri
  ///
  /// Output only.
  core.String? name;

  CloudResource({this.instanceProperties, this.kind, this.name});

  CloudResource.fromJson(core.Map json_)
    : this(
        instanceProperties: json_.containsKey('instanceProperties')
            ? InstanceProperties.fromJson(
                json_['instanceProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final instanceProperties = this.instanceProperties;
    final kind = this.kind;
    final name = this.name;
    return {
      'instanceProperties': ?instanceProperties,
      'kind': ?kind,
      'name': ?name,
    };
  }
}

/// Command specifies the type of command to execute.
class Command {
  /// AgentCommand specifies a one-time executable program for the agent to run.
  AgentCommand? agentCommand;

  /// ShellCommand is invoked via the agent's command line executor.
  ShellCommand? shellCommand;

  Command({this.agentCommand, this.shellCommand});

  Command.fromJson(core.Map json_)
    : this(
        agentCommand: json_.containsKey('agentCommand')
            ? AgentCommand.fromJson(
                json_['agentCommand'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        shellCommand: json_.containsKey('shellCommand')
            ? ShellCommand.fromJson(
                json_['shellCommand'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentCommand = this.agentCommand;
    final shellCommand = this.shellCommand;
    return {'agentCommand': ?agentCommand, 'shellCommand': ?shellCommand};
  }
}

/// HealthCondition contains the detailed health check of each component.
class ComponentHealth {
  /// The component of a workload.
  core.String? component;

  /// The detailed health checks of the component.
  core.List<HealthCheck>? componentHealthChecks;

  /// The type of the component health.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified
  /// - "TYPE_REQUIRED" : required
  /// - "TYPE_OPTIONAL" : optional
  /// - "TYPE_SPECIAL" : special
  core.String? componentHealthType;

  /// The health state of the component.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HEALTH_STATE_UNSPECIFIED" : Unspecified.
  /// - "HEALTHY" : Healthy workload.
  /// - "UNHEALTHY" : Unhealthy workload.
  /// - "CRITICAL" : Has critical issues.
  /// - "UNSUPPORTED" : Unsupported.
  core.String? state;

  /// Sub component health.
  core.List<ComponentHealth>? subComponentsHealth;

  ComponentHealth({
    this.component,
    this.componentHealthChecks,
    this.componentHealthType,
    this.state,
    this.subComponentsHealth,
  });

  ComponentHealth.fromJson(core.Map json_)
    : this(
        component: json_['component'] as core.String?,
        componentHealthChecks: (json_['componentHealthChecks'] as core.List?)
            ?.map(
              (value) => HealthCheck.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        componentHealthType: json_['componentHealthType'] as core.String?,
        state: json_['state'] as core.String?,
        subComponentsHealth: (json_['subComponentsHealth'] as core.List?)
            ?.map(
              (value) => ComponentHealth.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final component = this.component;
    final componentHealthChecks = this.componentHealthChecks;
    final componentHealthType = this.componentHealthType;
    final state = this.state;
    final subComponentsHealth = this.subComponentsHealth;
    return {
      'component': ?component,
      'componentHealthChecks': ?componentHealthChecks,
      'componentHealthType': ?componentHealthType,
      'state': ?state,
      'subComponentsHealth': ?subComponentsHealth,
    };
  }
}

/// Database details.
class Database {
  /// Disk type.
  ///
  /// Required.
  core.String? diskType;

  /// Only useful for Linux High Availability setup.
  ///
  /// Optional.
  core.String? floatingIpAddress;

  /// Machine type.
  ///
  /// Required.
  core.String? machineType;

  /// The name of a secondary-sole-tenant node/node group.
  ///
  /// Optional.
  core.String? secondarySoleTenantNode;

  /// The type of a secondary-sole-tenant node/node group.
  ///
  /// E.g., compute.googleapis.com/node-name.
  ///
  /// Optional.
  core.String? secondarySoleTenantNodeType;

  /// Secret Manager secret.
  ///
  /// Required.
  core.String? secretManagerSecret;

  /// Whether simultaneous multithreading is enabled or not.
  ///
  /// Required.
  core.bool? smt;

  /// The name of a primary sole-tenant node/node group.
  ///
  /// Optional.
  core.String? soleTenantNode;

  /// The type of a primary sole-tenant node/node group.
  ///
  /// E.g., compute.googleapis.com/node-name.
  ///
  /// Optional.
  core.String? soleTenantNodeType;

  /// Whether to have TempDB on local SSD.
  ///
  /// Required.
  core.bool? tempdbOnSsd;

  /// SHARED or SOLE_TENANT.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TENANCY_MODEL_UNSPECIFIED" : Unspecified tenancy model.
  /// - "SHARED" : Shared tenancy model.
  /// - "SOLE_TENANT" : Sole Tenant tenancy model.
  core.String? tenancyModel;

  Database({
    this.diskType,
    this.floatingIpAddress,
    this.machineType,
    this.secondarySoleTenantNode,
    this.secondarySoleTenantNodeType,
    this.secretManagerSecret,
    this.smt,
    this.soleTenantNode,
    this.soleTenantNodeType,
    this.tempdbOnSsd,
    this.tenancyModel,
  });

  Database.fromJson(core.Map json_)
    : this(
        diskType: json_['diskType'] as core.String?,
        floatingIpAddress: json_['floatingIpAddress'] as core.String?,
        machineType: json_['machineType'] as core.String?,
        secondarySoleTenantNode:
            json_['secondarySoleTenantNode'] as core.String?,
        secondarySoleTenantNodeType:
            json_['secondarySoleTenantNodeType'] as core.String?,
        secretManagerSecret: json_['secretManagerSecret'] as core.String?,
        smt: json_['smt'] as core.bool?,
        soleTenantNode: json_['soleTenantNode'] as core.String?,
        soleTenantNodeType: json_['soleTenantNodeType'] as core.String?,
        tempdbOnSsd: json_['tempdbOnSsd'] as core.bool?,
        tenancyModel: json_['tenancyModel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final diskType = this.diskType;
    final floatingIpAddress = this.floatingIpAddress;
    final machineType = this.machineType;
    final secondarySoleTenantNode = this.secondarySoleTenantNode;
    final secondarySoleTenantNodeType = this.secondarySoleTenantNodeType;
    final secretManagerSecret = this.secretManagerSecret;
    final smt = this.smt;
    final soleTenantNode = this.soleTenantNode;
    final soleTenantNodeType = this.soleTenantNodeType;
    final tempdbOnSsd = this.tempdbOnSsd;
    final tenancyModel = this.tenancyModel;
    return {
      'diskType': ?diskType,
      'floatingIpAddress': ?floatingIpAddress,
      'machineType': ?machineType,
      'secondarySoleTenantNode': ?secondarySoleTenantNode,
      'secondarySoleTenantNodeType': ?secondarySoleTenantNodeType,
      'secretManagerSecret': ?secretManagerSecret,
      'smt': ?smt,
      'soleTenantNode': ?soleTenantNode,
      'soleTenantNodeType': ?soleTenantNodeType,
      'tempdbOnSsd': ?tempdbOnSsd,
      'tenancyModel': ?tenancyModel,
    };
  }
}

/// Message for SAP instance details.
class DatabaseDetails {
  /// Database service account.
  ///
  /// Let customers bring their own SA for the database.
  core.String? databaseServiceAccount;

  /// Disk type.
  ///
  /// Required.
  core.String? diskType;

  /// Image for the database server.
  ///
  /// Required.
  core.String? image;

  /// Instance ID.
  ///
  /// Optional.
  core.String? instanceId;

  /// Machine type.
  ///
  /// Required.
  core.String? machineType;

  /// Primary DB VM name.
  ///
  /// Optional.
  core.String? primaryDbVm;

  /// Secondary DB VM name.
  ///
  /// Optional.
  core.String? secondaryDbVm;

  /// Secret Manager secret.
  ///
  /// Required.
  core.String? secretManagerSecret;

  /// The SID is a three-digit server-specific unique identification code.
  ///
  /// Required.
  core.String? sid;

  DatabaseDetails({
    this.databaseServiceAccount,
    this.diskType,
    this.image,
    this.instanceId,
    this.machineType,
    this.primaryDbVm,
    this.secondaryDbVm,
    this.secretManagerSecret,
    this.sid,
  });

  DatabaseDetails.fromJson(core.Map json_)
    : this(
        databaseServiceAccount: json_['databaseServiceAccount'] as core.String?,
        diskType: json_['diskType'] as core.String?,
        image: json_['image'] as core.String?,
        instanceId: json_['instanceId'] as core.String?,
        machineType: json_['machineType'] as core.String?,
        primaryDbVm: json_['primaryDbVm'] as core.String?,
        secondaryDbVm: json_['secondaryDbVm'] as core.String?,
        secretManagerSecret: json_['secretManagerSecret'] as core.String?,
        sid: json_['sid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final databaseServiceAccount = this.databaseServiceAccount;
    final diskType = this.diskType;
    final image = this.image;
    final instanceId = this.instanceId;
    final machineType = this.machineType;
    final primaryDbVm = this.primaryDbVm;
    final secondaryDbVm = this.secondaryDbVm;
    final secretManagerSecret = this.secretManagerSecret;
    final sid = this.sid;
    return {
      'databaseServiceAccount': ?databaseServiceAccount,
      'diskType': ?diskType,
      'image': ?image,
      'instanceId': ?instanceId,
      'machineType': ?machineType,
      'primaryDbVm': ?primaryDbVm,
      'secondaryDbVm': ?secondaryDbVm,
      'secretManagerSecret': ?secretManagerSecret,
      'sid': ?sid,
    };
  }
}

/// Database Properties.
class DatabaseProperties {
  /// Backup properties.
  ///
  /// Output only.
  BackupProperties? backupProperties;

  /// Type of the database.
  ///
  /// `HANA`, `DB2`, etc.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : unspecified
  /// - "HANA" : SAP HANA
  /// - "MAX_DB" : SAP MAX_DB
  /// - "DB2" : IBM DB2
  /// - "ORACLE" : Oracle Database
  /// - "SQLSERVER" : Microsoft SQL Server
  /// - "ASE" : SAP Sybase ASE
  core.String? databaseType;

  DatabaseProperties({this.backupProperties, this.databaseType});

  DatabaseProperties.fromJson(core.Map json_)
    : this(
        backupProperties: json_.containsKey('backupProperties')
            ? BackupProperties.fromJson(
                json_['backupProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        databaseType: json_['databaseType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backupProperties = this.backupProperties;
    final databaseType = this.databaseType;
    return {
      'backupProperties': ?backupProperties,
      'databaseType': ?databaseType,
    };
  }
}

/// The Deployment object represents user intent for deploying a specific type
/// of workload.
class Deployment {
  /// Create time stamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the deployment.
  core.String? description;

  /// The name of the deployment resource.
  ///
  /// The format is
  /// 'projects/{project_id}/locations/{location_id}/deployments/{deployment_id}'.
  core.String? name;

  /// SAP system workload input.
  SapSystemS4Config? sapSystemS4Config;

  /// User-specified Service Account (SA) credentials to be used for Cloud
  /// Build.
  ///
  /// Format: `projects/{projectID}/serviceAccounts/{serviceAccount}` The
  /// default Cloud Build SA will be used initially if this field is not set
  /// during deployment creation.
  core.String? serviceAccount;

  /// MS SQL workload input.
  SqlServerWorkload? sqlServerWorkload;

  /// Current state of the deployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "CREATING" : The deployment is being created.
  /// - "ACTIVE" : The deployment is healthy.
  /// - "UPDATING" : The deployment is being updated.
  /// - "DELETING" : The deployment is being deleted.
  /// - "FAILED" : The deployment has encountered an unexpected error.
  core.String? state;

  /// terraform_variables represents all the Terraform variables for the
  /// deployment workload.
  ///
  /// The key is the name of the Terraform variable, and the value is the
  /// TerraformVariable. For example: { "project_id": { "input_value": {
  /// "string_value": "my-project-id" } }, "zone": { "input_value": {
  /// "string_value": "us-central1-a" } } }
  ///
  /// Optional.
  core.Map<core.String, TerraformVariable>? terraformVariables;

  /// Update time stamp.
  ///
  /// Output only.
  core.String? updateTime;

  /// The user-specified Cloud Build worker pool resource in which the Cloud
  /// Build job will execute.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/workerPools/{workerPoolId}`. If
  /// this field is unspecified, the default Cloud Build worker pool will be
  /// used.
  ///
  /// Optional.
  core.String? workerPool;

  /// Workload type of the deployment.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "WORKLOAD_TYPE_UNSPECIFIED" : Unspecified workload type.
  /// - "SAP_S4" : SAP S/4HANA workload type.
  /// - "SQL_SERVER" : SQL Server workload type.
  /// - "ORACLE" : Oracle workload type.
  core.String? workloadType;

  Deployment({
    this.createTime,
    this.description,
    this.name,
    this.sapSystemS4Config,
    this.serviceAccount,
    this.sqlServerWorkload,
    this.state,
    this.terraformVariables,
    this.updateTime,
    this.workerPool,
    this.workloadType,
  });

  Deployment.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        sapSystemS4Config: json_.containsKey('sapSystemS4Config')
            ? SapSystemS4Config.fromJson(
                json_['sapSystemS4Config']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        serviceAccount: json_['serviceAccount'] as core.String?,
        sqlServerWorkload: json_.containsKey('sqlServerWorkload')
            ? SqlServerWorkload.fromJson(
                json_['sqlServerWorkload']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
        terraformVariables:
            (json_['terraformVariables']
                    as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    TerraformVariable.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        updateTime: json_['updateTime'] as core.String?,
        workerPool: json_['workerPool'] as core.String?,
        workloadType: json_['workloadType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final description = this.description;
    final name = this.name;
    final sapSystemS4Config = this.sapSystemS4Config;
    final serviceAccount = this.serviceAccount;
    final sqlServerWorkload = this.sqlServerWorkload;
    final state = this.state;
    final terraformVariables = this.terraformVariables;
    final updateTime = this.updateTime;
    final workerPool = this.workerPool;
    final workloadType = this.workloadType;
    return {
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'sapSystemS4Config': ?sapSystemS4Config,
      'serviceAccount': ?serviceAccount,
      'sqlServerWorkload': ?sqlServerWorkload,
      'state': ?state,
      'terraformVariables': ?terraformVariables,
      'updateTime': ?updateTime,
      'workerPool': ?workerPool,
      'workloadType': ?workloadType,
    };
  }
}

/// Message for output of deployment resource.
class DeploymentOutput {
  /// Name of the resource.
  core.String? name;

  /// Type of the resource.
  core.String? type;

  DeploymentOutput({this.name, this.type});

  DeploymentOutput.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final type = this.type;
    return {'name': ?name, 'type': ?type};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Represents a Workload Manager Evaluation configuration.
///
/// An Evaluation defines a set of rules to be validated against a scope of
/// Cloud resources.
class Evaluation {
  /// The BigQuery destination for detailed evaluation results.
  ///
  /// If this field is specified, the results of each evaluation execution are
  /// exported to BigQuery.
  ///
  /// Optional.
  BigQueryDestination? bigQueryDestination;

  /// Create time stamp.
  ///
  /// Output only.
  core.String? createTime;

  /// The Cloud Storage bucket name for custom rules.
  core.String? customRulesBucket;

  /// Description of the Evaluation.
  core.String? description;

  /// Evaluation type.
  /// Possible string values are:
  /// - "EVALUATION_TYPE_UNSPECIFIED" : Not specified.
  /// - "SAP" : SAP best practices.
  /// - "SQL_SERVER" : SQL best practices.
  /// - "OTHER" : Customized best practices.
  core.String? evaluationType;

  /// Customer-managed encryption key name, in the format projects / *
  /// /locations / * /keyRings / * /cryptoKeys / * .
  ///
  /// The key will be used for CMEK encryption of the evaluation resource.
  ///
  /// Optional. Immutable.
  core.String? kmsKey;

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// Name of resource that has the form
  /// `projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}`.
  core.String? name;

  /// Resource filter for an evaluation defining the scope of resources to be
  /// evaluated.
  ResourceFilter? resourceFilter;

  /// The current lifecycle state of the evaluation resource.
  ///
  /// Output only.
  ResourceStatus? resourceStatus;

  /// The names of the rules used for this evaluation.
  core.List<core.String>? ruleNames;

  /// Crontab format schedule for scheduled evaluation, currently only supports
  /// the following fixed schedules: * `0 * / 1 * * *` # Hourly * `0 * / 6 * *
  /// *` # Every 6 hours * `0 * / 12 * * *` # Every 12 hours * `0 0 * / 1 * *` #
  /// Daily * `0 0 * / 7 * *` # Weekly * `0 0 * / 14 * *` # Every 14 days * `0 0
  /// 1 * / 1 *` # Monthly
  core.String? schedule;

  /// Update time stamp.
  ///
  /// Output only.
  core.String? updateTime;

  Evaluation({
    this.bigQueryDestination,
    this.createTime,
    this.customRulesBucket,
    this.description,
    this.evaluationType,
    this.kmsKey,
    this.labels,
    this.name,
    this.resourceFilter,
    this.resourceStatus,
    this.ruleNames,
    this.schedule,
    this.updateTime,
  });

  Evaluation.fromJson(core.Map json_)
    : this(
        bigQueryDestination: json_.containsKey('bigQueryDestination')
            ? BigQueryDestination.fromJson(
                json_['bigQueryDestination']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        customRulesBucket: json_['customRulesBucket'] as core.String?,
        description: json_['description'] as core.String?,
        evaluationType: json_['evaluationType'] as core.String?,
        kmsKey: json_['kmsKey'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        resourceFilter: json_.containsKey('resourceFilter')
            ? ResourceFilter.fromJson(
                json_['resourceFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        resourceStatus: json_.containsKey('resourceStatus')
            ? ResourceStatus.fromJson(
                json_['resourceStatus'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        ruleNames: (json_['ruleNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        schedule: json_['schedule'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bigQueryDestination = this.bigQueryDestination;
    final createTime = this.createTime;
    final customRulesBucket = this.customRulesBucket;
    final description = this.description;
    final evaluationType = this.evaluationType;
    final kmsKey = this.kmsKey;
    final labels = this.labels;
    final name = this.name;
    final resourceFilter = this.resourceFilter;
    final resourceStatus = this.resourceStatus;
    final ruleNames = this.ruleNames;
    final schedule = this.schedule;
    final updateTime = this.updateTime;
    return {
      'bigQueryDestination': ?bigQueryDestination,
      'createTime': ?createTime,
      'customRulesBucket': ?customRulesBucket,
      'description': ?description,
      'evaluationType': ?evaluationType,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'name': ?name,
      'resourceFilter': ?resourceFilter,
      'resourceStatus': ?resourceStatus,
      'ruleNames': ?ruleNames,
      'schedule': ?schedule,
      'updateTime': ?updateTime,
    };
  }
}

/// Execution that represents a single run of an Evaluation.
class Execution {
  /// End time stamp.
  ///
  /// Output only.
  core.String? endTime;

  /// Engine.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENGINE_UNSPECIFIED" : The original CG.
  /// - "ENGINE_SCANNER" : SlimCG / Scanner.
  /// - "V2" : Evaluation Engine V2.
  core.String? engine;

  /// Evaluation ID.
  ///
  /// Output only.
  core.String? evaluationId;

  /// External data sources.
  ///
  /// Optional.
  core.List<ExternalDataSources>? externalDataSources;

  /// Inventory time stamp.
  ///
  /// Output only.
  core.String? inventoryTime;

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// The name of execution resource.
  ///
  /// The format is
  /// projects/{project}/locations/{location}/evaluations/{evaluation}/executions/{execution}.
  core.String? name;

  /// Additional information generated by the execution.
  ///
  /// Output only.
  core.List<Notice>? notices;

  /// Result summary for the execution.
  ///
  /// Output only.
  Summary? resultSummary;

  /// Execution result summary per rule.
  ///
  /// Output only.
  core.List<RuleExecutionResult>? ruleResults;

  /// Type which represents whether the execution executed directly by user or
  /// scheduled according to the `Evaluation.schedule` field.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Type of execution is unspecified.
  /// - "ONE_TIME" : Type of execution is one time.
  /// - "SCHEDULED" : Type of execution is scheduled.
  core.String? runType;

  /// Start time stamp.
  ///
  /// Output only.
  core.String? startTime;

  /// State.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State of execution is unspecified.
  /// - "RUNNING" : The execution is running in backend service.
  /// - "SUCCEEDED" : The execution run succeeded.
  /// - "FAILED" : The execution run failed.
  core.String? state;

  Execution({
    this.endTime,
    this.engine,
    this.evaluationId,
    this.externalDataSources,
    this.inventoryTime,
    this.labels,
    this.name,
    this.notices,
    this.resultSummary,
    this.ruleResults,
    this.runType,
    this.startTime,
    this.state,
  });

  Execution.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        engine: json_['engine'] as core.String?,
        evaluationId: json_['evaluationId'] as core.String?,
        externalDataSources: (json_['externalDataSources'] as core.List?)
            ?.map(
              (value) => ExternalDataSources.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        inventoryTime: json_['inventoryTime'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        notices: (json_['notices'] as core.List?)
            ?.map(
              (value) =>
                  Notice.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        resultSummary: json_.containsKey('resultSummary')
            ? Summary.fromJson(
                json_['resultSummary'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        ruleResults: (json_['ruleResults'] as core.List?)
            ?.map(
              (value) => RuleExecutionResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        runType: json_['runType'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final engine = this.engine;
    final evaluationId = this.evaluationId;
    final externalDataSources = this.externalDataSources;
    final inventoryTime = this.inventoryTime;
    final labels = this.labels;
    final name = this.name;
    final notices = this.notices;
    final resultSummary = this.resultSummary;
    final ruleResults = this.ruleResults;
    final runType = this.runType;
    final startTime = this.startTime;
    final state = this.state;
    return {
      'endTime': ?endTime,
      'engine': ?engine,
      'evaluationId': ?evaluationId,
      'externalDataSources': ?externalDataSources,
      'inventoryTime': ?inventoryTime,
      'labels': ?labels,
      'name': ?name,
      'notices': ?notices,
      'resultSummary': ?resultSummary,
      'ruleResults': ?ruleResults,
      'runType': ?runType,
      'startTime': ?startTime,
      'state': ?state,
    };
  }
}

/// The result of an execution.
class ExecutionResult {
  /// The commands to remediate the violation.
  core.List<Command>? commands;

  /// The URL for the documentation of the rule.
  core.String? documentationUrl;

  /// The resource that violates the rule.
  Resource? resource;

  /// The rule that is violated in an evaluation.
  core.String? rule;

  /// The severity of violation.
  core.String? severity;

  /// Execution result type of the scanned resource.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unknown state.
  /// - "TYPE_PASSED" : Resource successfully passed the rule.
  /// - "TYPE_VIOLATED" : Resource violated the rule.
  core.String? type;

  /// The details of violation in an evaluation result.
  ViolationDetails? violationDetails;

  /// The violation message of an execution.
  core.String? violationMessage;

  ExecutionResult({
    this.commands,
    this.documentationUrl,
    this.resource,
    this.rule,
    this.severity,
    this.type,
    this.violationDetails,
    this.violationMessage,
  });

  ExecutionResult.fromJson(core.Map json_)
    : this(
        commands: (json_['commands'] as core.List?)
            ?.map(
              (value) => Command.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        documentationUrl: json_['documentationUrl'] as core.String?,
        resource: json_.containsKey('resource')
            ? Resource.fromJson(
                json_['resource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rule: json_['rule'] as core.String?,
        severity: json_['severity'] as core.String?,
        type: json_['type'] as core.String?,
        violationDetails: json_.containsKey('violationDetails')
            ? ViolationDetails.fromJson(
                json_['violationDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        violationMessage: json_['violationMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final commands = this.commands;
    final documentationUrl = this.documentationUrl;
    final resource = this.resource;
    final rule = this.rule;
    final severity = this.severity;
    final type = this.type;
    final violationDetails = this.violationDetails;
    final violationMessage = this.violationMessage;
    return {
      'commands': ?commands,
      'documentationUrl': ?documentationUrl,
      'resource': ?resource,
      'rule': ?rule,
      'severity': ?severity,
      'type': ?type,
      'violationDetails': ?violationDetails,
      'violationMessage': ?violationMessage,
    };
  }
}

/// External data sources for an execution.
class ExternalDataSources {
  /// The asset type of the external data source.
  ///
  /// This can be a supported Cloud Asset Inventory asset type (see
  /// https://cloud.google.com/asset-inventory/docs/supported-asset-types) to
  /// override the default asset type, or it can be a custom type defined by the
  /// user.
  ///
  /// Required.
  core.String? assetType;

  /// Name of external data source.
  ///
  /// The name will be used inside the rego/sql to refer the external data.
  ///
  /// Optional.
  core.String? name;

  /// Type of external data source.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unknown type.
  /// - "BIG_QUERY_TABLE" : BigQuery table.
  core.String? type;

  /// URI of external data source.
  ///
  /// example of bq table {project_ID}.{dataset_ID}.{table_ID}.
  ///
  /// Required.
  core.String? uri;

  ExternalDataSources({this.assetType, this.name, this.type, this.uri});

  ExternalDataSources.fromJson(core.Map json_)
    : this(
        assetType: json_['assetType'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assetType = this.assetType;
    final name = this.name;
    final type = this.type;
    final uri = this.uri;
    return {'assetType': ?assetType, 'name': ?name, 'type': ?type, 'uri': ?uri};
  }
}

/// A filter for matching Compute Engine instances.
class GceInstanceFilter {
  /// If non-empty, only Compute Engine instances associated with at least one
  /// of the provided service accounts will be included in the evaluation.
  core.List<core.String>? serviceAccounts;

  GceInstanceFilter({this.serviceAccounts});

  GceInstanceFilter.fromJson(core.Map json_)
    : this(
        serviceAccounts: (json_['serviceAccounts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final serviceAccounts = this.serviceAccounts;
    return {'serviceAccounts': ?serviceAccounts};
  }
}

/// HealthCheck contains the detailed health check of a component based on
/// asource.
class HealthCheck {
  /// The message of the health check.
  ///
  /// Output only.
  core.String? message;

  /// The health check source metric name.
  ///
  /// Output only.
  core.String? metric;

  /// The resource the check performs on.
  ///
  /// Output only.
  CloudResource? resource;

  /// The source of the health check.
  ///
  /// Output only.
  core.String? source;

  /// The state of the health check.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified
  /// - "PASSED" : passed
  /// - "FAILED" : failed
  /// - "DEGRADED" : degraded
  /// - "SKIPPED" : skipped
  /// - "UNSUPPORTED" : unsupported
  core.String? state;

  HealthCheck({
    this.message,
    this.metric,
    this.resource,
    this.source,
    this.state,
  });

  HealthCheck.fromJson(core.Map json_)
    : this(
        message: json_['message'] as core.String?,
        metric: json_['metric'] as core.String?,
        resource: json_.containsKey('resource')
            ? CloudResource.fromJson(
                json_['resource'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        source: json_['source'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final message = this.message;
    final metric = this.metric;
    final resource = this.resource;
    final source = this.source;
    final state = this.state;
    return {
      'message': ?message,
      'metric': ?metric,
      'resource': ?resource,
      'source': ?source,
      'state': ?state,
    };
  }
}

/// The IAM permission status.
class IAMPermission {
  /// Whether the permission is granted.
  ///
  /// Output only.
  core.bool? granted;

  /// The name of the permission.
  ///
  /// Output only.
  core.String? name;

  IAMPermission({this.granted, this.name});

  IAMPermission.fromJson(core.Map json_)
    : this(
        granted: json_['granted'] as core.bool?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final granted = this.granted;
    final name = this.name;
    return {'granted': ?granted, 'name': ?name};
  }
}

/// A presentation of host resource usage where the workload runs.
class Insight {
  /// The insights data for the agent status.
  AgentStatus? agentStatus;

  /// The instance id where the insight is generated from
  ///
  /// Optional.
  core.String? instanceId;

  /// The insights data for the OpenShift workload validation.
  OpenShiftValidation? openShiftValidation;

  /// The insights data for SAP system discovery.
  ///
  /// This is a copy of SAP System proto and should get updated whenever that
  /// one changes.
  SapDiscovery? sapDiscovery;

  /// The insights data for the SAP workload validation.
  SapValidation? sapValidation;

  /// Create time stamp
  ///
  /// Output only.
  core.String? sentTime;

  /// The insights data for the sqlserver workload validation.
  SqlserverValidation? sqlserverValidation;

  /// The insights data for workload validation of torso workloads.
  TorsoValidation? torsoValidation;

  Insight({
    this.agentStatus,
    this.instanceId,
    this.openShiftValidation,
    this.sapDiscovery,
    this.sapValidation,
    this.sentTime,
    this.sqlserverValidation,
    this.torsoValidation,
  });

  Insight.fromJson(core.Map json_)
    : this(
        agentStatus: json_.containsKey('agentStatus')
            ? AgentStatus.fromJson(
                json_['agentStatus'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        instanceId: json_['instanceId'] as core.String?,
        openShiftValidation: json_.containsKey('openShiftValidation')
            ? OpenShiftValidation.fromJson(
                json_['openShiftValidation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        sapDiscovery: json_.containsKey('sapDiscovery')
            ? SapDiscovery.fromJson(
                json_['sapDiscovery'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sapValidation: json_.containsKey('sapValidation')
            ? SapValidation.fromJson(
                json_['sapValidation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sentTime: json_['sentTime'] as core.String?,
        sqlserverValidation: json_.containsKey('sqlserverValidation')
            ? SqlserverValidation.fromJson(
                json_['sqlserverValidation']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        torsoValidation: json_.containsKey('torsoValidation')
            ? TorsoValidation.fromJson(
                json_['torsoValidation'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentStatus = this.agentStatus;
    final instanceId = this.instanceId;
    final openShiftValidation = this.openShiftValidation;
    final sapDiscovery = this.sapDiscovery;
    final sapValidation = this.sapValidation;
    final sentTime = this.sentTime;
    final sqlserverValidation = this.sqlserverValidation;
    final torsoValidation = this.torsoValidation;
    return {
      'agentStatus': ?agentStatus,
      'instanceId': ?instanceId,
      'openShiftValidation': ?openShiftValidation,
      'sapDiscovery': ?sapDiscovery,
      'sapValidation': ?sapValidation,
      'sentTime': ?sentTime,
      'sqlserverValidation': ?sqlserverValidation,
      'torsoValidation': ?torsoValidation,
    };
  }
}

/// Instance Properties.
class InstanceProperties {
  /// Instance number.
  ///
  /// Optional.
  core.String? instanceNumber;

  /// Instance machine type.
  ///
  /// Optional.
  core.String? machineType;

  /// Instance roles.
  ///
  /// Optional.
  core.List<core.String>? roles;

  /// SAP Instance properties.
  ///
  /// Optional.
  SapInstanceProperties? sapInstanceProperties;

  /// Instance status.
  ///
  /// Optional.
  core.String? status;

  /// the next maintenance event on VM
  ///
  /// Optional.
  UpcomingMaintenanceEvent? upcomingMaintenanceEvent;

  InstanceProperties({
    this.instanceNumber,
    this.machineType,
    this.roles,
    this.sapInstanceProperties,
    this.status,
    this.upcomingMaintenanceEvent,
  });

  InstanceProperties.fromJson(core.Map json_)
    : this(
        instanceNumber: json_['instanceNumber'] as core.String?,
        machineType: json_['machineType'] as core.String?,
        roles: (json_['roles'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        sapInstanceProperties: json_.containsKey('sapInstanceProperties')
            ? SapInstanceProperties.fromJson(
                json_['sapInstanceProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        status: json_['status'] as core.String?,
        upcomingMaintenanceEvent: json_.containsKey('upcomingMaintenanceEvent')
            ? UpcomingMaintenanceEvent.fromJson(
                json_['upcomingMaintenanceEvent']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final instanceNumber = this.instanceNumber;
    final machineType = this.machineType;
    final roles = this.roles;
    final sapInstanceProperties = this.sapInstanceProperties;
    final status = this.status;
    final upcomingMaintenanceEvent = this.upcomingMaintenanceEvent;
    return {
      'instanceNumber': ?instanceNumber,
      'machineType': ?machineType,
      'roles': ?roles,
      'sapInstanceProperties': ?sapInstanceProperties,
      'status': ?status,
      'upcomingMaintenanceEvent': ?upcomingMaintenanceEvent,
    };
  }
}

/// The response object from `ListActuations`.
class ListActuationsResponse {
  /// The list of actuations.
  core.List<Actuation>? actuations;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListActuationsResponse({
    this.actuations,
    this.nextPageToken,
    this.unreachable,
  });

  ListActuationsResponse.fromJson(core.Map json_)
    : this(
        actuations: (json_['actuations'] as core.List?)
            ?.map(
              (value) => Actuation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actuations = this.actuations;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'actuations': ?actuations,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing deployments.
class ListDeploymentsResponse {
  /// The list of deployments.
  core.List<Deployment>? deployments;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListDeploymentsResponse({
    this.deployments,
    this.nextPageToken,
    this.unreachable,
  });

  ListDeploymentsResponse.fromJson(core.Map json_)
    : this(
        deployments: (json_['deployments'] as core.List?)
            ?.map(
              (value) => Deployment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deployments = this.deployments;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'deployments': ?deployments,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// List discovered profile Response returns discovered profiles from agents
class ListDiscoveredProfilesResponse {
  /// A token identifying a page of results the server should return
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// The list of workload profiles
  ///
  /// Output only.
  core.List<WorkloadProfile>? workloadProfiles;

  ListDiscoveredProfilesResponse({
    this.nextPageToken,
    this.unreachable,
    this.workloadProfiles,
  });

  ListDiscoveredProfilesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        workloadProfiles: (json_['workloadProfiles'] as core.List?)
            ?.map(
              (value) => WorkloadProfile.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    final workloadProfiles = this.workloadProfiles;
    return {
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
      'workloadProfiles': ?workloadProfiles,
    };
  }
}

/// Response message for the ListEvaluations RPC.
class ListEvaluationsResponse {
  /// The list of evaluations.
  core.List<Evaluation>? evaluations;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListEvaluationsResponse({
    this.evaluations,
    this.nextPageToken,
    this.unreachable,
  });

  ListEvaluationsResponse.fromJson(core.Map json_)
    : this(
        evaluations: (json_['evaluations'] as core.List?)
            ?.map(
              (value) => Evaluation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final evaluations = this.evaluations;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'evaluations': ?evaluations,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Response message for the ListExecutionResults RPC.
class ListExecutionResultsResponse {
  /// The versions from the specified publisher.
  core.List<ExecutionResult>? executionResults;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListExecutionResultsResponse({this.executionResults, this.nextPageToken});

  ListExecutionResultsResponse.fromJson(core.Map json_)
    : this(
        executionResults: (json_['executionResults'] as core.List?)
            ?.map(
              (value) => ExecutionResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final executionResults = this.executionResults;
    final nextPageToken = this.nextPageToken;
    return {
      'executionResults': ?executionResults,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for the ListExecutions RPC.
class ListExecutionsResponse {
  /// The list of Execution.
  core.List<Execution>? executions;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListExecutionsResponse({
    this.executions,
    this.nextPageToken,
    this.unreachable,
  });

  ListExecutionsResponse.fromJson(core.Map json_)
    : this(
        executions: (json_['executions'] as core.List?)
            ?.map(
              (value) => Execution.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final executions = this.executions;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'executions': ?executions,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
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
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => Location.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locations = this.locations;
    final nextPageToken = this.nextPageToken;
    return {'locations': ?locations, 'nextPageToken': ?nextPageToken};
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  /// Unordered list.
  ///
  /// Unreachable resources. Populated when the request sets
  /// `ListOperationsRequest.return_partial_success` and reads across
  /// collections. For example, when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => Operation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final operations = this.operations;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'operations': ?operations,
      'unreachable': ?unreachable,
    };
  }
}

/// Response message for the ListRules RPC.
class ListRulesResponse {
  /// All rules in response.
  core.List<Rule>? rules;

  ListRulesResponse({this.rules});

  ListRulesResponse.fromJson(core.Map json_)
    : this(
        rules: (json_['rules'] as core.List?)
            ?.map(
              (value) =>
                  Rule.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final rules = this.rules;
    return {'rules': ?rules};
  }
}

/// Response message for the ListScannedResources RPC.
class ListScannedResourcesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// All scanned resources in response.
  core.List<ScannedResource>? scannedResources;

  ListScannedResourcesResponse({this.nextPageToken, this.scannedResources});

  ListScannedResourcesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        scannedResources: (json_['scannedResources'] as core.List?)
            ?.map(
              (value) => ScannedResource.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final scannedResources = this.scannedResources;
    return {
      'nextPageToken': ?nextPageToken,
      'scannedResources': ?scannedResources,
    };
  }
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Message for SAP instance details.
class LocationDetails {
  /// Create firewall.
  ///
  /// If true, creates a firewall for the deployment. This field provides an
  /// option to not always create a firewall for the deployment.
  ///
  /// Optional.
  core.bool? createCommsFirewall;

  /// Network tags.
  ///
  /// Optional.
  core.List<core.String>? customTags;

  /// When the user skips DNS configuration in the UI, `deployment_dns_enabled`
  /// is false; otherwise `deployment_dns_enabled` is true.
  ///
  /// Optional.
  core.bool? deploymentDnsEnabled;

  /// DNS zone name.
  ///
  /// Optional.
  core.String? dnsZone;

  /// DNS zone name suffix.
  ///
  /// Optional.
  core.String? dnsZoneNameSuffix;

  ///
  /// Possible string values are:
  /// - "INTERNETACCESS_UNSPECIFIED"
  /// - "ALLOW_EXTERNAL_IP"
  /// - "CONFIGURE_NAT"
  core.String? internetAccess;

  /// Network project.
  ///
  /// Optional.
  core.String? networkProject;

  /// Region name.
  ///
  /// Required.
  core.String? regionName;

  /// Subnet name.
  ///
  /// Required.
  core.String? subnetName;

  /// VPC name.
  ///
  /// Required.
  core.String? vpcName;

  /// Zone 1 name.
  ///
  /// Required.
  core.String? zone1Name;

  /// Zone 2 name.
  ///
  /// Optional.
  core.String? zone2Name;

  LocationDetails({
    this.createCommsFirewall,
    this.customTags,
    this.deploymentDnsEnabled,
    this.dnsZone,
    this.dnsZoneNameSuffix,
    this.internetAccess,
    this.networkProject,
    this.regionName,
    this.subnetName,
    this.vpcName,
    this.zone1Name,
    this.zone2Name,
  });

  LocationDetails.fromJson(core.Map json_)
    : this(
        createCommsFirewall: json_['createCommsFirewall'] as core.bool?,
        customTags: (json_['customTags'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        deploymentDnsEnabled: json_['deploymentDnsEnabled'] as core.bool?,
        dnsZone: json_['dnsZone'] as core.String?,
        dnsZoneNameSuffix: json_['dnsZoneNameSuffix'] as core.String?,
        internetAccess: json_['internetAccess'] as core.String?,
        networkProject: json_['networkProject'] as core.String?,
        regionName: json_['regionName'] as core.String?,
        subnetName: json_['subnetName'] as core.String?,
        vpcName: json_['vpcName'] as core.String?,
        zone1Name: json_['zone1Name'] as core.String?,
        zone2Name: json_['zone2Name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createCommsFirewall = this.createCommsFirewall;
    final customTags = this.customTags;
    final deploymentDnsEnabled = this.deploymentDnsEnabled;
    final dnsZone = this.dnsZone;
    final dnsZoneNameSuffix = this.dnsZoneNameSuffix;
    final internetAccess = this.internetAccess;
    final networkProject = this.networkProject;
    final regionName = this.regionName;
    final subnetName = this.subnetName;
    final vpcName = this.vpcName;
    final zone1Name = this.zone1Name;
    final zone2Name = this.zone2Name;
    return {
      'createCommsFirewall': ?createCommsFirewall,
      'customTags': ?customTags,
      'deploymentDnsEnabled': ?deploymentDnsEnabled,
      'dnsZone': ?dnsZone,
      'dnsZoneNameSuffix': ?dnsZoneNameSuffix,
      'internetAccess': ?internetAccess,
      'networkProject': ?networkProject,
      'regionName': ?regionName,
      'subnetName': ?subnetName,
      'vpcName': ?vpcName,
      'zone1Name': ?zone1Name,
      'zone2Name': ?zone2Name,
    };
  }
}

/// Additional information generated by an execution.
class Notice {
  /// Message of the notice.
  ///
  /// Output only.
  core.String? message;

  Notice({this.message});

  Notice.fromJson(core.Map json_)
    : this(message: json_['message'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final message = this.message;
    return {'message': ?message};
  }
}

/// A presentation of OpenShift workload insight.
///
/// The schema of OpenShift workloads validation related data.
class OpenShiftValidation {
  /// The OpenShift cluster ID (e.g. 8371bb05-7cac-4d38-82c0-0f58c4f6f936).
  ///
  /// Required.
  core.String? clusterId;

  /// The validation details of the OpenShift cluster in JSON format.
  ///
  /// Required.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? validationDetails;

  OpenShiftValidation({this.clusterId, this.validationDetails});

  OpenShiftValidation.fromJson(core.Map json_)
    : this(
        clusterId: json_['clusterId'] as core.String?,
        validationDetails: json_.containsKey('validationDetails')
            ? json_['validationDetails'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clusterId = this.clusterId;
    final validationDetails = this.validationDetails;
    return {'clusterId': ?clusterId, 'validationDetails': ?validationDetails};
  }
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
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

/// Pacemaker configuration.
class Pacemaker {
  /// Bucket location for node certificates.
  ///
  /// Required.
  core.String? bucketNameNodeCertificates;

  /// Pacemaker cluster name.
  ///
  /// Required.
  core.String? pacemakerCluster;

  /// Pacemaker cluster secret name.
  ///
  /// Required.
  core.String? pacemakerClusterSecret;

  /// Pacemaker cluster username.
  ///
  /// Required.
  core.String? pacemakerClusterUsername;

  /// SQL Pacemaker secret name.
  ///
  /// Required.
  core.String? sqlPacemakerSecret;

  /// SQL Pacemaker username.
  ///
  /// Required.
  core.String? sqlPacemakerUsername;

  Pacemaker({
    this.bucketNameNodeCertificates,
    this.pacemakerCluster,
    this.pacemakerClusterSecret,
    this.pacemakerClusterUsername,
    this.sqlPacemakerSecret,
    this.sqlPacemakerUsername,
  });

  Pacemaker.fromJson(core.Map json_)
    : this(
        bucketNameNodeCertificates:
            json_['bucketNameNodeCertificates'] as core.String?,
        pacemakerCluster: json_['pacemakerCluster'] as core.String?,
        pacemakerClusterSecret: json_['pacemakerClusterSecret'] as core.String?,
        pacemakerClusterUsername:
            json_['pacemakerClusterUsername'] as core.String?,
        sqlPacemakerSecret: json_['sqlPacemakerSecret'] as core.String?,
        sqlPacemakerUsername: json_['sqlPacemakerUsername'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bucketNameNodeCertificates = this.bucketNameNodeCertificates;
    final pacemakerCluster = this.pacemakerCluster;
    final pacemakerClusterSecret = this.pacemakerClusterSecret;
    final pacemakerClusterUsername = this.pacemakerClusterUsername;
    final sqlPacemakerSecret = this.sqlPacemakerSecret;
    final sqlPacemakerUsername = this.sqlPacemakerUsername;
    return {
      'bucketNameNodeCertificates': ?bucketNameNodeCertificates,
      'pacemakerCluster': ?pacemakerCluster,
      'pacemakerClusterSecret': ?pacemakerClusterSecret,
      'pacemakerClusterUsername': ?pacemakerClusterUsername,
      'sqlPacemakerSecret': ?sqlPacemakerSecret,
      'sqlPacemakerUsername': ?sqlPacemakerUsername,
    };
  }
}

/// Contains the details of a product.
typedef Product = $Shared33;

/// Resource in execution result.
class Resource {
  /// The name of the resource.
  core.String? name;

  /// The service account associated with the resource.
  core.String? serviceAccount;

  /// The type of resource.
  core.String? type;

  Resource({this.name, this.serviceAccount, this.type});

  Resource.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        serviceAccount: json_['serviceAccount'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final serviceAccount = this.serviceAccount;
    final type = this.type;
    return {'name': ?name, 'serviceAccount': ?serviceAccount, 'type': ?type};
  }
}

/// Resource filter for an evaluation defining the scope of resources to be
/// evaluated.
class ResourceFilter {
  /// Filter compute engine resources.
  GceInstanceFilter? gceInstanceFilter;

  /// Labels to filter resources by.
  ///
  /// Each key-value pair in the map must exist on the resource for it to be
  /// included (e.g. VM instance labels). For example, specifying `{ "env":
  /// "prod", "database": "nosql" }` will only include resources that have
  /// labels `env=prod` and `database=nosql`.
  core.Map<core.String, core.String>? inclusionLabels;

  /// The pattern to filter resources by their id For example, a pattern of
  /// ".*prod-cluster.*" will match all resources that contain "prod-cluster" in
  /// their ID.
  core.List<core.String>? resourceIdPatterns;

  /// The scopes of evaluation resource.
  ///
  /// Format: * `projects/{project_id}` * `folders/{folder_id}` *
  /// `organizations/{organization_id}`
  core.List<core.String>? scopes;

  ResourceFilter({
    this.gceInstanceFilter,
    this.inclusionLabels,
    this.resourceIdPatterns,
    this.scopes,
  });

  ResourceFilter.fromJson(core.Map json_)
    : this(
        gceInstanceFilter: json_.containsKey('gceInstanceFilter')
            ? GceInstanceFilter.fromJson(
                json_['gceInstanceFilter']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        inclusionLabels:
            (json_['inclusionLabels'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        resourceIdPatterns: (json_['resourceIdPatterns'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gceInstanceFilter = this.gceInstanceFilter;
    final inclusionLabels = this.inclusionLabels;
    final resourceIdPatterns = this.resourceIdPatterns;
    final scopes = this.scopes;
    return {
      'gceInstanceFilter': ?gceInstanceFilter,
      'inclusionLabels': ?inclusionLabels,
      'resourceIdPatterns': ?resourceIdPatterns,
      'scopes': ?scopes,
    };
  }
}

/// The lifecycle status of an Evaluation resource.
class ResourceStatus {
  /// State of the Evaluation resource.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state has not been populated in this message.
  /// - "CREATING" : Resource has an active Create operation.
  /// - "ACTIVE" : Resource has no outstanding operations on it or has active
  /// Update operations.
  /// - "DELETING" : Resource has an active Delete operation.
  core.String? state;

  ResourceStatus({this.state});

  ResourceStatus.fromJson(core.Map json_)
    : this(state: json_['state'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final state = this.state;
    return {'state': ?state};
  }
}

/// A rule to be evaluated.
class Rule {
  /// The CAI asset type of the rule is evaluating, for joined asset types, it
  /// will be the corresponding primary asset types.
  core.String? assetType;

  /// Describe rule in plain language.
  core.String? description;

  /// The name display in UI.
  core.String? displayName;

  /// The message template for rule.
  core.String? errorMessage;

  /// Rule name.
  core.String? name;

  /// The primary category.
  core.String? primaryCategory;

  /// The remediation for the rule.
  core.String? remediation;

  /// The version of the rule.
  ///
  /// Output only.
  core.String? revisionId;

  /// The type of the rule.
  /// Possible string values are:
  /// - "RULE_TYPE_UNSPECIFIED" : Not specified.
  /// - "BASELINE" : Baseline rules.
  /// - "CUSTOM" : Custom rules.
  core.String? ruleType;

  /// The secondary category.
  core.String? secondaryCategory;

  /// The severity of the rule.
  core.String? severity;

  /// List of user-defined tags.
  core.List<core.String>? tags;

  /// The document url for the rule.
  core.String? uri;

  Rule({
    this.assetType,
    this.description,
    this.displayName,
    this.errorMessage,
    this.name,
    this.primaryCategory,
    this.remediation,
    this.revisionId,
    this.ruleType,
    this.secondaryCategory,
    this.severity,
    this.tags,
    this.uri,
  });

  Rule.fromJson(core.Map json_)
    : this(
        assetType: json_['assetType'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        errorMessage: json_['errorMessage'] as core.String?,
        name: json_['name'] as core.String?,
        primaryCategory: json_['primaryCategory'] as core.String?,
        remediation: json_['remediation'] as core.String?,
        revisionId: json_['revisionId'] as core.String?,
        ruleType: json_['ruleType'] as core.String?,
        secondaryCategory: json_['secondaryCategory'] as core.String?,
        severity: json_['severity'] as core.String?,
        tags: (json_['tags'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final assetType = this.assetType;
    final description = this.description;
    final displayName = this.displayName;
    final errorMessage = this.errorMessage;
    final name = this.name;
    final primaryCategory = this.primaryCategory;
    final remediation = this.remediation;
    final revisionId = this.revisionId;
    final ruleType = this.ruleType;
    final secondaryCategory = this.secondaryCategory;
    final severity = this.severity;
    final tags = this.tags;
    final uri = this.uri;
    return {
      'assetType': ?assetType,
      'description': ?description,
      'displayName': ?displayName,
      'errorMessage': ?errorMessage,
      'name': ?name,
      'primaryCategory': ?primaryCategory,
      'remediation': ?remediation,
      'revisionId': ?revisionId,
      'ruleType': ?ruleType,
      'secondaryCategory': ?secondaryCategory,
      'severity': ?severity,
      'tags': ?tags,
      'uri': ?uri,
    };
  }
}

/// Execution result summary per rule.
class RuleExecutionResult {
  /// Execution message, if any.
  core.String? message;

  /// Number of violations.
  core.String? resultCount;

  /// Rule name as plain text like `sap-hana-configured`.
  core.String? rule;

  /// Number of total scanned resources.
  core.String? scannedResourceCount;

  /// The execution status.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unknown state
  /// - "STATE_SUCCESS" : Execution completed successfully
  /// - "STATE_FAILURE" : Execution completed with failures
  /// - "STATE_SKIPPED" : Execution was not executed
  core.String? state;

  RuleExecutionResult({
    this.message,
    this.resultCount,
    this.rule,
    this.scannedResourceCount,
    this.state,
  });

  RuleExecutionResult.fromJson(core.Map json_)
    : this(
        message: json_['message'] as core.String?,
        resultCount: json_['resultCount'] as core.String?,
        rule: json_['rule'] as core.String?,
        scannedResourceCount: json_['scannedResourceCount'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final message = this.message;
    final resultCount = this.resultCount;
    final rule = this.rule;
    final scannedResourceCount = this.scannedResourceCount;
    final state = this.state;
    return {
      'message': ?message,
      'resultCount': ?resultCount,
      'rule': ?rule,
      'scannedResourceCount': ?scannedResourceCount,
      'state': ?state,
    };
  }
}

/// The rule output of the violation.
class RuleOutput {
  /// Violation details generated by rule.
  ///
  /// Output only.
  core.Map<core.String, core.String>? details;

  /// The message generated by rule.
  ///
  /// Output only.
  core.String? message;

  RuleOutput({this.details, this.message});

  RuleOutput.fromJson(core.Map json_)
    : this(
        details: (json_['details'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        message: json_['message'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final details = this.details;
    final message = this.message;
    return {'details': ?details, 'message': ?message};
  }
}

/// Request message for the RunEvaluation RPC.
class RunEvaluationRequest {
  /// The resource being created.
  ///
  /// Required.
  Execution? execution;

  /// ID of the execution which will be created.
  ///
  /// Required.
  core.String? executionId;

  /// An optional request ID to identify requests.
  ///
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
  /// Optional.
  core.String? requestId;

  RunEvaluationRequest({this.execution, this.executionId, this.requestId});

  RunEvaluationRequest.fromJson(core.Map json_)
    : this(
        execution: json_.containsKey('execution')
            ? Execution.fromJson(
                json_['execution'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        executionId: json_['executionId'] as core.String?,
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final execution = this.execution;
    final executionId = this.executionId;
    final requestId = this.requestId;
    return {
      'execution': ?execution,
      'executionId': ?executionId,
      'requestId': ?requestId,
    };
  }
}

/// The component of sap workload
class SapComponent {
  /// All instance properties.
  ///
  /// Output only.
  DatabaseProperties? databaseProperties;

  /// List of host URIs that are part of the HA configuration if present.
  ///
  /// An empty list indicates the component is not configured for HA.
  core.List<core.String>? haHosts;

  /// resources in the component
  ///
  /// Output only.
  core.List<CloudResource>? resources;

  /// sid is the sap component identificator
  ///
  /// Output only.
  core.String? sid;

  /// The detected topology of the component.
  /// Possible string values are:
  /// - "TOPOLOGY_TYPE_UNSPECIFIED" : Unspecified topology.
  /// - "TOPOLOGY_SCALE_UP" : A scale-up single node system.
  /// - "TOPOLOGY_SCALE_OUT" : A scale-out multi-node system.
  core.String? topologyType;

  SapComponent({
    this.databaseProperties,
    this.haHosts,
    this.resources,
    this.sid,
    this.topologyType,
  });

  SapComponent.fromJson(core.Map json_)
    : this(
        databaseProperties: json_.containsKey('databaseProperties')
            ? DatabaseProperties.fromJson(
                json_['databaseProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        haHosts: (json_['haHosts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        resources: (json_['resources'] as core.List?)
            ?.map(
              (value) => CloudResource.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        sid: json_['sid'] as core.String?,
        topologyType: json_['topologyType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final databaseProperties = this.databaseProperties;
    final haHosts = this.haHosts;
    final resources = this.resources;
    final sid = this.sid;
    final topologyType = this.topologyType;
    return {
      'databaseProperties': ?databaseProperties,
      'haHosts': ?haHosts,
      'resources': ?resources,
      'sid': ?sid,
      'topologyType': ?topologyType,
    };
  }
}

/// The schema of SAP system discovery data.
class SapDiscovery {
  /// An SAP system may run without an application layer.
  ///
  /// Optional.
  SapDiscoveryComponent? applicationLayer;

  /// An SAP System must have a database.
  ///
  /// Required.
  SapDiscoveryComponent? databaseLayer;

  /// The metadata for SAP system discovery data.
  ///
  /// Optional.
  SapDiscoveryMetadata? metadata;

  /// The GCP project number that this SapSystem belongs to.
  ///
  /// Optional.
  core.String? projectNumber;

  /// A combination of database SID, database instance URI and tenant DB name to
  /// make a unique identifier per-system.
  ///
  /// Output only.
  core.String? systemId;

  /// Unix timestamp this system has been updated last.
  ///
  /// Required.
  core.String? updateTime;

  /// Whether to use DR reconciliation or not.
  ///
  /// Optional.
  core.bool? useDrReconciliation;

  /// The properties of the workload.
  ///
  /// Optional.
  SapDiscoveryWorkloadProperties? workloadProperties;

  SapDiscovery({
    this.applicationLayer,
    this.databaseLayer,
    this.metadata,
    this.projectNumber,
    this.systemId,
    this.updateTime,
    this.useDrReconciliation,
    this.workloadProperties,
  });

  SapDiscovery.fromJson(core.Map json_)
    : this(
        applicationLayer: json_.containsKey('applicationLayer')
            ? SapDiscoveryComponent.fromJson(
                json_['applicationLayer']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        databaseLayer: json_.containsKey('databaseLayer')
            ? SapDiscoveryComponent.fromJson(
                json_['databaseLayer'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? SapDiscoveryMetadata.fromJson(
                json_['metadata'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        projectNumber: json_['projectNumber'] as core.String?,
        systemId: json_['systemId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        useDrReconciliation: json_['useDrReconciliation'] as core.bool?,
        workloadProperties: json_.containsKey('workloadProperties')
            ? SapDiscoveryWorkloadProperties.fromJson(
                json_['workloadProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applicationLayer = this.applicationLayer;
    final databaseLayer = this.databaseLayer;
    final metadata = this.metadata;
    final projectNumber = this.projectNumber;
    final systemId = this.systemId;
    final updateTime = this.updateTime;
    final useDrReconciliation = this.useDrReconciliation;
    final workloadProperties = this.workloadProperties;
    return {
      'applicationLayer': ?applicationLayer,
      'databaseLayer': ?databaseLayer,
      'metadata': ?metadata,
      'projectNumber': ?projectNumber,
      'systemId': ?systemId,
      'updateTime': ?updateTime,
      'useDrReconciliation': ?useDrReconciliation,
      'workloadProperties': ?workloadProperties,
    };
  }
}

/// Message describing the system component.
class SapDiscoveryComponent {
  /// The component is a SAP application.
  ///
  /// Optional.
  SapDiscoveryComponentApplicationProperties? applicationProperties;

  /// The component is a SAP database.
  ///
  /// Optional.
  SapDiscoveryComponentDatabaseProperties? databaseProperties;

  /// A list of host URIs that are part of the HA configuration if present.
  ///
  /// An empty list indicates the component is not configured for HA.
  ///
  /// Optional.
  core.List<core.String>? haHosts;

  /// Pantheon Project in which the resources reside.
  ///
  /// Required.
  core.String? hostProject;

  /// The region this component's resources are primarily located in.
  ///
  /// Optional.
  core.String? region;

  /// A list of replication sites used in Disaster Recovery (DR) configurations.
  ///
  /// Optional.
  core.List<SapDiscoveryComponentReplicationSite>? replicationSites;

  /// The resources in a component.
  ///
  /// Optional.
  core.List<SapDiscoveryResource>? resources;

  /// The SAP identifier, used by the SAP software and helps differentiate
  /// systems for customers.
  ///
  /// Optional.
  core.String? sid;

  /// The detected topology of the component.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TOPOLOGY_TYPE_UNSPECIFIED" : Unspecified topology.
  /// - "TOPOLOGY_SCALE_UP" : A scale-up single node system.
  /// - "TOPOLOGY_SCALE_OUT" : A scale-out multi-node system.
  core.String? topologyType;

  SapDiscoveryComponent({
    this.applicationProperties,
    this.databaseProperties,
    this.haHosts,
    this.hostProject,
    this.region,
    this.replicationSites,
    this.resources,
    this.sid,
    this.topologyType,
  });

  SapDiscoveryComponent.fromJson(core.Map json_)
    : this(
        applicationProperties: json_.containsKey('applicationProperties')
            ? SapDiscoveryComponentApplicationProperties.fromJson(
                json_['applicationProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        databaseProperties: json_.containsKey('databaseProperties')
            ? SapDiscoveryComponentDatabaseProperties.fromJson(
                json_['databaseProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        haHosts: (json_['haHosts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        hostProject: json_['hostProject'] as core.String?,
        region: json_['region'] as core.String?,
        replicationSites: (json_['replicationSites'] as core.List?)
            ?.map(
              (value) => SapDiscoveryComponentReplicationSite.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        resources: (json_['resources'] as core.List?)
            ?.map(
              (value) => SapDiscoveryResource.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        sid: json_['sid'] as core.String?,
        topologyType: json_['topologyType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applicationProperties = this.applicationProperties;
    final databaseProperties = this.databaseProperties;
    final haHosts = this.haHosts;
    final hostProject = this.hostProject;
    final region = this.region;
    final replicationSites = this.replicationSites;
    final resources = this.resources;
    final sid = this.sid;
    final topologyType = this.topologyType;
    return {
      'applicationProperties': ?applicationProperties,
      'databaseProperties': ?databaseProperties,
      'haHosts': ?haHosts,
      'hostProject': ?hostProject,
      'region': ?region,
      'replicationSites': ?replicationSites,
      'resources': ?resources,
      'sid': ?sid,
      'topologyType': ?topologyType,
    };
  }
}

/// A set of properties describing an SAP Application layer.
class SapDiscoveryComponentApplicationProperties {
  /// Deprecated: ApplicationType now tells you whether this is ABAP or Java.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? abap;

  /// Instance number of the SAP application instance.
  ///
  /// Optional.
  core.String? appInstanceNumber;

  /// Type of the application.
  ///
  /// Netweaver, etc.
  ///
  /// Required.
  /// Possible string values are:
  /// - "APPLICATION_TYPE_UNSPECIFIED" : Unspecified application type
  /// - "NETWEAVER" : SAP Netweaver
  /// - "NETWEAVER_ABAP" : SAP Netweaver ABAP
  /// - "NETWEAVER_JAVA" : SAP Netweaver Java
  core.String? applicationType;

  /// Instance number of the ASCS instance.
  ///
  /// Optional.
  core.String? ascsInstanceNumber;

  /// Resource URI of the recognized ASCS host of the application.
  ///
  /// Optional.
  core.String? ascsUri;

  /// Instance number of the ERS instance.
  ///
  /// Optional.
  core.String? ersInstanceNumber;

  /// Kernel version for Netweaver running in the system.
  ///
  /// Optional.
  core.String? kernelVersion;

  /// Resource URI of the recognized shared NFS of the application.
  ///
  /// May be empty if the application server has only a single node.
  ///
  /// Optional.
  core.String? nfsUri;

  SapDiscoveryComponentApplicationProperties({
    this.abap,
    this.appInstanceNumber,
    this.applicationType,
    this.ascsInstanceNumber,
    this.ascsUri,
    this.ersInstanceNumber,
    this.kernelVersion,
    this.nfsUri,
  });

  SapDiscoveryComponentApplicationProperties.fromJson(core.Map json_)
    : this(
        abap: json_['abap'] as core.bool?,
        appInstanceNumber: json_['appInstanceNumber'] as core.String?,
        applicationType: json_['applicationType'] as core.String?,
        ascsInstanceNumber: json_['ascsInstanceNumber'] as core.String?,
        ascsUri: json_['ascsUri'] as core.String?,
        ersInstanceNumber: json_['ersInstanceNumber'] as core.String?,
        kernelVersion: json_['kernelVersion'] as core.String?,
        nfsUri: json_['nfsUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final abap = this.abap;
    final appInstanceNumber = this.appInstanceNumber;
    final applicationType = this.applicationType;
    final ascsInstanceNumber = this.ascsInstanceNumber;
    final ascsUri = this.ascsUri;
    final ersInstanceNumber = this.ersInstanceNumber;
    final kernelVersion = this.kernelVersion;
    final nfsUri = this.nfsUri;
    return {
      'abap': ?abap,
      'appInstanceNumber': ?appInstanceNumber,
      'applicationType': ?applicationType,
      'ascsInstanceNumber': ?ascsInstanceNumber,
      'ascsUri': ?ascsUri,
      'ersInstanceNumber': ?ersInstanceNumber,
      'kernelVersion': ?kernelVersion,
      'nfsUri': ?nfsUri,
    };
  }
}

/// A set of properties describing an SAP Database layer.
class SapDiscoveryComponentDatabaseProperties {
  /// SID of the system database.
  ///
  /// Optional.
  core.String? databaseSid;

  /// Type of the database.
  ///
  /// HANA, DB2, etc.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : Unspecified database type.
  /// - "HANA" : SAP HANA
  /// - "MAX_DB" : SAP MAX_DB
  /// - "DB2" : IBM DB2
  /// - "ORACLE" : Oracle Database
  /// - "SQLSERVER" : Microsoft SQL Server
  /// - "ASE" : SAP Sybase ASE
  core.String? databaseType;

  /// The version of the database software running in the system.
  ///
  /// Optional.
  core.String? databaseVersion;

  /// Instance number of the SAP instance.
  ///
  /// Optional.
  core.String? instanceNumber;

  /// Landscape ID from the HANA nameserver.
  ///
  /// Optional.
  core.String? landscapeId;

  /// URI of the recognized primary instance of the database.
  ///
  /// Required.
  core.String? primaryInstanceUri;

  /// URI of the recognized shared NFS of the database.
  ///
  /// May be empty if the database has only a single node.
  ///
  /// Optional.
  core.String? sharedNfsUri;

  SapDiscoveryComponentDatabaseProperties({
    this.databaseSid,
    this.databaseType,
    this.databaseVersion,
    this.instanceNumber,
    this.landscapeId,
    this.primaryInstanceUri,
    this.sharedNfsUri,
  });

  SapDiscoveryComponentDatabaseProperties.fromJson(core.Map json_)
    : this(
        databaseSid: json_['databaseSid'] as core.String?,
        databaseType: json_['databaseType'] as core.String?,
        databaseVersion: json_['databaseVersion'] as core.String?,
        instanceNumber: json_['instanceNumber'] as core.String?,
        landscapeId: json_['landscapeId'] as core.String?,
        primaryInstanceUri: json_['primaryInstanceUri'] as core.String?,
        sharedNfsUri: json_['sharedNfsUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final databaseSid = this.databaseSid;
    final databaseType = this.databaseType;
    final databaseVersion = this.databaseVersion;
    final instanceNumber = this.instanceNumber;
    final landscapeId = this.landscapeId;
    final primaryInstanceUri = this.primaryInstanceUri;
    final sharedNfsUri = this.sharedNfsUri;
    return {
      'databaseSid': ?databaseSid,
      'databaseType': ?databaseType,
      'databaseVersion': ?databaseVersion,
      'instanceNumber': ?instanceNumber,
      'landscapeId': ?landscapeId,
      'primaryInstanceUri': ?primaryInstanceUri,
      'sharedNfsUri': ?sharedNfsUri,
    };
  }
}

/// A replication site used in Disaster Recovery (DR) configurations.
class SapDiscoveryComponentReplicationSite {
  /// The system component for the site.
  ///
  /// Optional.
  SapDiscoveryComponent? component;

  /// The name of the source site from which this one replicates.
  ///
  /// Optional.
  core.String? sourceSite;

  SapDiscoveryComponentReplicationSite({this.component, this.sourceSite});

  SapDiscoveryComponentReplicationSite.fromJson(core.Map json_)
    : this(
        component: json_.containsKey('component')
            ? SapDiscoveryComponent.fromJson(
                json_['component'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sourceSite: json_['sourceSite'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final component = this.component;
    final sourceSite = this.sourceSite;
    return {'component': ?component, 'sourceSite': ?sourceSite};
  }
}

/// Message describing SAP discovery system metadata
class SapDiscoveryMetadata {
  /// Customer region string for customer's use.
  ///
  /// Does not represent GCP region.
  ///
  /// Optional.
  core.String? customerRegion;

  /// Customer defined, something like "E-commerce pre prod"
  ///
  /// Optional.
  core.String? definedSystem;

  /// Should be "prod", "QA", "dev", "staging", etc.
  ///
  /// Optional.
  core.String? environmentType;

  /// This SAP product name
  ///
  /// Optional.
  core.String? sapProduct;

  SapDiscoveryMetadata({
    this.customerRegion,
    this.definedSystem,
    this.environmentType,
    this.sapProduct,
  });

  SapDiscoveryMetadata.fromJson(core.Map json_)
    : this(
        customerRegion: json_['customerRegion'] as core.String?,
        definedSystem: json_['definedSystem'] as core.String?,
        environmentType: json_['environmentType'] as core.String?,
        sapProduct: json_['sapProduct'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customerRegion = this.customerRegion;
    final definedSystem = this.definedSystem;
    final environmentType = this.environmentType;
    final sapProduct = this.sapProduct;
    return {
      'customerRegion': ?customerRegion,
      'definedSystem': ?definedSystem,
      'environmentType': ?environmentType,
      'sapProduct': ?sapProduct,
    };
  }
}

/// Message describing a resource.
class SapDiscoveryResource {
  /// A set of properties only applying to instance type resources.
  ///
  /// Optional.
  SapDiscoveryResourceInstanceProperties? instanceProperties;

  /// A list of resource URIs related to this resource.
  ///
  /// Optional.
  core.List<core.String>? relatedResources;

  /// ComputeInstance, ComputeDisk, VPC, Bare Metal server, etc.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RESOURCE_KIND_UNSPECIFIED" : Unspecified resource kind.
  /// - "RESOURCE_KIND_INSTANCE" : This is a compute instance.
  /// - "RESOURCE_KIND_DISK" : This is a compute disk.
  /// - "RESOURCE_KIND_ADDRESS" : This is a compute address.
  /// - "RESOURCE_KIND_FILESTORE" : This is a filestore instance.
  /// - "RESOURCE_KIND_HEALTH_CHECK" : This is a compute health check.
  /// - "RESOURCE_KIND_FORWARDING_RULE" : This is a compute forwarding rule.
  /// - "RESOURCE_KIND_BACKEND_SERVICE" : This is a compute backend service.
  /// - "RESOURCE_KIND_SUBNETWORK" : This is a compute subnetwork.
  /// - "RESOURCE_KIND_NETWORK" : This is a compute network.
  /// - "RESOURCE_KIND_PUBLIC_ADDRESS" : This is a public accessible IP Address.
  /// - "RESOURCE_KIND_INSTANCE_GROUP" : This is a compute instance group.
  core.String? resourceKind;

  /// The type of this resource.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED" : Undefined resource type.
  /// - "RESOURCE_TYPE_COMPUTE" : This is a compute resource.
  /// - "RESOURCE_TYPE_STORAGE" : This a storage resource.
  /// - "RESOURCE_TYPE_NETWORK" : This is a network resource.
  core.String? resourceType;

  /// URI of the resource, includes project, location, and name.
  ///
  /// Required.
  core.String? resourceUri;

  /// Unix timestamp of when this resource last had its discovery data updated.
  ///
  /// Required.
  core.String? updateTime;

  SapDiscoveryResource({
    this.instanceProperties,
    this.relatedResources,
    this.resourceKind,
    this.resourceType,
    this.resourceUri,
    this.updateTime,
  });

  SapDiscoveryResource.fromJson(core.Map json_)
    : this(
        instanceProperties: json_.containsKey('instanceProperties')
            ? SapDiscoveryResourceInstanceProperties.fromJson(
                json_['instanceProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        relatedResources: (json_['relatedResources'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        resourceKind: json_['resourceKind'] as core.String?,
        resourceType: json_['resourceType'] as core.String?,
        resourceUri: json_['resourceUri'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final instanceProperties = this.instanceProperties;
    final relatedResources = this.relatedResources;
    final resourceKind = this.resourceKind;
    final resourceType = this.resourceType;
    final resourceUri = this.resourceUri;
    final updateTime = this.updateTime;
    return {
      'instanceProperties': ?instanceProperties,
      'relatedResources': ?relatedResources,
      'resourceKind': ?resourceKind,
      'resourceType': ?resourceType,
      'resourceUri': ?resourceUri,
      'updateTime': ?updateTime,
    };
  }
}

/// A set of properties only present for an instance type resource
class SapDiscoveryResourceInstanceProperties {
  /// App server instances on the host
  ///
  /// Optional.
  core.List<SapDiscoveryResourceInstancePropertiesAppInstance>? appInstances;

  /// A list of instance URIs that are part of a cluster with this one.
  ///
  /// Optional.
  core.List<core.String>? clusterInstances;

  /// Disk mounts on the instance.
  ///
  /// Optional.
  core.List<SapDiscoveryResourceInstancePropertiesDiskMount>? diskMounts;

  /// The VM's instance number.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? instanceNumber;

  /// Bitmask of instance role, a resource may have multiple roles at once.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "INSTANCE_ROLE_UNSPECIFIED" : Unspecified instance role.
  /// - "INSTANCE_ROLE_ASCS" : Application central services.
  /// - "INSTANCE_ROLE_ERS" : Enqueue replication server.
  /// - "INSTANCE_ROLE_APP_SERVER" : Application server.
  /// - "INSTANCE_ROLE_DATABASE" : Database node.
  /// - "INSTANCE_ROLE_ASCS_ERS" : Combinations of roles. Application central
  /// services and enqueue replication server.
  /// - "INSTANCE_ROLE_ASCS_APP_SERVER" : Application central services and
  /// application server.
  /// - "INSTANCE_ROLE_ASCS_DATABASE" : Application central services and
  /// database.
  /// - "INSTANCE_ROLE_ERS_APP_SERVER" : Enqueue replication server and
  /// application server.
  /// - "INSTANCE_ROLE_ERS_DATABASE" : Enqueue replication server and database.
  /// - "INSTANCE_ROLE_APP_SERVER_DATABASE" : Application server and database.
  /// - "INSTANCE_ROLE_ASCS_ERS_APP_SERVER" : Application central services,
  /// enqueue replication server and application server.
  /// - "INSTANCE_ROLE_ASCS_ERS_DATABASE" : Application central services,
  /// enqueue replication server and database.
  /// - "INSTANCE_ROLE_ASCS_APP_SERVER_DATABASE" : Application central services,
  /// application server and database.
  /// - "INSTANCE_ROLE_ERS_APP_SERVER_DATABASE" : Enqueue replication server,
  /// application server and database.
  /// - "INSTANCE_ROLE_ASCS_ERS_APP_SERVER_DATABASE" : Application central
  /// services, enqueue replication server, application server and database.
  core.String? instanceRole;

  /// Instance is part of a DR site.
  ///
  /// Optional.
  core.bool? isDrSite;

  /// The kernel version of the instance.
  ///
  /// Optional.
  SapDiscoveryResourceInstancePropertiesKernelVersion? osKernelVersion;

  /// A virtual hostname of the instance if it has one.
  ///
  /// Optional.
  core.String? virtualHostname;

  SapDiscoveryResourceInstanceProperties({
    this.appInstances,
    this.clusterInstances,
    this.diskMounts,
    this.instanceNumber,
    this.instanceRole,
    this.isDrSite,
    this.osKernelVersion,
    this.virtualHostname,
  });

  SapDiscoveryResourceInstanceProperties.fromJson(core.Map json_)
    : this(
        appInstances: (json_['appInstances'] as core.List?)
            ?.map(
              (value) =>
                  SapDiscoveryResourceInstancePropertiesAppInstance.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        clusterInstances: (json_['clusterInstances'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        diskMounts: (json_['diskMounts'] as core.List?)
            ?.map(
              (value) =>
                  SapDiscoveryResourceInstancePropertiesDiskMount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        instanceNumber: json_['instanceNumber'] as core.String?,
        instanceRole: json_['instanceRole'] as core.String?,
        isDrSite: json_['isDrSite'] as core.bool?,
        osKernelVersion: json_.containsKey('osKernelVersion')
            ? SapDiscoveryResourceInstancePropertiesKernelVersion.fromJson(
                json_['osKernelVersion'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        virtualHostname: json_['virtualHostname'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appInstances = this.appInstances;
    final clusterInstances = this.clusterInstances;
    final diskMounts = this.diskMounts;
    final instanceNumber = this.instanceNumber;
    final instanceRole = this.instanceRole;
    final isDrSite = this.isDrSite;
    final osKernelVersion = this.osKernelVersion;
    final virtualHostname = this.virtualHostname;
    return {
      'appInstances': ?appInstances,
      'clusterInstances': ?clusterInstances,
      'diskMounts': ?diskMounts,
      'instanceNumber': ?instanceNumber,
      'instanceRole': ?instanceRole,
      'isDrSite': ?isDrSite,
      'osKernelVersion': ?osKernelVersion,
      'virtualHostname': ?virtualHostname,
    };
  }
}

/// Fields to describe an SAP application server instance.
class SapDiscoveryResourceInstancePropertiesAppInstance {
  /// Instance name of the SAP application instance.
  ///
  /// Optional.
  core.String? name;

  /// Instance number of the SAP application instance.
  ///
  /// Optional.
  core.String? number;

  SapDiscoveryResourceInstancePropertiesAppInstance({this.name, this.number});

  SapDiscoveryResourceInstancePropertiesAppInstance.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        number: json_['number'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final number = this.number;
    return {'name': ?name, 'number': ?number};
  }
}

/// Disk mount on the instance.
class SapDiscoveryResourceInstancePropertiesDiskMount {
  /// Names of the disks providing this mount point.
  ///
  /// Optional.
  core.List<core.String>? diskNames;

  /// Filesystem mount point.
  ///
  /// Optional.
  core.String? mountPoint;

  /// Name of the disk.
  ///
  /// Optional.
  core.String? name;

  SapDiscoveryResourceInstancePropertiesDiskMount({
    this.diskNames,
    this.mountPoint,
    this.name,
  });

  SapDiscoveryResourceInstancePropertiesDiskMount.fromJson(core.Map json_)
    : this(
        diskNames: (json_['diskNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        mountPoint: json_['mountPoint'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final diskNames = this.diskNames;
    final mountPoint = this.mountPoint;
    final name = this.name;
    return {'diskNames': ?diskNames, 'mountPoint': ?mountPoint, 'name': ?name};
  }
}

/// KernelVersion encapsulates the kernel version data for the system.
class SapDiscoveryResourceInstancePropertiesKernelVersion {
  /// Captures the distro-specific kernel version, the portion of the string
  /// following the first dash.
  ///
  /// Optional.
  SapDiscoveryResourceInstancePropertiesKernelVersionVersion? distroKernel;

  /// Captures the OS-specific kernel version, the portion of the string up to
  /// the first dash.
  ///
  /// Optional.
  SapDiscoveryResourceInstancePropertiesKernelVersionVersion? osKernel;

  /// Raw string of the kernel version.
  ///
  /// Optional.
  core.String? rawString;

  SapDiscoveryResourceInstancePropertiesKernelVersion({
    this.distroKernel,
    this.osKernel,
    this.rawString,
  });

  SapDiscoveryResourceInstancePropertiesKernelVersion.fromJson(core.Map json_)
    : this(
        distroKernel: json_.containsKey('distroKernel')
            ? SapDiscoveryResourceInstancePropertiesKernelVersionVersion.fromJson(
                json_['distroKernel'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        osKernel: json_.containsKey('osKernel')
            ? SapDiscoveryResourceInstancePropertiesKernelVersionVersion.fromJson(
                json_['osKernel'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        rawString: json_['rawString'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final distroKernel = this.distroKernel;
    final osKernel = this.osKernel;
    final rawString = this.rawString;
    return {
      'distroKernel': ?distroKernel,
      'osKernel': ?osKernel,
      'rawString': ?rawString,
    };
  }
}

/// Version is reported as Major.Minor.Build.Patch.
class SapDiscoveryResourceInstancePropertiesKernelVersionVersion {
  /// The build version number.
  ///
  /// Optional.
  core.int? build;

  /// The major version number.
  ///
  /// Optional.
  core.int? major;

  /// The minor version number.
  ///
  /// Optional.
  core.int? minor;

  /// The patch version number.
  ///
  /// Optional.
  core.int? patch;

  /// A catch-all for any unparsed version components.
  ///
  /// This is in case the number of points in the version string exceeds the
  /// expected count of 4.
  ///
  /// Optional.
  core.String? remainder;

  SapDiscoveryResourceInstancePropertiesKernelVersionVersion({
    this.build,
    this.major,
    this.minor,
    this.patch,
    this.remainder,
  });

  SapDiscoveryResourceInstancePropertiesKernelVersionVersion.fromJson(
    core.Map json_,
  ) : this(
        build: json_['build'] as core.int?,
        major: json_['major'] as core.int?,
        minor: json_['minor'] as core.int?,
        patch: json_['patch'] as core.int?,
        remainder: json_['remainder'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final build = this.build;
    final major = this.major;
    final minor = this.minor;
    final patch = this.patch;
    final remainder = this.remainder;
    return {
      'build': ?build,
      'major': ?major,
      'minor': ?minor,
      'patch': ?patch,
      'remainder': ?remainder,
    };
  }
}

/// A set of properties describing an SAP workload.
class SapDiscoveryWorkloadProperties {
  /// List of SAP Products and their versions running on the system.
  ///
  /// Optional.
  core.List<SapDiscoveryWorkloadPropertiesProductVersion>? productVersions;

  /// A list of SAP software components and their versions running on the
  /// system.
  ///
  /// Optional.
  core.List<SapDiscoveryWorkloadPropertiesSoftwareComponentProperties>?
  softwareComponentVersions;

  SapDiscoveryWorkloadProperties({
    this.productVersions,
    this.softwareComponentVersions,
  });

  SapDiscoveryWorkloadProperties.fromJson(core.Map json_)
    : this(
        productVersions: (json_['productVersions'] as core.List?)
            ?.map(
              (value) => SapDiscoveryWorkloadPropertiesProductVersion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        softwareComponentVersions:
            (json_['softwareComponentVersions'] as core.List?)
                ?.map(
                  (value) =>
                      SapDiscoveryWorkloadPropertiesSoftwareComponentProperties.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final productVersions = this.productVersions;
    final softwareComponentVersions = this.softwareComponentVersions;
    return {
      'productVersions': ?productVersions,
      'softwareComponentVersions': ?softwareComponentVersions,
    };
  }
}

/// A product name and version.
typedef SapDiscoveryWorkloadPropertiesProductVersion = $Shared33;

/// A SAP software component name, version, and type.
class SapDiscoveryWorkloadPropertiesSoftwareComponentProperties {
  /// The component's minor version.
  ///
  /// Optional.
  core.String? extVersion;

  /// Name of the component.
  ///
  /// Optional.
  core.String? name;

  /// The component's type.
  ///
  /// Optional.
  core.String? type;

  /// The component's major version.
  ///
  /// Optional.
  core.String? version;

  SapDiscoveryWorkloadPropertiesSoftwareComponentProperties({
    this.extVersion,
    this.name,
    this.type,
    this.version,
  });

  SapDiscoveryWorkloadPropertiesSoftwareComponentProperties.fromJson(
    core.Map json_,
  ) : this(
        extVersion: json_['extVersion'] as core.String?,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final extVersion = this.extVersion;
    final name = this.name;
    final type = this.type;
    final version = this.version;
    return {
      'extVersion': ?extVersion,
      'name': ?name,
      'type': ?type,
      'version': ?version,
    };
  }
}

/// SAP instance properties.
class SapInstanceProperties {
  /// Sap Instance Agent status.
  ///
  /// Optional.
  AgentStates? agentStates;

  /// SAP Instance numbers.
  ///
  /// They are from '00' to '99'.
  ///
  /// Optional.
  core.List<core.String>? numbers;

  SapInstanceProperties({this.agentStates, this.numbers});

  SapInstanceProperties.fromJson(core.Map json_)
    : this(
        agentStates: json_.containsKey('agentStates')
            ? AgentStates.fromJson(
                json_['agentStates'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        numbers: (json_['numbers'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentStates = this.agentStates;
    final numbers = this.numbers;
    return {'agentStates': ?agentStates, 'numbers': ?numbers};
  }
}

/// Message for SAP system workload.
class SapSystemS4Config {
  core.bool? allowStoppingForUpdate;

  /// Ansible runner service account.
  ///
  /// Let customers bring their own service account for the Ansible runner.
  core.String? ansibleRunnerServiceAccount;

  /// Instance details.
  AppDetails? app;

  /// Database details.
  DatabaseDetails? database;

  /// Supports non-HA and HA models.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DEPLOYMENT_MODEL_UNSPECIFIED"
  /// - "DISTRIBUTED"
  /// - "DISTRIBUTED_HA"
  core.String? deploymentModel;

  /// Deployment environment.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENVIRONMENT_TYPE_UNSPECIFIED" : Unspecified environment type.
  /// - "NON_PRODUCTION" : Non-production environment type.
  /// - "PRODUCTION" : Production environment type.
  core.String? environmentType;

  /// The project that infrastructure is deployed in.
  ///
  /// Currently only supports the same project where the deployment resource
  /// exists.
  core.String? gcpProjectId;

  /// Database details.
  LocationDetails? location;

  /// Media bucket name.
  ///
  /// Required.
  core.String? mediaBucketName;

  /// SAP boot disk image.
  ///
  /// Optional.
  core.String? sapBootDiskImage;

  /// Supports scale up and scale out.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SCALE_METHOD_UNSPECIFIED"
  /// - "SCALE_UP" : Scale up: Increases the size of a physical machine by
  /// increasing the amount of RAM and CPU available for processing.
  /// - "SCALE_OUT" : Scale out: Combines multiple independent computers into
  /// one system.
  core.String? scalingMethod;

  /// SAP HANA version.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VERSION_UNSPECIFIED"
  /// - "S4_HANA_2021"
  /// - "S4_HANA_2022"
  /// - "S4_HANA_2023"
  core.String? version;

  /// VM prefix.
  core.String? vmPrefix;

  SapSystemS4Config({
    this.allowStoppingForUpdate,
    this.ansibleRunnerServiceAccount,
    this.app,
    this.database,
    this.deploymentModel,
    this.environmentType,
    this.gcpProjectId,
    this.location,
    this.mediaBucketName,
    this.sapBootDiskImage,
    this.scalingMethod,
    this.version,
    this.vmPrefix,
  });

  SapSystemS4Config.fromJson(core.Map json_)
    : this(
        allowStoppingForUpdate: json_['allowStoppingForUpdate'] as core.bool?,
        ansibleRunnerServiceAccount:
            json_['ansibleRunnerServiceAccount'] as core.String?,
        app: json_.containsKey('app')
            ? AppDetails.fromJson(
                json_['app'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        database: json_.containsKey('database')
            ? DatabaseDetails.fromJson(
                json_['database'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deploymentModel: json_['deploymentModel'] as core.String?,
        environmentType: json_['environmentType'] as core.String?,
        gcpProjectId: json_['gcpProjectId'] as core.String?,
        location: json_.containsKey('location')
            ? LocationDetails.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        mediaBucketName: json_['mediaBucketName'] as core.String?,
        sapBootDiskImage: json_['sapBootDiskImage'] as core.String?,
        scalingMethod: json_['scalingMethod'] as core.String?,
        version: json_['version'] as core.String?,
        vmPrefix: json_['vmPrefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowStoppingForUpdate = this.allowStoppingForUpdate;
    final ansibleRunnerServiceAccount = this.ansibleRunnerServiceAccount;
    final app = this.app;
    final database = this.database;
    final deploymentModel = this.deploymentModel;
    final environmentType = this.environmentType;
    final gcpProjectId = this.gcpProjectId;
    final location = this.location;
    final mediaBucketName = this.mediaBucketName;
    final sapBootDiskImage = this.sapBootDiskImage;
    final scalingMethod = this.scalingMethod;
    final version = this.version;
    final vmPrefix = this.vmPrefix;
    return {
      'allowStoppingForUpdate': ?allowStoppingForUpdate,
      'ansibleRunnerServiceAccount': ?ansibleRunnerServiceAccount,
      'app': ?app,
      'database': ?database,
      'deploymentModel': ?deploymentModel,
      'environmentType': ?environmentType,
      'gcpProjectId': ?gcpProjectId,
      'location': ?location,
      'mediaBucketName': ?mediaBucketName,
      'sapBootDiskImage': ?sapBootDiskImage,
      'scalingMethod': ?scalingMethod,
      'version': ?version,
      'vmPrefix': ?vmPrefix,
    };
  }
}

/// A presentation of SAP workload insight.
///
/// The schema of SAP workloads validation related data.
class SapValidation {
  /// The project_id of the cloud project that the Insight data comes from.
  ///
  /// Required.
  core.String? projectId;

  /// A list of SAP validation metrics data.
  ///
  /// Optional.
  core.List<SapValidationValidationDetail>? validationDetails;

  /// The zone of the instance that the Insight data comes from.
  ///
  /// Optional.
  core.String? zone;

  SapValidation({this.projectId, this.validationDetails, this.zone});

  SapValidation.fromJson(core.Map json_)
    : this(
        projectId: json_['projectId'] as core.String?,
        validationDetails: (json_['validationDetails'] as core.List?)
            ?.map(
              (value) => SapValidationValidationDetail.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        zone: json_['zone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final projectId = this.projectId;
    final validationDetails = this.validationDetails;
    final zone = this.zone;
    return {
      'projectId': ?projectId,
      'validationDetails': ?validationDetails,
      'zone': ?zone,
    };
  }
}

/// Message describing the SAP validation metrics.
class SapValidationValidationDetail {
  /// The pairs of metrics data: field name & field value.
  ///
  /// Optional.
  core.Map<core.String, core.String>? details;

  /// Was there a SAP system detected for this validation type.
  ///
  /// Optional.
  core.bool? isPresent;

  /// The SAP system that the validation data is from.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SAP_VALIDATION_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "SYSTEM" : The SYSTEM validation type collects underlying system data
  /// from the VM.
  /// - "COROSYNC" : The COROSYNC validation type collects Corosync
  /// configuration and runtime data. Corosync enables servers to interact as a
  /// HA cluster.
  /// - "PACEMAKER" : The PACEMAKER validation type collects Pacemaker
  /// configuration data. Pacemaker is a high-availability cluster resource
  /// manager.
  /// - "HANA" : The HANA validation type collects HANA configuration data. SAP
  /// HANA is an in-memory, column-oriented, relational database management
  /// system.
  /// - "NETWEAVER" : The NETWEAVER validation type collects NetWeaver
  /// configuration data. SAP NetWeaver is a software stack for many of SAP SE's
  /// applications.
  /// - "HANA_SECURITY" : The HANA_SECURITY validation type collects HANA
  /// configuration data as it relates to SAP security best practices.
  /// - "CUSTOM" : The CUSTOM validation type collects any customer-defined data
  /// that does not fall into any of the other categories of validations.
  core.String? sapValidationType;

  SapValidationValidationDetail({
    this.details,
    this.isPresent,
    this.sapValidationType,
  });

  SapValidationValidationDetail.fromJson(core.Map json_)
    : this(
        details: (json_['details'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        isPresent: json_['isPresent'] as core.bool?,
        sapValidationType: json_['sapValidationType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final details = this.details;
    final isPresent = this.isPresent;
    final sapValidationType = this.sapValidationType;
    return {
      'details': ?details,
      'isPresent': ?isPresent,
      'sapValidationType': ?sapValidationType,
    };
  }
}

/// The body of sap workload
class SapWorkload {
  /// application component
  ///
  /// Output only.
  SapComponent? application;

  /// The architecture.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ARCHITECTURE_UNSPECIFIED" : Unspecified architecture.
  /// - "INVALID" : Invaliad architecture.
  /// - "CENTRALIZED" : A centralized system.
  /// - "DISTRIBUTED" : A distributed system.
  /// - "DISTRIBUTED_HA" : A distributed with HA system.
  /// - "STANDALONE_DATABASE" : A standalone database system.
  /// - "STANDALONE_DATABASE_HA" : A standalone database with HA system.
  core.String? architecture;

  /// database component
  ///
  /// Output only.
  SapComponent? database;

  /// The metadata for SAP workload.
  ///
  /// Output only.
  core.Map<core.String, core.String>? metadata;

  /// The products on this workload.
  ///
  /// Output only.
  core.List<Product>? products;

  SapWorkload({
    this.application,
    this.architecture,
    this.database,
    this.metadata,
    this.products,
  });

  SapWorkload.fromJson(core.Map json_)
    : this(
        application: json_.containsKey('application')
            ? SapComponent.fromJson(
                json_['application'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        architecture: json_['architecture'] as core.String?,
        database: json_.containsKey('database')
            ? SapComponent.fromJson(
                json_['database'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        products: (json_['products'] as core.List?)
            ?.map(
              (value) => Product.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final application = this.application;
    final architecture = this.architecture;
    final database = this.database;
    final metadata = this.metadata;
    final products = this.products;
    return {
      'application': ?application,
      'architecture': ?architecture,
      'database': ?database,
      'metadata': ?metadata,
      'products': ?products,
    };
  }
}

/// A scanned resource.
class ScannedResource {
  /// Resource name.
  core.String? resource;

  /// Resource type.
  core.String? type;

  ScannedResource({this.resource, this.type});

  ScannedResource.fromJson(core.Map json_)
    : this(
        resource: json_['resource'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final resource = this.resource;
    final type = this.type;
    return {'resource': ?resource, 'type': ?type};
  }
}

/// The state of the service.
class ServiceStates {
  /// The IAM permissions for the service.
  ///
  /// Optional. Output only.
  core.List<IAMPermission>? iamPermissions;

  /// The overall state of the service.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified.
  /// - "CONFIG_FAILURE" : The state means the service has config errors.
  /// - "IAM_FAILURE" : The state means the service has IAM permission errors.
  /// - "FUNCTIONALITY_FAILURE" : The state means the service has functionality
  /// errors.
  /// - "ENABLED" : The state means the service has no error.
  /// - "DISABLED" : The state means the service disabled.
  core.String? state;

  ServiceStates({this.iamPermissions, this.state});

  ServiceStates.fromJson(core.Map json_)
    : this(
        iamPermissions: (json_['iamPermissions'] as core.List?)
            ?.map(
              (value) => IAMPermission.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final iamPermissions = this.iamPermissions;
    final state = this.state;
    return {'iamPermissions': ?iamPermissions, 'state': ?state};
  }
}

/// A ShellCommand is invoked via the agent's command line executor.
class ShellCommand {
  /// Arguments to be passed to the command.
  core.String? args;

  /// The name of the command to be executed.
  core.String? command;

  /// If not specified, the default timeout is 60 seconds.
  ///
  /// Optional.
  core.int? timeoutSeconds;

  ShellCommand({this.args, this.command, this.timeoutSeconds});

  ShellCommand.fromJson(core.Map json_)
    : this(
        args: json_['args'] as core.String?,
        command: json_['command'] as core.String?,
        timeoutSeconds: json_['timeoutSeconds'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final args = this.args;
    final command = this.command;
    final timeoutSeconds = this.timeoutSeconds;
    return {
      'args': ?args,
      'command': ?command,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }
}

/// Location and networking details for configuring SQL server workload.
class SqlLocationDetails {
  /// Create a new DNS zone when the field is empty.
  ///
  /// Only shown for `Using an existing DNS`. List of existing DNS zones.
  /// Terraform variable name: existing_dns_zone_name.
  ///
  /// Optional.
  core.String? dnsZone;

  /// The project that infrastructure is deployed in.
  ///
  /// Currently only supports the same project where the deployment resource
  /// exists.
  ///
  /// Required.
  core.String? gcpProjectId;

  /// Internet Access.
  ///
  /// Required.
  /// Possible string values are:
  /// - "INTERNET_ACCESS_UNSPECIFIED" : Unspecified internet access.
  /// - "ALLOW_EXTERNAL_IP" : Allow external IP.
  /// - "CONFIGURE_NAT" : Configure NAT.
  core.String? internetAccess;

  /// Network name.
  ///
  /// Required.
  core.String? network;

  /// Primary zone.
  ///
  /// Required.
  core.String? primaryZone;

  /// Region name.
  ///
  /// Required.
  core.String? region;

  /// Secondary zone cannot be the same as primary_zone and is only for High
  /// Availability deployment mode.
  ///
  /// Optional.
  core.String? secondaryZone;

  /// Subnetwork name.
  ///
  /// Required.
  core.String? subnetwork;

  /// Tertiary zone cannot be the same as primary_zone and secondary_zone, and
  /// it is only for High Availability deployment mode.
  ///
  /// Optional.
  core.String? tertiaryZone;

  SqlLocationDetails({
    this.dnsZone,
    this.gcpProjectId,
    this.internetAccess,
    this.network,
    this.primaryZone,
    this.region,
    this.secondaryZone,
    this.subnetwork,
    this.tertiaryZone,
  });

  SqlLocationDetails.fromJson(core.Map json_)
    : this(
        dnsZone: json_['dnsZone'] as core.String?,
        gcpProjectId: json_['gcpProjectId'] as core.String?,
        internetAccess: json_['internetAccess'] as core.String?,
        network: json_['network'] as core.String?,
        primaryZone: json_['primaryZone'] as core.String?,
        region: json_['region'] as core.String?,
        secondaryZone: json_['secondaryZone'] as core.String?,
        subnetwork: json_['subnetwork'] as core.String?,
        tertiaryZone: json_['tertiaryZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dnsZone = this.dnsZone;
    final gcpProjectId = this.gcpProjectId;
    final internetAccess = this.internetAccess;
    final network = this.network;
    final primaryZone = this.primaryZone;
    final region = this.region;
    final secondaryZone = this.secondaryZone;
    final subnetwork = this.subnetwork;
    final tertiaryZone = this.tertiaryZone;
    return {
      'dnsZone': ?dnsZone,
      'gcpProjectId': ?gcpProjectId,
      'internetAccess': ?internetAccess,
      'network': ?network,
      'primaryZone': ?primaryZone,
      'region': ?region,
      'secondaryZone': ?secondaryZone,
      'subnetwork': ?subnetwork,
      'tertiaryZone': ?tertiaryZone,
    };
  }
}

/// Message for MS SQL workload.
class SqlServerWorkload {
  /// Active Directory details.
  ///
  /// Required.
  ActiveDirectory? activeDirectory;

  /// Compute Engine service account.
  ///
  /// Let customers bring their own service account for Compute Engine.
  core.String? computeEngineServiceAccount;

  /// Database details.
  ///
  /// Required.
  Database? database;

  /// HIGH_AVAILABILITY or SINGLE_INSTANCE.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DEPLOYMENT_MODEL_UNSPECIFIED" : Unspecified deployment model.
  /// - "HIGH_AVAILABILITY" : High Availability deployment model.
  /// - "SINGLE_INSTANCE" : Single instance deployment model.
  core.String? deploymentModel;

  /// Deployment environment.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENVIRONMENT_TYPE_UNSPECIFIED" : Unspecified environment type.
  /// - "NON_PRODUCTION" : Non-production environment type.
  /// - "PRODUCTION" : Production environment type.
  core.String? environmentType;

  /// SHARED_DISK or S2D.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FCI_TYPE_UNSPECIFIED" : Unspecified FCI type.
  /// - "SHARED_DISK" : SHARED DISK FCI type.
  /// - "S2D" : S2D FCI type.
  core.String? fciType;

  /// AOAG or FCI.
  ///
  /// It is only needed for the High Availability deployment mode.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "HA_TYPE_UNSPECIFIED" : Unspecified HA type.
  /// - "AOAG" : AOAG HA type.
  /// - "FCI" : FCI HA type.
  core.String? haType;

  /// SQL licensing type.
  ///
  /// Required.
  core.bool? isSqlPayg;

  /// Location details.
  ///
  /// Required.
  SqlLocationDetails? location;

  /// Name of the media storing SQL server installation files.
  ///
  /// Required.
  core.String? mediaBucket;

  /// The type of the operating system the SQL server is going to run on top of.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OPERATING_SYSTEM_TYPE_UNSPECIFIED" : Unspecified operating system type.
  /// - "WINDOWS" : Windows operating system type.
  /// - "UBUNTU" : Ubuntu operating system type.
  /// - "RED_HAT_ENTERPRISE_LINUX" : Red Hat Enterprise Linux operating system
  /// type.
  /// - "SUSE" : SUSE operating system type.
  core.String? operatingSystemType;

  /// The image of the operating system.
  ///
  /// Required.
  core.String? osImage;

  /// OS image type.
  ///
  /// It's used to create boot disks for VM instances. When either Windows
  /// licensing type or SQL licensing type is BYOL, this option is disabled and
  /// defaults to a custom image.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "OS_IMAGE_TYPE_UNSPECIFIED" : Unspecified OS image type.
  /// - "PUBLIC_IMAGE" : Public image.
  /// - "CUSTOM_IMAGE" : Custom image.
  core.String? osImageType;

  /// Pacemaker configuration, only applicable for Linux HA deployments.
  ///
  /// Optional.
  Pacemaker? pacemaker;

  /// SQL Server Edition type, only applicable when the operating system is
  /// Linux.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SQL_SERVER_EDITION_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "SQL_SERVER_EDITION_TYPE_DEVELOPER" : Developer type.
  /// - "SQL_SERVER_EDITION_TYPE_ENTERPRISE" : Enterprise type.
  /// - "SQL_SERVER_EDITION_TYPE_STANDARD" : Standard type.
  /// - "SQL_SERVER_EDITION_TYPE_WEB" : Web type.
  core.String? sqlServerEdition;

  /// 2017, 2019, or 2022.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SQL_SERVER_VERSION_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "SQL_SERVER_VERSION_TYPE_2017" : 2017 type.
  /// - "SQL_SERVER_VERSION_TYPE_2019" : 2019 type.
  /// - "SQL_SERVER_VERSION_TYPE_2022" : 2022 type.
  core.String? sqlServerVersion;

  /// Should be unique in the project.
  ///
  /// Required.
  core.String? vmPrefix;

  SqlServerWorkload({
    this.activeDirectory,
    this.computeEngineServiceAccount,
    this.database,
    this.deploymentModel,
    this.environmentType,
    this.fciType,
    this.haType,
    this.isSqlPayg,
    this.location,
    this.mediaBucket,
    this.operatingSystemType,
    this.osImage,
    this.osImageType,
    this.pacemaker,
    this.sqlServerEdition,
    this.sqlServerVersion,
    this.vmPrefix,
  });

  SqlServerWorkload.fromJson(core.Map json_)
    : this(
        activeDirectory: json_.containsKey('activeDirectory')
            ? ActiveDirectory.fromJson(
                json_['activeDirectory'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        computeEngineServiceAccount:
            json_['computeEngineServiceAccount'] as core.String?,
        database: json_.containsKey('database')
            ? Database.fromJson(
                json_['database'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        deploymentModel: json_['deploymentModel'] as core.String?,
        environmentType: json_['environmentType'] as core.String?,
        fciType: json_['fciType'] as core.String?,
        haType: json_['haType'] as core.String?,
        isSqlPayg: json_['isSqlPayg'] as core.bool?,
        location: json_.containsKey('location')
            ? SqlLocationDetails.fromJson(
                json_['location'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        mediaBucket: json_['mediaBucket'] as core.String?,
        operatingSystemType: json_['operatingSystemType'] as core.String?,
        osImage: json_['osImage'] as core.String?,
        osImageType: json_['osImageType'] as core.String?,
        pacemaker: json_.containsKey('pacemaker')
            ? Pacemaker.fromJson(
                json_['pacemaker'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sqlServerEdition: json_['sqlServerEdition'] as core.String?,
        sqlServerVersion: json_['sqlServerVersion'] as core.String?,
        vmPrefix: json_['vmPrefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeDirectory = this.activeDirectory;
    final computeEngineServiceAccount = this.computeEngineServiceAccount;
    final database = this.database;
    final deploymentModel = this.deploymentModel;
    final environmentType = this.environmentType;
    final fciType = this.fciType;
    final haType = this.haType;
    final isSqlPayg = this.isSqlPayg;
    final location = this.location;
    final mediaBucket = this.mediaBucket;
    final operatingSystemType = this.operatingSystemType;
    final osImage = this.osImage;
    final osImageType = this.osImageType;
    final pacemaker = this.pacemaker;
    final sqlServerEdition = this.sqlServerEdition;
    final sqlServerVersion = this.sqlServerVersion;
    final vmPrefix = this.vmPrefix;
    return {
      'activeDirectory': ?activeDirectory,
      'computeEngineServiceAccount': ?computeEngineServiceAccount,
      'database': ?database,
      'deploymentModel': ?deploymentModel,
      'environmentType': ?environmentType,
      'fciType': ?fciType,
      'haType': ?haType,
      'isSqlPayg': ?isSqlPayg,
      'location': ?location,
      'mediaBucket': ?mediaBucket,
      'operatingSystemType': ?operatingSystemType,
      'osImage': ?osImage,
      'osImageType': ?osImageType,
      'pacemaker': ?pacemaker,
      'sqlServerEdition': ?sqlServerEdition,
      'sqlServerVersion': ?sqlServerVersion,
      'vmPrefix': ?vmPrefix,
    };
  }
}

/// A presentation of SQLServer workload insight.
///
/// The schema of SqlServer workloads validation related data.
class SqlserverValidation {
  /// The agent version collected this data point
  ///
  /// Optional.
  core.String? agentVersion;

  /// The instance_name of the instance that the Insight data comes from.
  ///
  /// According to https://linter.aip.dev/122/name-suffix: field names should
  /// not use the _name suffix unless the field would be ambiguous without it.
  ///
  /// Required.
  core.String? instance;

  /// The project_id of the cloud project that the Insight data comes from.
  ///
  /// Required.
  core.String? projectId;

  /// A list of SqlServer validation metrics data.
  ///
  /// Optional.
  core.List<SqlserverValidationValidationDetail>? validationDetails;

  SqlserverValidation({
    this.agentVersion,
    this.instance,
    this.projectId,
    this.validationDetails,
  });

  SqlserverValidation.fromJson(core.Map json_)
    : this(
        agentVersion: json_['agentVersion'] as core.String?,
        instance: json_['instance'] as core.String?,
        projectId: json_['projectId'] as core.String?,
        validationDetails: (json_['validationDetails'] as core.List?)
            ?.map(
              (value) => SqlserverValidationValidationDetail.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentVersion = this.agentVersion;
    final instance = this.instance;
    final projectId = this.projectId;
    final validationDetails = this.validationDetails;
    return {
      'agentVersion': ?agentVersion,
      'instance': ?instance,
      'projectId': ?projectId,
      'validationDetails': ?validationDetails,
    };
  }
}

/// Message containing collected data names and values.
class SqlserverValidationDetails {
  /// Collected data is in format.
  ///
  /// Required.
  core.Map<core.String, core.String>? fields;

  SqlserverValidationDetails({this.fields});

  SqlserverValidationDetails.fromJson(core.Map json_)
    : this(
        fields: (json_['fields'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    return {'fields': ?fields};
  }
}

/// Message describing the Sqlserver validation metrics.
class SqlserverValidationValidationDetail {
  /// Details wraps map that represents collected data names and values.
  ///
  /// Required.
  core.List<SqlserverValidationDetails>? details;

  /// The Sqlserver system that the validation data is from.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SQLSERVER_VALIDATION_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "OS" : The Sqlserver system named OS.
  /// - "DB_LOG_DISK_SEPARATION" : The LOG_DISK_SEPARATION table.
  /// - "DB_MAX_PARALLELISM" : The MAX_PARALLELISM table.
  /// - "DB_CXPACKET_WAITS" : The CXPACKET_WAITS table.
  /// - "DB_TRANSACTION_LOG_HANDLING" : The TRANSACTION_LOG_HANDLING table.
  /// - "DB_VIRTUAL_LOG_FILE_COUNT" : The VIRTUAL_LOG_FILE_COUNT table.
  /// - "DB_BUFFER_POOL_EXTENSION" : The BUFFER_POOL_EXTENSION table.
  /// - "DB_MAX_SERVER_MEMORY" : The MAX_SERVER_MEMORY table.
  /// - "INSTANCE_METRICS" : The INSTANCE_METRICS table.
  /// - "DB_INDEX_FRAGMENTATION" : The DB_INDEX_FRAGMENTATION table.
  /// - "DB_TABLE_INDEX_COMPRESSION" : The DB_TABLE_INDEX_COMPRESSION table.
  /// - "DB_BACKUP_POLICY" : The DB_BACKUP_POLICY table.
  core.String? type;

  SqlserverValidationValidationDetail({this.details, this.type});

  SqlserverValidationValidationDetail.fromJson(core.Map json_)
    : this(
        details: (json_['details'] as core.List?)
            ?.map(
              (value) => SqlserverValidationDetails.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final details = this.details;
    final type = this.type;
    return {'details': ?details, 'type': ?type};
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Execution summary.
class Summary {
  /// Number of failures.
  ///
  /// Output only.
  core.String? failures;

  /// Number of new failures compared to the previous execution.
  ///
  /// Output only.
  core.String? newFailures;

  /// Number of new fixes compared to the previous execution.
  ///
  /// Output only.
  core.String? newFixes;

  Summary({this.failures, this.newFailures, this.newFixes});

  Summary.fromJson(core.Map json_)
    : this(
        failures: json_['failures'] as core.String?,
        newFailures: json_['newFailures'] as core.String?,
        newFixes: json_['newFixes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final failures = this.failures;
    final newFailures = this.newFailures;
    final newFixes = this.newFixes;
    return {
      'failures': ?failures,
      'newFailures': ?newFailures,
      'newFixes': ?newFixes,
    };
  }
}

/// In order to align with the Infra Manager dependency, we create the same
/// TerraformVariable message to represent a Terraform input variable, by
/// following Infra Manager's API documentation:
/// https://cloud.google.com/infrastructure-manager/docs/reference/rest.
///
/// A Terraform input variable.
typedef TerraformVariable = $TerraformVariable;

/// The schema of torso workload validation data.
class TorsoValidation {
  /// agent_version lists the version of the agent that collected this data.
  ///
  /// Required.
  core.String? agentVersion;

  /// instance_name lists the human readable name of the instance that the data
  /// comes from.
  ///
  /// Optional.
  core.String? instanceName;

  /// project_id lists the human readable cloud project that the data comes
  /// from.
  ///
  /// Required.
  core.String? projectId;

  /// validation_details contains the pairs of validation data: field name &
  /// field value.
  ///
  /// Required.
  core.Map<core.String, core.String>? validationDetails;

  /// workload_type specifies the type of torso workload.
  ///
  /// Required.
  /// Possible string values are:
  /// - "WORKLOAD_TYPE_UNSPECIFIED" : Unspecified workload type.
  /// - "MYSQL" : MySQL workload.
  /// - "ORACLE" : Oracle workload.
  /// - "REDIS" : Redis workload.
  core.String? workloadType;

  TorsoValidation({
    this.agentVersion,
    this.instanceName,
    this.projectId,
    this.validationDetails,
    this.workloadType,
  });

  TorsoValidation.fromJson(core.Map json_)
    : this(
        agentVersion: json_['agentVersion'] as core.String?,
        instanceName: json_['instanceName'] as core.String?,
        projectId: json_['projectId'] as core.String?,
        validationDetails:
            (json_['validationDetails'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        workloadType: json_['workloadType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentVersion = this.agentVersion;
    final instanceName = this.instanceName;
    final projectId = this.projectId;
    final validationDetails = this.validationDetails;
    final workloadType = this.workloadType;
    return {
      'agentVersion': ?agentVersion,
      'instanceName': ?instanceName,
      'projectId': ?projectId,
      'validationDetails': ?validationDetails,
      'workloadType': ?workloadType,
    };
  }
}

/// Maintenance Event
class UpcomingMaintenanceEvent {
  /// End time
  ///
  /// Optional.
  core.String? endTime;

  /// Maintenance status
  ///
  /// Optional.
  core.String? maintenanceStatus;

  /// Instance maintenance behavior.
  ///
  /// Could be `MIGRATE` or `TERMINATE`.
  ///
  /// Optional.
  core.String? onHostMaintenance;

  /// Start time
  ///
  /// Optional.
  core.String? startTime;

  /// Type
  ///
  /// Optional.
  core.String? type;

  UpcomingMaintenanceEvent({
    this.endTime,
    this.maintenanceStatus,
    this.onHostMaintenance,
    this.startTime,
    this.type,
  });

  UpcomingMaintenanceEvent.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        maintenanceStatus: json_['maintenanceStatus'] as core.String?,
        onHostMaintenance: json_['onHostMaintenance'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endTime = this.endTime;
    final maintenanceStatus = this.maintenanceStatus;
    final onHostMaintenance = this.onHostMaintenance;
    final startTime = this.startTime;
    final type = this.type;
    return {
      'endTime': ?endTime,
      'maintenanceStatus': ?maintenanceStatus,
      'onHostMaintenance': ?onHostMaintenance,
      'startTime': ?startTime,
      'type': ?type,
    };
  }
}

/// The violation in an evaluation result.
class ViolationDetails {
  /// The name of the asset.
  core.String? asset;

  /// Details of the violation.
  core.Map<core.String, core.String>? observed;

  /// The rule output of the violation.
  ///
  /// Output only.
  core.List<RuleOutput>? ruleOutput;

  /// The service account associated with the resource.
  core.String? serviceAccount;

  ViolationDetails({
    this.asset,
    this.observed,
    this.ruleOutput,
    this.serviceAccount,
  });

  ViolationDetails.fromJson(core.Map json_)
    : this(
        asset: json_['asset'] as core.String?,
        observed: (json_['observed'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        ruleOutput: (json_['ruleOutput'] as core.List?)
            ?.map(
              (value) => RuleOutput.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        serviceAccount: json_['serviceAccount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final asset = this.asset;
    final observed = this.observed;
    final ruleOutput = this.ruleOutput;
    final serviceAccount = this.serviceAccount;
    return {
      'asset': ?asset,
      'observed': ?observed,
      'ruleOutput': ?ruleOutput,
      'serviceAccount': ?serviceAccount,
    };
  }
}

/// Workload resource.
class WorkloadProfile {
  /// such as name, description, version.
  ///
  /// More example can be found in deployment
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// name of resource names have the form
  /// 'projects/{project_id}/locations/{location}/workloadProfiles/{workload_id}'
  core.String? name;

  /// time when the workload data was refreshed
  ///
  /// Required.
  core.String? refreshedTime;

  /// The sap workload content
  SapWorkload? sapWorkload;

  /// The type of the workload
  ///
  /// Required.
  /// Possible string values are:
  /// - "WORKLOAD_TYPE_UNSPECIFIED" : unspecified workload type
  /// - "S4_HANA" : running sap workload s4/hana
  core.String? workloadType;

  WorkloadProfile({
    this.labels,
    this.name,
    this.refreshedTime,
    this.sapWorkload,
    this.workloadType,
  });

  WorkloadProfile.fromJson(core.Map json_)
    : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        refreshedTime: json_['refreshedTime'] as core.String?,
        sapWorkload: json_.containsKey('sapWorkload')
            ? SapWorkload.fromJson(
                json_['sapWorkload'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        workloadType: json_['workloadType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final labels = this.labels;
    final name = this.name;
    final refreshedTime = this.refreshedTime;
    final sapWorkload = this.sapWorkload;
    final workloadType = this.workloadType;
    return {
      'labels': ?labels,
      'name': ?name,
      'refreshedTime': ?refreshedTime,
      'sapWorkload': ?sapWorkload,
      'workloadType': ?workloadType,
    };
  }
}

/// WorkloadProfileHealth contains the detailed health check of workload.
class WorkloadProfileHealth {
  /// The time when the health check was performed.
  core.String? checkTime;

  /// The detailed condition reports of each component.
  core.List<ComponentHealth>? componentsHealth;

  /// The health state of the workload.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HEALTH_STATE_UNSPECIFIED" : Unspecified.
  /// - "HEALTHY" : Healthy workload.
  /// - "UNHEALTHY" : Unhealthy workload.
  /// - "CRITICAL" : Has critical issues.
  /// - "UNSUPPORTED" : Unsupported.
  core.String? state;

  WorkloadProfileHealth({this.checkTime, this.componentsHealth, this.state});

  WorkloadProfileHealth.fromJson(core.Map json_)
    : this(
        checkTime: json_['checkTime'] as core.String?,
        componentsHealth: (json_['componentsHealth'] as core.List?)
            ?.map(
              (value) => ComponentHealth.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final checkTime = this.checkTime;
    final componentsHealth = this.componentsHealth;
    final state = this.state;
    return {
      'checkTime': ?checkTime,
      'componentsHealth': ?componentsHealth,
      'state': ?state,
    };
  }
}

/// Request for sending the data insights.
class WriteInsightRequest {
  /// The agent version collected this data point.
  ///
  /// Optional.
  core.String? agentVersion;

  /// The metrics data details.
  ///
  /// Required.
  Insight? insight;

  /// An optional request ID to identify requests.
  ///
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
  /// Optional.
  core.String? requestId;

  WriteInsightRequest({this.agentVersion, this.insight, this.requestId});

  WriteInsightRequest.fromJson(core.Map json_)
    : this(
        agentVersion: json_['agentVersion'] as core.String?,
        insight: json_.containsKey('insight')
            ? Insight.fromJson(
                json_['insight'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentVersion = this.agentVersion;
    final insight = this.insight;
    final requestId = this.requestId;
    return {
      'agentVersion': ?agentVersion,
      'insight': ?insight,
      'requestId': ?requestId,
    };
  }
}

/// The response for write insights request.
typedef WriteInsightResponse = $Empty;
