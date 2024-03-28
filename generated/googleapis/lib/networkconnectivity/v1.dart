// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Network Connectivity API - v1
///
/// This API enables connectivity with and between Google Cloud resources.
///
/// For more information, see
/// <https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest>
///
/// Create an instance of [NetworkconnectivityApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsGlobalResource]
///       - [ProjectsLocationsGlobalHubsResource]
///         - [ProjectsLocationsGlobalHubsGroupsResource]
///         - [ProjectsLocationsGlobalHubsRouteTablesResource]
///           - [ProjectsLocationsGlobalHubsRouteTablesRoutesResource]
///       - [ProjectsLocationsGlobalPolicyBasedRoutesResource]
///     - [ProjectsLocationsInternalRangesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServiceClassesResource]
///     - [ProjectsLocationsServiceConnectionMapsResource]
///     - [ProjectsLocationsServiceConnectionPoliciesResource]
///     - [ProjectsLocationsServiceConnectionTokensResource]
///     - [ProjectsLocationsSpokesResource]
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

/// This API enables connectivity with and between Google Cloud resources.
class NetworkconnectivityApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  NetworkconnectivityApi(http.Client client,
      {core.String rootUrl = 'https://networkconnectivity.googleapis.com/',
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

  ProjectsLocationsGlobalResource get global =>
      ProjectsLocationsGlobalResource(_requester);
  ProjectsLocationsInternalRangesResource get internalRanges =>
      ProjectsLocationsInternalRangesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsServiceClassesResource get serviceClasses =>
      ProjectsLocationsServiceClassesResource(_requester);
  ProjectsLocationsServiceConnectionMapsResource get serviceConnectionMaps =>
      ProjectsLocationsServiceConnectionMapsResource(_requester);
  ProjectsLocationsServiceConnectionPoliciesResource
      get serviceConnectionPolicies =>
          ProjectsLocationsServiceConnectionPoliciesResource(_requester);
  ProjectsLocationsServiceConnectionTokensResource
      get serviceConnectionTokens =>
          ProjectsLocationsServiceConnectionTokensResource(_requester);
  ProjectsLocationsSpokesResource get spokes =>
      ProjectsLocationsSpokesResource(_requester);

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

class ProjectsLocationsGlobalResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalHubsResource get hubs =>
      ProjectsLocationsGlobalHubsResource(_requester);
  ProjectsLocationsGlobalPolicyBasedRoutesResource get policyBasedRoutes =>
      ProjectsLocationsGlobalPolicyBasedRoutesResource(_requester);

  ProjectsLocationsGlobalResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsGlobalHubsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalHubsGroupsResource get groups =>
      ProjectsLocationsGlobalHubsGroupsResource(_requester);
  ProjectsLocationsGlobalHubsRouteTablesResource get routeTables =>
      ProjectsLocationsGlobalHubsRouteTablesResource(_requester);

  ProjectsLocationsGlobalHubsResource(commons.ApiRequester client)
      : _requester = client;

  /// Accepts a proposal to attach a Network Connectivity Center spoke to a hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the hub into which to accept the spoke.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> acceptSpoke(
    AcceptHubSpokeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':acceptSpoke';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new Network Connectivity Center hub in the specified project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [hubId] - Required. A unique identifier for the hub.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check to see
  /// whether the original operation was received. If it was, the server ignores
  /// the second request. This behavior prevents clients from mistakenly
  /// creating duplicate commitments. The request ID must be a valid UUID, with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    Hub request,
    core.String parent, {
    core.String? hubId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (hubId != null) 'hubId': [hubId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/hubs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Network Connectivity Center hub.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the hub to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check to see
  /// whether the original operation was received. If it was, the server ignores
  /// the second request. This behavior prevents clients from mistakenly
  /// creating duplicate commitments. The request ID must be a valid UUID, with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details about a Network Connectivity Center hub.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the hub resource to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hub].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hub> get(
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
    return Hub.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+$`.
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

  /// Lists the Network Connectivity Center hubs associated with a given
  /// project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name.
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [filter] - An expression that filters the list of results.
  ///
  /// [orderBy] - Sort the results by a certain order.
  ///
  /// [pageSize] - The maximum number of results per page to return.
  ///
  /// [pageToken] - The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHubsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHubsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/hubs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListHubsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the Network Connectivity Center spokes associated with a specified
  /// hub and location.
  ///
  /// The list includes both spokes that are attached to the hub and spokes that
  /// have been proposed but not yet accepted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the hub.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+$`.
  ///
  /// [filter] - An expression that filters the list of results.
  ///
  /// [orderBy] - Sort the results by name or create_time.
  ///
  /// [pageSize] - The maximum number of results to return per page.
  ///
  /// [pageToken] - The page token.
  ///
  /// [spokeLocations] - A list of locations. Specify one of the following:
  /// `[global]`, a single region (for example, `[us-central1]`), or a
  /// combination of values (for example, `[global, us-central1, us-west1]`). If
  /// the spoke_locations field is populated, the list of results includes only
  /// spokes in the specified location. If the spoke_locations field is not
  /// populated, the list of results includes spokes in all locations.
  ///
  /// [view] - The view of the spoke to return. The view that you use determines
  /// which spoke fields are included in the response.
  /// Possible string values are:
  /// - "SPOKE_VIEW_UNSPECIFIED" : The spoke view is unspecified. When the spoke
  /// view is unspecified, the API returns the same fields as the `BASIC` view.
  /// - "BASIC" : Includes `name`, `create_time`, `hub`, `unique_id`, `state`,
  /// `reasons`, and `spoke_type`. This is the default value.
  /// - "DETAILED" : Includes all spoke fields except `labels`. You can use the
  /// `DETAILED` view only when you set the `spoke_locations` field to
  /// `[global]`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHubSpokesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHubSpokesResponse> listSpokes(
    core.String name, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.List<core.String>? spokeLocations,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (spokeLocations != null) 'spokeLocations': spokeLocations,
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':listSpokes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListHubSpokesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the description and/or labels of a Network Connectivity Center
  /// hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The name of the hub. Hub names must be unique. They
  /// use the following form:
  /// `projects/{project_number}/locations/global/hubs/{hub_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check to see
  /// whether the original operation was received. If it was, the server ignores
  /// the second request. This behavior prevents clients from mistakenly
  /// creating duplicate commitments. The request ID must be a valid UUID, with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. In the case of an update to an existing hub,
  /// field mask is used to specify the fields to be overwritten. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field is overwritten if it is in the mask. If the user does not
  /// provide a mask, then all fields are overwritten.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    Hub request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Rejects a Network Connectivity Center spoke from being attached to a hub.
  ///
  /// If the spoke was previously in the `ACTIVE` state, it transitions to the
  /// `INACTIVE` state and is no longer able to connect to other spokes that are
  /// attached to the hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the hub from which to reject the spoke.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> rejectSpoke(
    RejectHubSpokeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':rejectSpoke';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
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
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+$`.
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

class ProjectsLocationsGlobalHubsGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalHubsGroupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets details about a Network Connectivity Center group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the route table resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Group].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Group> get(
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
    return Group.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+/groups/\[^/\]+$`.
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

  /// Lists groups in a given hub.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+$`.
  ///
  /// [filter] - An expression that filters the list of results.
  ///
  /// [orderBy] - Sort the results by a certain order.
  ///
  /// [pageSize] - The maximum number of results to return per page.
  ///
  /// [pageToken] - The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGroupsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/groups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGroupsResponse.fromJson(
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
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+/groups/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+/groups/\[^/\]+$`.
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

class ProjectsLocationsGlobalHubsRouteTablesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalHubsRouteTablesRoutesResource get routes =>
      ProjectsLocationsGlobalHubsRouteTablesRoutesResource(_requester);

  ProjectsLocationsGlobalHubsRouteTablesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets details about a Network Connectivity Center route table.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the route table resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+/routeTables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RouteTable].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RouteTable> get(
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
    return RouteTable.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists route tables in a given hub.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+$`.
  ///
  /// [filter] - An expression that filters the list of results.
  ///
  /// [orderBy] - Sort the results by a certain order.
  ///
  /// [pageSize] - The maximum number of results to return per page.
  ///
  /// [pageToken] - The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRouteTablesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRouteTablesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/routeTables';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRouteTablesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGlobalHubsRouteTablesRoutesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalHubsRouteTablesRoutesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets details about the specified route.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the route resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+/routeTables/\[^/\]+/routes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Route].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Route> get(
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
    return Route.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists routes in a given route table.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+/routeTables/\[^/\]+$`.
  ///
  /// [filter] - An expression that filters the list of results.
  ///
  /// [orderBy] - Sort the results by a certain order.
  ///
  /// [pageSize] - The maximum number of results to return per page.
  ///
  /// [pageToken] - The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRoutesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRoutesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/routes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRoutesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGlobalPolicyBasedRoutesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalPolicyBasedRoutesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new policy-based route in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name of the PolicyBasedRoute.
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [policyBasedRouteId] - Required. Unique id for the policy-based route to
  /// create.
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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    PolicyBasedRoute request,
    core.String parent, {
    core.String? policyBasedRouteId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (policyBasedRouteId != null)
        'policyBasedRouteId': [policyBasedRouteId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/policyBasedRoutes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single policy-based route.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the policy-based route resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/policyBasedRoutes/\[^/\]+$`.
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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single policy-based route.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the PolicyBasedRoute resource to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/policyBasedRoutes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PolicyBasedRoute].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PolicyBasedRoute> get(
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
    return PolicyBasedRoute.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/global/policyBasedRoutes/\[^/\]+$`.
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

  /// Lists policy-based routes in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name.
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [filter] - A filter expression that filters the results listed in the
  /// response.
  ///
  /// [orderBy] - Sort the results by a certain order.
  ///
  /// [pageSize] - The maximum number of results per page that should be
  /// returned.
  ///
  /// [pageToken] - The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPolicyBasedRoutesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPolicyBasedRoutesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/policyBasedRoutes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPolicyBasedRoutesResponse.fromJson(
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
  /// `^projects/\[^/\]+/locations/global/policyBasedRoutes/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/global/policyBasedRoutes/\[^/\]+$`.
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

class ProjectsLocationsInternalRangesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInternalRangesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new internal range in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name of the internal range.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [internalRangeId] - Optional. Resource ID (i.e. 'foo' in
  /// '\[...\]/projects/p/locations/l/internalRanges/foo') See
  /// https://google.aip.dev/122#resource-id-segments Unique per location.
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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    InternalRange request,
    core.String parent, {
    core.String? internalRangeId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (internalRangeId != null) 'internalRangeId': [internalRangeId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/internalRanges';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single internal range.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the internal range to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/internalRanges/\[^/\]+$`.
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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single internal range.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the InternalRange to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/internalRanges/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InternalRange].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InternalRange> get(
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
    return InternalRange.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists internal ranges in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters the results listed in the
  /// response.
  ///
  /// [orderBy] - Sort the results by a certain order.
  ///
  /// [pageSize] - The maximum number of results per page that should be
  /// returned.
  ///
  /// [pageToken] - The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInternalRangesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInternalRangesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/internalRanges';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInternalRangesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single internal range.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The name of an internal range. Format:
  /// projects/{project}/locations/{location}/internalRanges/{internal_range}
  /// See: https://google.aip.dev/122#fields-representing-resource-names
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/internalRanges/\[^/\]+$`.
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
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the InternalRange resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    InternalRange request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
    return GoogleLongrunningOperation.fromJson(
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
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
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
    GoogleLongrunningCancelOperationRequest request,
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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
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
    return GoogleLongrunningListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsServiceClassesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServiceClassesResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a single ServiceClass.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ServiceClass to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceClasses/\[^/\]+$`.
  ///
  /// [etag] - Optional. The etag is computed by the server, and may be sent on
  /// update and delete requests to ensure the client has an up-to-date value
  /// before proceeding.
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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? etag,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single ServiceClass.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the ServiceClass to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceClasses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceClass> get(
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
    return ServiceClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceClasses/\[^/\]+$`.
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

  /// Lists ServiceClasses in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name. ex.
  /// projects/123/locations/us-east1
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters the results listed in the
  /// response.
  ///
  /// [orderBy] - Sort the results by a certain order.
  ///
  /// [pageSize] - The maximum number of results per page that should be
  /// returned.
  ///
  /// [pageToken] - The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceClassesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceClassesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/serviceClasses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServiceClassesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single ServiceClass.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The name of a ServiceClass resource. Format:
  /// projects/{project}/locations/{location}/serviceClasses/{service_class}
  /// See: https://google.aip.dev/122#fields-representing-resource-names
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceClasses/\[^/\]+$`.
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
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the ServiceClass resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    ServiceClass request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
    return GoogleLongrunningOperation.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceClasses/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceClasses/\[^/\]+$`.
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

class ProjectsLocationsServiceConnectionMapsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServiceConnectionMapsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new ServiceConnectionMap in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name of the
  /// ServiceConnectionMap. ex. projects/123/locations/us-east1
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  /// [serviceConnectionMapId] - Optional. Resource ID (i.e. 'foo' in
  /// '\[...\]/projects/p/locations/l/serviceConnectionMaps/foo') See
  /// https://google.aip.dev/122#resource-id-segments Unique per location. If
  /// one is not provided, one will be generated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    ServiceConnectionMap request,
    core.String parent, {
    core.String? requestId,
    core.String? serviceConnectionMapId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (serviceConnectionMapId != null)
        'serviceConnectionMapId': [serviceConnectionMapId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/serviceConnectionMaps';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ServiceConnectionMap.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ServiceConnectionMap to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionMaps/\[^/\]+$`.
  ///
  /// [etag] - Optional. The etag is computed by the server, and may be sent on
  /// update and delete requests to ensure the client has an up-to-date value
  /// before proceeding.
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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? etag,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single ServiceConnectionMap.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the ServiceConnectionMap to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionMaps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceConnectionMap].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceConnectionMap> get(
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
    return ServiceConnectionMap.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionMaps/\[^/\]+$`.
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

  /// Lists ServiceConnectionMaps in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name. ex.
  /// projects/123/locations/us-east1
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters the results listed in the
  /// response.
  ///
  /// [orderBy] - Sort the results by a certain order.
  ///
  /// [pageSize] - The maximum number of results per page that should be
  /// returned.
  ///
  /// [pageToken] - The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceConnectionMapsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceConnectionMapsResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/serviceConnectionMaps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServiceConnectionMapsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single ServiceConnectionMap.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The name of a ServiceConnectionMap. Format:
  /// projects/{project}/locations/{location}/serviceConnectionMaps/{service_connection_map}
  /// See: https://google.aip.dev/122#fields-representing-resource-names
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionMaps/\[^/\]+$`.
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
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the ServiceConnectionMap resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    ServiceConnectionMap request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
    return GoogleLongrunningOperation.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionMaps/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionMaps/\[^/\]+$`.
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

class ProjectsLocationsServiceConnectionPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServiceConnectionPoliciesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new ServiceConnectionPolicy in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name of the
  /// ServiceConnectionPolicy. ex. projects/123/locations/us-east1
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  /// [serviceConnectionPolicyId] - Optional. Resource ID (i.e. 'foo' in
  /// '\[...\]/projects/p/locations/l/serviceConnectionPolicies/foo') See
  /// https://google.aip.dev/122#resource-id-segments Unique per location.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    ServiceConnectionPolicy request,
    core.String parent, {
    core.String? requestId,
    core.String? serviceConnectionPolicyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (serviceConnectionPolicyId != null)
        'serviceConnectionPolicyId': [serviceConnectionPolicyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/serviceConnectionPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ServiceConnectionPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ServiceConnectionPolicy to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionPolicies/\[^/\]+$`.
  ///
  /// [etag] - Optional. The etag is computed by the server, and may be sent on
  /// update and delete requests to ensure the client has an up-to-date value
  /// before proceeding.
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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? etag,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single ServiceConnectionPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the ServiceConnectionPolicy to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceConnectionPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceConnectionPolicy> get(
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
    return ServiceConnectionPolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionPolicies/\[^/\]+$`.
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

  /// Lists ServiceConnectionPolicies in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name. ex.
  /// projects/123/locations/us-east1
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters the results listed in the
  /// response.
  ///
  /// [orderBy] - Sort the results by a certain order.
  ///
  /// [pageSize] - The maximum number of results per page that should be
  /// returned.
  ///
  /// [pageToken] - The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceConnectionPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceConnectionPoliciesResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/serviceConnectionPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServiceConnectionPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single ServiceConnectionPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The name of a ServiceConnectionPolicy. Format:
  /// projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy}
  /// See: https://google.aip.dev/122#fields-representing-resource-names
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionPolicies/\[^/\]+$`.
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
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the ServiceConnectionPolicy resource by the update. The
  /// fields specified in the update_mask are relative to the resource, not the
  /// full request. A field will be overwritten if it is in the mask. If the
  /// user does not provide a mask then all fields will be overwritten.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    ServiceConnectionPolicy request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
    return GoogleLongrunningOperation.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionPolicies/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionPolicies/\[^/\]+$`.
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

class ProjectsLocationsServiceConnectionTokensResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServiceConnectionTokensResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new ServiceConnectionToken in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name of the
  /// ServiceConnectionToken. ex. projects/123/locations/us-east1
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  /// [serviceConnectionTokenId] - Optional. Resource ID (i.e. 'foo' in
  /// '\[...\]/projects/p/locations/l/ServiceConnectionTokens/foo') See
  /// https://google.aip.dev/122#resource-id-segments Unique per location. If
  /// one is not provided, one will be generated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    ServiceConnectionToken request,
    core.String parent, {
    core.String? requestId,
    core.String? serviceConnectionTokenId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (serviceConnectionTokenId != null)
        'serviceConnectionTokenId': [serviceConnectionTokenId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/serviceConnectionTokens';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ServiceConnectionToken.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ServiceConnectionToken to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionTokens/\[^/\]+$`.
  ///
  /// [etag] - Optional. The etag is computed by the server, and may be sent on
  /// update and delete requests to ensure the client has an up-to-date value
  /// before proceeding.
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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? etag,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single ServiceConnectionToken.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the ServiceConnectionToken to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConnectionTokens/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceConnectionToken].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceConnectionToken> get(
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
    return ServiceConnectionToken.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists ServiceConnectionTokens in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name. ex.
  /// projects/123/locations/us-east1
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters the results listed in the
  /// response.
  ///
  /// [orderBy] - Sort the results by a certain order.
  ///
  /// [pageSize] - The maximum number of results per page that should be
  /// returned.
  ///
  /// [pageToken] - The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceConnectionTokensResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceConnectionTokensResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/serviceConnectionTokens';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServiceConnectionTokensResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSpokesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSpokesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Network Connectivity Center spoke.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check to see
  /// whether the original operation was received. If it was, the server ignores
  /// the second request. This behavior prevents clients from mistakenly
  /// creating duplicate commitments. The request ID must be a valid UUID, with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [spokeId] - Required. Unique id for the spoke to create.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    Spoke request,
    core.String parent, {
    core.String? requestId,
    core.String? spokeId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (spokeId != null) 'spokeId': [spokeId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/spokes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Network Connectivity Center spoke.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the spoke to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/spokes/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check to see
  /// whether the original operation was received. If it was, the server ignores
  /// the second request. This behavior prevents clients from mistakenly
  /// creating duplicate commitments. The request ID must be a valid UUID, with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details about a Network Connectivity Center spoke.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the spoke resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/spokes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Spoke].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Spoke> get(
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
    return Spoke.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/spokes/\[^/\]+$`.
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

  /// Lists the Network Connectivity Center spokes in a specified project and
  /// location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - An expression that filters the list of results.
  ///
  /// [orderBy] - Sort the results by a certain order.
  ///
  /// [pageSize] - The maximum number of results to return per page.
  ///
  /// [pageToken] - The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSpokesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSpokesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/spokes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSpokesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a Network Connectivity Center spoke.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The name of the spoke. Spoke names must be unique.
  /// They use the following form:
  /// `projects/{project_number}/locations/{region}/spokes/{spoke_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/spokes/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check to see
  /// whether the original operation was received. If it was, the server ignores
  /// the second request. This behavior prevents clients from mistakenly
  /// creating duplicate commitments. The request ID must be a valid UUID, with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. In the case of an update to an existing spoke,
  /// field mask is used to specify the fields to be overwritten. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field is overwritten if it is in the mask. If the user does not
  /// provide a mask, then all fields are overwritten.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    Spoke request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
    return GoogleLongrunningOperation.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/spokes/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/spokes/\[^/\]+$`.
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

/// The request for HubService.AcceptHubSpoke.
class AcceptHubSpokeRequest {
  /// A request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server knows to ignore the request if it has already been completed. The
  /// server guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check to see
  /// whether the original operation was received. If it was, the server ignores
  /// the second request. This behavior prevents clients from mistakenly
  /// creating duplicate commitments. The request ID must be a valid UUID, with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// The URI of the spoke to accept into the hub.
  ///
  /// Required.
  core.String? spokeUri;

  AcceptHubSpokeRequest({
    this.requestId,
    this.spokeUri,
  });

  AcceptHubSpokeRequest.fromJson(core.Map json_)
      : this(
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          spokeUri: json_.containsKey('spokeUri')
              ? json_['spokeUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
        if (spokeUri != null) 'spokeUri': spokeUri!,
      };
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
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
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
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Allow the producer to specify which consumers can connect to it.
class ConsumerPscConfig {
  /// This is used in PSC consumer ForwardingRule to control whether the PSC
  /// endpoint can be accessed from another region.
  core.bool? disableGlobalAccess;

  /// The resource path of the consumer network where PSC connections are
  /// allowed to be created in.
  ///
  /// Note, this network does not need be in the ConsumerPscConfig.project in
  /// the case of SharedVPC. Example:
  /// projects/{projectNumOrId}/global/networks/{networkId}.
  core.String? network;

  /// The consumer project where PSC connections are allowed to be created in.
  core.String? project;

  /// Overall state of PSC Connections management for this consumer psc config.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default state, when Connection Map is created
  /// initially.
  /// - "VALID" : Set when policy and map configuration is valid, and their
  /// matching can lead to allowing creation of PSC Connections subject to other
  /// constraints like connections limit.
  /// - "CONNECTION_POLICY_MISSING" : No Service Connection Policy found for
  /// this network and Service Class
  /// - "POLICY_LIMIT_REACHED" : Service Connection Policy limit reached for
  /// this network and Service Class
  core.String? state;

  ConsumerPscConfig({
    this.disableGlobalAccess,
    this.network,
    this.project,
    this.state,
  });

  ConsumerPscConfig.fromJson(core.Map json_)
      : this(
          disableGlobalAccess: json_.containsKey('disableGlobalAccess')
              ? json_['disableGlobalAccess'] as core.bool
              : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableGlobalAccess != null)
          'disableGlobalAccess': disableGlobalAccess!,
        if (network != null) 'network': network!,
        if (project != null) 'project': project!,
        if (state != null) 'state': state!,
      };
}

/// PSC connection details on consumer side.
class ConsumerPscConnection {
  /// The most recent error during operating this connection.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleRpcStatus? error;

  /// The error info for the latest error during operating this connection.
  ///
  /// Output only.
  GoogleRpcErrorInfo? errorInfo;

  /// The error type indicates whether the error is consumer facing, producer
  /// facing or system internal.
  /// Possible string values are:
  /// - "CONNECTION_ERROR_TYPE_UNSPECIFIED" : An invalid error type as the
  /// default case.
  /// - "ERROR_INTERNAL" : The error is due to Service Automation system
  /// internal.
  /// - "ERROR_CONSUMER_SIDE" : The error is due to the setup on consumer side.
  /// - "ERROR_PRODUCER_SIDE" : The error is due to the setup on producer side.
  core.String? errorType;

  /// The URI of the consumer forwarding rule created.
  ///
  /// Example: projects/{projectNumOrId}/regions/us-east1/networks/{resourceId}.
  core.String? forwardingRule;

  /// The last Compute Engine operation to setup PSC connection.
  core.String? gceOperation;

  /// The IP literal allocated on the consumer network for the PSC forwarding
  /// rule that is created to connect to the producer service attachment in this
  /// service connection map.
  core.String? ip;

  /// The consumer network whose PSC forwarding rule is connected to the service
  /// attachments in this service connection map.
  ///
  /// Note that the network could be on a different project (shared VPC).
  core.String? network;

  /// The consumer project whose PSC forwarding rule is connected to the service
  /// attachments in this service connection map.
  core.String? project;

  /// The PSC connection id of the PSC forwarding rule connected to the service
  /// attachments in this service connection map.
  core.String? pscConnectionId;

  /// The URI of the selected subnetwork selected to allocate IP address for
  /// this connection.
  ///
  /// Output only.
  core.String? selectedSubnetwork;

  /// The URI of a service attachment which is the target of the PSC connection.
  core.String? serviceAttachmentUri;

  /// The state of the PSC connection.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : An invalid state as the default case.
  /// - "ACTIVE" : The connection is fully established and ready to use.
  /// - "FAILED" : The connection is not functional since some resources on the
  /// connection fail to be created.
  /// - "CREATING" : The connection is being created.
  /// - "DELETING" : The connection is being deleted.
  core.String? state;

  ConsumerPscConnection({
    this.error,
    this.errorInfo,
    this.errorType,
    this.forwardingRule,
    this.gceOperation,
    this.ip,
    this.network,
    this.project,
    this.pscConnectionId,
    this.selectedSubnetwork,
    this.serviceAttachmentUri,
    this.state,
  });

  ConsumerPscConnection.fromJson(core.Map json_)
      : this(
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          errorInfo: json_.containsKey('errorInfo')
              ? GoogleRpcErrorInfo.fromJson(
                  json_['errorInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          errorType: json_.containsKey('errorType')
              ? json_['errorType'] as core.String
              : null,
          forwardingRule: json_.containsKey('forwardingRule')
              ? json_['forwardingRule'] as core.String
              : null,
          gceOperation: json_.containsKey('gceOperation')
              ? json_['gceOperation'] as core.String
              : null,
          ip: json_.containsKey('ip') ? json_['ip'] as core.String : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
          pscConnectionId: json_.containsKey('pscConnectionId')
              ? json_['pscConnectionId'] as core.String
              : null,
          selectedSubnetwork: json_.containsKey('selectedSubnetwork')
              ? json_['selectedSubnetwork'] as core.String
              : null,
          serviceAttachmentUri: json_.containsKey('serviceAttachmentUri')
              ? json_['serviceAttachmentUri'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (errorInfo != null) 'errorInfo': errorInfo!,
        if (errorType != null) 'errorType': errorType!,
        if (forwardingRule != null) 'forwardingRule': forwardingRule!,
        if (gceOperation != null) 'gceOperation': gceOperation!,
        if (ip != null) 'ip': ip!,
        if (network != null) 'network': network!,
        if (project != null) 'project': project!,
        if (pscConnectionId != null) 'pscConnectionId': pscConnectionId!,
        if (selectedSubnetwork != null)
          'selectedSubnetwork': selectedSubnetwork!,
        if (serviceAttachmentUri != null)
          'serviceAttachmentUri': serviceAttachmentUri!,
        if (state != null) 'state': state!,
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

/// Filter matches L4 traffic.
class Filter {
  /// The destination IP range of outgoing packets that this policy-based route
  /// applies to.
  ///
  /// Default is "0.0.0.0/0" if protocol version is IPv4.
  ///
  /// Optional.
  core.String? destRange;

  /// The IP protocol that this policy-based route applies to.
  ///
  /// Valid values are 'TCP', 'UDP', and 'ALL'. Default is 'ALL'.
  ///
  /// Optional.
  core.String? ipProtocol;

  /// Internet protocol versions this policy-based route applies to.
  ///
  /// For this version, only IPV4 is supported.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PROTOCOL_VERSION_UNSPECIFIED" : Default value.
  /// - "IPV4" : The PBR is for IPv4 internet protocol traffic.
  core.String? protocolVersion;

  /// The source IP range of outgoing packets that this policy-based route
  /// applies to.
  ///
  /// Default is "0.0.0.0/0" if protocol version is IPv4.
  ///
  /// Optional.
  core.String? srcRange;

  Filter({
    this.destRange,
    this.ipProtocol,
    this.protocolVersion,
    this.srcRange,
  });

  Filter.fromJson(core.Map json_)
      : this(
          destRange: json_.containsKey('destRange')
              ? json_['destRange'] as core.String
              : null,
          ipProtocol: json_.containsKey('ipProtocol')
              ? json_['ipProtocol'] as core.String
              : null,
          protocolVersion: json_.containsKey('protocolVersion')
              ? json_['protocolVersion'] as core.String
              : null,
          srcRange: json_.containsKey('srcRange')
              ? json_['srcRange'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destRange != null) 'destRange': destRange!,
        if (ipProtocol != null) 'ipProtocol': ipProtocol!,
        if (protocolVersion != null) 'protocolVersion': protocolVersion!,
        if (srcRange != null) 'srcRange': srcRange!,
      };
}

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

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

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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

/// Describes the cause of the error with structured details.
///
/// Example of an error when contacting the "pubsub.googleapis.com" API when it
/// is not enabled: { "reason": "API_DISABLED" "domain": "googleapis.com"
/// "metadata": { "resource": "projects/123", "service": "pubsub.googleapis.com"
/// } } This response indicates that the pubsub.googleapis.com API is not
/// enabled. Example of an error that is returned when attempting to create a
/// Spanner instance in a region that is out of stock: { "reason": "STOCKOUT"
/// "domain": "spanner.googleapis.com", "metadata": { "availableRegions":
/// "us-central1,us-east2" } }
class GoogleRpcErrorInfo {
  /// The logical grouping to which the "reason" belongs.
  ///
  /// The error domain is typically the registered service name of the tool or
  /// product that generates the error. Example: "pubsub.googleapis.com". If the
  /// error is generated by some common infrastructure, the error domain must be
  /// a globally unique value that identifies the infrastructure. For Google API
  /// infrastructure, the error domain is "googleapis.com".
  core.String? domain;

  /// Additional structured details about this error.
  ///
  /// Keys should match /\[a-zA-Z0-9-_\]/ and be limited to 64 characters in
  /// length. When identifying the current value of an exceeded limit, the units
  /// should be contained in the key, not the value. For example, rather than
  /// {"instanceLimit": "100/request"}, should be returned as,
  /// {"instanceLimitPerRequest": "100"}, if the client exceeds the number of
  /// instances that can be created in a single (batch) request.
  core.Map<core.String, core.String>? metadata;

  /// The reason of the error.
  ///
  /// This is a constant value that identifies the proximate cause of the error.
  /// Error reasons are unique within a particular domain of errors. This should
  /// be at most 63 characters and match a regular expression of `A-Z+[A-Z0-9]`,
  /// which represents UPPER_SNAKE_CASE.
  core.String? reason;

  GoogleRpcErrorInfo({
    this.domain,
    this.metadata,
    this.reason,
  });

  GoogleRpcErrorInfo.fromJson(core.Map json_)
      : this(
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
        if (metadata != null) 'metadata': metadata!,
        if (reason != null) 'reason': reason!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

/// A group represents a subset of spokes attached to a hub.
class Group {
  /// The time the group was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the group.
  ///
  /// Optional.
  core.String? description;

  /// Labels in key-value pair format.
  ///
  /// For more information about labels, see
  /// [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The name of the group.
  ///
  /// Group names must be unique. They use the following form:
  /// `projects/{project_number}/locations/global/hubs/{hub}/groups/{group_id}`
  ///
  /// Immutable.
  core.String? name;

  /// The current lifecycle state of this group.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state information available
  /// - "CREATING" : The resource's create operation is in progress.
  /// - "ACTIVE" : The resource is active
  /// - "DELETING" : The resource's delete operation is in progress.
  /// - "ACCEPTING" : The resource's accept operation is in progress.
  /// - "REJECTING" : The resource's reject operation is in progress.
  /// - "UPDATING" : The resource's update operation is in progress.
  /// - "INACTIVE" : The resource is inactive.
  /// - "OBSOLETE" : The hub associated with this spoke resource has been
  /// deleted. This state applies to spoke resources only.
  core.String? state;

  /// The Google-generated UUID for the group.
  ///
  /// This value is unique across all group resources. If a group is deleted and
  /// another with the same name is created, the new route table is assigned a
  /// different unique_id.
  ///
  /// Output only.
  core.String? uid;

  /// The time the group was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Group({
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.state,
    this.uid,
    this.updateTime,
  });

  Group.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A Network Connectivity Center hub is a global management resource to which
/// you attach spokes.
///
/// A single hub can contain spokes from multiple regions. However, if any of a
/// hub's spokes use the site-to-site data transfer feature, the resources
/// associated with those spokes must all be in the same VPC network. Spokes
/// that do not use site-to-site data transfer can be associated with any VPC
/// network in your project.
class Hub {
  /// The time the hub was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An optional description of the hub.
  core.String? description;

  /// Optional labels in key-value pair format.
  ///
  /// For more information about labels, see
  /// [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  core.Map<core.String, core.String>? labels;

  /// The name of the hub.
  ///
  /// Hub names must be unique. They use the following form:
  /// `projects/{project_number}/locations/global/hubs/{hub_id}`
  ///
  /// Immutable.
  core.String? name;

  /// The route tables that belong to this hub.
  ///
  /// They use the following form:
  /// `projects/{project_number}/locations/global/hubs/{hub_id}/routeTables/{route_table_id}`
  /// This field is read-only. Network Connectivity Center automatically
  /// populates it based on the route tables nested under the hub.
  ///
  /// Output only.
  core.List<core.String>? routeTables;

  /// The VPC networks associated with this hub's spokes.
  ///
  /// This field is read-only. Network Connectivity Center automatically
  /// populates it based on the set of spokes attached to the hub.
  core.List<RoutingVPC>? routingVpcs;

  /// A summary of the spokes associated with a hub.
  ///
  /// The summary includes a count of spokes according to type and according to
  /// state. If any spokes are inactive, the summary also lists the reasons they
  /// are inactive, including a count for each reason.
  ///
  /// Output only.
  SpokeSummary? spokeSummary;

  /// The current lifecycle state of this hub.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state information available
  /// - "CREATING" : The resource's create operation is in progress.
  /// - "ACTIVE" : The resource is active
  /// - "DELETING" : The resource's delete operation is in progress.
  /// - "ACCEPTING" : The resource's accept operation is in progress.
  /// - "REJECTING" : The resource's reject operation is in progress.
  /// - "UPDATING" : The resource's update operation is in progress.
  /// - "INACTIVE" : The resource is inactive.
  /// - "OBSOLETE" : The hub associated with this spoke resource has been
  /// deleted. This state applies to spoke resources only.
  core.String? state;

  /// The Google-generated UUID for the hub.
  ///
  /// This value is unique across all hub resources. If a hub is deleted and
  /// another with the same name is created, the new hub is assigned a different
  /// unique_id.
  ///
  /// Output only.
  core.String? uniqueId;

  /// The time the hub was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Hub({
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.routeTables,
    this.routingVpcs,
    this.spokeSummary,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Hub.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          routeTables: json_.containsKey('routeTables')
              ? (json_['routeTables'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          routingVpcs: json_.containsKey('routingVpcs')
              ? (json_['routingVpcs'] as core.List)
                  .map((value) => RoutingVPC.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          spokeSummary: json_.containsKey('spokeSummary')
              ? SpokeSummary.fromJson(
                  json_['spokeSummary'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uniqueId: json_.containsKey('uniqueId')
              ? json_['uniqueId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (routeTables != null) 'routeTables': routeTables!,
        if (routingVpcs != null) 'routingVpcs': routingVpcs!,
        if (spokeSummary != null) 'spokeSummary': spokeSummary!,
        if (state != null) 'state': state!,
        if (uniqueId != null) 'uniqueId': uniqueId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// InterconnectAttachment that this route applies to.
class InterconnectAttachment {
  /// Cloud region to install this policy-based route on interconnect
  /// attachment.
  ///
  /// Use `all` to install it on all interconnect attachments.
  ///
  /// Optional.
  core.String? region;

  InterconnectAttachment({
    this.region,
  });

  InterconnectAttachment.fromJson(core.Map json_)
      : this(
          region: json_.containsKey('region')
              ? json_['region'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (region != null) 'region': region!,
      };
}

/// The internal range resource for IPAM operations within a VPC network.
///
/// Used to represent a private address range along with behavioral
/// characterstics of that range (its usage and peering behavior). Networking
/// resources can link to this range if they are created as belonging to it.
class InternalRange {
  /// Time when the internal range was created.
  core.String? createTime;

  /// A description of this resource.
  core.String? description;

  /// The IP range that this internal range defines.
  core.String? ipCidrRange;

  /// User-defined labels.
  core.Map<core.String, core.String>? labels;

  /// The name of an internal range.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/internalRanges/{internal_range}
  /// See: https://google.aip.dev/122#fields-representing-resource-names
  ///
  /// Immutable.
  core.String? name;

  /// The URL or resource ID of the network in which to reserve the internal
  /// range.
  ///
  /// The network cannot be deleted if there are any reserved internal ranges
  /// referring to it. Legacy networks are not supported. This can only be
  /// specified for a global internal address. Example: - URL:
  /// /compute/v1/projects/{project}/global/networks/{resourceId} - ID:
  /// network123
  core.String? network;

  /// Types of resources that are allowed to overlap with the current internal
  /// range.
  ///
  /// Optional.
  core.List<core.String>? overlaps;

  /// The type of peering set for this internal range.
  /// Possible string values are:
  /// - "PEERING_UNSPECIFIED" : If Peering is left unspecified in
  /// CreateInternalRange or UpdateInternalRange, it will be defaulted to
  /// FOR_SELF.
  /// - "FOR_SELF" : This is the default behavior and represents the case that
  /// this internal range is intended to be used in the VPC in which it is
  /// created and is accessible from its peers. This implies that peers or
  /// peers-of-peers cannot use this range.
  /// - "FOR_PEER" : This behavior can be set when the internal range is being
  /// reserved for usage by peers. This means that no resource within the VPC in
  /// which it is being created can use this to associate with a VPC resource,
  /// but one of the peers can. This represents donating a range for peers to
  /// use.
  /// - "NOT_SHARED" : This behavior can be set when the internal range is being
  /// reserved for usage by the VPC in which it is created, but not shared with
  /// peers. In a sense, it is local to the VPC. This can be used to create
  /// internal ranges for various purposes like HTTP_INTERNAL_LOAD_BALANCER or
  /// for Interconnect routes that are not shared with peers. This also implies
  /// that peers cannot use this range in a way that is visible to this VPC, but
  /// can re-use this range as long as it is NOT_SHARED from the peer VPC, too.
  core.String? peering;

  /// An alternate to ip_cidr_range.
  ///
  /// Can be set when trying to create a reservation that automatically finds a
  /// free range of the given size. If both ip_cidr_range and prefix_length are
  /// set, there is an error if the range sizes do not match. Can also be used
  /// during updates to change the range size.
  core.int? prefixLength;

  /// Can be set to narrow down or pick a different address space while
  /// searching for a free range.
  ///
  /// If not set, defaults to the "10.0.0.0/8" address space. This can be used
  /// to search in other rfc-1918 address spaces like "172.16.0.0/12" and
  /// "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  ///
  /// Optional.
  core.List<core.String>? targetCidrRange;

  /// Time when the internal range was updated.
  core.String? updateTime;

  /// The type of usage set for this InternalRange.
  /// Possible string values are:
  /// - "USAGE_UNSPECIFIED" : Unspecified usage is allowed in calls which
  /// identify the resource by other fields and do not need Usage set to
  /// complete. These are, i.e.: GetInternalRange and DeleteInternalRange. Usage
  /// needs to be specified explicitly in CreateInternalRange or
  /// UpdateInternalRange calls.
  /// - "FOR_VPC" : A VPC resource can use the reserved CIDR block by
  /// associating it with the internal range resource if usage is set to
  /// FOR_VPC.
  /// - "EXTERNAL_TO_VPC" : Ranges created with EXTERNAL_TO_VPC cannot be
  /// associated with VPC resources and are meant to block out address ranges
  /// for various use cases, like for example, usage on-prem, with dynamic route
  /// announcements via interconnect.
  core.String? usage;

  /// The list of resources that refer to this internal range.
  ///
  /// Resources that use the internal range for their range allocation are
  /// referred to as users of the range. Other resources mark themselves as
  /// users while doing so by creating a reference to this internal range.
  /// Having a user, based on this reference, prevents deletion of the internal
  /// range referred to. Can be empty.
  ///
  /// Output only.
  core.List<core.String>? users;

  InternalRange({
    this.createTime,
    this.description,
    this.ipCidrRange,
    this.labels,
    this.name,
    this.network,
    this.overlaps,
    this.peering,
    this.prefixLength,
    this.targetCidrRange,
    this.updateTime,
    this.usage,
    this.users,
  });

  InternalRange.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          ipCidrRange: json_.containsKey('ipCidrRange')
              ? json_['ipCidrRange'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          overlaps: json_.containsKey('overlaps')
              ? (json_['overlaps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          peering: json_.containsKey('peering')
              ? json_['peering'] as core.String
              : null,
          prefixLength: json_.containsKey('prefixLength')
              ? json_['prefixLength'] as core.int
              : null,
          targetCidrRange: json_.containsKey('targetCidrRange')
              ? (json_['targetCidrRange'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          usage:
              json_.containsKey('usage') ? json_['usage'] as core.String : null,
          users: json_.containsKey('users')
              ? (json_['users'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (overlaps != null) 'overlaps': overlaps!,
        if (peering != null) 'peering': peering!,
        if (prefixLength != null) 'prefixLength': prefixLength!,
        if (targetCidrRange != null) 'targetCidrRange': targetCidrRange!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (usage != null) 'usage': usage!,
        if (users != null) 'users': users!,
      };
}

/// A collection of VLAN attachment resources.
///
/// These resources should be redundant attachments that all advertise the same
/// prefixes to Google Cloud. Alternatively, in active/passive configurations,
/// all attachments should be capable of advertising the same prefixes.
class LinkedInterconnectAttachments {
  /// A value that controls whether site-to-site data transfer is enabled for
  /// these resources.
  ///
  /// Data transfer is available only in
  /// [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  core.bool? siteToSiteDataTransfer;

  /// The URIs of linked interconnect attachment resources
  core.List<core.String>? uris;

  /// The VPC network where these VLAN attachments are located.
  ///
  /// Output only.
  core.String? vpcNetwork;

  LinkedInterconnectAttachments({
    this.siteToSiteDataTransfer,
    this.uris,
    this.vpcNetwork,
  });

  LinkedInterconnectAttachments.fromJson(core.Map json_)
      : this(
          siteToSiteDataTransfer: json_.containsKey('siteToSiteDataTransfer')
              ? json_['siteToSiteDataTransfer'] as core.bool
              : null,
          uris: json_.containsKey('uris')
              ? (json_['uris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          vpcNetwork: json_.containsKey('vpcNetwork')
              ? json_['vpcNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (siteToSiteDataTransfer != null)
          'siteToSiteDataTransfer': siteToSiteDataTransfer!,
        if (uris != null) 'uris': uris!,
        if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
      };
}

/// A collection of router appliance instances.
///
/// If you configure multiple router appliance instances to receive data from
/// the same set of sites outside of Google Cloud, we recommend that you
/// associate those instances with the same spoke.
class LinkedRouterApplianceInstances {
  /// The list of router appliance instances.
  core.List<RouterApplianceInstance>? instances;

  /// A value that controls whether site-to-site data transfer is enabled for
  /// these resources.
  ///
  /// Data transfer is available only in
  /// [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  core.bool? siteToSiteDataTransfer;

  /// The VPC network where these router appliance instances are located.
  ///
  /// Output only.
  core.String? vpcNetwork;

  LinkedRouterApplianceInstances({
    this.instances,
    this.siteToSiteDataTransfer,
    this.vpcNetwork,
  });

  LinkedRouterApplianceInstances.fromJson(core.Map json_)
      : this(
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => RouterApplianceInstance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          siteToSiteDataTransfer: json_.containsKey('siteToSiteDataTransfer')
              ? json_['siteToSiteDataTransfer'] as core.bool
              : null,
          vpcNetwork: json_.containsKey('vpcNetwork')
              ? json_['vpcNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
        if (siteToSiteDataTransfer != null)
          'siteToSiteDataTransfer': siteToSiteDataTransfer!,
        if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
      };
}

/// An existing VPC network.
class LinkedVpcNetwork {
  /// IP ranges encompassing the subnets to be excluded from peering.
  ///
  /// Optional.
  core.List<core.String>? excludeExportRanges;

  /// The URI of the VPC network resource.
  ///
  /// Required.
  core.String? uri;

  LinkedVpcNetwork({
    this.excludeExportRanges,
    this.uri,
  });

  LinkedVpcNetwork.fromJson(core.Map json_)
      : this(
          excludeExportRanges: json_.containsKey('excludeExportRanges')
              ? (json_['excludeExportRanges'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludeExportRanges != null)
          'excludeExportRanges': excludeExportRanges!,
        if (uri != null) 'uri': uri!,
      };
}

/// A collection of Cloud VPN tunnel resources.
///
/// These resources should be redundant HA VPN tunnels that all advertise the
/// same prefixes to Google Cloud. Alternatively, in a passive/active
/// configuration, all tunnels should be capable of advertising the same
/// prefixes.
class LinkedVpnTunnels {
  /// A value that controls whether site-to-site data transfer is enabled for
  /// these resources.
  ///
  /// Data transfer is available only in
  /// [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  core.bool? siteToSiteDataTransfer;

  /// The URIs of linked VPN tunnel resources.
  core.List<core.String>? uris;

  /// The VPC network where these VPN tunnels are located.
  ///
  /// Output only.
  core.String? vpcNetwork;

  LinkedVpnTunnels({
    this.siteToSiteDataTransfer,
    this.uris,
    this.vpcNetwork,
  });

  LinkedVpnTunnels.fromJson(core.Map json_)
      : this(
          siteToSiteDataTransfer: json_.containsKey('siteToSiteDataTransfer')
              ? json_['siteToSiteDataTransfer'] as core.bool
              : null,
          uris: json_.containsKey('uris')
              ? (json_['uris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          vpcNetwork: json_.containsKey('vpcNetwork')
              ? json_['vpcNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (siteToSiteDataTransfer != null)
          'siteToSiteDataTransfer': siteToSiteDataTransfer!,
        if (uris != null) 'uris': uris!,
        if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
      };
}

/// Response for HubService.ListGroups method.
class ListGroupsResponse {
  /// The requested groups.
  core.List<Group>? groups;

  /// The token for the next page of the response.
  ///
  /// To see more results, use this value as the page_token for your next
  /// request. If this value is empty, there are no more results.
  core.String? nextPageToken;

  /// Hubs that could not be reached.
  core.List<core.String>? unreachable;

  ListGroupsResponse({
    this.groups,
    this.nextPageToken,
    this.unreachable,
  });

  ListGroupsResponse.fromJson(core.Map json_)
      : this(
          groups: json_.containsKey('groups')
              ? (json_['groups'] as core.List)
                  .map((value) => Group.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groups != null) 'groups': groups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response for HubService.ListHubSpokes.
class ListHubSpokesResponse {
  /// The token for the next page of the response.
  ///
  /// To see more results, use this value as the page_token for your next
  /// request. If this value is empty, there are no more results.
  core.String? nextPageToken;

  /// The requested spokes.
  ///
  /// The spoke fields can be partially populated based on the `view` field in
  /// the request message.
  core.List<Spoke>? spokes;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListHubSpokesResponse({
    this.nextPageToken,
    this.spokes,
    this.unreachable,
  });

  ListHubSpokesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          spokes: json_.containsKey('spokes')
              ? (json_['spokes'] as core.List)
                  .map((value) => Spoke.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (spokes != null) 'spokes': spokes!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for HubService.ListHubs method.
class ListHubsResponse {
  /// The requested hubs.
  core.List<Hub>? hubs;

  /// The token for the next page of the response.
  ///
  /// To see more results, use this value as the page_token for your next
  /// request. If this value is empty, there are no more results.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListHubsResponse({
    this.hubs,
    this.nextPageToken,
    this.unreachable,
  });

  ListHubsResponse.fromJson(core.Map json_)
      : this(
          hubs: json_.containsKey('hubs')
              ? (json_['hubs'] as core.List)
                  .map((value) => Hub.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hubs != null) 'hubs': hubs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for InternalRange.ListInternalRanges
class ListInternalRangesResponse {
  /// Internal ranges to be returned.
  core.List<InternalRange>? internalRanges;

  /// The next pagination token in the List response.
  ///
  /// It should be used as page_token for the following request. An empty value
  /// means no more result.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListInternalRangesResponse({
    this.internalRanges,
    this.nextPageToken,
    this.unreachable,
  });

  ListInternalRangesResponse.fromJson(core.Map json_)
      : this(
          internalRanges: json_.containsKey('internalRanges')
              ? (json_['internalRanges'] as core.List)
                  .map((value) => InternalRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (internalRanges != null) 'internalRanges': internalRanges!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
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
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response for PolicyBasedRouting.ListPolicyBasedRoutes method.
class ListPolicyBasedRoutesResponse {
  /// The next pagination token in the List response.
  ///
  /// It should be used as page_token for the following request. An empty value
  /// means no more result.
  core.String? nextPageToken;

  /// Policy-based routes to be returned.
  core.List<PolicyBasedRoute>? policyBasedRoutes;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListPolicyBasedRoutesResponse({
    this.nextPageToken,
    this.policyBasedRoutes,
    this.unreachable,
  });

  ListPolicyBasedRoutesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          policyBasedRoutes: json_.containsKey('policyBasedRoutes')
              ? (json_['policyBasedRoutes'] as core.List)
                  .map((value) => PolicyBasedRoute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (policyBasedRoutes != null) 'policyBasedRoutes': policyBasedRoutes!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for HubService.ListRouteTables method.
class ListRouteTablesResponse {
  /// The token for the next page of the response.
  ///
  /// To see more results, use this value as the page_token for your next
  /// request. If this value is empty, there are no more results.
  core.String? nextPageToken;

  /// The requested route tables.
  core.List<RouteTable>? routeTables;

  /// Hubs that could not be reached.
  core.List<core.String>? unreachable;

  ListRouteTablesResponse({
    this.nextPageToken,
    this.routeTables,
    this.unreachable,
  });

  ListRouteTablesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          routeTables: json_.containsKey('routeTables')
              ? (json_['routeTables'] as core.List)
                  .map((value) => RouteTable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (routeTables != null) 'routeTables': routeTables!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for HubService.ListRoutes method.
class ListRoutesResponse {
  /// The token for the next page of the response.
  ///
  /// To see more results, use this value as the page_token for your next
  /// request. If this value is empty, there are no more results.
  core.String? nextPageToken;

  /// The requested routes.
  core.List<Route>? routes;

  /// RouteTables that could not be reached.
  core.List<core.String>? unreachable;

  ListRoutesResponse({
    this.nextPageToken,
    this.routes,
    this.unreachable,
  });

  ListRoutesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          routes: json_.containsKey('routes')
              ? (json_['routes'] as core.List)
                  .map((value) => Route.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (routes != null) 'routes': routes!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for ListServiceClasses.
class ListServiceClassesResponse {
  /// The next pagination token in the List response.
  ///
  /// It should be used as page_token for the following request. An empty value
  /// means no more result.
  core.String? nextPageToken;

  /// ServiceClasses to be returned.
  core.List<ServiceClass>? serviceClasses;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListServiceClassesResponse({
    this.nextPageToken,
    this.serviceClasses,
    this.unreachable,
  });

  ListServiceClassesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          serviceClasses: json_.containsKey('serviceClasses')
              ? (json_['serviceClasses'] as core.List)
                  .map((value) => ServiceClass.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (serviceClasses != null) 'serviceClasses': serviceClasses!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for ListServiceConnectionMaps.
class ListServiceConnectionMapsResponse {
  /// The next pagination token in the List response.
  ///
  /// It should be used as page_token for the following request. An empty value
  /// means no more result.
  core.String? nextPageToken;

  /// ServiceConnectionMaps to be returned.
  core.List<ServiceConnectionMap>? serviceConnectionMaps;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListServiceConnectionMapsResponse({
    this.nextPageToken,
    this.serviceConnectionMaps,
    this.unreachable,
  });

  ListServiceConnectionMapsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          serviceConnectionMaps: json_.containsKey('serviceConnectionMaps')
              ? (json_['serviceConnectionMaps'] as core.List)
                  .map((value) => ServiceConnectionMap.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (serviceConnectionMaps != null)
          'serviceConnectionMaps': serviceConnectionMaps!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for ListServiceConnectionPolicies.
class ListServiceConnectionPoliciesResponse {
  /// The next pagination token in the List response.
  ///
  /// It should be used as page_token for the following request. An empty value
  /// means no more result.
  core.String? nextPageToken;

  /// ServiceConnectionPolicies to be returned.
  core.List<ServiceConnectionPolicy>? serviceConnectionPolicies;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListServiceConnectionPoliciesResponse({
    this.nextPageToken,
    this.serviceConnectionPolicies,
    this.unreachable,
  });

  ListServiceConnectionPoliciesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          serviceConnectionPolicies:
              json_.containsKey('serviceConnectionPolicies')
                  ? (json_['serviceConnectionPolicies'] as core.List)
                      .map((value) => ServiceConnectionPolicy.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (serviceConnectionPolicies != null)
          'serviceConnectionPolicies': serviceConnectionPolicies!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for ListServiceConnectionTokens.
class ListServiceConnectionTokensResponse {
  /// The next pagination token in the List response.
  ///
  /// It should be used as page_token for the following request. An empty value
  /// means no more result.
  core.String? nextPageToken;

  /// ServiceConnectionTokens to be returned.
  core.List<ServiceConnectionToken>? serviceConnectionTokens;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListServiceConnectionTokensResponse({
    this.nextPageToken,
    this.serviceConnectionTokens,
    this.unreachable,
  });

  ListServiceConnectionTokensResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          serviceConnectionTokens: json_.containsKey('serviceConnectionTokens')
              ? (json_['serviceConnectionTokens'] as core.List)
                  .map((value) => ServiceConnectionToken.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (serviceConnectionTokens != null)
          'serviceConnectionTokens': serviceConnectionTokens!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response for HubService.ListSpokes.
class ListSpokesResponse {
  /// The token for the next page of the response.
  ///
  /// To see more results, use this value as the page_token for your next
  /// request. If this value is empty, there are no more results.
  core.String? nextPageToken;

  /// The requested spokes.
  core.List<Spoke>? spokes;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListSpokesResponse({
    this.nextPageToken,
    this.spokes,
    this.unreachable,
  });

  ListSpokesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          spokes: json_.containsKey('spokes')
              ? (json_['spokes'] as core.List)
                  .map((value) => Spoke.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (spokes != null) 'spokes': spokes!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

class NextHopVpcNetwork {
  /// The URI of the VPC network resource
  core.String? uri;

  NextHopVpcNetwork({
    this.uri,
  });

  NextHopVpcNetwork.fromJson(core.Map json_)
      : this(
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
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
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Policy-based routes route L4 network traffic based on not just destination
/// IP address, but also source IP address, protocol, and more.
///
/// If a policy-based route conflicts with other types of routes, the
/// policy-based route always take precedence.
class PolicyBasedRoute {
  /// Time when the policy-based route was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An optional description of this resource.
  ///
  /// Provide this field when you create the resource.
  ///
  /// Optional.
  core.String? description;

  /// The filter to match L4 traffic.
  ///
  /// Required.
  Filter? filter;

  /// The interconnect attachments that this policy-based route applies to.
  ///
  /// Optional.
  InterconnectAttachment? interconnectAttachment;

  /// Type of this resource.
  ///
  /// Always networkconnectivity#policyBasedRoute for policy-based Route
  /// resources.
  ///
  /// Output only.
  core.String? kind;

  /// User-defined labels.
  core.Map<core.String, core.String>? labels;

  /// A unique name of the resource in the form of
  /// `projects/{project_number}/locations/global/PolicyBasedRoutes/{policy_based_route_id}`
  ///
  /// Immutable.
  core.String? name;

  /// Fully-qualified URL of the network that this route applies to, for
  /// example: projects/my-project/global/networks/my-network.
  ///
  /// Required.
  core.String? network;

  /// The IP address of a global-access-enabled L4 ILB that is the next hop for
  /// matching packets.
  ///
  /// For this version, only nextHopIlbIp is supported.
  ///
  /// Optional.
  core.String? nextHopIlbIp;

  /// Other routes that will be referenced to determine the next hop of the
  /// packet.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "OTHER_ROUTES_UNSPECIFIED" : Default value.
  /// - "DEFAULT_ROUTING" : Use the routes from the default routing tables
  /// (system-generated routes, custom routes, peering route) to determine the
  /// next hop. This will effectively exclude matching packets being applied on
  /// other PBRs with a lower priority.
  core.String? nextHopOtherRoutes;

  /// The priority of this policy-based route.
  ///
  /// Priority is used to break ties in cases where there are more than one
  /// matching policy-based routes found. In cases where multiple policy-based
  /// routes are matched, the one with the lowest-numbered priority value wins.
  /// The default value is 1000. The priority value must be from 1 to 65535,
  /// inclusive.
  ///
  /// Optional.
  core.int? priority;

  /// Server-defined fully-qualified URL for this resource.
  ///
  /// Output only.
  core.String? selfLink;

  /// Time when the policy-based route was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// VM instances to which this policy-based route applies to.
  ///
  /// Optional.
  VirtualMachine? virtualMachine;

  /// If potential misconfigurations are detected for this route, this field
  /// will be populated with warning messages.
  ///
  /// Output only.
  core.List<Warnings>? warnings;

  PolicyBasedRoute({
    this.createTime,
    this.description,
    this.filter,
    this.interconnectAttachment,
    this.kind,
    this.labels,
    this.name,
    this.network,
    this.nextHopIlbIp,
    this.nextHopOtherRoutes,
    this.priority,
    this.selfLink,
    this.updateTime,
    this.virtualMachine,
    this.warnings,
  });

  PolicyBasedRoute.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          filter: json_.containsKey('filter')
              ? Filter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>)
              : null,
          interconnectAttachment: json_.containsKey('interconnectAttachment')
              ? InterconnectAttachment.fromJson(json_['interconnectAttachment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          nextHopIlbIp: json_.containsKey('nextHopIlbIp')
              ? json_['nextHopIlbIp'] as core.String
              : null,
          nextHopOtherRoutes: json_.containsKey('nextHopOtherRoutes')
              ? json_['nextHopOtherRoutes'] as core.String
              : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.int
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          virtualMachine: json_.containsKey('virtualMachine')
              ? VirtualMachine.fromJson(json_['virtualMachine']
                  as core.Map<core.String, core.dynamic>)
              : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
                  .map((value) => Warnings.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (filter != null) 'filter': filter!,
        if (interconnectAttachment != null)
          'interconnectAttachment': interconnectAttachment!,
        if (kind != null) 'kind': kind!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (nextHopIlbIp != null) 'nextHopIlbIp': nextHopIlbIp!,
        if (nextHopOtherRoutes != null)
          'nextHopOtherRoutes': nextHopOtherRoutes!,
        if (priority != null) 'priority': priority!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (virtualMachine != null) 'virtualMachine': virtualMachine!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// The PSC configurations on producer side.
class ProducerPscConfig {
  /// The resource path of a service attachment.
  ///
  /// Example:
  /// projects/{projectNumOrId}/regions/{region}/serviceAttachments/{resourceId}.
  core.String? serviceAttachmentUri;

  ProducerPscConfig({
    this.serviceAttachmentUri,
  });

  ProducerPscConfig.fromJson(core.Map json_)
      : this(
          serviceAttachmentUri: json_.containsKey('serviceAttachmentUri')
              ? json_['serviceAttachmentUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serviceAttachmentUri != null)
          'serviceAttachmentUri': serviceAttachmentUri!,
      };
}

/// Configuration used for Private Service Connect connections.
///
/// Used when Infrastructure is PSC.
class PscConfig {
  /// Max number of PSC connections for this policy.
  ///
  /// Optional.
  core.String? limit;

  /// The resource paths of subnetworks to use for IP address management.
  ///
  /// Example:
  /// projects/{projectNumOrId}/regions/{region}/subnetworks/{resourceId}.
  core.List<core.String>? subnetworks;

  PscConfig({
    this.limit,
    this.subnetworks,
  });

  PscConfig.fromJson(core.Map json_)
      : this(
          limit:
              json_.containsKey('limit') ? json_['limit'] as core.String : null,
          subnetworks: json_.containsKey('subnetworks')
              ? (json_['subnetworks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (limit != null) 'limit': limit!,
        if (subnetworks != null) 'subnetworks': subnetworks!,
      };
}

/// Information about a specific Private Service Connect connection.
class PscConnection {
  /// The resource reference of the consumer address.
  core.String? consumerAddress;

  /// The resource reference of the PSC Forwarding Rule within the consumer VPC.
  core.String? consumerForwardingRule;

  /// The project where the PSC connection is created.
  core.String? consumerTargetProject;

  /// The most recent error during operating this connection.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleRpcStatus? error;

  /// The error info for the latest error during operating this connection.
  ///
  /// Output only.
  GoogleRpcErrorInfo? errorInfo;

  /// The error type indicates whether the error is consumer facing, producer
  /// facing or system internal.
  /// Possible string values are:
  /// - "CONNECTION_ERROR_TYPE_UNSPECIFIED" : An invalid error type as the
  /// default case.
  /// - "ERROR_INTERNAL" : The error is due to Service Automation system
  /// internal.
  /// - "ERROR_CONSUMER_SIDE" : The error is due to the setup on consumer side.
  /// - "ERROR_PRODUCER_SIDE" : The error is due to the setup on producer side.
  core.String? errorType;

  /// The last Compute Engine operation to setup PSC connection.
  core.String? gceOperation;

  /// The PSC connection id of the PSC forwarding rule.
  core.String? pscConnectionId;

  /// The URI of the subnetwork selected to allocate IP address for this
  /// connection.
  ///
  /// Output only.
  core.String? selectedSubnetwork;

  /// State of the PSC Connection
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : An invalid state as the default case.
  /// - "ACTIVE" : The connection is fully established and ready to use.
  /// - "FAILED" : The connection is not functional since some resources on the
  /// connection fail to be created.
  /// - "CREATING" : The connection is being created.
  /// - "DELETING" : The connection is being deleted.
  core.String? state;

  PscConnection({
    this.consumerAddress,
    this.consumerForwardingRule,
    this.consumerTargetProject,
    this.error,
    this.errorInfo,
    this.errorType,
    this.gceOperation,
    this.pscConnectionId,
    this.selectedSubnetwork,
    this.state,
  });

  PscConnection.fromJson(core.Map json_)
      : this(
          consumerAddress: json_.containsKey('consumerAddress')
              ? json_['consumerAddress'] as core.String
              : null,
          consumerForwardingRule: json_.containsKey('consumerForwardingRule')
              ? json_['consumerForwardingRule'] as core.String
              : null,
          consumerTargetProject: json_.containsKey('consumerTargetProject')
              ? json_['consumerTargetProject'] as core.String
              : null,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          errorInfo: json_.containsKey('errorInfo')
              ? GoogleRpcErrorInfo.fromJson(
                  json_['errorInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          errorType: json_.containsKey('errorType')
              ? json_['errorType'] as core.String
              : null,
          gceOperation: json_.containsKey('gceOperation')
              ? json_['gceOperation'] as core.String
              : null,
          pscConnectionId: json_.containsKey('pscConnectionId')
              ? json_['pscConnectionId'] as core.String
              : null,
          selectedSubnetwork: json_.containsKey('selectedSubnetwork')
              ? json_['selectedSubnetwork'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerAddress != null) 'consumerAddress': consumerAddress!,
        if (consumerForwardingRule != null)
          'consumerForwardingRule': consumerForwardingRule!,
        if (consumerTargetProject != null)
          'consumerTargetProject': consumerTargetProject!,
        if (error != null) 'error': error!,
        if (errorInfo != null) 'errorInfo': errorInfo!,
        if (errorType != null) 'errorType': errorType!,
        if (gceOperation != null) 'gceOperation': gceOperation!,
        if (pscConnectionId != null) 'pscConnectionId': pscConnectionId!,
        if (selectedSubnetwork != null)
          'selectedSubnetwork': selectedSubnetwork!,
        if (state != null) 'state': state!,
      };
}

/// The request for HubService.RejectHubSpoke.
class RejectHubSpokeRequest {
  /// Additional information provided by the hub administrator.
  ///
  /// Optional.
  core.String? details;

  /// A request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server knows to ignore the request if it has already been completed. The
  /// server guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check to see
  /// whether the original operation was received. If it was, the server ignores
  /// the second request. This behavior prevents clients from mistakenly
  /// creating duplicate commitments. The request ID must be a valid UUID, with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// The URI of the spoke to reject from the hub.
  ///
  /// Required.
  core.String? spokeUri;

  RejectHubSpokeRequest({
    this.details,
    this.requestId,
    this.spokeUri,
  });

  RejectHubSpokeRequest.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          spokeUri: json_.containsKey('spokeUri')
              ? json_['spokeUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (requestId != null) 'requestId': requestId!,
        if (spokeUri != null) 'spokeUri': spokeUri!,
      };
}

/// A route defines a path from VM instances within a spoke to a specific
/// destination resource.
///
/// Only VPC spokes have routes.
class Route {
  /// The time the route was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An optional description of the route.
  core.String? description;

  /// The destination IP address range.
  core.String? ipCidrRange;

  /// Optional labels in key-value pair format.
  ///
  /// For more information about labels, see
  /// [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  core.Map<core.String, core.String>? labels;

  /// The origin location of the route.
  ///
  /// Uses the following form: "projects/{project}/locations/{location}"
  /// Example: projects/1234/locations/us-central1
  ///
  /// Output only.
  core.String? location;

  /// The name of the route.
  ///
  /// Route names must be unique. Route names use the following form:
  /// `projects/{project_number}/locations/global/hubs/{hub}/routeTables/{route_table_id}/routes/{route_id}`
  ///
  /// Immutable.
  core.String? name;

  /// The destination VPC network for packets on this route.
  ///
  /// Immutable.
  NextHopVpcNetwork? nextHopVpcNetwork;

  /// The spoke that this route leads to.
  ///
  /// Example: projects/12345/locations/global/spokes/SPOKE
  ///
  /// Immutable.
  core.String? spoke;

  /// The current lifecycle state of the route.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state information available
  /// - "CREATING" : The resource's create operation is in progress.
  /// - "ACTIVE" : The resource is active
  /// - "DELETING" : The resource's delete operation is in progress.
  /// - "ACCEPTING" : The resource's accept operation is in progress.
  /// - "REJECTING" : The resource's reject operation is in progress.
  /// - "UPDATING" : The resource's update operation is in progress.
  /// - "INACTIVE" : The resource is inactive.
  /// - "OBSOLETE" : The hub associated with this spoke resource has been
  /// deleted. This state applies to spoke resources only.
  core.String? state;

  /// The route's type.
  ///
  /// Its type is determined by the properties of its IP address range.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ROUTE_TYPE_UNSPECIFIED" : No route type information specified
  /// - "VPC_PRIMARY_SUBNET" : The route leads to a destination within the
  /// primary address range of the VPC network's subnet.
  /// - "VPC_SECONDARY_SUBNET" : The route leads to a destination within the
  /// secondary address range of the VPC network's subnet.
  core.String? type;

  /// The Google-generated UUID for the route.
  ///
  /// This value is unique across all Network Connectivity Center route
  /// resources. If a route is deleted and another with the same name is
  /// created, the new route is assigned a different `uid`.
  ///
  /// Output only.
  core.String? uid;

  /// The time the route was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Route({
    this.createTime,
    this.description,
    this.ipCidrRange,
    this.labels,
    this.location,
    this.name,
    this.nextHopVpcNetwork,
    this.spoke,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
  });

  Route.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          ipCidrRange: json_.containsKey('ipCidrRange')
              ? json_['ipCidrRange'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nextHopVpcNetwork: json_.containsKey('nextHopVpcNetwork')
              ? NextHopVpcNetwork.fromJson(json_['nextHopVpcNetwork']
                  as core.Map<core.String, core.dynamic>)
              : null,
          spoke:
              json_.containsKey('spoke') ? json_['spoke'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
        if (labels != null) 'labels': labels!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (nextHopVpcNetwork != null) 'nextHopVpcNetwork': nextHopVpcNetwork!,
        if (spoke != null) 'spoke': spoke!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

class RouteTable {
  /// The time the route table was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An optional description of the route table.
  core.String? description;

  /// Optional labels in key-value pair format.
  ///
  /// For more information about labels, see
  /// [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  core.Map<core.String, core.String>? labels;

  /// The name of the route table.
  ///
  /// Route table names must be unique. They use the following form:
  /// `projects/{project_number}/locations/global/hubs/{hub}/routeTables/{route_table_id}`
  ///
  /// Immutable.
  core.String? name;

  /// The current lifecycle state of this route table.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state information available
  /// - "CREATING" : The resource's create operation is in progress.
  /// - "ACTIVE" : The resource is active
  /// - "DELETING" : The resource's delete operation is in progress.
  /// - "ACCEPTING" : The resource's accept operation is in progress.
  /// - "REJECTING" : The resource's reject operation is in progress.
  /// - "UPDATING" : The resource's update operation is in progress.
  /// - "INACTIVE" : The resource is inactive.
  /// - "OBSOLETE" : The hub associated with this spoke resource has been
  /// deleted. This state applies to spoke resources only.
  core.String? state;

  /// The Google-generated UUID for the route table.
  ///
  /// This value is unique across all route table resources. If a route table is
  /// deleted and another with the same name is created, the new route table is
  /// assigned a different `uid`.
  ///
  /// Output only.
  core.String? uid;

  /// The time the route table was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  RouteTable({
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.state,
    this.uid,
    this.updateTime,
  });

  RouteTable.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A router appliance instance is a Compute Engine virtual machine (VM)
/// instance that acts as a BGP speaker.
///
/// A router appliance instance is specified by the URI of the VM and the
/// internal IP address of one of the VM's network interfaces.
class RouterApplianceInstance {
  /// The IP address on the VM to use for peering.
  core.String? ipAddress;

  /// The URI of the VM.
  core.String? virtualMachine;

  RouterApplianceInstance({
    this.ipAddress,
    this.virtualMachine,
  });

  RouterApplianceInstance.fromJson(core.Map json_)
      : this(
          ipAddress: json_.containsKey('ipAddress')
              ? json_['ipAddress'] as core.String
              : null,
          virtualMachine: json_.containsKey('virtualMachine')
              ? json_['virtualMachine'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (virtualMachine != null) 'virtualMachine': virtualMachine!,
      };
}

/// RoutingVPC contains information about the VPC networks associated with the
/// spokes of a Network Connectivity Center hub.
class RoutingVPC {
  /// If true, indicates that this VPC network is currently associated with
  /// spokes that use the data transfer feature (spokes where the
  /// site_to_site_data_transfer field is set to true).
  ///
  /// If you create new spokes that use data transfer, they must be associated
  /// with this VPC network. At most, one VPC network will have this field set
  /// to true.
  ///
  /// Output only.
  core.bool? requiredForNewSiteToSiteDataTransferSpokes;

  /// The URI of the VPC network.
  core.String? uri;

  RoutingVPC({
    this.requiredForNewSiteToSiteDataTransferSpokes,
    this.uri,
  });

  RoutingVPC.fromJson(core.Map json_)
      : this(
          requiredForNewSiteToSiteDataTransferSpokes: json_
                  .containsKey('requiredForNewSiteToSiteDataTransferSpokes')
              ? json_['requiredForNewSiteToSiteDataTransferSpokes'] as core.bool
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requiredForNewSiteToSiteDataTransferSpokes != null)
          'requiredForNewSiteToSiteDataTransferSpokes':
              requiredForNewSiteToSiteDataTransferSpokes!,
        if (uri != null) 'uri': uri!,
      };
}

/// The ServiceClass resource.
///
/// Next id: 9
class ServiceClass {
  /// Time when the ServiceClass was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of this resource.
  core.String? description;

  /// The etag is computed by the server, and may be sent on update and delete
  /// requests to ensure the client has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// User-defined labels.
  core.Map<core.String, core.String>? labels;

  /// The name of a ServiceClass resource.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/serviceClasses/{service_class}
  /// See: https://google.aip.dev/122#fields-representing-resource-names
  ///
  /// Immutable.
  core.String? name;

  /// The generated service class name.
  ///
  /// Use this name to refer to the Service class in Service Connection Maps and
  /// Service Connection Policies.
  ///
  /// Output only.
  core.String? serviceClass;

  /// Time when the ServiceClass was updated.
  ///
  /// Output only.
  core.String? updateTime;

  ServiceClass({
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.serviceClass,
    this.updateTime,
  });

  ServiceClass.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          serviceClass: json_.containsKey('serviceClass')
              ? json_['serviceClass'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (serviceClass != null) 'serviceClass': serviceClass!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The ServiceConnectionMap resource.
///
/// Next id: 15
class ServiceConnectionMap {
  /// The PSC configurations on consumer side.
  core.List<ConsumerPscConfig>? consumerPscConfigs;

  /// PSC connection details on consumer side.
  ///
  /// Output only.
  core.List<ConsumerPscConnection>? consumerPscConnections;

  /// Time when the ServiceConnectionMap was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of this resource.
  core.String? description;

  /// The etag is computed by the server, and may be sent on update and delete
  /// requests to ensure the client has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// The infrastructure used for connections between consumers/producers.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INFRASTRUCTURE_UNSPECIFIED" : An invalid infrastructure as the default
  /// case.
  /// - "PSC" : Private Service Connect is used for connections.
  core.String? infrastructure;

  /// User-defined labels.
  core.Map<core.String, core.String>? labels;

  /// The name of a ServiceConnectionMap.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/serviceConnectionMaps/{service_connection_map}
  /// See: https://google.aip.dev/122#fields-representing-resource-names
  ///
  /// Immutable.
  core.String? name;

  /// The PSC configurations on producer side.
  core.List<ProducerPscConfig>? producerPscConfigs;

  /// The service class identifier this ServiceConnectionMap is for.
  ///
  /// The user of ServiceConnectionMap create API needs to have
  /// networkconnecitivty.serviceclasses.use iam permission for the service
  /// class.
  core.String? serviceClass;

  /// The service class uri this ServiceConnectionMap is for.
  ///
  /// Output only.
  core.String? serviceClassUri;

  /// The token provided by the consumer.
  ///
  /// This token authenticates that the consumer can create a connecton within
  /// the specified project and network.
  core.String? token;

  /// Time when the ServiceConnectionMap was updated.
  ///
  /// Output only.
  core.String? updateTime;

  ServiceConnectionMap({
    this.consumerPscConfigs,
    this.consumerPscConnections,
    this.createTime,
    this.description,
    this.etag,
    this.infrastructure,
    this.labels,
    this.name,
    this.producerPscConfigs,
    this.serviceClass,
    this.serviceClassUri,
    this.token,
    this.updateTime,
  });

  ServiceConnectionMap.fromJson(core.Map json_)
      : this(
          consumerPscConfigs: json_.containsKey('consumerPscConfigs')
              ? (json_['consumerPscConfigs'] as core.List)
                  .map((value) => ConsumerPscConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          consumerPscConnections: json_.containsKey('consumerPscConnections')
              ? (json_['consumerPscConnections'] as core.List)
                  .map((value) => ConsumerPscConnection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          infrastructure: json_.containsKey('infrastructure')
              ? json_['infrastructure'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          producerPscConfigs: json_.containsKey('producerPscConfigs')
              ? (json_['producerPscConfigs'] as core.List)
                  .map((value) => ProducerPscConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceClass: json_.containsKey('serviceClass')
              ? json_['serviceClass'] as core.String
              : null,
          serviceClassUri: json_.containsKey('serviceClassUri')
              ? json_['serviceClassUri'] as core.String
              : null,
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerPscConfigs != null)
          'consumerPscConfigs': consumerPscConfigs!,
        if (consumerPscConnections != null)
          'consumerPscConnections': consumerPscConnections!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (infrastructure != null) 'infrastructure': infrastructure!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (producerPscConfigs != null)
          'producerPscConfigs': producerPscConfigs!,
        if (serviceClass != null) 'serviceClass': serviceClass!,
        if (serviceClassUri != null) 'serviceClassUri': serviceClassUri!,
        if (token != null) 'token': token!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The ServiceConnectionPolicy resource.
///
/// Next id: 12
class ServiceConnectionPolicy {
  /// Time when the ServiceConnectionMap was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of this resource.
  core.String? description;

  /// The etag is computed by the server, and may be sent on update and delete
  /// requests to ensure the client has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// The type of underlying resources used to create the connection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INFRASTRUCTURE_UNSPECIFIED" : An invalid infrastructure as the default
  /// case.
  /// - "PSC" : Private Service Connect is used for connections.
  core.String? infrastructure;

  /// User-defined labels.
  core.Map<core.String, core.String>? labels;

  /// The name of a ServiceConnectionPolicy.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy}
  /// See: https://google.aip.dev/122#fields-representing-resource-names
  ///
  /// Immutable.
  core.String? name;

  /// The resource path of the consumer network.
  ///
  /// Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  core.String? network;

  /// Configuration used for Private Service Connect connections.
  ///
  /// Used when Infrastructure is PSC.
  PscConfig? pscConfig;

  /// Information about each Private Service Connect connection.
  ///
  /// Output only.
  core.List<PscConnection>? pscConnections;

  /// The service class identifier for which this ServiceConnectionPolicy is
  /// for.
  ///
  /// The service class identifier is a unique, symbolic representation of a
  /// ServiceClass. It is provided by the Service Producer. Google services have
  /// a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not.
  /// For example, test-service-a3dfcx.
  core.String? serviceClass;

  /// Time when the ServiceConnectionMap was updated.
  ///
  /// Output only.
  core.String? updateTime;

  ServiceConnectionPolicy({
    this.createTime,
    this.description,
    this.etag,
    this.infrastructure,
    this.labels,
    this.name,
    this.network,
    this.pscConfig,
    this.pscConnections,
    this.serviceClass,
    this.updateTime,
  });

  ServiceConnectionPolicy.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          infrastructure: json_.containsKey('infrastructure')
              ? json_['infrastructure'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          pscConfig: json_.containsKey('pscConfig')
              ? PscConfig.fromJson(
                  json_['pscConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          pscConnections: json_.containsKey('pscConnections')
              ? (json_['pscConnections'] as core.List)
                  .map((value) => PscConnection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          serviceClass: json_.containsKey('serviceClass')
              ? json_['serviceClass'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (infrastructure != null) 'infrastructure': infrastructure!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (pscConfig != null) 'pscConfig': pscConfig!,
        if (pscConnections != null) 'pscConnections': pscConnections!,
        if (serviceClass != null) 'serviceClass': serviceClass!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The ServiceConnectionToken resource.
///
/// Next id: 10
class ServiceConnectionToken {
  /// Time when the ServiceConnectionToken was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of this resource.
  core.String? description;

  /// The etag is computed by the server, and may be sent on update and delete
  /// requests to ensure the client has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// The time to which this token is valid.
  ///
  /// Output only.
  core.String? expireTime;

  /// User-defined labels.
  core.Map<core.String, core.String>? labels;

  /// The name of a ServiceConnectionToken.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/ServiceConnectionTokens/{service_connection_token}
  /// See: https://google.aip.dev/122#fields-representing-resource-names
  ///
  /// Immutable.
  core.String? name;

  /// The resource path of the network associated with this token.
  ///
  /// Example: projects/{projectNumOrId}/global/networks/{resourceId}.
  core.String? network;

  /// The token generated by Automation.
  ///
  /// Output only.
  core.String? token;

  /// Time when the ServiceConnectionToken was updated.
  ///
  /// Output only.
  core.String? updateTime;

  ServiceConnectionToken({
    this.createTime,
    this.description,
    this.etag,
    this.expireTime,
    this.labels,
    this.name,
    this.network,
    this.token,
    this.updateTime,
  });

  ServiceConnectionToken.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          token:
              json_.containsKey('token') ? json_['token'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (token != null) 'token': token!,
        if (updateTime != null) 'updateTime': updateTime!,
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
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// A Network Connectivity Center spoke represents one or more network
/// connectivity resources.
///
/// When you create a spoke, you associate it with a hub. You must also identify
/// a value for exactly one of the following fields: * linked_vpn_tunnels *
/// linked_interconnect_attachments * linked_router_appliance_instances *
/// linked_vpc_network
class Spoke {
  /// The time the spoke was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An optional description of the spoke.
  core.String? description;

  /// The name of the group that this spoke is associated with.
  ///
  /// Optional.
  core.String? group;

  /// The name of the hub that this spoke is attached to.
  ///
  /// Immutable.
  core.String? hub;

  /// Optional labels in key-value pair format.
  ///
  /// For more information about labels, see
  /// [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  core.Map<core.String, core.String>? labels;

  /// VLAN attachments that are associated with the spoke.
  LinkedInterconnectAttachments? linkedInterconnectAttachments;

  /// Router appliance instances that are associated with the spoke.
  LinkedRouterApplianceInstances? linkedRouterApplianceInstances;

  /// VPC network that is associated with the spoke.
  ///
  /// Optional.
  LinkedVpcNetwork? linkedVpcNetwork;

  /// VPN tunnels that are associated with the spoke.
  LinkedVpnTunnels? linkedVpnTunnels;

  /// The name of the spoke.
  ///
  /// Spoke names must be unique. They use the following form:
  /// `projects/{project_number}/locations/{region}/spokes/{spoke_id}`
  ///
  /// Immutable.
  core.String? name;

  /// The reasons for current state of the spoke.
  ///
  /// Only present when the spoke is in the `INACTIVE` state.
  ///
  /// Output only.
  core.List<StateReason>? reasons;

  /// The type of resource associated with the spoke.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SPOKE_TYPE_UNSPECIFIED" : Unspecified spoke type.
  /// - "VPN_TUNNEL" : Spokes associated with VPN tunnels.
  /// - "INTERCONNECT_ATTACHMENT" : Spokes associated with VLAN attachments.
  /// - "ROUTER_APPLIANCE" : Spokes associated with router appliance instances.
  /// - "VPC_NETWORK" : Spokes associated with VPC networks.
  core.String? spokeType;

  /// The current lifecycle state of this spoke.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state information available
  /// - "CREATING" : The resource's create operation is in progress.
  /// - "ACTIVE" : The resource is active
  /// - "DELETING" : The resource's delete operation is in progress.
  /// - "ACCEPTING" : The resource's accept operation is in progress.
  /// - "REJECTING" : The resource's reject operation is in progress.
  /// - "UPDATING" : The resource's update operation is in progress.
  /// - "INACTIVE" : The resource is inactive.
  /// - "OBSOLETE" : The hub associated with this spoke resource has been
  /// deleted. This state applies to spoke resources only.
  core.String? state;

  /// The Google-generated UUID for the spoke.
  ///
  /// This value is unique across all spoke resources. If a spoke is deleted and
  /// another with the same name is created, the new spoke is assigned a
  /// different `unique_id`.
  ///
  /// Output only.
  core.String? uniqueId;

  /// The time the spoke was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Spoke({
    this.createTime,
    this.description,
    this.group,
    this.hub,
    this.labels,
    this.linkedInterconnectAttachments,
    this.linkedRouterApplianceInstances,
    this.linkedVpcNetwork,
    this.linkedVpnTunnels,
    this.name,
    this.reasons,
    this.spokeType,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Spoke.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          group:
              json_.containsKey('group') ? json_['group'] as core.String : null,
          hub: json_.containsKey('hub') ? json_['hub'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          linkedInterconnectAttachments:
              json_.containsKey('linkedInterconnectAttachments')
                  ? LinkedInterconnectAttachments.fromJson(
                      json_['linkedInterconnectAttachments']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          linkedRouterApplianceInstances:
              json_.containsKey('linkedRouterApplianceInstances')
                  ? LinkedRouterApplianceInstances.fromJson(
                      json_['linkedRouterApplianceInstances']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          linkedVpcNetwork: json_.containsKey('linkedVpcNetwork')
              ? LinkedVpcNetwork.fromJson(json_['linkedVpcNetwork']
                  as core.Map<core.String, core.dynamic>)
              : null,
          linkedVpnTunnels: json_.containsKey('linkedVpnTunnels')
              ? LinkedVpnTunnels.fromJson(json_['linkedVpnTunnels']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reasons: json_.containsKey('reasons')
              ? (json_['reasons'] as core.List)
                  .map((value) => StateReason.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          spokeType: json_.containsKey('spokeType')
              ? json_['spokeType'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uniqueId: json_.containsKey('uniqueId')
              ? json_['uniqueId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (group != null) 'group': group!,
        if (hub != null) 'hub': hub!,
        if (labels != null) 'labels': labels!,
        if (linkedInterconnectAttachments != null)
          'linkedInterconnectAttachments': linkedInterconnectAttachments!,
        if (linkedRouterApplianceInstances != null)
          'linkedRouterApplianceInstances': linkedRouterApplianceInstances!,
        if (linkedVpcNetwork != null) 'linkedVpcNetwork': linkedVpcNetwork!,
        if (linkedVpnTunnels != null) 'linkedVpnTunnels': linkedVpnTunnels!,
        if (name != null) 'name': name!,
        if (reasons != null) 'reasons': reasons!,
        if (spokeType != null) 'spokeType': spokeType!,
        if (state != null) 'state': state!,
        if (uniqueId != null) 'uniqueId': uniqueId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The number of spokes that are in a particular state and associated with a
/// given hub.
class SpokeStateCount {
  /// The total number of spokes that are in this state and associated with a
  /// given hub.
  ///
  /// Output only.
  core.String? count;

  /// The state of the spokes.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state information available
  /// - "CREATING" : The resource's create operation is in progress.
  /// - "ACTIVE" : The resource is active
  /// - "DELETING" : The resource's delete operation is in progress.
  /// - "ACCEPTING" : The resource's accept operation is in progress.
  /// - "REJECTING" : The resource's reject operation is in progress.
  /// - "UPDATING" : The resource's update operation is in progress.
  /// - "INACTIVE" : The resource is inactive.
  /// - "OBSOLETE" : The hub associated with this spoke resource has been
  /// deleted. This state applies to spoke resources only.
  core.String? state;

  SpokeStateCount({
    this.count,
    this.state,
  });

  SpokeStateCount.fromJson(core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (state != null) 'state': state!,
      };
}

/// The number of spokes in the hub that are inactive for this reason.
class SpokeStateReasonCount {
  /// The total number of spokes that are inactive for a particular reason and
  /// associated with a given hub.
  ///
  /// Output only.
  core.String? count;

  /// The reason that a spoke is inactive.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : No information available.
  /// - "PENDING_REVIEW" : The proposed spoke is pending review.
  /// - "REJECTED" : The proposed spoke has been rejected by the hub
  /// administrator.
  /// - "PAUSED" : The spoke has been deactivated internally.
  /// - "FAILED" : Network Connectivity Center encountered errors while
  /// accepting the spoke.
  core.String? stateReasonCode;

  SpokeStateReasonCount({
    this.count,
    this.stateReasonCode,
  });

  SpokeStateReasonCount.fromJson(core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          stateReasonCode: json_.containsKey('stateReasonCode')
              ? json_['stateReasonCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (stateReasonCode != null) 'stateReasonCode': stateReasonCode!,
      };
}

/// Summarizes information about the spokes associated with a hub.
///
/// The summary includes a count of spokes according to type and according to
/// state. If any spokes are inactive, the summary also lists the reasons they
/// are inactive, including a count for each reason.
class SpokeSummary {
  /// Counts the number of spokes that are in each state and associated with a
  /// given hub.
  ///
  /// Output only.
  core.List<SpokeStateCount>? spokeStateCounts;

  /// Counts the number of spokes that are inactive for each possible reason and
  /// associated with a given hub.
  ///
  /// Output only.
  core.List<SpokeStateReasonCount>? spokeStateReasonCounts;

  /// Counts the number of spokes of each type that are associated with a
  /// specific hub.
  ///
  /// Output only.
  core.List<SpokeTypeCount>? spokeTypeCounts;

  SpokeSummary({
    this.spokeStateCounts,
    this.spokeStateReasonCounts,
    this.spokeTypeCounts,
  });

  SpokeSummary.fromJson(core.Map json_)
      : this(
          spokeStateCounts: json_.containsKey('spokeStateCounts')
              ? (json_['spokeStateCounts'] as core.List)
                  .map((value) => SpokeStateCount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          spokeStateReasonCounts: json_.containsKey('spokeStateReasonCounts')
              ? (json_['spokeStateReasonCounts'] as core.List)
                  .map((value) => SpokeStateReasonCount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          spokeTypeCounts: json_.containsKey('spokeTypeCounts')
              ? (json_['spokeTypeCounts'] as core.List)
                  .map((value) => SpokeTypeCount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (spokeStateCounts != null) 'spokeStateCounts': spokeStateCounts!,
        if (spokeStateReasonCounts != null)
          'spokeStateReasonCounts': spokeStateReasonCounts!,
        if (spokeTypeCounts != null) 'spokeTypeCounts': spokeTypeCounts!,
      };
}

/// The number of spokes of a given type that are associated with a specific
/// hub.
///
/// The type indicates what kind of resource is associated with the spoke.
class SpokeTypeCount {
  /// The total number of spokes of this type that are associated with the hub.
  ///
  /// Output only.
  core.String? count;

  /// The type of the spokes.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SPOKE_TYPE_UNSPECIFIED" : Unspecified spoke type.
  /// - "VPN_TUNNEL" : Spokes associated with VPN tunnels.
  /// - "INTERCONNECT_ATTACHMENT" : Spokes associated with VLAN attachments.
  /// - "ROUTER_APPLIANCE" : Spokes associated with router appliance instances.
  /// - "VPC_NETWORK" : Spokes associated with VPC networks.
  core.String? spokeType;

  SpokeTypeCount({
    this.count,
    this.spokeType,
  });

  SpokeTypeCount.fromJson(core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          spokeType: json_.containsKey('spokeType')
              ? json_['spokeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (spokeType != null) 'spokeType': spokeType!,
      };
}

/// The reason a spoke is inactive.
class StateReason {
  /// The code associated with this reason.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : No information available.
  /// - "PENDING_REVIEW" : The proposed spoke is pending review.
  /// - "REJECTED" : The proposed spoke has been rejected by the hub
  /// administrator.
  /// - "PAUSED" : The spoke has been deactivated internally.
  /// - "FAILED" : Network Connectivity Center encountered errors while
  /// accepting the spoke.
  core.String? code;

  /// Human-readable details about this reason.
  core.String? message;

  /// Additional information provided by the user in the RejectSpoke call.
  core.String? userDetails;

  StateReason({
    this.code,
    this.message,
    this.userDetails,
  });

  StateReason.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          userDetails: json_.containsKey('userDetails')
              ? json_['userDetails'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (message != null) 'message': message!,
        if (userDetails != null) 'userDetails': userDetails!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// VM instances to which this policy-based route applies to.
class VirtualMachine {
  /// A list of VM instance tags the this policy-based route applies to.
  ///
  /// VM instances that have ANY of tags specified here will install this PBR.
  ///
  /// Optional.
  core.List<core.String>? tags;

  VirtualMachine({
    this.tags,
  });

  VirtualMachine.fromJson(core.Map json_)
      : this(
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tags != null) 'tags': tags!,
      };
}

/// Informational warning message.
class Warnings {
  /// A warning code, if applicable.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "WARNING_UNSPECIFIED" : Default value.
  /// - "RESOURCE_NOT_ACTIVE" : The policy-based route is not active and
  /// functioning. Common causes are the dependent network was deleted or the
  /// resource project was turned off.
  /// - "RESOURCE_BEING_MODIFIED" : The policy-based route is being modified
  /// (e.g. created/deleted) at this time.
  core.String? code;

  /// Metadata about this warning in key: value format.
  ///
  /// The key should provides more detail on the warning being returned. For
  /// example, for warnings where there are no results in a list request for a
  /// particular zone, this key might be scope and the key value might be the
  /// zone name. Other examples might be a key indicating a deprecated resource
  /// and a suggested replacement.
  ///
  /// Output only.
  core.Map<core.String, core.String>? data;

  /// A human-readable description of the warning code.
  ///
  /// Output only.
  core.String? warningMessage;

  Warnings({
    this.code,
    this.data,
    this.warningMessage,
  });

  Warnings.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          data: json_.containsKey('data')
              ? (json_['data'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          warningMessage: json_.containsKey('warningMessage')
              ? json_['warningMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (data != null) 'data': data!,
        if (warningMessage != null) 'warningMessage': warningMessage!,
      };
}
