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
///     - [ProjectsLocationsMulticloudDataTransferConfigsResource]
/// - [ProjectsLocationsMulticloudDataTransferConfigsDestinationsResource]
///     - [ProjectsLocationsMulticloudDataTransferSupportedServicesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRegionalEndpointsResource]
///     - [ProjectsLocationsRemoteTransportProfilesResource]
///     - [ProjectsLocationsServiceClassesResource]
///     - [ProjectsLocationsServiceConnectionMapsResource]
///     - [ProjectsLocationsServiceConnectionPoliciesResource]
///     - [ProjectsLocationsServiceConnectionTokensResource]
///     - [ProjectsLocationsSpokesResource]
///     - [ProjectsLocationsTransportsResource]
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

  NetworkconnectivityApi(
    http.Client client, {
    core.String rootUrl = 'https://networkconnectivity.googleapis.com/',
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

  ProjectsLocationsGlobalResource get global =>
      ProjectsLocationsGlobalResource(_requester);
  ProjectsLocationsInternalRangesResource get internalRanges =>
      ProjectsLocationsInternalRangesResource(_requester);
  ProjectsLocationsMulticloudDataTransferConfigsResource
  get multicloudDataTransferConfigs =>
      ProjectsLocationsMulticloudDataTransferConfigsResource(_requester);
  ProjectsLocationsMulticloudDataTransferSupportedServicesResource
  get multicloudDataTransferSupportedServices =>
      ProjectsLocationsMulticloudDataTransferSupportedServicesResource(
        _requester,
      );
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsRegionalEndpointsResource get regionalEndpoints =>
      ProjectsLocationsRegionalEndpointsResource(_requester);
  ProjectsLocationsRemoteTransportProfilesResource
  get remoteTransportProfiles =>
      ProjectsLocationsRemoteTransportProfilesResource(_requester);
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
  ProjectsLocationsTransportsResource get transports =>
      ProjectsLocationsTransportsResource(_requester);

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
  /// [extraLocationTypes] - Optional. Unless explicitly documented otherwise,
  /// don't use this unsupported field which is primarily intended for internal
  /// usage.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Accepts a proposal to update a Network Connectivity Center spoke in a hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the hub to accept spoke update.
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
  async.Future<GoogleLongrunningOperation> acceptSpokeUpdate(
    AcceptSpokeUpdateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':acceptSpokeUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<Hub> get(core.String name, {core.String? $fields}) async {
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Query the Private Service Connect propagation status of a Network
  /// Connectivity Center hub.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the hub.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the list of results. The
  /// filter can be used to filter the results by the following fields: *
  /// `psc_propagation_status.source_spoke` *
  /// `psc_propagation_status.source_group` *
  /// `psc_propagation_status.source_forwarding_rule` *
  /// `psc_propagation_status.target_spoke` *
  /// `psc_propagation_status.target_group` * `psc_propagation_status.code` *
  /// `psc_propagation_status.message`
  ///
  /// [groupBy] - Optional. Aggregate the results by the specified fields. A
  /// comma-separated list of any of these fields: *
  /// `psc_propagation_status.source_spoke` *
  /// `psc_propagation_status.source_group` *
  /// `psc_propagation_status.source_forwarding_rule` *
  /// `psc_propagation_status.target_spoke` *
  /// `psc_propagation_status.target_group` * `psc_propagation_status.code`
  ///
  /// [orderBy] - Optional. Sort the results in ascending order by the specified
  /// fields. A comma-separated list of any of these fields: *
  /// `psc_propagation_status.source_spoke` *
  /// `psc_propagation_status.source_group` *
  /// `psc_propagation_status.source_forwarding_rule` *
  /// `psc_propagation_status.target_spoke` *
  /// `psc_propagation_status.target_group` * `psc_propagation_status.code` If
  /// `group_by` is set, the value of the `order_by` field must be the same as
  /// or a subset of the `group_by` field.
  ///
  /// [pageSize] - Optional. The maximum number of results to return per page.
  ///
  /// [pageToken] - Optional. The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryHubStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryHubStatusResponse> queryStatus(
    core.String name, {
    core.String? filter,
    core.String? groupBy,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (groupBy != null) 'groupBy': [groupBy],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':queryStatus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return QueryHubStatusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Rejects a proposal to update a Network Connectivity Center spoke in a hub.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the hub to reject spoke update.
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
  async.Future<GoogleLongrunningOperation> rejectSpokeUpdate(
    RejectSpokeUpdateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':rejectSpokeUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<Group> get(core.String name, {core.String? $fields}) async {
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a Network Connectivity Center group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The name of the group. Group names must be unique.
  /// They use the following form:
  /// `projects/{project_number}/locations/global/hubs/{hub}/groups/{group_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/hubs/\[^/\]+/groups/\[^/\]+$`.
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
  /// [updateMask] - Optional. In the case of an update to an existing group,
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
    Group request,
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<RouteTable> get(core.String name, {core.String? $fields}) async {
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGlobalHubsRouteTablesRoutesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalHubsRouteTablesRoutesResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  async.Future<Route> get(core.String name, {core.String? $fields}) async {
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// create. Provided by the client when the resource is created. The name must
  /// comply with https://google.aip.dev/122#resource-id-segments. Specifically,
  /// the name must be 1-63 characters long and match the regular expression
  /// \[a-z\](\[a-z0-9-\]*\[a-z0-9\])?. The first character must be a lowercase
  /// letter, and all following characters (except for the last character) must
  /// be a dash, lowercase letter, or digit. The last character must be a
  /// lowercase letter or digit.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server knows to ignore the request if it has already been completed. The
  /// server guarantees that for at least 60 minutes since the first request.
  /// For example, consider a situation where you make an initial request and
  /// the request times out. If you make the request again with the same request
  /// ID, the server can check if original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// server knows to ignore the request if it has already been completed. The
  /// server guarantees that for at least 60 minutes after the first request.
  /// For example, consider a situation where you make an initial request and
  /// the request times out. If you make the request again with the same request
  /// ID, the server can check if original operation with the same request ID
  /// was received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/internalRanges/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single internal range.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of an internal range. Format:
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/internalRanges/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/internalRanges/\[^/\]+$`.
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

class ProjectsLocationsMulticloudDataTransferConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMulticloudDataTransferConfigsDestinationsResource
  get destinations =>
      ProjectsLocationsMulticloudDataTransferConfigsDestinationsResource(
        _requester,
      );

  ProjectsLocationsMulticloudDataTransferConfigsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a `MulticloudDataTransferConfig` resource in a specified project
  /// and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [multicloudDataTransferConfigId] - Required. The ID to use for the
  /// `MulticloudDataTransferConfig` resource, which becomes the final component
  /// of the `MulticloudDataTransferConfig` resource name.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server can
  /// ignore the request if it has already been completed. The server waits for
  /// at least 60 minutes since the first request. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID, the server can check
  /// if original operation with the same request ID was received, and if so,
  /// can ignore the second request. This prevents clients from accidentally
  /// creating duplicate `MulticloudDataTransferConfig` resources. The request
  /// ID must be a valid UUID with the exception that zero UUID
  /// (00000000-0000-0000-0000-000000000000) isn't supported.
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
    MulticloudDataTransferConfig request,
    core.String parent, {
    core.String? multicloudDataTransferConfigId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (multicloudDataTransferConfigId != null)
        'multicloudDataTransferConfigId': [multicloudDataTransferConfigId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/multicloudDataTransferConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a `MulticloudDataTransferConfig` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `MulticloudDataTransferConfig` resource
  /// to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/multicloudDataTransferConfigs/\[^/\]+$`.
  ///
  /// [etag] - Optional. The etag is computed by the server, and might be sent
  /// with update and delete requests so that the client has an up-to-date value
  /// before proceeding.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server can
  /// ignore the request if it has already been completed. The server waits for
  /// at least 60 minutes since the first request. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID, the server can check
  /// if original operation with the same request ID was received, and if so,
  /// can ignore the second request. This prevents clients from accidentally
  /// creating duplicate `MulticloudDataTransferConfig` resources. The request
  /// ID must be a valid UUID with the exception that zero UUID
  /// (00000000-0000-0000-0000-000000000000) isn't supported.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the details of a `MulticloudDataTransferConfig` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `MulticloudDataTransferConfig` resource
  /// to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/multicloudDataTransferConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MulticloudDataTransferConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MulticloudDataTransferConfig> get(
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
    return MulticloudDataTransferConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the `MulticloudDataTransferConfig` resources in a specified project
  /// and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the results listed in the
  /// response.
  ///
  /// [orderBy] - Optional. The sort order of the results.
  ///
  /// [pageSize] - Optional. The maximum number of results listed per page.
  ///
  /// [pageToken] - Optional. The page token.
  ///
  /// [returnPartialSuccess] - Optional. If `true`, allows partial responses for
  /// multi-regional aggregated list requests.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMulticloudDataTransferConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMulticloudDataTransferConfigsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/multicloudDataTransferConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMulticloudDataTransferConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a `MulticloudDataTransferConfig` resource in a specified project
  /// and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the `MulticloudDataTransferConfig`
  /// resource. Format:
  /// `projects/{project}/locations/{location}/multicloudDataTransferConfigs/{multicloud_data_transfer_config}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/multicloudDataTransferConfigs/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server can
  /// ignore the request if it has already been completed. The server waits for
  /// at least 60 minutes since the first request. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID, the server can check
  /// if original operation with the same request ID was received, and if so,
  /// can ignore the second request. This prevents clients from accidentally
  /// creating duplicate `MulticloudDataTransferConfig` resources. The request
  /// ID must be a valid UUID with the exception that zero UUID
  /// (00000000-0000-0000-0000-000000000000) isn't supported.
  ///
  /// [updateMask] - Optional. `FieldMask` is used to specify the fields in the
  /// `MulticloudDataTransferConfig` resource to be overwritten by the update.
  /// The fields specified in `update_mask` are relative to the resource, not
  /// the full request. A field is overwritten if it is in the mask. If you
  /// don't specify a mask, all fields are overwritten.
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
    MulticloudDataTransferConfig request,
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsMulticloudDataTransferConfigsDestinationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMulticloudDataTransferConfigsDestinationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a `Destination` resource in a specified project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/multicloudDataTransferConfigs/\[^/\]+$`.
  ///
  /// [destinationId] - Required. The ID to use for the `Destination` resource,
  /// which becomes the final component of the `Destination` resource name.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server can
  /// ignore the request if it has already been completed. The server waits for
  /// at least 60 minutes since the first request. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID, the server can check
  /// if original operation with the same request ID was received, and if so,
  /// can ignore the second request. This prevents clients from accidentally
  /// creating duplicate `Destination` resources. The request ID must be a valid
  /// UUID with the exception that zero UUID
  /// (00000000-0000-0000-0000-000000000000) isn't supported.
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
    Destination request,
    core.String parent, {
    core.String? destinationId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (destinationId != null) 'destinationId': [destinationId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/destinations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a `Destination` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `Destination` resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/multicloudDataTransferConfigs/\[^/\]+/destinations/\[^/\]+$`.
  ///
  /// [etag] - Optional. The etag is computed by the server, and might be sent
  /// with update and delete requests so that the client has an up-to-date value
  /// before proceeding.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server can
  /// ignore the request if it has already been completed. The server waits for
  /// at least 60 minutes since the first request. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID, the server can check
  /// if original operation with the same request ID was received, and if so,
  /// can ignore the second request. The request ID must be a valid UUID with
  /// the exception that zero UUID (00000000-0000-0000-0000-000000000000) isn't
  /// supported.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the details of a `Destination` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `Destination` resource to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/multicloudDataTransferConfigs/\[^/\]+/destinations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Destination].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Destination> get(
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
    return Destination.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the `Destination` resources in a specified project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/multicloudDataTransferConfigs/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression that filters the results listed in the
  /// response.
  ///
  /// [orderBy] - Optional. The sort order of the results.
  ///
  /// [pageSize] - Optional. The maximum number of results listed per page.
  ///
  /// [pageToken] - Optional. The page token.
  ///
  /// [returnPartialSuccess] - Optional. If `true`, allow partial responses for
  /// multi-regional aggregated list requests.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDestinationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDestinationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/destinations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDestinationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a `Destination` resource in a specified project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the `Destination` resource. Format:
  /// `projects/{project}/locations/{location}/multicloudDataTransferConfigs/{multicloud_data_transfer_config}/destinations/{destination}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/multicloudDataTransferConfigs/\[^/\]+/destinations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server can
  /// ignore the request if it has already been completed. The server waits for
  /// at least 60 minutes since the first request. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID, the server can check
  /// if original operation with the same request ID was received, and if so,
  /// can ignore the second request. The request ID must be a valid UUID with
  /// the exception that zero UUID (00000000-0000-0000-0000-000000000000) isn't
  /// supported.
  ///
  /// [updateMask] - Optional. \`FieldMask is used to specify the fields to be
  /// overwritten in the \`Destination\` resource by the update. The fields
  /// specified in \`update_mask\` are relative to the resource, not the full
  /// request. A field is overwritten if it is in the mask. If you don't specify
  /// a mask, all fields are overwritten.
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
    Destination request,
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsMulticloudDataTransferSupportedServicesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMulticloudDataTransferSupportedServicesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets the details of a service that is supported for Data Transfer
  /// Essentials.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/multicloudDataTransferSupportedServices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MulticloudDataTransferSupportedService].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MulticloudDataTransferSupportedService> get(
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
    return MulticloudDataTransferSupportedService.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the services in the project for a region that are supported for Data
  /// Transfer Essentials.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of results listed per page.
  ///
  /// [pageToken] - Optional. The page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMulticloudDataTransferSupportedServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMulticloudDataTransferSupportedServicesResponse> list(
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
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/multicloudDataTransferSupportedServices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMulticloudDataTransferSupportedServicesResponse.fromJson(
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsRegionalEndpointsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRegionalEndpointsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new RegionalEndpoint in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name of the RegionalEndpoint.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [regionalEndpointId] - Required. Unique id of the Regional Endpoint to be
  /// created. @pattern: ^\[-a-z0-9\](?:\[-a-z0-9\]{0,44})\[a-z0-9\]$
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server knows to ignore the request if it has already been completed. The
  /// server guarantees that for at least 60 minutes since the first request.
  /// For example, consider a situation where you make an initial request and
  /// the request times out. If you make the request again with the same request
  /// ID, the server can check if the original operation with the same request
  /// ID was received, and if so, ignores the second request. This prevents
  /// clients from accidentally creating duplicate commitments. The request ID
  /// must be a valid UUID with the exception that zero UUID is not supported
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
    RegionalEndpoint request,
    core.String parent, {
    core.String? regionalEndpointId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (regionalEndpointId != null)
        'regionalEndpointId': [regionalEndpointId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/regionalEndpoints';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single RegionalEndpoint.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the RegionalEndpoint to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/regionalEndpoints/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server knows to ignore the request if it has already been completed. The
  /// server guarantees that for at least 60 minutes since the first request.
  /// For example, consider a situation where you make an initial request and
  /// the request times out. If you make the request again with the same request
  /// ID, the server can check if the original operation with the same request
  /// ID was received, and if so, ignores the second request. This prevents
  /// clients from accidentally creating duplicate commitments. The request ID
  /// must be a valid UUID with the exception that zero UUID is not supported
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single RegionalEndpoint.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the RegionalEndpoint resource to get. Format:
  /// `projects/{project}/locations/{location}/regionalEndpoints/{regional_endpoint}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/regionalEndpoints/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RegionalEndpoint].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RegionalEndpoint> get(
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
    return RegionalEndpoint.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists RegionalEndpoints in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource's name of the RegionalEndpoint.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters the results listed in the
  /// response.
  ///
  /// [orderBy] - Sort the results by a certain order.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRegionalEndpointsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRegionalEndpointsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/regionalEndpoints';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRegionalEndpointsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsRemoteTransportProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRemoteTransportProfilesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single RemoteTransportProfile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/remoteTransportProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemoteTransportProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemoteTransportProfile> get(
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
    return RemoteTransportProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists RemoteTransportProfiles in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListRemoteTransportProfilesRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
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
  /// Completes with a [ListRemoteTransportProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRemoteTransportProfilesResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/remoteTransportProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRemoteTransportProfilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsServiceConnectionPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServiceConnectionPoliciesResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// [autoSubnetworkConfig_allocRangeSpace] - Optional. The space where we
  /// search for a free range to create a subnetwork. It can be narrow down or
  /// pick a different space. This is in standard CIDR format. If not specified,
  /// “10.0.0.0/8” is used. Only eligible for IPV4_ONLY and IPV4_IPV6
  /// subnetwork.
  ///
  /// [autoSubnetworkConfig_ipStack] - Optional. The requested IP stack for the
  /// subnetwork. If not specified, IPv4 is used.
  /// Possible string values are:
  /// - "SUBNET_IP_STACK_UNSPECIFIED" : Default value. Will create an IPV4_ONLY
  /// subnetwork by default.
  /// - "IPV4_ONLY" : Will create an IPV4_ONLY subnetwork.
  /// - "IPV6_ONLY" : Will create an IPV6_ONLY subnetwork.
  /// - "IPV4_IPV6" : Will use IPv4 and IPv6 (dual stack).
  ///
  /// [autoSubnetworkConfig_prefixLength] - Optional. The desired prefix length
  /// for the subnet's IP address range. E.g., 24 for a /24. The actual range is
  /// allocated from available space. If not specified, 24 is used. Only
  /// eligible for IPV4_ONLY and IPV4_IPV6 subnetwork.
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
  /// [subnetworkMode] - Optional. If this field is not set, USER_PROVIDED is
  /// the inferred value to use.
  /// Possible string values are:
  /// - "SUBNETWORK_MODE_UNSPECIFIED" : The default value if the enum is unset.
  /// Note user is not allowed to set the subnetwork mode to this value.
  /// - "USER_PROVIDED" : Subnetworks are provided from the user input.
  /// - "AUTO_CREATED" : Subnetwork list is empty from the user input. A
  /// subnetwork will be created automatically.
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
    core.String? autoSubnetworkConfig_allocRangeSpace,
    core.String? autoSubnetworkConfig_ipStack,
    core.int? autoSubnetworkConfig_prefixLength,
    core.String? requestId,
    core.String? serviceConnectionPolicyId,
    core.String? subnetworkMode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (autoSubnetworkConfig_allocRangeSpace != null)
        'autoSubnetworkConfig.allocRangeSpace': [
          autoSubnetworkConfig_allocRangeSpace,
        ],
      if (autoSubnetworkConfig_ipStack != null)
        'autoSubnetworkConfig.ipStack': [autoSubnetworkConfig_ipStack],
      if (autoSubnetworkConfig_prefixLength != null)
        'autoSubnetworkConfig.prefixLength': [
          '${autoSubnetworkConfig_prefixLength}',
        ],
      if (requestId != null) 'requestId': [requestId],
      if (serviceConnectionPolicyId != null)
        'serviceConnectionPolicyId': [serviceConnectionPolicyId],
      if (subnetworkMode != null) 'subnetworkMode': [subnetworkMode],
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<Spoke> get(core.String name, {core.String? $fields}) async {
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsTransportsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTransportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Transport in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
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
  /// [transportId] - Required. Id of the requesting object
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
    Transport request,
    core.String parent, {
    core.String? requestId,
    core.String? transportId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (transportId != null) 'transportId': [transportId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/transports';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single Transport.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transports/\[^/\]+$`.
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single Transport.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Transport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Transport> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Transport.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Transports in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListTransportsRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
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
  /// Completes with a [ListTransportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTransportsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/transports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTransportsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Transport.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the resource, see google.aip.dev/122 for
  /// resource naming.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/transports/\[^/\]+$`.
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
  /// overwritten in the Transport resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields present in the request will be overwritten.
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
    Transport request,
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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

  AcceptHubSpokeRequest({this.requestId, this.spokeUri});

  AcceptHubSpokeRequest.fromJson(core.Map json_)
    : this(
        requestId: json_['requestId'] as core.String?,
        spokeUri: json_['spokeUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestId != null) 'requestId': requestId!,
    if (spokeUri != null) 'spokeUri': spokeUri!,
  };
}

/// The request for HubService.AcceptSpokeUpdate.
class AcceptSpokeUpdateRequest {
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

  /// The etag of the spoke to accept update.
  ///
  /// Required.
  core.String? spokeEtag;

  /// The URI of the spoke to accept update.
  ///
  /// Required.
  core.String? spokeUri;

  AcceptSpokeUpdateRequest({this.requestId, this.spokeEtag, this.spokeUri});

  AcceptSpokeUpdateRequest.fromJson(core.Map json_)
    : this(
        requestId: json_['requestId'] as core.String?,
        spokeEtag: json_['spokeEtag'] as core.String?,
        spokeUri: json_['spokeUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestId != null) 'requestId': requestId!,
    if (spokeEtag != null) 'spokeEtag': spokeEtag!,
    if (spokeUri != null) 'spokeUri': spokeUri!,
  };
}

/// Range auto-allocation options, to be optionally used when CIDR block is not
/// explicitly set.
class AllocationOptions {
  /// Allocation strategy Not setting this field when the allocation is
  /// requested means an implementation defined strategy is used.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ALLOCATION_STRATEGY_UNSPECIFIED" : Unspecified is the only valid option
  /// when the range is specified explicitly by ip_cidr_range field. Otherwise
  /// unspefified means using the default strategy.
  /// - "RANDOM" : Random strategy, the legacy algorithm, used for backwards
  /// compatibility. This allocation strategy remains efficient in the case of
  /// concurrent allocation requests in the same peered network space and
  /// doesn't require providing the level of concurrency in an explicit
  /// parameter, but it is prone to fragmenting available address space.
  /// - "FIRST_AVAILABLE" : Pick the first available address range. This
  /// strategy is deterministic and the result is easy to predict.
  /// - "RANDOM_FIRST_N_AVAILABLE" : Pick an arbitrary range out of the first N
  /// available ones. The N will be set in the
  /// first_available_ranges_lookup_size field. This strategy should be used
  /// when concurrent allocation requests are made in the same space of peered
  /// networks while the fragmentation of the addrress space is reduced.
  /// - "FIRST_SMALLEST_FITTING" : Pick the smallest but fitting available
  /// range. This deterministic strategy minimizes fragmentation of the address
  /// space.
  core.String? allocationStrategy;

  /// This field must be set only when allocation_strategy is set to
  /// RANDOM_FIRST_N_AVAILABLE.
  ///
  /// The value should be the maximum expected parallelism of range creation
  /// requests issued to the same space of peered netwroks.
  ///
  /// Optional.
  core.int? firstAvailableRangesLookupSize;

  AllocationOptions({
    this.allocationStrategy,
    this.firstAvailableRangesLookupSize,
  });

  AllocationOptions.fromJson(core.Map json_)
    : this(
        allocationStrategy: json_['allocationStrategy'] as core.String?,
        firstAvailableRangesLookupSize:
            json_['firstAvailableRangesLookupSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocationStrategy != null) 'allocationStrategy': allocationStrategy!,
    if (firstAvailableRangesLookupSize != null)
      'firstAvailableRangesLookupSize': firstAvailableRangesLookupSize!,
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
typedef AuditLogConfig = $AuditLogConfig;

/// The auto-accept setting for a group controls whether proposed spokes are
/// automatically attached to the hub.
///
/// If auto-accept is enabled, the spoke immediately is attached to the hub and
/// becomes part of the group. In this case, the new spoke is in the ACTIVE
/// state. If auto-accept is disabled, the spoke goes to the INACTIVE state, and
/// it must be reviewed and accepted by a hub administrator.
class AutoAccept {
  /// A list of project ids or project numbers for which you want to enable
  /// auto-accept.
  ///
  /// The auto-accept setting is applied to spokes being created or updated in
  /// these projects.
  ///
  /// Optional.
  core.List<core.String>? autoAcceptProjects;

  AutoAccept({this.autoAcceptProjects});

  AutoAccept.fromJson(core.Map json_)
    : this(
        autoAcceptProjects:
            (json_['autoAcceptProjects'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoAcceptProjects != null) 'autoAcceptProjects': autoAcceptProjects!,
  };
}

/// Information for the automatically created subnetwork and its associated IR.
class AutoCreatedSubnetworkInfo {
  /// URI of the automatically created Internal Range.
  ///
  /// Only set if the subnetwork mode is AUTO_CREATED during creation.
  ///
  /// Output only.
  core.String? internalRange;

  /// URI of the automatically created Internal Range reference.
  ///
  /// Only set if the subnetwork mode is AUTO_CREATED during creation.
  ///
  /// Output only.
  core.String? internalRangeRef;

  /// URI of the automatically created subnetwork.
  ///
  /// Only set if the subnetwork mode is AUTO_CREATED during creation.
  ///
  /// Output only.
  core.String? subnetwork;

  /// URI of the automatically created subnetwork reference.
  ///
  /// Only set if the subnetwork mode is AUTO_CREATED during creation.
  ///
  /// Output only.
  core.String? subnetworkRef;

  AutoCreatedSubnetworkInfo({
    this.internalRange,
    this.internalRangeRef,
    this.subnetwork,
    this.subnetworkRef,
  });

  AutoCreatedSubnetworkInfo.fromJson(core.Map json_)
    : this(
        internalRange: json_['internalRange'] as core.String?,
        internalRangeRef: json_['internalRangeRef'] as core.String?,
        subnetwork: json_['subnetwork'] as core.String?,
        subnetworkRef: json_['subnetworkRef'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (internalRange != null) 'internalRange': internalRange!,
    if (internalRangeRef != null) 'internalRangeRef': internalRangeRef!,
    if (subnetwork != null) 'subnetwork': subnetwork!,
    if (subnetworkRef != null) 'subnetworkRef': subnetworkRef!,
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

/// Allow the producer to specify which consumers can connect to it.
class ConsumerPscConfig {
  /// The project ID or project number of the consumer project.
  ///
  /// This project is the one that the consumer uses to interact with the
  /// producer instance. From the perspective of a consumer who's created a
  /// producer instance, this is the project of the producer instance. Format:
  /// 'projects/' Eg. 'projects/consumer-project' or 'projects/1234'
  ///
  /// Required.
  core.String? consumerInstanceProject;

  /// This is used in PSC consumer ForwardingRule to control whether the PSC
  /// endpoint can be accessed from another region.
  core.bool? disableGlobalAccess;

  /// The requested IP version for the PSC connection.
  /// Possible string values are:
  /// - "IP_VERSION_UNSPECIFIED" : Default value. We will use IPv4 or IPv6
  /// depending on the IP version of first available subnetwork.
  /// - "IPV4" : Will use IPv4 only.
  /// - "IPV6" : Will use IPv6 only.
  core.String? ipVersion;

  /// The resource path of the consumer network where PSC connections are
  /// allowed to be created in.
  ///
  /// Note, this network does not need be in the ConsumerPscConfig.project in
  /// the case of SharedVPC. Example:
  /// projects/{projectNumOrId}/global/networks/{networkId}.
  core.String? network;

  /// Use producer_instance_metadata instead.
  ///
  /// An immutable identifier for the producer instance.
  ///
  /// Immutable. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? producerInstanceId;

  /// An immutable map for the producer instance metadata.
  ///
  /// Immutable.
  core.Map<core.String, core.String>? producerInstanceMetadata;

  /// The consumer project where PSC connections are allowed to be created in.
  core.String? project;

  /// A map to store mapping between customer vip and target service attachment.
  ///
  /// Only service attachment with producer specified ip addresses are stored
  /// here.
  ///
  /// Output only.
  core.Map<core.String, core.String>? serviceAttachmentIpAddressMap;

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
  /// - "CONSUMER_INSTANCE_PROJECT_NOT_ALLOWLISTED" : The consumer instance
  /// project is not in AllowedGoogleProducersResourceHierarchyLevels of the
  /// matching ServiceConnectionPolicy.
  core.String? state;

  ConsumerPscConfig({
    this.consumerInstanceProject,
    this.disableGlobalAccess,
    this.ipVersion,
    this.network,
    this.producerInstanceId,
    this.producerInstanceMetadata,
    this.project,
    this.serviceAttachmentIpAddressMap,
    this.state,
  });

  ConsumerPscConfig.fromJson(core.Map json_)
    : this(
        consumerInstanceProject:
            json_['consumerInstanceProject'] as core.String?,
        disableGlobalAccess: json_['disableGlobalAccess'] as core.bool?,
        ipVersion: json_['ipVersion'] as core.String?,
        network: json_['network'] as core.String?,
        producerInstanceId: json_['producerInstanceId'] as core.String?,
        producerInstanceMetadata: (json_['producerInstanceMetadata']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        project: json_['project'] as core.String?,
        serviceAttachmentIpAddressMap: (json_['serviceAttachmentIpAddressMap']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (consumerInstanceProject != null)
      'consumerInstanceProject': consumerInstanceProject!,
    if (disableGlobalAccess != null)
      'disableGlobalAccess': disableGlobalAccess!,
    if (ipVersion != null) 'ipVersion': ipVersion!,
    if (network != null) 'network': network!,
    if (producerInstanceId != null) 'producerInstanceId': producerInstanceId!,
    if (producerInstanceMetadata != null)
      'producerInstanceMetadata': producerInstanceMetadata!,
    if (project != null) 'project': project!,
    if (serviceAttachmentIpAddressMap != null)
      'serviceAttachmentIpAddressMap': serviceAttachmentIpAddressMap!,
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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

  /// The requested IP version for the PSC connection.
  /// Possible string values are:
  /// - "IP_VERSION_UNSPECIFIED" : Default value. We will use IPv4 or IPv6
  /// depending on the IP version of first available subnetwork.
  /// - "IPV4" : Will use IPv4 only.
  /// - "IPV6" : Will use IPv6 only.
  core.String? ipVersion;

  /// The consumer network whose PSC forwarding rule is connected to the service
  /// attachments in this service connection map.
  ///
  /// Note that the network could be on a different project (shared VPC).
  core.String? network;

  /// Use producer_instance_metadata instead.
  ///
  /// An immutable identifier for the producer instance.
  ///
  /// Immutable. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? producerInstanceId;

  /// An immutable map for the producer instance metadata.
  ///
  /// Immutable.
  core.Map<core.String, core.String>? producerInstanceMetadata;

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
  /// - "ACTIVE" : The connection has been created successfully. However, for
  /// the up-to-date connection status, please use the service attachment's
  /// "ConnectedEndpoint.status" as the source of truth.
  /// - "FAILED" : The connection is not functional since some resources on the
  /// connection fail to be created.
  /// - "CREATING" : The connection is being created.
  /// - "DELETING" : The connection is being deleted.
  /// - "CREATE_REPAIRING" : The connection is being repaired to complete
  /// creation.
  /// - "DELETE_REPAIRING" : The connection is being repaired to complete
  /// deletion.
  core.String? state;

  ConsumerPscConnection({
    this.error,
    this.errorInfo,
    this.errorType,
    this.forwardingRule,
    this.gceOperation,
    this.ip,
    this.ipVersion,
    this.network,
    this.producerInstanceId,
    this.producerInstanceMetadata,
    this.project,
    this.pscConnectionId,
    this.selectedSubnetwork,
    this.serviceAttachmentUri,
    this.state,
  });

  ConsumerPscConnection.fromJson(core.Map json_)
    : this(
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        errorInfo:
            json_.containsKey('errorInfo')
                ? GoogleRpcErrorInfo.fromJson(
                  json_['errorInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        errorType: json_['errorType'] as core.String?,
        forwardingRule: json_['forwardingRule'] as core.String?,
        gceOperation: json_['gceOperation'] as core.String?,
        ip: json_['ip'] as core.String?,
        ipVersion: json_['ipVersion'] as core.String?,
        network: json_['network'] as core.String?,
        producerInstanceId: json_['producerInstanceId'] as core.String?,
        producerInstanceMetadata: (json_['producerInstanceMetadata']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        project: json_['project'] as core.String?,
        pscConnectionId: json_['pscConnectionId'] as core.String?,
        selectedSubnetwork: json_['selectedSubnetwork'] as core.String?,
        serviceAttachmentUri: json_['serviceAttachmentUri'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (error != null) 'error': error!,
    if (errorInfo != null) 'errorInfo': errorInfo!,
    if (errorType != null) 'errorType': errorType!,
    if (forwardingRule != null) 'forwardingRule': forwardingRule!,
    if (gceOperation != null) 'gceOperation': gceOperation!,
    if (ip != null) 'ip': ip!,
    if (ipVersion != null) 'ipVersion': ipVersion!,
    if (network != null) 'network': network!,
    if (producerInstanceId != null) 'producerInstanceId': producerInstanceId!,
    if (producerInstanceMetadata != null)
      'producerInstanceMetadata': producerInstanceMetadata!,
    if (project != null) 'project': project!,
    if (pscConnectionId != null) 'pscConnectionId': pscConnectionId!,
    if (selectedSubnetwork != null) 'selectedSubnetwork': selectedSubnetwork!,
    if (serviceAttachmentUri != null)
      'serviceAttachmentUri': serviceAttachmentUri!,
    if (state != null) 'state': state!,
  };
}

/// The `Destination` resource.
///
/// It specifies the IP prefix and the associated autonomous system numbers
/// (ASN) that you want to include in a `MulticloudDataTransferConfig` resource.
class Destination {
  /// Time when the `Destination` resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of this resource.
  ///
  /// Optional.
  core.String? description;

  /// Unordered list.
  ///
  /// The list of `DestinationEndpoint` resources configured for the IP prefix.
  ///
  /// Required.
  core.List<DestinationEndpoint>? endpoints;

  /// The etag is computed by the server, and might be sent with update and
  /// delete requests so that the client has an up-to-date value before
  /// proceeding.
  core.String? etag;

  /// The IP prefix that represents your workload on another CSP.
  ///
  /// Required. Immutable.
  core.String? ipPrefix;

  /// User-defined labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the `Destination` resource. Format:
  /// `projects/{project}/locations/{location}/multicloudDataTransferConfigs/{multicloud_data_transfer_config}/destinations/{destination}`.
  core.String? name;

  /// The timeline of the expected `Destination` states or the current rest
  /// state.
  ///
  /// If a state change is expected, the value is `ADDING`, `DELETING` or
  /// `SUSPENDING`, depending on the action specified. Example:
  /// "state_timeline": { "states": \[ { // The time when the `Destination`
  /// resource will be activated. "effectiveTime": "2024-12-01T08:00:00Z",
  /// "state": "ADDING" }, { // The time when the `Destination` resource will be
  /// suspended. "effectiveTime": "2024-12-01T20:00:00Z", "state": "SUSPENDING"
  /// } \] }
  ///
  /// Output only.
  StateTimeline? stateTimeline;

  /// The Google-generated unique ID for the `Destination` resource.
  ///
  /// This value is unique across all `Destination` resources. If a resource is
  /// deleted and another with the same name is created, the new resource is
  /// assigned a different and unique ID.
  ///
  /// Output only.
  core.String? uid;

  /// Time when the `Destination` resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  Destination({
    this.createTime,
    this.description,
    this.endpoints,
    this.etag,
    this.ipPrefix,
    this.labels,
    this.name,
    this.stateTimeline,
    this.uid,
    this.updateTime,
  });

  Destination.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        endpoints:
            (json_['endpoints'] as core.List?)
                ?.map(
                  (value) => DestinationEndpoint.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        ipPrefix: json_['ipPrefix'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        stateTimeline:
            json_.containsKey('stateTimeline')
                ? StateTimeline.fromJson(
                  json_['stateTimeline'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (endpoints != null) 'endpoints': endpoints!,
    if (etag != null) 'etag': etag!,
    if (ipPrefix != null) 'ipPrefix': ipPrefix!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (stateTimeline != null) 'stateTimeline': stateTimeline!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The metadata for a `DestinationEndpoint` resource.
class DestinationEndpoint {
  /// The ASN of the remote IP prefix.
  ///
  /// Required.
  core.String? asn;

  /// The CSP of the remote IP prefix.
  ///
  /// Required.
  core.String? csp;

  /// The state of the `DestinationEndpoint` resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : An invalid state, which is the default case.
  /// - "VALID" : The `DestinationEndpoint` resource is valid.
  /// - "INVALID" : The `DestinationEndpoint` resource is invalid.
  core.String? state;

  /// Time when the `DestinationEndpoint` resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  DestinationEndpoint({this.asn, this.csp, this.state, this.updateTime});

  DestinationEndpoint.fromJson(core.Map json_)
    : this(
        asn: json_['asn'] as core.String?,
        csp: json_['csp'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (asn != null) 'asn': asn!,
    if (csp != null) 'csp': csp!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
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
  /// Default is "0.0.0.0/0" if protocol version is IPv4 and "::/0" if protocol
  /// version is IPv6.
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
  /// IPV4 and IPV6 is supported.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PROTOCOL_VERSION_UNSPECIFIED" : Default value.
  /// - "IPV4" : The PBR is for IPv4 internet protocol traffic.
  /// - "IPV6" : The PBR is for IPv6 internet protocol traffic.
  core.String? protocolVersion;

  /// The source IP range of outgoing packets that this policy-based route
  /// applies to.
  ///
  /// Default is "0.0.0.0/0" if protocol version is IPv4 and "::/0" if protocol
  /// version is IPv6.
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
        destRange: json_['destRange'] as core.String?,
        ipProtocol: json_['ipProtocol'] as core.String?,
        protocolVersion: json_['protocolVersion'] as core.String?,
        srcRange: json_['srcRange'] as core.String?,
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
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => GoogleLongrunningOperation.fromJson(
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
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
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
  /// Keys must match a regular expression of `a-z+` but should ideally be
  /// lowerCamelCase. Also, they must be limited to 64 characters in length.
  /// When identifying the current value of an exceeded limit, the units should
  /// be contained in the key, not the value. For example, rather than
  /// `{"instanceLimit": "100/request"}`, should be returned as,
  /// `{"instanceLimitPerRequest": "100"}`, if the client exceeds the number of
  /// instances that can be created in a single (batch) request.
  core.Map<core.String, core.String>? metadata;

  /// The reason of the error.
  ///
  /// This is a constant value that identifies the proximate cause of the error.
  /// Error reasons are unique within a particular domain of errors. This should
  /// be at most 63 characters and match a regular expression of `A-Z+[A-Z0-9]`,
  /// which represents UPPER_SNAKE_CASE.
  core.String? reason;

  GoogleRpcErrorInfo({this.domain, this.metadata, this.reason});

  GoogleRpcErrorInfo.fromJson(core.Map json_)
    : this(
        domain: json_['domain'] as core.String?,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        reason: json_['reason'] as core.String?,
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
typedef GoogleRpcStatus = $Status00;

/// A group represents a subset of spokes attached to a hub.
class Group {
  /// The auto-accept setting for this group.
  ///
  /// Optional.
  AutoAccept? autoAccept;

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

  /// The name of the route table that corresponds to this group.
  ///
  /// They use the following form:
  /// `projects/{project_number}/locations/global/hubs/{hub_id}/routeTables/{route_table_id}`
  ///
  /// Output only.
  core.String? routeTable;

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
  /// - "FAILED" : The resource is in an undefined state due to resource
  /// creation or deletion failure. You can try to delete the resource later or
  /// contact support for help.
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
    this.autoAccept,
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.routeTable,
    this.state,
    this.uid,
    this.updateTime,
  });

  Group.fromJson(core.Map json_)
    : this(
        autoAccept:
            json_.containsKey('autoAccept')
                ? AutoAccept.fromJson(
                  json_['autoAccept'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        routeTable: json_['routeTable'] as core.String?,
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoAccept != null) 'autoAccept': autoAccept!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (routeTable != null) 'routeTable': routeTable!,
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
  ///
  /// Optional.
  core.String? description;

  /// Whether Private Service Connect connection propagation is enabled for the
  /// hub.
  ///
  /// If true, Private Service Connect endpoints in VPC spokes attached to the
  /// hub are made accessible to other VPC spokes attached to the hub. The
  /// default value is false.
  ///
  /// Optional.
  core.bool? exportPsc;

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

  /// The policy mode of this hub.
  ///
  /// This field can be either PRESET or CUSTOM. If unspecified, the policy_mode
  /// defaults to PRESET.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "POLICY_MODE_UNSPECIFIED" : Policy mode is unspecified. It defaults to
  /// PRESET with preset_topology = MESH.
  /// - "PRESET" : Hub uses one of the preset topologies.
  core.String? policyMode;

  /// The topology implemented in this hub.
  ///
  /// Currently, this field is only used when policy_mode = PRESET. The
  /// available preset topologies are MESH and STAR. If preset_topology is
  /// unspecified and policy_mode = PRESET, the preset_topology defaults to
  /// MESH. When policy_mode = CUSTOM, the preset_topology is set to
  /// PRESET_TOPOLOGY_UNSPECIFIED.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRESET_TOPOLOGY_UNSPECIFIED" : Preset topology is unspecified. When
  /// policy_mode = PRESET, it defaults to MESH.
  /// - "MESH" : Mesh topology is implemented. Group `default` is automatically
  /// created. All spokes in the hub are added to group `default`.
  /// - "STAR" : Star topology is implemented. Two groups, `center` and `edge`,
  /// are automatically created along with hub creation. Spokes have to join one
  /// of the groups during creation.
  core.String? presetTopology;

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
  ///
  /// Output only.
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
  /// - "FAILED" : The resource is in an undefined state due to resource
  /// creation or deletion failure. You can try to delete the resource later or
  /// contact support for help.
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
    this.exportPsc,
    this.labels,
    this.name,
    this.policyMode,
    this.presetTopology,
    this.routeTables,
    this.routingVpcs,
    this.spokeSummary,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Hub.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        exportPsc: json_['exportPsc'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        policyMode: json_['policyMode'] as core.String?,
        presetTopology: json_['presetTopology'] as core.String?,
        routeTables:
            (json_['routeTables'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        routingVpcs:
            (json_['routingVpcs'] as core.List?)
                ?.map(
                  (value) => RoutingVPC.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        spokeSummary:
            json_.containsKey('spokeSummary')
                ? SpokeSummary.fromJson(
                  json_['spokeSummary'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        uniqueId: json_['uniqueId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (exportPsc != null) 'exportPsc': exportPsc!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (policyMode != null) 'policyMode': policyMode!,
    if (presetTopology != null) 'presetTopology': presetTopology!,
    if (routeTables != null) 'routeTables': routeTables!,
    if (routingVpcs != null) 'routingVpcs': routingVpcs!,
    if (spokeSummary != null) 'spokeSummary': spokeSummary!,
    if (state != null) 'state': state!,
    if (uniqueId != null) 'uniqueId': uniqueId!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A hub status entry represents the status of a set of propagated Private
/// Service Connect connections grouped by certain fields.
class HubStatusEntry {
  /// The number of propagated Private Service Connect connections with this
  /// status.
  ///
  /// If the `group_by` field was not set in the request message, the value of
  /// this field is 1.
  core.int? count;

  /// The fields that this entry is grouped by.
  ///
  /// This has the same value as the `group_by` field in the request message.
  core.String? groupBy;

  /// The Private Service Connect propagation status.
  PscPropagationStatus? pscPropagationStatus;

  HubStatusEntry({this.count, this.groupBy, this.pscPropagationStatus});

  HubStatusEntry.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.int?,
        groupBy: json_['groupBy'] as core.String?,
        pscPropagationStatus:
            json_.containsKey('pscPropagationStatus')
                ? PscPropagationStatus.fromJson(
                  json_['pscPropagationStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (groupBy != null) 'groupBy': groupBy!,
    if (pscPropagationStatus != null)
      'pscPropagationStatus': pscPropagationStatus!,
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

  InterconnectAttachment({this.region});

  InterconnectAttachment.fromJson(core.Map json_)
    : this(region: json_['region'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (region != null) 'region': region!,
  };
}

/// The internal range resource for IPAM operations within a VPC network.
///
/// Used to represent a private address range along with behavioral
/// characteristics of that range (its usage and peering behavior). Networking
/// resources can link to this range if they are created as belonging to it.
class InternalRange {
  /// Range auto-allocation options, may be set only when auto-allocation is
  /// selected by not setting ip_cidr_range (and setting prefix_length).
  ///
  /// Optional.
  AllocationOptions? allocationOptions;

  /// Time when the internal range was created.
  core.String? createTime;

  /// A description of this resource.
  ///
  /// Optional.
  core.String? description;

  /// ExcludeCidrRanges flag.
  ///
  /// Specifies a set of CIDR blocks that allows exclusion of particular CIDR
  /// ranges from the auto-allocation process, without having to reserve these
  /// blocks
  ///
  /// Optional.
  core.List<core.String>? excludeCidrRanges;

  /// Immutable ranges cannot have their fields modified, except for labels and
  /// description.
  ///
  /// Optional.
  core.bool? immutable;

  /// The IP range that this internal range defines.
  ///
  /// NOTE: IPv6 ranges are limited to usage=EXTERNAL_TO_VPC and
  /// peering=FOR_SELF. NOTE: For IPv6 Ranges this field is compulsory, i.e. the
  /// address range must be specified explicitly.
  ///
  /// Optional.
  core.String? ipCidrRange;

  /// User-defined labels.
  core.Map<core.String, core.String>? labels;

  /// Must be present if usage is set to FOR_MIGRATION.
  ///
  /// Optional.
  Migration? migration;

  /// Identifier.
  ///
  /// The name of an internal range. Format:
  /// projects/{project}/locations/{location}/internalRanges/{internal_range}
  /// See: https://google.aip.dev/122#fields-representing-resource-names
  core.String? name;

  /// The URL or resource ID of the network in which to reserve the internal
  /// range.
  ///
  /// The network cannot be deleted if there are any reserved internal ranges
  /// referring to it. Legacy networks are not supported. For example:
  /// https://www.googleapis.com/compute/v1/projects/{project}/locations/global/networks/{network}
  /// projects/{project}/locations/global/networks/{network} {network}
  ///
  /// Immutable.
  core.String? network;

  /// Types of resources that are allowed to overlap with the current internal
  /// range.
  ///
  /// Optional.
  core.List<core.String>? overlaps;

  /// The type of peering set for this internal range.
  ///
  /// Optional.
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
  /// Can be set when trying to create an IPv4 reservation that automatically
  /// finds a free range of the given size. If both ip_cidr_range and
  /// prefix_length are set, there is an error if the range sizes do not match.
  /// Can also be used during updates to change the range size. NOTE: For IPv6
  /// this field only works if ip_cidr_range is set as well, and both fields
  /// must match. In other words, with IPv6 this field only works as a redundant
  /// parameter.
  ///
  /// Optional.
  core.int? prefixLength;

  /// Can be set to narrow down or pick a different address space while
  /// searching for a free range.
  ///
  /// If not set, defaults to the \["10.0.0.0/8", "172.16.0.0/12",
  /// "192.168.0.0/16"\] address space (for auto-mode networks, the "10.0.0.0/9"
  /// range is used instead of "10.0.0.0/8"). This can be used to target the
  /// search in other rfc-1918 address spaces like "172.16.0.0/12" and
  /// "192.168.0.0/16" or non-rfc-1918 address spaces used in the VPC.
  ///
  /// Optional.
  core.List<core.String>? targetCidrRange;

  /// Time when the internal range was updated.
  core.String? updateTime;

  /// The type of usage set for this InternalRange.
  ///
  /// Optional.
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
  /// - "FOR_MIGRATION" : Ranges created FOR_MIGRATION can be used to lock a
  /// CIDR range between a source and target subnet. If usage is set to
  /// FOR_MIGRATION, the peering value has to be set to FOR_SELF or default to
  /// FOR_SELF when unset.
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
    this.allocationOptions,
    this.createTime,
    this.description,
    this.excludeCidrRanges,
    this.immutable,
    this.ipCidrRange,
    this.labels,
    this.migration,
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
        allocationOptions:
            json_.containsKey('allocationOptions')
                ? AllocationOptions.fromJson(
                  json_['allocationOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        excludeCidrRanges:
            (json_['excludeCidrRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        immutable: json_['immutable'] as core.bool?,
        ipCidrRange: json_['ipCidrRange'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        migration:
            json_.containsKey('migration')
                ? Migration.fromJson(
                  json_['migration'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        overlaps:
            (json_['overlaps'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        peering: json_['peering'] as core.String?,
        prefixLength: json_['prefixLength'] as core.int?,
        targetCidrRange:
            (json_['targetCidrRange'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
        usage: json_['usage'] as core.String?,
        users:
            (json_['users'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocationOptions != null) 'allocationOptions': allocationOptions!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (excludeCidrRanges != null) 'excludeCidrRanges': excludeCidrRanges!,
    if (immutable != null) 'immutable': immutable!,
    if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
    if (labels != null) 'labels': labels!,
    if (migration != null) 'migration': migration!,
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
  /// Hub routes fully encompassed by include import ranges are included during
  /// import from hub.
  ///
  /// Optional.
  core.List<core.String>? includeImportRanges;

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
    this.includeImportRanges,
    this.siteToSiteDataTransfer,
    this.uris,
    this.vpcNetwork,
  });

  LinkedInterconnectAttachments.fromJson(core.Map json_)
    : this(
        includeImportRanges:
            (json_['includeImportRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        siteToSiteDataTransfer: json_['siteToSiteDataTransfer'] as core.bool?,
        uris:
            (json_['uris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        vpcNetwork: json_['vpcNetwork'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (includeImportRanges != null)
      'includeImportRanges': includeImportRanges!,
    if (siteToSiteDataTransfer != null)
      'siteToSiteDataTransfer': siteToSiteDataTransfer!,
    if (uris != null) 'uris': uris!,
    if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
  };
}

class LinkedProducerVpcNetwork {
  /// IP ranges encompassing the subnets to be excluded from peering.
  ///
  /// Optional.
  core.List<core.String>? excludeExportRanges;

  /// IP ranges allowed to be included from peering.
  ///
  /// Optional.
  core.List<core.String>? includeExportRanges;

  /// The URI of the Service Consumer VPC that the Producer VPC is peered with.
  ///
  /// Immutable.
  core.String? network;

  /// The name of the VPC peering between the Service Consumer VPC and the
  /// Producer VPC (defined in the Tenant project) which is added to the NCC
  /// hub.
  ///
  /// This peering must be in ACTIVE state.
  ///
  /// Immutable.
  core.String? peering;

  /// The URI of the Producer VPC.
  ///
  /// Output only.
  core.String? producerNetwork;

  /// The proposed exclude export IP ranges waiting for hub administration's
  /// approval.
  ///
  /// Output only.
  core.List<core.String>? proposedExcludeExportRanges;

  /// The proposed include export IP ranges waiting for hub administration's
  /// approval.
  ///
  /// Output only.
  core.List<core.String>? proposedIncludeExportRanges;

  /// The Service Consumer Network spoke.
  ///
  /// Output only.
  core.String? serviceConsumerVpcSpoke;

  LinkedProducerVpcNetwork({
    this.excludeExportRanges,
    this.includeExportRanges,
    this.network,
    this.peering,
    this.producerNetwork,
    this.proposedExcludeExportRanges,
    this.proposedIncludeExportRanges,
    this.serviceConsumerVpcSpoke,
  });

  LinkedProducerVpcNetwork.fromJson(core.Map json_)
    : this(
        excludeExportRanges:
            (json_['excludeExportRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        includeExportRanges:
            (json_['includeExportRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        network: json_['network'] as core.String?,
        peering: json_['peering'] as core.String?,
        producerNetwork: json_['producerNetwork'] as core.String?,
        proposedExcludeExportRanges:
            (json_['proposedExcludeExportRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        proposedIncludeExportRanges:
            (json_['proposedIncludeExportRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        serviceConsumerVpcSpoke:
            json_['serviceConsumerVpcSpoke'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (excludeExportRanges != null)
      'excludeExportRanges': excludeExportRanges!,
    if (includeExportRanges != null)
      'includeExportRanges': includeExportRanges!,
    if (network != null) 'network': network!,
    if (peering != null) 'peering': peering!,
    if (producerNetwork != null) 'producerNetwork': producerNetwork!,
    if (proposedExcludeExportRanges != null)
      'proposedExcludeExportRanges': proposedExcludeExportRanges!,
    if (proposedIncludeExportRanges != null)
      'proposedIncludeExportRanges': proposedIncludeExportRanges!,
    if (serviceConsumerVpcSpoke != null)
      'serviceConsumerVpcSpoke': serviceConsumerVpcSpoke!,
  };
}

/// A collection of router appliance instances.
///
/// If you configure multiple router appliance instances to receive data from
/// the same set of sites outside of Google Cloud, we recommend that you
/// associate those instances with the same spoke.
class LinkedRouterApplianceInstances {
  /// Hub routes fully encompassed by include import ranges are included during
  /// import from hub.
  ///
  /// Optional.
  core.List<core.String>? includeImportRanges;

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
    this.includeImportRanges,
    this.instances,
    this.siteToSiteDataTransfer,
    this.vpcNetwork,
  });

  LinkedRouterApplianceInstances.fromJson(core.Map json_)
    : this(
        includeImportRanges:
            (json_['includeImportRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        instances:
            (json_['instances'] as core.List?)
                ?.map(
                  (value) => RouterApplianceInstance.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        siteToSiteDataTransfer: json_['siteToSiteDataTransfer'] as core.bool?,
        vpcNetwork: json_['vpcNetwork'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (includeImportRanges != null)
      'includeImportRanges': includeImportRanges!,
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

  /// IP ranges allowed to be included from peering.
  ///
  /// Optional.
  core.List<core.String>? includeExportRanges;

  /// The list of Producer VPC spokes that this VPC spoke is a service consumer
  /// VPC spoke for.
  ///
  /// These producer VPCs are connected through VPC peering to this spoke's
  /// backing VPC network. Because they are directly connected through VPC
  /// peering, NCC export filters do not apply between the service consumer VPC
  /// spoke and any of its producer VPC spokes. This VPC spoke cannot be deleted
  /// as long as any of these producer VPC spokes are connected to the NCC Hub.
  ///
  /// Output only.
  core.List<core.String>? producerVpcSpokes;

  /// The proposed exclude export IP ranges waiting for hub administration's
  /// approval.
  ///
  /// Output only.
  core.List<core.String>? proposedExcludeExportRanges;

  /// The proposed include export IP ranges waiting for hub administration's
  /// approval.
  ///
  /// Output only.
  core.List<core.String>? proposedIncludeExportRanges;

  /// The URI of the VPC network resource.
  ///
  /// Required.
  core.String? uri;

  LinkedVpcNetwork({
    this.excludeExportRanges,
    this.includeExportRanges,
    this.producerVpcSpokes,
    this.proposedExcludeExportRanges,
    this.proposedIncludeExportRanges,
    this.uri,
  });

  LinkedVpcNetwork.fromJson(core.Map json_)
    : this(
        excludeExportRanges:
            (json_['excludeExportRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        includeExportRanges:
            (json_['includeExportRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        producerVpcSpokes:
            (json_['producerVpcSpokes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        proposedExcludeExportRanges:
            (json_['proposedExcludeExportRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        proposedIncludeExportRanges:
            (json_['proposedIncludeExportRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (excludeExportRanges != null)
      'excludeExportRanges': excludeExportRanges!,
    if (includeExportRanges != null)
      'includeExportRanges': includeExportRanges!,
    if (producerVpcSpokes != null) 'producerVpcSpokes': producerVpcSpokes!,
    if (proposedExcludeExportRanges != null)
      'proposedExcludeExportRanges': proposedExcludeExportRanges!,
    if (proposedIncludeExportRanges != null)
      'proposedIncludeExportRanges': proposedIncludeExportRanges!,
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
  /// Hub routes fully encompassed by include import ranges are included during
  /// import from hub.
  ///
  /// Optional.
  core.List<core.String>? includeImportRanges;

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
    this.includeImportRanges,
    this.siteToSiteDataTransfer,
    this.uris,
    this.vpcNetwork,
  });

  LinkedVpnTunnels.fromJson(core.Map json_)
    : this(
        includeImportRanges:
            (json_['includeImportRanges'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        siteToSiteDataTransfer: json_['siteToSiteDataTransfer'] as core.bool?,
        uris:
            (json_['uris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        vpcNetwork: json_['vpcNetwork'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (includeImportRanges != null)
      'includeImportRanges': includeImportRanges!,
    if (siteToSiteDataTransfer != null)
      'siteToSiteDataTransfer': siteToSiteDataTransfer!,
    if (uris != null) 'uris': uris!,
    if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
  };
}

/// Response message to list `Destination` resources.
class ListDestinationsResponse {
  /// The list of `Destination` resources to be listed.
  core.List<Destination>? destinations;

  /// The next page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListDestinationsResponse({
    this.destinations,
    this.nextPageToken,
    this.unreachable,
  });

  ListDestinationsResponse.fromJson(core.Map json_)
    : this(
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => Destination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destinations != null) 'destinations': destinations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
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

  ListGroupsResponse({this.groups, this.nextPageToken, this.unreachable});

  ListGroupsResponse.fromJson(core.Map json_)
    : this(
        groups:
            (json_['groups'] as core.List?)
                ?.map(
                  (value) => Group.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

  ListHubSpokesResponse({this.nextPageToken, this.spokes, this.unreachable});

  ListHubSpokesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        spokes:
            (json_['spokes'] as core.List?)
                ?.map(
                  (value) => Spoke.fromJson(
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

  ListHubsResponse({this.hubs, this.nextPageToken, this.unreachable});

  ListHubsResponse.fromJson(core.Map json_)
    : this(
        hubs:
            (json_['hubs'] as core.List?)
                ?.map(
                  (value) => Hub.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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
        internalRanges:
            (json_['internalRanges'] as core.List?)
                ?.map(
                  (value) => InternalRange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

/// Response message to list `MulticloudDataTransferConfig` resources.
class ListMulticloudDataTransferConfigsResponse {
  /// The list of `MulticloudDataTransferConfig` resources to be listed.
  core.List<MulticloudDataTransferConfig>? multicloudDataTransferConfigs;

  /// The next page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListMulticloudDataTransferConfigsResponse({
    this.multicloudDataTransferConfigs,
    this.nextPageToken,
    this.unreachable,
  });

  ListMulticloudDataTransferConfigsResponse.fromJson(core.Map json_)
    : this(
        multicloudDataTransferConfigs:
            (json_['multicloudDataTransferConfigs'] as core.List?)
                ?.map(
                  (value) => MulticloudDataTransferConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (multicloudDataTransferConfigs != null)
      'multicloudDataTransferConfigs': multicloudDataTransferConfigs!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message to list the services in your project in regions that are
/// eligible for Data Transfer Essentials configuration.
class ListMulticloudDataTransferSupportedServicesResponse {
  /// The list of supported services.
  core.List<MulticloudDataTransferSupportedService>?
  multicloudDataTransferSupportedServices;

  /// The next page token.
  core.String? nextPageToken;

  ListMulticloudDataTransferSupportedServicesResponse({
    this.multicloudDataTransferSupportedServices,
    this.nextPageToken,
  });

  ListMulticloudDataTransferSupportedServicesResponse.fromJson(core.Map json_)
    : this(
        multicloudDataTransferSupportedServices:
            (json_['multicloudDataTransferSupportedServices'] as core.List?)
                ?.map(
                  (value) => MulticloudDataTransferSupportedService.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (multicloudDataTransferSupportedServices != null)
      'multicloudDataTransferSupportedServices':
          multicloudDataTransferSupportedServices!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for PolicyBasedRoutingService.ListPolicyBasedRoutes method.
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
        nextPageToken: json_['nextPageToken'] as core.String?,
        policyBasedRoutes:
            (json_['policyBasedRoutes'] as core.List?)
                ?.map(
                  (value) => PolicyBasedRoute.fromJson(
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
    if (policyBasedRoutes != null) 'policyBasedRoutes': policyBasedRoutes!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response for ListRegionalEndpoints.
class ListRegionalEndpointsResponse {
  /// The next pagination token in the List response.
  ///
  /// It should be used as page_token for the following request. An empty value
  /// means no more result.
  core.String? nextPageToken;

  /// Regional endpoints to be returned.
  core.List<RegionalEndpoint>? regionalEndpoints;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListRegionalEndpointsResponse({
    this.nextPageToken,
    this.regionalEndpoints,
    this.unreachable,
  });

  ListRegionalEndpointsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        regionalEndpoints:
            (json_['regionalEndpoints'] as core.List?)
                ?.map(
                  (value) => RegionalEndpoint.fromJson(
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
    if (regionalEndpoints != null) 'regionalEndpoints': regionalEndpoints!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Message for response to listing RemoteTransportProfiles
class ListRemoteTransportProfilesResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of RemoteTransportProfiles.
  core.List<RemoteTransportProfile>? remoteTransportProfiles;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListRemoteTransportProfilesResponse({
    this.nextPageToken,
    this.remoteTransportProfiles,
    this.unreachable,
  });

  ListRemoteTransportProfilesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        remoteTransportProfiles:
            (json_['remoteTransportProfiles'] as core.List?)
                ?.map(
                  (value) => RemoteTransportProfile.fromJson(
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
    if (remoteTransportProfiles != null)
      'remoteTransportProfiles': remoteTransportProfiles!,
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
        nextPageToken: json_['nextPageToken'] as core.String?,
        routeTables:
            (json_['routeTables'] as core.List?)
                ?.map(
                  (value) => RouteTable.fromJson(
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

  ListRoutesResponse({this.nextPageToken, this.routes, this.unreachable});

  ListRoutesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        routes:
            (json_['routes'] as core.List?)
                ?.map(
                  (value) => Route.fromJson(
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
        nextPageToken: json_['nextPageToken'] as core.String?,
        serviceClasses:
            (json_['serviceClasses'] as core.List?)
                ?.map(
                  (value) => ServiceClass.fromJson(
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
        nextPageToken: json_['nextPageToken'] as core.String?,
        serviceConnectionMaps:
            (json_['serviceConnectionMaps'] as core.List?)
                ?.map(
                  (value) => ServiceConnectionMap.fromJson(
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
        nextPageToken: json_['nextPageToken'] as core.String?,
        serviceConnectionPolicies:
            (json_['serviceConnectionPolicies'] as core.List?)
                ?.map(
                  (value) => ServiceConnectionPolicy.fromJson(
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
        nextPageToken: json_['nextPageToken'] as core.String?,
        serviceConnectionTokens:
            (json_['serviceConnectionTokens'] as core.List?)
                ?.map(
                  (value) => ServiceConnectionToken.fromJson(
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

  ListSpokesResponse({this.nextPageToken, this.spokes, this.unreachable});

  ListSpokesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        spokes:
            (json_['spokes'] as core.List?)
                ?.map(
                  (value) => Spoke.fromJson(
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
    if (spokes != null) 'spokes': spokes!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Message for response to listing Transports.
class ListTransportsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of Transport.
  core.List<Transport>? transports;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListTransportsResponse({
    this.nextPageToken,
    this.transports,
    this.unreachable,
  });

  ListTransportsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        transports:
            (json_['transports'] as core.List?)
                ?.map(
                  (value) => Transport.fromJson(
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
    if (transports != null) 'transports': transports!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Specification for migration with source and target resource names.
class Migration {
  /// Resource path as an URI of the source resource, for example a subnet.
  ///
  /// The project for the source resource should match the project for the
  /// InternalRange. An example:
  /// /projects/{project}/regions/{region}/subnetworks/{subnet}
  ///
  /// Immutable.
  core.String? source;

  /// Resource path of the target resource.
  ///
  /// The target project can be different, as in the cases when migrating to
  /// peer networks. For example:
  /// /projects/{project}/regions/{region}/subnetworks/{subnet}
  ///
  /// Immutable.
  core.String? target;

  Migration({this.source, this.target});

  Migration.fromJson(core.Map json_)
    : this(
        source: json_['source'] as core.String?,
        target: json_['target'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (source != null) 'source': source!,
    if (target != null) 'target': target!,
  };
}

/// The `MulticloudDataTransferConfig` resource.
///
/// It lists the services that you configure for Data Transfer Essentials
/// billing and metering.
class MulticloudDataTransferConfig {
  /// Time when the `MulticloudDataTransferConfig` resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of this resource.
  ///
  /// Optional.
  core.String? description;

  /// The number of `Destination` resources in use with the
  /// `MulticloudDataTransferConfig` resource.
  ///
  /// Output only.
  core.int? destinationsActiveCount;

  /// The number of `Destination` resources configured for the
  /// `MulticloudDataTransferConfig` resource.
  ///
  /// Output only.
  core.int? destinationsCount;

  /// The etag is computed by the server, and might be sent with update and
  /// delete requests so that the client has an up-to-date value before
  /// proceeding.
  core.String? etag;

  /// User-defined labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the `MulticloudDataTransferConfig` resource. Format:
  /// `projects/{project}/locations/{location}/multicloudDataTransferConfigs/{multicloud_data_transfer_config}`.
  core.String? name;

  /// Maps services to their current or planned states.
  ///
  /// Service names are keys, and the associated values describe the state of
  /// the service. If a state change is expected, the value is either `ADDING`
  /// or `DELETING`, depending on the actions taken. Sample output: "services":
  /// { "big-query": { "states": \[ { "effectiveTime": "2024-12-12T08:00:00Z"
  /// "state": "ADDING", }, \] }, "cloud-storage": { "states": \[ { "state":
  /// "ACTIVE", } \] } }
  ///
  /// Optional.
  core.Map<core.String, StateTimeline>? services;

  /// The Google-generated unique ID for the `MulticloudDataTransferConfig`
  /// resource.
  ///
  /// This value is unique across all `MulticloudDataTransferConfig` resources.
  /// If a resource is deleted and another with the same name is created, the
  /// new resource is assigned a different and unique ID.
  ///
  /// Output only.
  core.String? uid;

  /// Time when the `MulticloudDataTransferConfig` resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  MulticloudDataTransferConfig({
    this.createTime,
    this.description,
    this.destinationsActiveCount,
    this.destinationsCount,
    this.etag,
    this.labels,
    this.name,
    this.services,
    this.uid,
    this.updateTime,
  });

  MulticloudDataTransferConfig.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        destinationsActiveCount: json_['destinationsActiveCount'] as core.int?,
        destinationsCount: json_['destinationsCount'] as core.int?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        services: (json_['services'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                StateTimeline.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (destinationsActiveCount != null)
      'destinationsActiveCount': destinationsActiveCount!,
    if (destinationsCount != null) 'destinationsCount': destinationsCount!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (services != null) 'services': services!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A service in your project in a region that is eligible for Data Transfer
/// Essentials configuration.
class MulticloudDataTransferSupportedService {
  /// Identifier.
  ///
  /// The name of the service.
  core.String? name;

  /// The network service tier or regional endpoint supported for the service.
  ///
  /// Output only.
  core.List<ServiceConfig>? serviceConfigs;

  MulticloudDataTransferSupportedService({this.name, this.serviceConfigs});

  MulticloudDataTransferSupportedService.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        serviceConfigs:
            (json_['serviceConfigs'] as core.List?)
                ?.map(
                  (value) => ServiceConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (serviceConfigs != null) 'serviceConfigs': serviceConfigs!,
  };
}

/// A route next hop that leads to an interconnect attachment resource.
class NextHopInterconnectAttachment {
  /// Indicates whether site-to-site data transfer is allowed for this
  /// interconnect attachment resource.
  ///
  /// Data transfer is available only in
  /// [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  core.bool? siteToSiteDataTransfer;

  /// The URI of the interconnect attachment resource.
  core.String? uri;

  /// The VPC network where this interconnect attachment is located.
  core.String? vpcNetwork;

  NextHopInterconnectAttachment({
    this.siteToSiteDataTransfer,
    this.uri,
    this.vpcNetwork,
  });

  NextHopInterconnectAttachment.fromJson(core.Map json_)
    : this(
        siteToSiteDataTransfer: json_['siteToSiteDataTransfer'] as core.bool?,
        uri: json_['uri'] as core.String?,
        vpcNetwork: json_['vpcNetwork'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (siteToSiteDataTransfer != null)
      'siteToSiteDataTransfer': siteToSiteDataTransfer!,
    if (uri != null) 'uri': uri!,
    if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
  };
}

/// A route next hop that leads to a Router appliance instance.
class NextHopRouterApplianceInstance {
  /// Indicates whether site-to-site data transfer is allowed for this Router
  /// appliance instance resource.
  ///
  /// Data transfer is available only in
  /// [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  core.bool? siteToSiteDataTransfer;

  /// The URI of the Router appliance instance.
  core.String? uri;

  /// The VPC network where this VM is located.
  core.String? vpcNetwork;

  NextHopRouterApplianceInstance({
    this.siteToSiteDataTransfer,
    this.uri,
    this.vpcNetwork,
  });

  NextHopRouterApplianceInstance.fromJson(core.Map json_)
    : this(
        siteToSiteDataTransfer: json_['siteToSiteDataTransfer'] as core.bool?,
        uri: json_['uri'] as core.String?,
        vpcNetwork: json_['vpcNetwork'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (siteToSiteDataTransfer != null)
      'siteToSiteDataTransfer': siteToSiteDataTransfer!,
    if (uri != null) 'uri': uri!,
    if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
  };
}

/// A route next hop that leads to a spoke resource.
class NextHopSpoke {
  /// Indicates whether site-to-site data transfer is allowed for this spoke
  /// resource.
  ///
  /// Data transfer is available only in
  /// [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  /// Whether this route is accessible to other hybrid spokes with site-to-site
  /// data transfer enabled. If this is false, the route is only accessible to
  /// VPC spokes of the connected Hub.
  core.bool? siteToSiteDataTransfer;

  /// The URI of the spoke resource.
  core.String? uri;

  NextHopSpoke({this.siteToSiteDataTransfer, this.uri});

  NextHopSpoke.fromJson(core.Map json_)
    : this(
        siteToSiteDataTransfer: json_['siteToSiteDataTransfer'] as core.bool?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (siteToSiteDataTransfer != null)
      'siteToSiteDataTransfer': siteToSiteDataTransfer!,
    if (uri != null) 'uri': uri!,
  };
}

/// A route next hop that leads to a VPN tunnel resource.
class NextHopVPNTunnel {
  /// Indicates whether site-to-site data transfer is allowed for this VPN
  /// tunnel resource.
  ///
  /// Data transfer is available only in
  /// [supported locations](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/locations).
  core.bool? siteToSiteDataTransfer;

  /// The URI of the VPN tunnel resource.
  core.String? uri;

  /// The VPC network where this VPN tunnel is located.
  core.String? vpcNetwork;

  NextHopVPNTunnel({this.siteToSiteDataTransfer, this.uri, this.vpcNetwork});

  NextHopVPNTunnel.fromJson(core.Map json_)
    : this(
        siteToSiteDataTransfer: json_['siteToSiteDataTransfer'] as core.bool?,
        uri: json_['uri'] as core.String?,
        vpcNetwork: json_['vpcNetwork'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (siteToSiteDataTransfer != null)
      'siteToSiteDataTransfer': siteToSiteDataTransfer!,
    if (uri != null) 'uri': uri!,
    if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
  };
}

class NextHopVpcNetwork {
  /// The URI of the VPC network resource
  core.String? uri;

  NextHopVpcNetwork({this.uri});

  NextHopVpcNetwork.fromJson(core.Map json_)
    : this(uri: json_['uri'] as core.String?);

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

/// Policy-based routes route L4 network traffic based on not just destination
/// IP address, but also source IP address, protocol, and more.
///
/// If a policy-based route conflicts with other types of routes, the
/// policy-based route always takes precedence.
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
  /// next hop. This effectively excludes matching packets being applied on
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

  /// VM instances that this policy-based route applies to.
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
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        filter:
            json_.containsKey('filter')
                ? Filter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        interconnectAttachment:
            json_.containsKey('interconnectAttachment')
                ? InterconnectAttachment.fromJson(
                  json_['interconnectAttachment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        nextHopIlbIp: json_['nextHopIlbIp'] as core.String?,
        nextHopOtherRoutes: json_['nextHopOtherRoutes'] as core.String?,
        priority: json_['priority'] as core.int?,
        selfLink: json_['selfLink'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        virtualMachine:
            json_.containsKey('virtualMachine')
                ? VirtualMachine.fromJson(
                  json_['virtualMachine']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        warnings:
            (json_['warnings'] as core.List?)
                ?.map(
                  (value) => Warnings.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
    if (nextHopOtherRoutes != null) 'nextHopOtherRoutes': nextHopOtherRoutes!,
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

  ProducerPscConfig({this.serviceAttachmentUri});

  ProducerPscConfig.fromJson(core.Map json_)
    : this(serviceAttachmentUri: json_['serviceAttachmentUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (serviceAttachmentUri != null)
      'serviceAttachmentUri': serviceAttachmentUri!,
  };
}

/// Configuration used for Private Service Connect connections.
///
/// Used when Infrastructure is PSC.
class PscConfig {
  /// List of Projects, Folders, or Organizations from where the Producer
  /// instance can be within.
  ///
  /// For example, a network administrator can provide both 'organizations/foo'
  /// and 'projects/bar' as allowed_google_producers_resource_hierarchy_levels.
  /// This allowlists this network to connect with any Producer instance within
  /// the 'foo' organization or the 'bar' project. By default,
  /// allowed_google_producers_resource_hierarchy_level is empty. The format for
  /// each allowed_google_producers_resource_hierarchy_level is / where is one
  /// of 'projects', 'folders', or 'organizations' and is either the ID or the
  /// number of the resource type. Format for each
  /// allowed_google_producers_resource_hierarchy_level value: 'projects/' or
  /// 'folders/' or 'organizations/' Eg. \[projects/my-project-id, projects/567,
  /// folders/891, organizations/123\]
  ///
  /// Optional.
  core.List<core.String>? allowedGoogleProducersResourceHierarchyLevel;

  /// Max number of PSC connections for this policy.
  ///
  /// Optional.
  core.String? limit;

  /// ProducerInstanceLocation is used to specify which authorization mechanism
  /// to use to determine which projects the Producer instance can be within.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRODUCER_INSTANCE_LOCATION_UNSPECIFIED" : Producer instance location is
  /// not specified. When this option is chosen, then the PSC connections
  /// created by this ServiceConnectionPolicy must be within the same project as
  /// the Producer instance. This is the default ProducerInstanceLocation value.
  /// To allow for PSC connections from this network to other networks, use the
  /// CUSTOM_RESOURCE_HIERARCHY_LEVELS option.
  /// - "CUSTOM_RESOURCE_HIERARCHY_LEVELS" : Producer instance must be within
  /// one of the values provided in
  /// allowed_google_producers_resource_hierarchy_level.
  core.String? producerInstanceLocation;

  /// The resource paths of subnetworks to use for IP address management.
  ///
  /// Example:
  /// projects/{projectNumOrId}/regions/{region}/subnetworks/{resourceId}.
  core.List<core.String>? subnetworks;

  PscConfig({
    this.allowedGoogleProducersResourceHierarchyLevel,
    this.limit,
    this.producerInstanceLocation,
    this.subnetworks,
  });

  PscConfig.fromJson(core.Map json_)
    : this(
        allowedGoogleProducersResourceHierarchyLevel:
            (json_['allowedGoogleProducersResourceHierarchyLevel']
                    as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        limit: json_['limit'] as core.String?,
        producerInstanceLocation:
            json_['producerInstanceLocation'] as core.String?,
        subnetworks:
            (json_['subnetworks'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedGoogleProducersResourceHierarchyLevel != null)
      'allowedGoogleProducersResourceHierarchyLevel':
          allowedGoogleProducersResourceHierarchyLevel!,
    if (limit != null) 'limit': limit!,
    if (producerInstanceLocation != null)
      'producerInstanceLocation': producerInstanceLocation!,
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
  ///
  /// Deprecated, please use error_info instead.
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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? errorType;

  /// The last Compute Engine operation to setup PSC connection.
  core.String? gceOperation;

  /// The requested IP version for the PSC connection.
  /// Possible string values are:
  /// - "IP_VERSION_UNSPECIFIED" : Default value. We will use IPv4 or IPv6
  /// depending on the IP version of first available subnetwork.
  /// - "IPV4" : Will use IPv4 only.
  /// - "IPV6" : Will use IPv6 only.
  core.String? ipVersion;

  /// Use producer_instance_metadata instead.
  ///
  /// An immutable identifier for the producer instance.
  ///
  /// Immutable. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? producerInstanceId;

  /// An immutable map for the producer instance metadata.
  ///
  /// Immutable.
  core.Map<core.String, core.String>? producerInstanceMetadata;

  /// The PSC connection id of the PSC forwarding rule.
  core.String? pscConnectionId;

  /// The URI of the subnetwork selected to allocate IP address for this
  /// connection.
  ///
  /// Output only.
  core.String? selectedSubnetwork;

  /// The service class associated with this PSC Connection.
  ///
  /// The value is derived from the SCPolicy and matches the service class name
  /// provided by the customer.
  ///
  /// Output only.
  core.String? serviceClass;

  /// State of the PSC Connection
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : An invalid state as the default case.
  /// - "ACTIVE" : The connection has been created successfully. However, for
  /// the up-to-date connection status, please use the created forwarding rule's
  /// "PscConnectionStatus" as the source of truth.
  /// - "FAILED" : The connection is not functional since some resources on the
  /// connection fail to be created.
  /// - "CREATING" : The connection is being created.
  /// - "DELETING" : The connection is being deleted.
  /// - "CREATE_REPAIRING" : The connection is being repaired to complete
  /// creation.
  /// - "DELETE_REPAIRING" : The connection is being repaired to complete
  /// deletion.
  core.String? state;

  PscConnection({
    this.consumerAddress,
    this.consumerForwardingRule,
    this.consumerTargetProject,
    this.error,
    this.errorInfo,
    this.errorType,
    this.gceOperation,
    this.ipVersion,
    this.producerInstanceId,
    this.producerInstanceMetadata,
    this.pscConnectionId,
    this.selectedSubnetwork,
    this.serviceClass,
    this.state,
  });

  PscConnection.fromJson(core.Map json_)
    : this(
        consumerAddress: json_['consumerAddress'] as core.String?,
        consumerForwardingRule: json_['consumerForwardingRule'] as core.String?,
        consumerTargetProject: json_['consumerTargetProject'] as core.String?,
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        errorInfo:
            json_.containsKey('errorInfo')
                ? GoogleRpcErrorInfo.fromJson(
                  json_['errorInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        errorType: json_['errorType'] as core.String?,
        gceOperation: json_['gceOperation'] as core.String?,
        ipVersion: json_['ipVersion'] as core.String?,
        producerInstanceId: json_['producerInstanceId'] as core.String?,
        producerInstanceMetadata: (json_['producerInstanceMetadata']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        pscConnectionId: json_['pscConnectionId'] as core.String?,
        selectedSubnetwork: json_['selectedSubnetwork'] as core.String?,
        serviceClass: json_['serviceClass'] as core.String?,
        state: json_['state'] as core.String?,
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
    if (ipVersion != null) 'ipVersion': ipVersion!,
    if (producerInstanceId != null) 'producerInstanceId': producerInstanceId!,
    if (producerInstanceMetadata != null)
      'producerInstanceMetadata': producerInstanceMetadata!,
    if (pscConnectionId != null) 'pscConnectionId': pscConnectionId!,
    if (selectedSubnetwork != null) 'selectedSubnetwork': selectedSubnetwork!,
    if (serviceClass != null) 'serviceClass': serviceClass!,
    if (state != null) 'state': state!,
  };
}

/// The status of one or more propagated Private Service Connect connections in
/// a hub.
class PscPropagationStatus {
  /// The propagation status.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : The code is unspecified.
  /// - "READY" : The propagated Private Service Connect connection is ready.
  /// - "PROPAGATING" : The Private Service Connect connection is propagating.
  /// This is a transient state.
  /// - "ERROR_PRODUCER_PROPAGATED_CONNECTION_LIMIT_EXCEEDED" : The Private
  /// Service Connect connection propagation failed because the VPC network or
  /// the project of the target spoke has exceeded the connection limit set by
  /// the producer.
  /// - "ERROR_PRODUCER_NAT_IP_SPACE_EXHAUSTED" : The Private Service Connect
  /// connection propagation failed because the NAT IP subnet space has been
  /// exhausted. It is equivalent to the `Needs attention` status of the Private
  /// Service Connect connection. See
  /// https://cloud.google.com/vpc/docs/about-accessing-vpc-hosted-services-endpoints#connection-statuses.
  /// - "ERROR_PRODUCER_QUOTA_EXCEEDED" : The Private Service Connect connection
  /// propagation failed because the
  /// `PSC_ILB_CONSUMER_FORWARDING_RULES_PER_PRODUCER_NETWORK` quota in the
  /// producer VPC network has been exceeded.
  /// - "ERROR_CONSUMER_QUOTA_EXCEEDED" : The Private Service Connect connection
  /// propagation failed because the
  /// `PSC_PROPAGATED_CONNECTIONS_PER_VPC_NETWORK` quota in the consumer VPC
  /// network has been exceeded.
  core.String? code;

  /// The human-readable summary of the Private Service Connect connection
  /// propagation status.
  core.String? message;

  /// The name of the forwarding rule exported to the hub.
  core.String? sourceForwardingRule;

  /// The name of the group that the source spoke belongs to.
  core.String? sourceGroup;

  /// The name of the spoke that the source forwarding rule belongs to.
  core.String? sourceSpoke;

  /// The name of the group that the target spoke belongs to.
  core.String? targetGroup;

  /// The name of the spoke that the source forwarding rule propagates to.
  core.String? targetSpoke;

  PscPropagationStatus({
    this.code,
    this.message,
    this.sourceForwardingRule,
    this.sourceGroup,
    this.sourceSpoke,
    this.targetGroup,
    this.targetSpoke,
  });

  PscPropagationStatus.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        message: json_['message'] as core.String?,
        sourceForwardingRule: json_['sourceForwardingRule'] as core.String?,
        sourceGroup: json_['sourceGroup'] as core.String?,
        sourceSpoke: json_['sourceSpoke'] as core.String?,
        targetGroup: json_['targetGroup'] as core.String?,
        targetSpoke: json_['targetSpoke'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (message != null) 'message': message!,
    if (sourceForwardingRule != null)
      'sourceForwardingRule': sourceForwardingRule!,
    if (sourceGroup != null) 'sourceGroup': sourceGroup!,
    if (sourceSpoke != null) 'sourceSpoke': sourceSpoke!,
    if (targetGroup != null) 'targetGroup': targetGroup!,
    if (targetSpoke != null) 'targetSpoke': targetSpoke!,
  };
}

/// The response for HubService.QueryHubStatus.
class QueryHubStatusResponse {
  /// The list of hub status.
  core.List<HubStatusEntry>? hubStatusEntries;

  /// The token for the next page of the response.
  ///
  /// To see more results, use this value as the page_token for your next
  /// request. If this value is empty, there are no more results.
  core.String? nextPageToken;

  QueryHubStatusResponse({this.hubStatusEntries, this.nextPageToken});

  QueryHubStatusResponse.fromJson(core.Map json_)
    : this(
        hubStatusEntries:
            (json_['hubStatusEntries'] as core.List?)
                ?.map(
                  (value) => HubStatusEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (hubStatusEntries != null) 'hubStatusEntries': hubStatusEntries!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The RegionalEndpoint resource.
class RegionalEndpoint {
  /// The access type of this regional endpoint.
  ///
  /// This field is reflected in the PSC Forwarding Rule configuration to enable
  /// global access.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACCESS_TYPE_UNSPECIFIED" : An invalid type as the default case.
  /// - "GLOBAL" : This regional endpoint is accessible from all regions.
  /// - "REGIONAL" : This regional endpoint is only accessible from the same
  /// region where it resides.
  core.String? accessType;

  /// The IP Address of the Regional Endpoint.
  ///
  /// When no address is provided, an IP from the subnetwork is allocated. Use
  /// one of the following formats: * IPv4 address as in `10.0.0.1` * Address
  /// resource URI as in
  /// `projects/{project}/regions/{region}/addresses/{address_name}` for an IPv4
  /// or IPv6 address.
  ///
  /// Optional.
  core.String? address;

  /// Time when the RegionalEndpoint was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of this resource.
  ///
  /// Optional.
  core.String? description;

  /// The literal IP address of the PSC Forwarding Rule created on behalf of the
  /// customer.
  ///
  /// This field is deprecated. Use address instead.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? ipAddress;

  /// User-defined labels.
  core.Map<core.String, core.String>? labels;

  /// The name of a RegionalEndpoint.
  ///
  /// Pattern:
  /// `projects/{project}/locations/{location}/regionalEndpoints/^[-a-z0-9](?:[-a-z0-9]{0,44})[a-z0-9]$`.
  ///
  /// Output only.
  core.String? name;

  /// The name of the VPC network for this private regional endpoint.
  ///
  /// Format: `projects/{project}/global/networks/{network}`
  core.String? network;

  /// The resource reference of the PSC Forwarding Rule created on behalf of the
  /// customer.
  ///
  /// Format:
  /// `//compute.googleapis.com/projects/{project}/regions/{region}/forwardingRules/{forwarding_rule_name}`
  ///
  /// Output only.
  core.String? pscForwardingRule;

  /// The name of the subnetwork from which the IP address will be allocated.
  ///
  /// Format: `projects/{project}/regions/{region}/subnetworks/{subnetwork}`
  core.String? subnetwork;

  /// The service endpoint this private regional endpoint connects to.
  ///
  /// Format: `{apiname}.{region}.p.rep.googleapis.com` Example:
  /// "cloudkms.us-central1.p.rep.googleapis.com".
  ///
  /// Required.
  core.String? targetGoogleApi;

  /// Time when the RegionalEndpoint was updated.
  ///
  /// Output only.
  core.String? updateTime;

  RegionalEndpoint({
    this.accessType,
    this.address,
    this.createTime,
    this.description,
    this.ipAddress,
    this.labels,
    this.name,
    this.network,
    this.pscForwardingRule,
    this.subnetwork,
    this.targetGoogleApi,
    this.updateTime,
  });

  RegionalEndpoint.fromJson(core.Map json_)
    : this(
        accessType: json_['accessType'] as core.String?,
        address: json_['address'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        ipAddress: json_['ipAddress'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        pscForwardingRule: json_['pscForwardingRule'] as core.String?,
        subnetwork: json_['subnetwork'] as core.String?,
        targetGoogleApi: json_['targetGoogleApi'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessType != null) 'accessType': accessType!,
    if (address != null) 'address': address!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (ipAddress != null) 'ipAddress': ipAddress!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (network != null) 'network': network!,
    if (pscForwardingRule != null) 'pscForwardingRule': pscForwardingRule!,
    if (subnetwork != null) 'subnetwork': subnetwork!,
    if (targetGoogleApi != null) 'targetGoogleApi': targetGoogleApi!,
    if (updateTime != null) 'updateTime': updateTime!,
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

  RejectHubSpokeRequest({this.details, this.requestId, this.spokeUri});

  RejectHubSpokeRequest.fromJson(core.Map json_)
    : this(
        details: json_['details'] as core.String?,
        requestId: json_['requestId'] as core.String?,
        spokeUri: json_['spokeUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (details != null) 'details': details!,
    if (requestId != null) 'requestId': requestId!,
    if (spokeUri != null) 'spokeUri': spokeUri!,
  };
}

/// The request for HubService.RejectSpokeUpdate.
class RejectSpokeUpdateRequest {
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

  /// The etag of the spoke to reject update.
  ///
  /// Required.
  core.String? spokeEtag;

  /// The URI of the spoke to reject update.
  ///
  /// Required.
  core.String? spokeUri;

  RejectSpokeUpdateRequest({
    this.details,
    this.requestId,
    this.spokeEtag,
    this.spokeUri,
  });

  RejectSpokeUpdateRequest.fromJson(core.Map json_)
    : this(
        details: json_['details'] as core.String?,
        requestId: json_['requestId'] as core.String?,
        spokeEtag: json_['spokeEtag'] as core.String?,
        spokeUri: json_['spokeUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (details != null) 'details': details!,
    if (requestId != null) 'requestId': requestId!,
    if (spokeEtag != null) 'spokeEtag': spokeEtag!,
    if (spokeUri != null) 'spokeUri': spokeUri!,
  };
}

/// Message describing RemoteTransportProfile object.
class RemoteTransportProfile {
  /// Create time stamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the profile.
  ///
  /// Output only.
  core.String? description;

  /// Type of provisioning flows supported by this profile.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "KEY_PROVISIONING_FLOW_UNSPECIFIED" : Unspecified key provisioning flow.
  /// - "INPUT_ONLY" : The activationKey field on the Transport must be included
  /// in a create or patch request to establish connectivity.
  /// - "OUTPUT_ONLY" : The generatedActivationKey field is populated and must
  /// be read from the resource and passed into the other provider.
  /// - "INPUT_OR_OUTPUT" : Both activation key fields are allowed for
  /// establishing connectivity. If a key is input, the generated key is still
  /// present after provisioning is finished.
  core.String? flow;

  /// Labels as key value pairs.
  ///
  /// Output only.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Name of the resource in the format of $provider-$site.
  core.String? name;

  /// Order state for this profile.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "CLOSED" : Not enough capacity for customers to order.
  /// - "OPEN" : Enough capacity to fulfill an order.
  core.String? orderState;

  /// Name of the provider on the other end of this profile.
  ///
  /// E.g. “Amazon Web Services” or “Microsoft Azure”.
  ///
  /// Output only.
  core.String? provider;

  /// If the profile is a Cloud Service Provider with compute resources, this is
  /// populated with the region where connectivity is being established.
  ///
  /// If the profile provides facility-level selection, this is an identity of
  /// the facility any connections on this profile are going through.
  ///
  /// Output only.
  core.String? providerSite;

  /// GCP Region where this profile is available.
  ///
  /// Output only.
  core.String? region;

  /// Availability class that will be configured for this particular
  /// RemoteTransportProfile.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SERVICE_LEVEL_AVAILABILITY_UNSPECIFIED" : Unspecified service level
  /// availability.
  /// - "HIGH" : This represents a 99.9% service level on the availability of
  /// the configured connectivity.
  /// - "MAXIMUM" : This represents a 99.99% service level on the availability
  /// of the configured connectivity.
  core.String? sla;

  /// List of bandwidth enum values that are supported by this profile.
  ///
  /// Output only.
  core.List<core.String>? supportedBandwidths;

  /// Update time stamp.
  ///
  /// Output only.
  core.String? updateTime;

  RemoteTransportProfile({
    this.createTime,
    this.description,
    this.flow,
    this.labels,
    this.name,
    this.orderState,
    this.provider,
    this.providerSite,
    this.region,
    this.sla,
    this.supportedBandwidths,
    this.updateTime,
  });

  RemoteTransportProfile.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        flow: json_['flow'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        orderState: json_['orderState'] as core.String?,
        provider: json_['provider'] as core.String?,
        providerSite: json_['providerSite'] as core.String?,
        region: json_['region'] as core.String?,
        sla: json_['sla'] as core.String?,
        supportedBandwidths:
            (json_['supportedBandwidths'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (flow != null) 'flow': flow!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (orderState != null) 'orderState': orderState!,
    if (provider != null) 'provider': provider!,
    if (providerSite != null) 'providerSite': providerSite!,
    if (region != null) 'region': region!,
    if (sla != null) 'sla': sla!,
    if (supportedBandwidths != null)
      'supportedBandwidths': supportedBandwidths!,
    if (updateTime != null) 'updateTime': updateTime!,
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

  /// The next-hop VLAN attachment for packets on this route.
  ///
  /// Immutable.
  NextHopInterconnectAttachment? nextHopInterconnectAttachment;

  /// The next-hop Router appliance instance for packets on this route.
  ///
  /// Immutable.
  NextHopRouterApplianceInstance? nextHopRouterApplianceInstance;

  /// The next-hop spoke for packets on this route.
  ///
  /// Immutable.
  NextHopSpoke? nextHopSpoke;

  /// The destination VPC network for packets on this route.
  ///
  /// Immutable.
  NextHopVpcNetwork? nextHopVpcNetwork;

  /// The next-hop VPN tunnel for packets on this route.
  ///
  /// Immutable.
  NextHopVPNTunnel? nextHopVpnTunnel;

  /// The priority of this route.
  ///
  /// Priority is used to break ties in cases where a destination matches more
  /// than one route. In these cases the route with the lowest-numbered priority
  /// value wins.
  ///
  /// Output only.
  core.String? priority;

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
  /// - "FAILED" : The resource is in an undefined state due to resource
  /// creation or deletion failure. You can try to delete the resource later or
  /// contact support for help.
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
  /// - "DYNAMIC_ROUTE" : The route leads to a destination in a dynamic route.
  /// Dynamic routes are derived from Border Gateway Protocol (BGP)
  /// advertisements received from an NCC hybrid spoke.
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
    this.nextHopInterconnectAttachment,
    this.nextHopRouterApplianceInstance,
    this.nextHopSpoke,
    this.nextHopVpcNetwork,
    this.nextHopVpnTunnel,
    this.priority,
    this.spoke,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
  });

  Route.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        ipCidrRange: json_['ipCidrRange'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        location: json_['location'] as core.String?,
        name: json_['name'] as core.String?,
        nextHopInterconnectAttachment:
            json_.containsKey('nextHopInterconnectAttachment')
                ? NextHopInterconnectAttachment.fromJson(
                  json_['nextHopInterconnectAttachment']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        nextHopRouterApplianceInstance:
            json_.containsKey('nextHopRouterApplianceInstance')
                ? NextHopRouterApplianceInstance.fromJson(
                  json_['nextHopRouterApplianceInstance']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        nextHopSpoke:
            json_.containsKey('nextHopSpoke')
                ? NextHopSpoke.fromJson(
                  json_['nextHopSpoke'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        nextHopVpcNetwork:
            json_.containsKey('nextHopVpcNetwork')
                ? NextHopVpcNetwork.fromJson(
                  json_['nextHopVpcNetwork']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        nextHopVpnTunnel:
            json_.containsKey('nextHopVpnTunnel')
                ? NextHopVPNTunnel.fromJson(
                  json_['nextHopVpnTunnel']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        priority: json_['priority'] as core.String?,
        spoke: json_['spoke'] as core.String?,
        state: json_['state'] as core.String?,
        type: json_['type'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
    if (labels != null) 'labels': labels!,
    if (location != null) 'location': location!,
    if (name != null) 'name': name!,
    if (nextHopInterconnectAttachment != null)
      'nextHopInterconnectAttachment': nextHopInterconnectAttachment!,
    if (nextHopRouterApplianceInstance != null)
      'nextHopRouterApplianceInstance': nextHopRouterApplianceInstance!,
    if (nextHopSpoke != null) 'nextHopSpoke': nextHopSpoke!,
    if (nextHopVpcNetwork != null) 'nextHopVpcNetwork': nextHopVpcNetwork!,
    if (nextHopVpnTunnel != null) 'nextHopVpnTunnel': nextHopVpnTunnel!,
    if (priority != null) 'priority': priority!,
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
  /// - "FAILED" : The resource is in an undefined state due to resource
  /// creation or deletion failure. You can try to delete the resource later or
  /// contact support for help.
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
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
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

  RouterApplianceInstance({this.ipAddress, this.virtualMachine});

  RouterApplianceInstance.fromJson(core.Map json_)
    : this(
        ipAddress: json_['ipAddress'] as core.String?,
        virtualMachine: json_['virtualMachine'] as core.String?,
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

  RoutingVPC({this.requiredForNewSiteToSiteDataTransferSpokes, this.uri});

  RoutingVPC.fromJson(core.Map json_)
    : this(
        requiredForNewSiteToSiteDataTransferSpokes:
            json_['requiredForNewSiteToSiteDataTransferSpokes'] as core.bool?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requiredForNewSiteToSiteDataTransferSpokes != null)
      'requiredForNewSiteToSiteDataTransferSpokes':
          requiredForNewSiteToSiteDataTransferSpokes!,
    if (uri != null) 'uri': uri!,
  };
}

/// The ServiceClass resource.
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
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        serviceClass: json_['serviceClass'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
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

/// Specifies eligibility information for the service.
class ServiceConfig {
  /// The eligibility criteria for the service.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ELIGIBILITY_CRITERIA_UNSPECIFIED" : The service is not eligible for
  /// Data Transfer Essentials configuration. This is the default case.
  /// - "NETWORK_SERVICE_TIER_PREMIUM_ONLY" : The service is eligible for Data
  /// Transfer Essentials configuration only for Premium Tier.
  /// - "NETWORK_SERVICE_TIER_STANDARD_ONLY" : The service is eligible for Data
  /// Transfer Essentials configuration only for Standard Tier.
  /// - "REQUEST_ENDPOINT_REGIONAL_ENDPOINT_ONLY" : The service is eligible for
  /// Data Transfer Essentials configuration only for the regional endpoint.
  core.String? eligibilityCriteria;

  /// The end time for eligibility criteria support.
  ///
  /// If not specified, no planned end time is set.
  ///
  /// Output only.
  core.String? supportEndTime;

  ServiceConfig({this.eligibilityCriteria, this.supportEndTime});

  ServiceConfig.fromJson(core.Map json_)
    : this(
        eligibilityCriteria: json_['eligibilityCriteria'] as core.String?,
        supportEndTime: json_['supportEndTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eligibilityCriteria != null)
      'eligibilityCriteria': eligibilityCriteria!,
    if (supportEndTime != null) 'supportEndTime': supportEndTime!,
  };
}

/// The ServiceConnectionMap resource.
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
  /// networkconnectivity.serviceClasses.use IAM permission for the service
  /// class.
  core.String? serviceClass;

  /// The service class uri this ServiceConnectionMap is for.
  ///
  /// Output only.
  core.String? serviceClassUri;

  /// The token provided by the consumer.
  ///
  /// This token authenticates that the consumer can create a connection within
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
        consumerPscConfigs:
            (json_['consumerPscConfigs'] as core.List?)
                ?.map(
                  (value) => ConsumerPscConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        consumerPscConnections:
            (json_['consumerPscConnections'] as core.List?)
                ?.map(
                  (value) => ConsumerPscConnection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        infrastructure: json_['infrastructure'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        producerPscConfigs:
            (json_['producerPscConfigs'] as core.List?)
                ?.map(
                  (value) => ProducerPscConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        serviceClass: json_['serviceClass'] as core.String?,
        serviceClassUri: json_['serviceClassUri'] as core.String?,
        token: json_['token'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (consumerPscConfigs != null) 'consumerPscConfigs': consumerPscConfigs!,
    if (consumerPscConnections != null)
      'consumerPscConnections': consumerPscConnections!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (infrastructure != null) 'infrastructure': infrastructure!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (producerPscConfigs != null) 'producerPscConfigs': producerPscConfigs!,
    if (serviceClass != null) 'serviceClass': serviceClass!,
    if (serviceClassUri != null) 'serviceClassUri': serviceClassUri!,
    if (token != null) 'token': token!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The ServiceConnectionPolicy resource.
class ServiceConnectionPolicy {
  /// Information for the automatically created subnetwork and its associated
  /// IR.
  ///
  /// Output only.
  AutoCreatedSubnetworkInfo? autoCreatedSubnetInfo;

  /// Time when the ServiceConnectionPolicy was created.
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
  /// a prefix of gcp or google-cloud. For example, gcp-memorystore-redis or
  /// google-cloud-sql. 3rd party services do not. For example,
  /// test-service-a3dfcx.
  core.String? serviceClass;

  /// Time when the ServiceConnectionPolicy was updated.
  ///
  /// Output only.
  core.String? updateTime;

  ServiceConnectionPolicy({
    this.autoCreatedSubnetInfo,
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
        autoCreatedSubnetInfo:
            json_.containsKey('autoCreatedSubnetInfo')
                ? AutoCreatedSubnetworkInfo.fromJson(
                  json_['autoCreatedSubnetInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        infrastructure: json_['infrastructure'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        pscConfig:
            json_.containsKey('pscConfig')
                ? PscConfig.fromJson(
                  json_['pscConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pscConnections:
            (json_['pscConnections'] as core.List?)
                ?.map(
                  (value) => PscConnection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        serviceClass: json_['serviceClass'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoCreatedSubnetInfo != null)
      'autoCreatedSubnetInfo': autoCreatedSubnetInfo!,
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
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        token: json_['token'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
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
  ///
  /// Optional.
  core.String? description;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// The list of fields waiting for hub administration's approval.
  ///
  /// Optional.
  core.List<core.String>? fieldPathsPendingUpdate;

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
  ///
  /// Optional.
  LinkedInterconnectAttachments? linkedInterconnectAttachments;

  /// The linked producer VPC that is associated with the spoke.
  ///
  /// Optional.
  LinkedProducerVpcNetwork? linkedProducerVpcNetwork;

  /// Router appliance instances that are associated with the spoke.
  ///
  /// Optional.
  LinkedRouterApplianceInstances? linkedRouterApplianceInstances;

  /// VPC network that is associated with the spoke.
  ///
  /// Optional.
  LinkedVpcNetwork? linkedVpcNetwork;

  /// VPN tunnels that are associated with the spoke.
  ///
  /// Optional.
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
  /// - "PRODUCER_VPC_NETWORK" : Spokes that are backed by a producer VPC
  /// network.
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
  /// - "FAILED" : The resource is in an undefined state due to resource
  /// creation or deletion failure. You can try to delete the resource later or
  /// contact support for help.
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
    this.etag,
    this.fieldPathsPendingUpdate,
    this.group,
    this.hub,
    this.labels,
    this.linkedInterconnectAttachments,
    this.linkedProducerVpcNetwork,
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
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        fieldPathsPendingUpdate:
            (json_['fieldPathsPendingUpdate'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        group: json_['group'] as core.String?,
        hub: json_['hub'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        linkedInterconnectAttachments:
            json_.containsKey('linkedInterconnectAttachments')
                ? LinkedInterconnectAttachments.fromJson(
                  json_['linkedInterconnectAttachments']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        linkedProducerVpcNetwork:
            json_.containsKey('linkedProducerVpcNetwork')
                ? LinkedProducerVpcNetwork.fromJson(
                  json_['linkedProducerVpcNetwork']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        linkedRouterApplianceInstances:
            json_.containsKey('linkedRouterApplianceInstances')
                ? LinkedRouterApplianceInstances.fromJson(
                  json_['linkedRouterApplianceInstances']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        linkedVpcNetwork:
            json_.containsKey('linkedVpcNetwork')
                ? LinkedVpcNetwork.fromJson(
                  json_['linkedVpcNetwork']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        linkedVpnTunnels:
            json_.containsKey('linkedVpnTunnels')
                ? LinkedVpnTunnels.fromJson(
                  json_['linkedVpnTunnels']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        reasons:
            (json_['reasons'] as core.List?)
                ?.map(
                  (value) => StateReason.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        spokeType: json_['spokeType'] as core.String?,
        state: json_['state'] as core.String?,
        uniqueId: json_['uniqueId'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (fieldPathsPendingUpdate != null)
      'fieldPathsPendingUpdate': fieldPathsPendingUpdate!,
    if (group != null) 'group': group!,
    if (hub != null) 'hub': hub!,
    if (labels != null) 'labels': labels!,
    if (linkedInterconnectAttachments != null)
      'linkedInterconnectAttachments': linkedInterconnectAttachments!,
    if (linkedProducerVpcNetwork != null)
      'linkedProducerVpcNetwork': linkedProducerVpcNetwork!,
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
  /// - "FAILED" : The resource is in an undefined state due to resource
  /// creation or deletion failure. You can try to delete the resource later or
  /// contact support for help.
  core.String? state;

  SpokeStateCount({this.count, this.state});

  SpokeStateCount.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        state: json_['state'] as core.String?,
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
  /// - "UPDATE_PENDING_REVIEW" : The proposed spoke update is pending review.
  /// - "UPDATE_REJECTED" : The proposed spoke update has been rejected by the
  /// hub administrator.
  /// - "UPDATE_FAILED" : Network Connectivity Center encountered errors while
  /// accepting the spoke update.
  core.String? stateReasonCode;

  SpokeStateReasonCount({this.count, this.stateReasonCode});

  SpokeStateReasonCount.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        stateReasonCode: json_['stateReasonCode'] as core.String?,
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
        spokeStateCounts:
            (json_['spokeStateCounts'] as core.List?)
                ?.map(
                  (value) => SpokeStateCount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        spokeStateReasonCounts:
            (json_['spokeStateReasonCounts'] as core.List?)
                ?.map(
                  (value) => SpokeStateReasonCount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        spokeTypeCounts:
            (json_['spokeTypeCounts'] as core.List?)
                ?.map(
                  (value) => SpokeTypeCount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
  /// - "PRODUCER_VPC_NETWORK" : Spokes that are backed by a producer VPC
  /// network.
  core.String? spokeType;

  SpokeTypeCount({this.count, this.spokeType});

  SpokeTypeCount.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.String?,
        spokeType: json_['spokeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (spokeType != null) 'spokeType': spokeType!,
  };
}

/// The state and activation time details of the resource state.
class StateMetadata {
  /// Accompanies only the transient states, which include `ADDING`, `DELETING`,
  /// and `SUSPENDING`, to denote the time until which the transient state of
  /// the resource will be effective.
  ///
  /// For instance, if the state is `ADDING`, this field shows the time when the
  /// resource state transitions to `ACTIVE`.
  ///
  /// Output only.
  core.String? effectiveTime;

  /// The state of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : An invalid state, which is the default case.
  /// - "ADDING" : The resource is being added.
  /// - "ACTIVE" : The resource is in use.
  /// - "DELETING" : The resource is being deleted.
  /// - "SUSPENDING" : The resource is being suspended.
  /// - "SUSPENDED" : The resource is suspended and not in use.
  core.String? state;

  StateMetadata({this.effectiveTime, this.state});

  StateMetadata.fromJson(core.Map json_)
    : this(
        effectiveTime: json_['effectiveTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (effectiveTime != null) 'effectiveTime': effectiveTime!,
    if (state != null) 'state': state!,
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
  /// - "UPDATE_PENDING_REVIEW" : The proposed spoke update is pending review.
  /// - "UPDATE_REJECTED" : The proposed spoke update has been rejected by the
  /// hub administrator.
  /// - "UPDATE_FAILED" : Network Connectivity Center encountered errors while
  /// accepting the spoke update.
  core.String? code;

  /// Human-readable details about this reason.
  core.String? message;

  /// Additional information provided by the user in the RejectSpoke call.
  core.String? userDetails;

  StateReason({this.code, this.message, this.userDetails});

  StateReason.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        message: json_['message'] as core.String?,
        userDetails: json_['userDetails'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (message != null) 'message': message!,
    if (userDetails != null) 'userDetails': userDetails!,
  };
}

/// The timeline of the pending states for a resource.
class StateTimeline {
  /// The state and activation time details of the resource state.
  ///
  /// Output only.
  core.List<StateMetadata>? states;

  StateTimeline({this.states});

  StateTimeline.fromJson(core.Map json_)
    : this(
        states:
            (json_['states'] as core.List?)
                ?.map(
                  (value) => StateMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (states != null) 'states': states!,
  };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Message describing Transport object.
class Transport {
  /// Administrative state of the underlying connectivity.
  ///
  /// If set to true (default), connectivity should be available between your
  /// environments. If set to false, the connectivity over these links is
  /// disabled. Disabling your Transport does not affect billing, and retains
  /// the underlying network bandwidth associated with the connectivity.
  ///
  /// Optional.
  core.bool? adminEnabled;

  /// \[Preview only\] List of IP Prefixes that will be advertised to the remote
  /// provider.
  ///
  /// Both IPv4 and IPv6 addresses are supported.
  ///
  /// Optional.
  core.String? advertisedRoutes;

  /// Bandwidth of the Transport.
  ///
  /// This must be one of the supported bandwidths for the remote profile.
  ///
  /// Required.
  /// Possible string values are:
  /// - "BANDWIDTH_UNSPECIFIED" : Unspecified bandwidth.
  /// - "BPS_50M" : 50 Megabits per second.
  /// - "BPS_100M" : 100 Megabits per second.
  /// - "BPS_200M" : 200 Megabits per second.
  /// - "BPS_300M" : 300 Megabits per second.
  /// - "BPS_400M" : 400 Megabits per second.
  /// - "BPS_500M" : 500 Megabits per second.
  /// - "BPS_1G" : 1 Gigabit per second.
  /// - "BPS_2G" : 2 Gigabits per second.
  /// - "BPS_5G" : 5 Gigabits per second.
  /// - "BPS_10G" : 10 Gigabits per second.
  core.String? bandwidth;

  /// Create time stamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the Transport.
  ///
  /// Optional.
  core.String? description;

  /// Google-generated activation key.
  ///
  /// This is only output if the selected profile supports an OUTPUT key flow.
  /// Inputting this to the provider is only valid while the resource is in a
  /// PENDING_KEY state. Once the provider has accepted the key, the resource
  /// will move to the CONFIGURING state.
  ///
  /// Output only.
  core.String? generatedActivationKey;

  /// Labels as key value pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The maximum transmission unit (MTU) of a packet that can be sent over this
  /// transport.
  ///
  /// Output only.
  core.int? mtuLimit;

  /// Identifier.
  ///
  /// Name of the resource, see google.aip.dev/122 for resource naming.
  core.String? name;

  /// \[Preview only\] Resource URL of the Network that will be peered with this
  /// Transport.
  ///
  /// This field must be provided during resource creation and cannot be
  /// changed.
  ///
  /// Required.
  core.String? network;

  /// Key used for establishing a connection with the remote transport.
  ///
  /// This key can only be provided if the profile supports an INPUT key flow
  /// and the resource is in the PENDING_KEY state.
  ///
  /// Optional.
  core.String? providedActivationKey;

  /// GCP Region where this Transport is located.
  ///
  /// Required.
  core.String? region;

  /// Resource URL of the remoteTransportProfile that this Transport is
  /// connecting to.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/remoteTransportProfiles/{remote_transport_profile}
  ///
  /// Required.
  core.String? remoteProfile;

  /// IP version stack for the established connectivity.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STACK_TYPE_UNSPECIFIED" : Unspecified stack type.
  /// - "IPV4_ONLY" : Only IPv4 is supported. (default)
  /// - "IPV4_IPV6" : Both IPv4 and IPv6 are supported.
  core.String? stackType;

  /// State of the underlying connectivity.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "CREATING" : The resource exists locally and is being created /
  /// associated with the resource on the remote provider’s end of the
  /// underlying connectivity.
  /// - "PENDING_CONFIG" : The Transport exists on both sides of the connection,
  /// and is waiting for configuration to finalize and be verified as
  /// operational.
  /// - "PENDING_KEY" : The Transport was created in GCP. Depending on the
  /// profile’s key provisioning flow, this is either waiting for an activation
  /// key to be input (the key will be validated that it uses remote resources
  /// that match the Transport), or for the generated key to be input to the
  /// provider for finalizing. The configured bandwidth is not yet guaranteed.
  /// - "ACTIVE" : The Transport is configured and the underlying connectivity
  /// is considered operational.
  core.String? state;

  /// Update time stamp.
  ///
  /// Output only.
  core.String? updateTime;

  Transport({
    this.adminEnabled,
    this.advertisedRoutes,
    this.bandwidth,
    this.createTime,
    this.description,
    this.generatedActivationKey,
    this.labels,
    this.mtuLimit,
    this.name,
    this.network,
    this.providedActivationKey,
    this.region,
    this.remoteProfile,
    this.stackType,
    this.state,
    this.updateTime,
  });

  Transport.fromJson(core.Map json_)
    : this(
        adminEnabled: json_['adminEnabled'] as core.bool?,
        advertisedRoutes: json_['advertisedRoutes'] as core.String?,
        bandwidth: json_['bandwidth'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        generatedActivationKey: json_['generatedActivationKey'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        mtuLimit: json_['mtuLimit'] as core.int?,
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        providedActivationKey: json_['providedActivationKey'] as core.String?,
        region: json_['region'] as core.String?,
        remoteProfile: json_['remoteProfile'] as core.String?,
        stackType: json_['stackType'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adminEnabled != null) 'adminEnabled': adminEnabled!,
    if (advertisedRoutes != null) 'advertisedRoutes': advertisedRoutes!,
    if (bandwidth != null) 'bandwidth': bandwidth!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (generatedActivationKey != null)
      'generatedActivationKey': generatedActivationKey!,
    if (labels != null) 'labels': labels!,
    if (mtuLimit != null) 'mtuLimit': mtuLimit!,
    if (name != null) 'name': name!,
    if (network != null) 'network': network!,
    if (providedActivationKey != null)
      'providedActivationKey': providedActivationKey!,
    if (region != null) 'region': region!,
    if (remoteProfile != null) 'remoteProfile': remoteProfile!,
    if (stackType != null) 'stackType': stackType!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// VM instances that this policy-based route applies to.
class VirtualMachine {
  /// A list of VM instance tags that this policy-based route applies to.
  ///
  /// VM instances that have ANY of tags specified here installs this PBR.
  ///
  /// Optional.
  core.List<core.String>? tags;

  VirtualMachine({this.tags});

  VirtualMachine.fromJson(core.Map json_)
    : this(
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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
  /// functioning. Common causes are that the dependent network was deleted or
  /// the resource project was turned off.
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

  Warnings({this.code, this.data, this.warningMessage});

  Warnings.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        data: (json_['data'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        warningMessage: json_['warningMessage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (data != null) 'data': data!,
    if (warningMessage != null) 'warningMessage': warningMessage!,
  };
}
