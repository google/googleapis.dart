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

/// Network Security API - v1
///
/// For more information, see <https://cloud.google.com/networking>
///
/// Create an instance of [NetworkSecurityApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsAddressGroupsResource]
///     - [OrganizationsLocationsFirewallEndpointsResource]
///     - [OrganizationsLocationsOperationsResource]
///     - [OrganizationsLocationsSecurityProfileGroupsResource]
///     - [OrganizationsLocationsSecurityProfilesResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAddressGroupsResource]
///     - [ProjectsLocationsAuthorizationPoliciesResource]
///     - [ProjectsLocationsAuthzPoliciesResource]
///     - [ProjectsLocationsBackendAuthenticationConfigsResource]
///     - [ProjectsLocationsClientTlsPoliciesResource]
///     - [ProjectsLocationsFirewallEndpointAssociationsResource]
///     - [ProjectsLocationsGatewaySecurityPoliciesResource]
///       - [ProjectsLocationsGatewaySecurityPoliciesRulesResource]
///     - [ProjectsLocationsInterceptDeploymentGroupsResource]
///     - [ProjectsLocationsInterceptDeploymentsResource]
///     - [ProjectsLocationsInterceptEndpointGroupAssociationsResource]
///     - [ProjectsLocationsInterceptEndpointGroupsResource]
///     - [ProjectsLocationsMirroringDeploymentGroupsResource]
///     - [ProjectsLocationsMirroringDeploymentsResource]
///     - [ProjectsLocationsMirroringEndpointGroupAssociationsResource]
///     - [ProjectsLocationsMirroringEndpointGroupsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServerTlsPoliciesResource]
///     - [ProjectsLocationsTlsInspectionPoliciesResource]
///     - [ProjectsLocationsUrlListsResource]
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

class NetworkSecurityApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  NetworkSecurityApi(
    http.Client client, {
    core.String rootUrl = 'https://networksecurity.googleapis.com/',
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

  OrganizationsLocationsAddressGroupsResource get addressGroups =>
      OrganizationsLocationsAddressGroupsResource(_requester);
  OrganizationsLocationsFirewallEndpointsResource get firewallEndpoints =>
      OrganizationsLocationsFirewallEndpointsResource(_requester);
  OrganizationsLocationsOperationsResource get operations =>
      OrganizationsLocationsOperationsResource(_requester);
  OrganizationsLocationsSecurityProfileGroupsResource
  get securityProfileGroups =>
      OrganizationsLocationsSecurityProfileGroupsResource(_requester);
  OrganizationsLocationsSecurityProfilesResource get securityProfiles =>
      OrganizationsLocationsSecurityProfilesResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
    : _requester = client;
}

class OrganizationsLocationsAddressGroupsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsAddressGroupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Adds items to an address group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [addressGroup] - Required. A name of the AddressGroup to add items to.
  /// Must be in the format `projects|organization / *
  /// /locations/{location}/addressGroups / * `.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
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
  async.Future<Operation> addItems(
    AddAddressGroupItemsRequest request,
    core.String addressGroup, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$addressGroup') + ':addItems';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Clones items from one address group to another.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [addressGroup] - Required. A name of the AddressGroup to clone items to.
  /// Must be in the format `projects|organization / *
  /// /locations/{location}/addressGroups / * `.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
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
  async.Future<Operation> cloneItems(
    CloneAddressGroupItemsRequest request,
    core.String addressGroup, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$addressGroup') + ':cloneItems';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new address group in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the AddressGroup. Must be in
  /// the format `projects / * /locations/{location}`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [addressGroupId] - Required. Short name of the AddressGroup resource to be
  /// created. This value should be 1-63 characters long, containing only
  /// letters, numbers, hyphens, and underscores, and should not start with a
  /// number. E.g. "authz_policy".
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
    AddressGroup request,
    core.String parent, {
    core.String? addressGroupId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (addressGroupId != null) 'addressGroupId': [addressGroupId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/addressGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an address group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the AddressGroup to delete. Must be in the
  /// format `projects / * /locations/{location}/addressGroups / * `.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
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

  /// Gets details of a single address group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the AddressGroup to get. Must be in the
  /// format `projects / * /locations/{location}/addressGroups / * `.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AddressGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AddressGroup> get(
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
    return AddressGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists address groups in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the AddressGroups
  /// should be listed, specified in the format `projects / *
  /// /locations/{location}`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of AddressGroups to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListAddressGroupsResponse`
  /// Indicates that this is a continuation of a prior `ListAddressGroups` call,
  /// and that the system should return the next page of data.
  ///
  /// [returnPartialSuccess] - Optional. If true, allow partial responses for
  /// multi-regional Aggregated List requests.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAddressGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAddressGroupsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/addressGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAddressGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists references of an address group.
  ///
  /// Request parameters:
  ///
  /// [addressGroup] - Required. A name of the AddressGroup to clone items to.
  /// Must be in the format `projects|organization / *
  /// /locations/{location}/addressGroups / * `.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of references to return. If unspecified,
  /// server will pick an appropriate default. Server may return fewer items
  /// than requested. A caller should only rely on response's next_page_token to
  /// determine if there are more AddressGroupUsers left to be queried.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAddressGroupReferencesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAddressGroupReferencesResponse> listReferences(
    core.String addressGroup, {
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
        'v1/' + core.Uri.encodeFull('$addressGroup') + ':listReferences';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAddressGroupReferencesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates parameters of an address group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the AddressGroup resource. It matches pattern
  /// `projects / * /locations/{location}/addressGroups/`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
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
  /// overwritten in the AddressGroup resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    AddressGroup request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes items from an address group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [addressGroup] - Required. A name of the AddressGroup to remove items
  /// from. Must be in the format `projects|organization / *
  /// /locations/{location}/addressGroups / * `.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
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
  async.Future<Operation> removeItems(
    RemoveAddressGroupItemsRequest request,
    core.String addressGroup, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$addressGroup') + ':removeItems';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsFirewallEndpointsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsFirewallEndpointsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new FirewallEndpoint in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [firewallEndpointId] - Required. Id of the requesting object. If
  /// auto-generating Id server-side, remove this field and firewall_endpoint_id
  /// from the method_signature of Create RPC.
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
    FirewallEndpoint request,
    core.String parent, {
    core.String? firewallEndpointId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (firewallEndpointId != null)
        'firewallEndpointId': [firewallEndpointId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/firewallEndpoints';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Endpoint.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/firewallEndpoints/\[^/\]+$`.
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

  /// Gets details of a single Endpoint.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/firewallEndpoints/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirewallEndpoint].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirewallEndpoint> get(
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
    return FirewallEndpoint.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists FirewallEndpoints in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListEndpointsRequest
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Hint for how to order the results
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
  /// Completes with a [ListFirewallEndpointsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFirewallEndpointsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/firewallEndpoints';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFirewallEndpointsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single Endpoint.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. name of resource
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/firewallEndpoints/\[^/\]+$`.
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
  /// overwritten in the Endpoint resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    FirewallEndpoint request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

class OrganizationsLocationsSecurityProfileGroupsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsSecurityProfileGroupsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new SecurityProfileGroup in a given organization and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the SecurityProfileGroup. Must
  /// be in the format `projects|organizations / * /locations/{location}`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [securityProfileGroupId] - Required. Short name of the
  /// SecurityProfileGroup resource to be created. This value should be 1-63
  /// characters long, containing only letters, numbers, hyphens, and
  /// underscores, and should not start with a number. E.g.
  /// "security_profile_group1".
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
    SecurityProfileGroup request,
    core.String parent, {
    core.String? securityProfileGroupId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (securityProfileGroupId != null)
        'securityProfileGroupId': [securityProfileGroupId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/securityProfileGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single SecurityProfileGroup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the SecurityProfileGroup to delete. Must be
  /// in the format `projects|organizations / *
  /// /locations/{location}/securityProfileGroups/{security_profile_group}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/securityProfileGroups/\[^/\]+$`.
  ///
  /// [etag] - Optional. If client provided etag is out of date, delete will
  /// return FAILED_PRECONDITION error.
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

  /// Gets details of a single SecurityProfileGroup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the SecurityProfileGroup to get. Must be in
  /// the format `projects|organizations / *
  /// /locations/{location}/securityProfileGroups/{security_profile_group}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/securityProfileGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityProfileGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityProfileGroup> get(
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
    return SecurityProfileGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists SecurityProfileGroups in a given organization and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project or organization and location from which
  /// the SecurityProfileGroups should be listed, specified in the format
  /// `projects|organizations / * /locations/{location}`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of SecurityProfileGroups to return per call.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListSecurityProfileGroupsResponse` Indicates that this is a continuation
  /// of a prior `ListSecurityProfileGroups` call, and that the system should
  /// return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSecurityProfileGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSecurityProfileGroupsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/securityProfileGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSecurityProfileGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single SecurityProfileGroup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. Name of the SecurityProfileGroup resource.
  /// It matches pattern `projects|organizations / *
  /// /locations/{location}/securityProfileGroups/{security_profile_group}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/securityProfileGroups/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the SecurityProfileGroup resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask.
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
    SecurityProfileGroup request,
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

class OrganizationsLocationsSecurityProfilesResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsSecurityProfilesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new SecurityProfile in a given organization and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the SecurityProfile. Must be
  /// in the format `projects|organizations / * /locations/{location}`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [securityProfileId] - Required. Short name of the SecurityProfile resource
  /// to be created. This value should be 1-63 characters long, containing only
  /// letters, numbers, hyphens, and underscores, and should not start with a
  /// number. E.g. "security_profile1".
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
    SecurityProfile request,
    core.String parent, {
    core.String? securityProfileId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (securityProfileId != null) 'securityProfileId': [securityProfileId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/securityProfiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single SecurityProfile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the SecurityProfile to delete. Must be in the
  /// format `projects|organizations / *
  /// /locations/{location}/securityProfiles/{security_profile_id}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/securityProfiles/\[^/\]+$`.
  ///
  /// [etag] - Optional. If client provided etag is out of date, delete will
  /// return FAILED_PRECONDITION error.
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

  /// Gets details of a single SecurityProfile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the SecurityProfile to get. Must be in the
  /// format `projects|organizations / *
  /// /locations/{location}/securityProfiles/{security_profile_id}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/securityProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SecurityProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SecurityProfile> get(
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
    return SecurityProfile.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists SecurityProfiles in a given organization and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project or organization and location from which
  /// the SecurityProfiles should be listed, specified in the format
  /// `projects|organizations / * /locations/{location}`.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of SecurityProfiles to return per call.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListSecurityProfilesResponse` Indicates that this is a continuation of a
  /// prior `ListSecurityProfiles` call, and that the system should return the
  /// next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSecurityProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSecurityProfilesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/securityProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSecurityProfilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single SecurityProfile.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. Name of the SecurityProfile resource. It
  /// matches pattern `projects|organizations / *
  /// /locations/{location}/securityProfiles/{security_profile}`.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/securityProfiles/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the SecurityProfile resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask.
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
    SecurityProfile request,
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

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAddressGroupsResource get addressGroups =>
      ProjectsLocationsAddressGroupsResource(_requester);
  ProjectsLocationsAuthorizationPoliciesResource get authorizationPolicies =>
      ProjectsLocationsAuthorizationPoliciesResource(_requester);
  ProjectsLocationsAuthzPoliciesResource get authzPolicies =>
      ProjectsLocationsAuthzPoliciesResource(_requester);
  ProjectsLocationsBackendAuthenticationConfigsResource
  get backendAuthenticationConfigs =>
      ProjectsLocationsBackendAuthenticationConfigsResource(_requester);
  ProjectsLocationsClientTlsPoliciesResource get clientTlsPolicies =>
      ProjectsLocationsClientTlsPoliciesResource(_requester);
  ProjectsLocationsFirewallEndpointAssociationsResource
  get firewallEndpointAssociations =>
      ProjectsLocationsFirewallEndpointAssociationsResource(_requester);
  ProjectsLocationsGatewaySecurityPoliciesResource
  get gatewaySecurityPolicies =>
      ProjectsLocationsGatewaySecurityPoliciesResource(_requester);
  ProjectsLocationsInterceptDeploymentGroupsResource
  get interceptDeploymentGroups =>
      ProjectsLocationsInterceptDeploymentGroupsResource(_requester);
  ProjectsLocationsInterceptDeploymentsResource get interceptDeployments =>
      ProjectsLocationsInterceptDeploymentsResource(_requester);
  ProjectsLocationsInterceptEndpointGroupAssociationsResource
  get interceptEndpointGroupAssociations =>
      ProjectsLocationsInterceptEndpointGroupAssociationsResource(_requester);
  ProjectsLocationsInterceptEndpointGroupsResource
  get interceptEndpointGroups =>
      ProjectsLocationsInterceptEndpointGroupsResource(_requester);
  ProjectsLocationsMirroringDeploymentGroupsResource
  get mirroringDeploymentGroups =>
      ProjectsLocationsMirroringDeploymentGroupsResource(_requester);
  ProjectsLocationsMirroringDeploymentsResource get mirroringDeployments =>
      ProjectsLocationsMirroringDeploymentsResource(_requester);
  ProjectsLocationsMirroringEndpointGroupAssociationsResource
  get mirroringEndpointGroupAssociations =>
      ProjectsLocationsMirroringEndpointGroupAssociationsResource(_requester);
  ProjectsLocationsMirroringEndpointGroupsResource
  get mirroringEndpointGroups =>
      ProjectsLocationsMirroringEndpointGroupsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsServerTlsPoliciesResource get serverTlsPolicies =>
      ProjectsLocationsServerTlsPoliciesResource(_requester);
  ProjectsLocationsTlsInspectionPoliciesResource get tlsInspectionPolicies =>
      ProjectsLocationsTlsInspectionPoliciesResource(_requester);
  ProjectsLocationsUrlListsResource get urlLists =>
      ProjectsLocationsUrlListsResource(_requester);

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

class ProjectsLocationsAddressGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAddressGroupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Adds items to an address group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [addressGroup] - Required. A name of the AddressGroup to add items to.
  /// Must be in the format `projects|organization / *
  /// /locations/{location}/addressGroups / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
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
  async.Future<Operation> addItems(
    AddAddressGroupItemsRequest request,
    core.String addressGroup, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$addressGroup') + ':addItems';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Clones items from one address group to another.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [addressGroup] - Required. A name of the AddressGroup to clone items to.
  /// Must be in the format `projects|organization / *
  /// /locations/{location}/addressGroups / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
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
  async.Future<Operation> cloneItems(
    CloneAddressGroupItemsRequest request,
    core.String addressGroup, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$addressGroup') + ':cloneItems';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new address group in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the AddressGroup. Must be in
  /// the format `projects / * /locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [addressGroupId] - Required. Short name of the AddressGroup resource to be
  /// created. This value should be 1-63 characters long, containing only
  /// letters, numbers, hyphens, and underscores, and should not start with a
  /// number. E.g. "authz_policy".
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
    AddressGroup request,
    core.String parent, {
    core.String? addressGroupId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (addressGroupId != null) 'addressGroupId': [addressGroupId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/addressGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single address group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the AddressGroup to delete. Must be in the
  /// format `projects / * /locations/{location}/addressGroups / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
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

  /// Gets details of a single address group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the AddressGroup to get. Must be in the
  /// format `projects / * /locations/{location}/addressGroups / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AddressGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AddressGroup> get(
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
    return AddressGroup.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
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
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
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
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists address groups in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the AddressGroups
  /// should be listed, specified in the format `projects / *
  /// /locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of AddressGroups to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListAddressGroupsResponse`
  /// Indicates that this is a continuation of a prior `ListAddressGroups` call,
  /// and that the system should return the next page of data.
  ///
  /// [returnPartialSuccess] - Optional. If true, allow partial responses for
  /// multi-regional Aggregated List requests.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAddressGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAddressGroupsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/addressGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAddressGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists references of an address group.
  ///
  /// Request parameters:
  ///
  /// [addressGroup] - Required. A name of the AddressGroup to clone items to.
  /// Must be in the format `projects|organization / *
  /// /locations/{location}/addressGroups / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of references to return. If unspecified,
  /// server will pick an appropriate default. Server may return fewer items
  /// than requested. A caller should only rely on response's next_page_token to
  /// determine if there are more AddressGroupUsers left to be queried.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAddressGroupReferencesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAddressGroupReferencesResponse> listReferences(
    core.String addressGroup, {
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
        'v1/' + core.Uri.encodeFull('$addressGroup') + ':listReferences';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAddressGroupReferencesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single address group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the AddressGroup resource. It matches pattern
  /// `projects / * /locations/{location}/addressGroups/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
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
  /// overwritten in the AddressGroup resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    AddressGroup request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes items from an address group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [addressGroup] - Required. A name of the AddressGroup to remove items
  /// from. Must be in the format `projects|organization / *
  /// /locations/{location}/addressGroups / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
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
  async.Future<Operation> removeItems(
    RemoveAddressGroupItemsRequest request,
    core.String addressGroup, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$addressGroup') + ':removeItems';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
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
    return GoogleIamV1Policy.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/addressGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAuthorizationPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthorizationPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new AuthorizationPolicy in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the AuthorizationPolicy. Must
  /// be in the format `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [authorizationPolicyId] - Required. Short name of the AuthorizationPolicy
  /// resource to be created. This value should be 1-63 characters long,
  /// containing only letters, numbers, hyphens, and underscores, and should not
  /// start with a number. E.g. "authz_policy".
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
    AuthorizationPolicy request,
    core.String parent, {
    core.String? authorizationPolicyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (authorizationPolicyId != null)
        'authorizationPolicyId': [authorizationPolicyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/authorizationPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single AuthorizationPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the AuthorizationPolicy to delete. Must be in
  /// the format `projects/{project}/locations/{location}/authorizationPolicies
  /// / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authorizationPolicies/\[^/\]+$`.
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

  /// Gets details of a single AuthorizationPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the AuthorizationPolicy to get. Must be in
  /// the format `projects/{project}/locations/{location}/authorizationPolicies
  /// / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authorizationPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthorizationPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthorizationPolicy> get(
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
    return AuthorizationPolicy.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/authorizationPolicies/\[^/\]+$`.
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
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
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
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists AuthorizationPolicies in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// AuthorizationPolicies should be listed, specified in the format
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of AuthorizationPolicies to return per call.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListAuthorizationPoliciesResponse` Indicates that this is a continuation
  /// of a prior `ListAuthorizationPolicies` call, and that the system should
  /// return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthorizationPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthorizationPoliciesResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/authorizationPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthorizationPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single AuthorizationPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the AuthorizationPolicy resource. It matches
  /// pattern `projects/{project}/locations/{location}/authorizationPolicies/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authorizationPolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the AuthorizationPolicy resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    AuthorizationPolicy request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/authorizationPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
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
    return GoogleIamV1Policy.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/authorizationPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAuthzPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthzPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new AuthzPolicy in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the `AuthzPolicy` resource.
  /// Must be in the format `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [authzPolicyId] - Required. User-provided ID of the `AuthzPolicy` resource
  /// to be created.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    AuthzPolicy request,
    core.String parent, {
    core.String? authzPolicyId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (authzPolicyId != null) 'authzPolicyId': [authzPolicyId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/authzPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single AuthzPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `AuthzPolicy` resource to delete. Must
  /// be in the format
  /// `projects/{project}/locations/{location}/authzPolicies/{authz_policy}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authzPolicies/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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

  /// Gets details of a single AuthzPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the `AuthzPolicy` resource to get. Must be in
  /// the format
  /// `projects/{project}/locations/{location}/authzPolicies/{authz_policy}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authzPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthzPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthzPolicy> get(
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
    return AuthzPolicy.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/authzPolicies/\[^/\]+$`.
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
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
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
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists AuthzPolicies in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the `AuthzPolicy`
  /// resources are listed, specified in the following format:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. The server might return fewer
  /// items than requested. If unspecified, the server picks an appropriate
  /// default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results that the
  /// server returns.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthzPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthzPoliciesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/authzPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthzPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single AuthzPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. Name of the `AuthzPolicy` resource in the
  /// following format:
  /// `projects/{project}/locations/{location}/authzPolicies/{authz_policy}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authzPolicies/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server can ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Used to specify the fields to be overwritten in
  /// the `AuthzPolicy` resource by the update. The fields specified in the
  /// `update_mask` are relative to the resource, not the full request. A field
  /// is overwritten if it is in the mask. If the user does not specify a mask,
  /// then all fields are overwritten.
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
    AuthzPolicy request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/authzPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
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
    return GoogleIamV1Policy.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/authzPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsBackendAuthenticationConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackendAuthenticationConfigsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new BackendAuthenticationConfig in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the
  /// BackendAuthenticationConfig. Must be in the format `projects / *
  /// /locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [backendAuthenticationConfigId] - Required. Short name of the
  /// BackendAuthenticationConfig resource to be created. This value should be
  /// 1-63 characters long, containing only letters, numbers, hyphens, and
  /// underscores, and should not start with a number. E.g.
  /// "backend-auth-config".
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
    BackendAuthenticationConfig request,
    core.String parent, {
    core.String? backendAuthenticationConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backendAuthenticationConfigId != null)
        'backendAuthenticationConfigId': [backendAuthenticationConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/backendAuthenticationConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single BackendAuthenticationConfig to
  /// BackendAuthenticationConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the BackendAuthenticationConfig to delete.
  /// Must be in the format `projects / *
  /// /locations/{location}/backendAuthenticationConfigs / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backendAuthenticationConfigs/\[^/\]+$`.
  ///
  /// [etag] - Optional. Etag of the resource. If this is provided, it must
  /// match the server's etag.
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

  /// Gets details of a single BackendAuthenticationConfig to
  /// BackendAuthenticationConfig.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the BackendAuthenticationConfig to get. Must
  /// be in the format `projects / *
  /// /locations/{location}/backendAuthenticationConfigs / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backendAuthenticationConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BackendAuthenticationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BackendAuthenticationConfig> get(
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
    return BackendAuthenticationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists BackendAuthenticationConfigs in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// BackendAuthenticationConfigs should be listed, specified in the format
  /// `projects / * /locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of BackendAuthenticationConfigs to return per
  /// call.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListBackendAuthenticationConfigsResponse` Indicates that this is a
  /// continuation of a prior `ListBackendAuthenticationConfigs` call, and that
  /// the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackendAuthenticationConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackendAuthenticationConfigsResponse> list(
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
        '/backendAuthenticationConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackendAuthenticationConfigsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single BackendAuthenticationConfig to
  /// BackendAuthenticationConfig.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the BackendAuthenticationConfig resource. It
  /// matches the pattern `projects / *
  /// /locations/{location}/backendAuthenticationConfigs/{backend_authentication_config}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backendAuthenticationConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the BackendAuthenticationConfig resource by the update. The
  /// fields specified in the update_mask are relative to the resource, not the
  /// full request. A field will be overwritten if it is in the mask. If the
  /// user does not provide a mask then all fields will be overwritten.
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
    BackendAuthenticationConfig request,
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

class ProjectsLocationsClientTlsPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsClientTlsPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new ClientTlsPolicy in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the ClientTlsPolicy. Must be
  /// in the format `projects / * /locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [clientTlsPolicyId] - Required. Short name of the ClientTlsPolicy resource
  /// to be created. This value should be 1-63 characters long, containing only
  /// letters, numbers, hyphens, and underscores, and should not start with a
  /// number. E.g. "client_mtls_policy".
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
    ClientTlsPolicy request,
    core.String parent, {
    core.String? clientTlsPolicyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clientTlsPolicyId != null) 'clientTlsPolicyId': [clientTlsPolicyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clientTlsPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ClientTlsPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the ClientTlsPolicy to delete. Must be in the
  /// format `projects / * /locations/{location}/clientTlsPolicies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clientTlsPolicies/\[^/\]+$`.
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

  /// Gets details of a single ClientTlsPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the ClientTlsPolicy to get. Must be in the
  /// format `projects / * /locations/{location}/clientTlsPolicies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clientTlsPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientTlsPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientTlsPolicy> get(
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
    return ClientTlsPolicy.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/clientTlsPolicies/\[^/\]+$`.
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
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
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
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists ClientTlsPolicies in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// ClientTlsPolicies should be listed, specified in the format `projects / *
  /// /locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of ClientTlsPolicies to return per call.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListClientTlsPoliciesResponse` Indicates that this is a continuation of a
  /// prior `ListClientTlsPolicies` call, and that the system should return the
  /// next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClientTlsPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClientTlsPoliciesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clientTlsPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListClientTlsPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single ClientTlsPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the ClientTlsPolicy resource. It matches the
  /// pattern
  /// `projects/{project}/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/clientTlsPolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the ClientTlsPolicy resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    ClientTlsPolicy request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/clientTlsPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
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
    return GoogleIamV1Policy.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/clientTlsPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsFirewallEndpointAssociationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFirewallEndpointAssociationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new FirewallEndpointAssociation in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [firewallEndpointAssociationId] - Optional. Id of the requesting object.
  /// If auto-generating Id server-side, remove this field and
  /// firewall_endpoint_association_id from the method_signature of Create RPC.
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
    FirewallEndpointAssociation request,
    core.String parent, {
    core.String? firewallEndpointAssociationId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (firewallEndpointAssociationId != null)
        'firewallEndpointAssociationId': [firewallEndpointAssociationId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/firewallEndpointAssociations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single FirewallEndpointAssociation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/firewallEndpointAssociations/\[^/\]+$`.
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

  /// Gets details of a single FirewallEndpointAssociation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/firewallEndpointAssociations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FirewallEndpointAssociation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FirewallEndpointAssociation> get(
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
    return FirewallEndpointAssociation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Associations in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListAssociationsRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Hint for how to order the results
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
  /// Completes with a [ListFirewallEndpointAssociationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFirewallEndpointAssociationsResponse> list(
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
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/firewallEndpointAssociations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFirewallEndpointAssociationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single FirewallEndpointAssociation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. name of resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/firewallEndpointAssociations/\[^/\]+$`.
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
  /// overwritten in the Association resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    FirewallEndpointAssociation request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGatewaySecurityPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGatewaySecurityPoliciesRulesResource get rules =>
      ProjectsLocationsGatewaySecurityPoliciesRulesResource(_requester);

  ProjectsLocationsGatewaySecurityPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new GatewaySecurityPolicy in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the GatewaySecurityPolicy.
  /// Must be in the format `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [gatewaySecurityPolicyId] - Required. Short name of the
  /// GatewaySecurityPolicy resource to be created. This value should be 1-63
  /// characters long, containing only letters, numbers, hyphens, and
  /// underscores, and should not start with a number. E.g.
  /// "gateway_security_policy1".
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
    GatewaySecurityPolicy request,
    core.String parent, {
    core.String? gatewaySecurityPolicyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (gatewaySecurityPolicyId != null)
        'gatewaySecurityPolicyId': [gatewaySecurityPolicyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/gatewaySecurityPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single GatewaySecurityPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the GatewaySecurityPolicy to delete. Must be
  /// in the format
  /// `projects/{project}/locations/{location}/gatewaySecurityPolicies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gatewaySecurityPolicies/\[^/\]+$`.
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

  /// Gets details of a single GatewaySecurityPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the GatewaySecurityPolicy to get. Must be in
  /// the format
  /// `projects/{project}/locations/{location}/gatewaySecurityPolicies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gatewaySecurityPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GatewaySecurityPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GatewaySecurityPolicy> get(
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
    return GatewaySecurityPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists GatewaySecurityPolicies in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// GatewaySecurityPolicies should be listed, specified in the format
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of GatewaySecurityPolicies to return per call.
  ///
  /// [pageToken] - The value returned by the last
  /// 'ListGatewaySecurityPoliciesResponse' Indicates that this is a
  /// continuation of a prior 'ListGatewaySecurityPolicies' call, and that the
  /// system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGatewaySecurityPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGatewaySecurityPoliciesResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/gatewaySecurityPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGatewaySecurityPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single GatewaySecurityPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. Name is of the form
  /// projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}
  /// gateway_security_policy should match the
  /// pattern:(^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gatewaySecurityPolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the GatewaySecurityPolicy resource by the update. The
  /// fields specified in the update_mask are relative to the resource, not the
  /// full request. A field will be overwritten if it is in the mask. If the
  /// user does not provide a mask then all fields will be overwritten.
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
    GatewaySecurityPolicy request,
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

class ProjectsLocationsGatewaySecurityPoliciesRulesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGatewaySecurityPoliciesRulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new GatewaySecurityPolicy in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent where this rule will be created. Format :
  /// projects/{project}/location/{location}/gatewaySecurityPolicies / *
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gatewaySecurityPolicies/\[^/\]+$`.
  ///
  /// [gatewaySecurityPolicyRuleId] - The ID to use for the rule, which will
  /// become the final component of the rule's resource name. This value should
  /// be 4-63 characters, and valid characters are /a-z-/.
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
    GatewaySecurityPolicyRule request,
    core.String parent, {
    core.String? gatewaySecurityPolicyRuleId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (gatewaySecurityPolicyRuleId != null)
        'gatewaySecurityPolicyRuleId': [gatewaySecurityPolicyRuleId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/rules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single GatewaySecurityPolicyRule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the GatewaySecurityPolicyRule to delete. Must
  /// be in the format
  /// `projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}/rules
  /// / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gatewaySecurityPolicies/\[^/\]+/rules/\[^/\]+$`.
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

  /// Gets details of a single GatewaySecurityPolicyRule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the GatewaySecurityPolicyRule to retrieve.
  /// Format: projects/{project}/location/{location}/gatewaySecurityPolicies / *
  /// /rules / *
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gatewaySecurityPolicies/\[^/\]+/rules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GatewaySecurityPolicyRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GatewaySecurityPolicyRule> get(
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
    return GatewaySecurityPolicyRule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists GatewaySecurityPolicyRules in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project, location and GatewaySecurityPolicy from
  /// which the GatewaySecurityPolicyRules should be listed, specified in the
  /// format
  /// `projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gatewaySecurityPolicies/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of GatewaySecurityPolicyRules to return per
  /// call.
  ///
  /// [pageToken] - The value returned by the last
  /// 'ListGatewaySecurityPolicyRulesResponse' Indicates that this is a
  /// continuation of a prior 'ListGatewaySecurityPolicyRules' call, and that
  /// the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGatewaySecurityPolicyRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGatewaySecurityPolicyRulesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/rules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGatewaySecurityPolicyRulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single GatewaySecurityPolicyRule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Immutable. Name of the resource. ame is the full
  /// resource name so
  /// projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// rule should match the pattern: (^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/gatewaySecurityPolicies/\[^/\]+/rules/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the GatewaySecurityPolicy resource by the update. The
  /// fields specified in the update_mask are relative to the resource, not the
  /// full request. A field will be overwritten if it is in the mask. If the
  /// user does not provide a mask then all fields will be overwritten.
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
    GatewaySecurityPolicyRule request,
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

class ProjectsLocationsInterceptDeploymentGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInterceptDeploymentGroupsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a deployment group in a given project and location.
  ///
  /// See https://google.aip.dev/133.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this deployment group will
  /// be created. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [interceptDeploymentGroupId] - Required. The ID to use for the new
  /// deployment group, which will become the final component of the deployment
  /// group's resource name.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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
    InterceptDeploymentGroup request,
    core.String parent, {
    core.String? interceptDeploymentGroupId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (interceptDeploymentGroupId != null)
        'interceptDeploymentGroupId': [interceptDeploymentGroupId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/interceptDeploymentGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a deployment group.
  ///
  /// See https://google.aip.dev/135.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The deployment group to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/interceptDeploymentGroups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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

  /// Gets a specific deployment group.
  ///
  /// See https://google.aip.dev/131.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment group to retrieve. Format:
  /// projects/{project}/locations/{location}/interceptDeploymentGroups/{intercept_deployment_group}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/interceptDeploymentGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InterceptDeploymentGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InterceptDeploymentGroup> get(
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
    return InterceptDeploymentGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists deployment groups in a given project and location.
  ///
  /// See https://google.aip.dev/132.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of deployment
  /// groups. Example: `projects/123456789/locations/global`. See
  /// https://google.aip.dev/132 for more details.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression. See
  /// https://google.aip.dev/160#filtering for more details.
  ///
  /// [orderBy] - Optional. Sort expression. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  /// See https://google.aip.dev/158 for more details.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListInterceptDeploymentGroups` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListInterceptDeploymentGroups` must match the call that provided the page
  /// token. See https://google.aip.dev/158 for more details.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInterceptDeploymentGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInterceptDeploymentGroupsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/interceptDeploymentGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInterceptDeploymentGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a deployment group.
  ///
  /// See https://google.aip.dev/134.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The resource name of this deployment
  /// group, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`. See
  /// https://google.aip.dev/122 for more details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/interceptDeploymentGroups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
  ///
  /// [updateMask] - Optional. The list of fields to update. Fields are
  /// specified relative to the deployment group (e.g. `description`; *not*
  /// `intercept_deployment_group.description`). See https://google.aip.dev/161
  /// for more details.
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
    InterceptDeploymentGroup request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInterceptDeploymentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInterceptDeploymentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a deployment in a given project and location.
  ///
  /// See https://google.aip.dev/133.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this deployment will be
  /// created. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [interceptDeploymentId] - Required. The ID to use for the new deployment,
  /// which will become the final component of the deployment's resource name.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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
    InterceptDeployment request,
    core.String parent, {
    core.String? interceptDeploymentId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (interceptDeploymentId != null)
        'interceptDeploymentId': [interceptDeploymentId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/interceptDeployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a deployment.
  ///
  /// See https://google.aip.dev/135.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/interceptDeployments/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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

  /// Gets a specific deployment.
  ///
  /// See https://google.aip.dev/131.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment to retrieve. Format:
  /// projects/{project}/locations/{location}/interceptDeployments/{intercept_deployment}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/interceptDeployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InterceptDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InterceptDeployment> get(
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
    return InterceptDeployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists deployments in a given project and location.
  ///
  /// See https://google.aip.dev/132.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// deployments. Example: `projects/123456789/locations/us-central1-a`. See
  /// https://google.aip.dev/132 for more details.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression. See
  /// https://google.aip.dev/160#filtering for more details.
  ///
  /// [orderBy] - Optional. Sort expression. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  /// See https://google.aip.dev/158 for more details.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListInterceptDeployments` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListInterceptDeployments` must match the call that provided the page
  /// token. See https://google.aip.dev/158 for more details.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInterceptDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInterceptDeploymentsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/interceptDeployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInterceptDeploymentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a deployment.
  ///
  /// See https://google.aip.dev/134.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The resource name of this deployment, for
  /// example:
  /// `projects/123456789/locations/us-central1-a/interceptDeployments/my-dep`.
  /// See https://google.aip.dev/122 for more details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/interceptDeployments/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
  ///
  /// [updateMask] - Optional. The list of fields to update. Fields are
  /// specified relative to the deployment (e.g. `description`; *not*
  /// `intercept_deployment.description`). See https://google.aip.dev/161 for
  /// more details.
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
    InterceptDeployment request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInterceptEndpointGroupAssociationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInterceptEndpointGroupAssociationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates an association in a given project and location.
  ///
  /// See https://google.aip.dev/133.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this association will be
  /// created. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [interceptEndpointGroupAssociationId] - Optional. The ID to use for the
  /// new association, which will become the final component of the endpoint
  /// group's resource name. If not provided, the server will generate a unique
  /// ID.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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
    InterceptEndpointGroupAssociation request,
    core.String parent, {
    core.String? interceptEndpointGroupAssociationId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (interceptEndpointGroupAssociationId != null)
        'interceptEndpointGroupAssociationId': [
          interceptEndpointGroupAssociationId,
        ],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/interceptEndpointGroupAssociations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an association.
  ///
  /// See https://google.aip.dev/135.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The association to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/interceptEndpointGroupAssociations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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

  /// Gets a specific association.
  ///
  /// See https://google.aip.dev/131.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the association to retrieve. Format:
  /// projects/{project}/locations/{location}/interceptEndpointGroupAssociations/{intercept_endpoint_group_association}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/interceptEndpointGroupAssociations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InterceptEndpointGroupAssociation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InterceptEndpointGroupAssociation> get(
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
    return InterceptEndpointGroupAssociation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists associations in a given project and location.
  ///
  /// See https://google.aip.dev/132.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// associations. Example: `projects/123456789/locations/global`. See
  /// https://google.aip.dev/132 for more details.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression. See
  /// https://google.aip.dev/160#filtering for more details.
  ///
  /// [orderBy] - Optional. Sort expression. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  /// See https://google.aip.dev/158 for more details.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListInterceptEndpointGroups` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListInterceptEndpointGroups` must match the call that provided the page
  /// token. See https://google.aip.dev/158 for more details.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInterceptEndpointGroupAssociationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInterceptEndpointGroupAssociationsResponse> list(
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
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/interceptEndpointGroupAssociations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInterceptEndpointGroupAssociationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an association.
  ///
  /// See https://google.aip.dev/134.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The resource name of this endpoint group
  /// association, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroupAssociations/my-eg-association`.
  /// See https://google.aip.dev/122 for more details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/interceptEndpointGroupAssociations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
  ///
  /// [updateMask] - Optional. The list of fields to update. Fields are
  /// specified relative to the association (e.g. `description`; *not*
  /// `intercept_endpoint_group_association.description`). See
  /// https://google.aip.dev/161 for more details.
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
    InterceptEndpointGroupAssociation request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInterceptEndpointGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInterceptEndpointGroupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an endpoint group in a given project and location.
  ///
  /// See https://google.aip.dev/133.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this endpoint group will be
  /// created. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [interceptEndpointGroupId] - Required. The ID to use for the endpoint
  /// group, which will become the final component of the endpoint group's
  /// resource name.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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
    InterceptEndpointGroup request,
    core.String parent, {
    core.String? interceptEndpointGroupId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (interceptEndpointGroupId != null)
        'interceptEndpointGroupId': [interceptEndpointGroupId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/interceptEndpointGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an endpoint group.
  ///
  /// See https://google.aip.dev/135.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The endpoint group to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/interceptEndpointGroups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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

  /// Gets a specific endpoint group.
  ///
  /// See https://google.aip.dev/131.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the endpoint group to retrieve. Format:
  /// projects/{project}/locations/{location}/interceptEndpointGroups/{intercept_endpoint_group}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/interceptEndpointGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InterceptEndpointGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InterceptEndpointGroup> get(
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
    return InterceptEndpointGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists endpoint groups in a given project and location.
  ///
  /// See https://google.aip.dev/132.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of endpoint
  /// groups. Example: `projects/123456789/locations/global`. See
  /// https://google.aip.dev/132 for more details.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression. See
  /// https://google.aip.dev/160#filtering for more details.
  ///
  /// [orderBy] - Optional. Sort expression. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  /// See https://google.aip.dev/158 for more details.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListInterceptEndpointGroups` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListInterceptEndpointGroups` must match the call that provided the page
  /// token. See https://google.aip.dev/158 for more details.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInterceptEndpointGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInterceptEndpointGroupsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/interceptEndpointGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInterceptEndpointGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an endpoint group.
  ///
  /// See https://google.aip.dev/134.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The resource name of this endpoint group,
  /// for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`. See
  /// https://google.aip.dev/122 for more details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/interceptEndpointGroups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
  ///
  /// [updateMask] - Optional. The list of fields to update. Fields are
  /// specified relative to the endpoint group (e.g. `description`; *not*
  /// `intercept_endpoint_group.description`). See https://google.aip.dev/161
  /// for more details.
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
    InterceptEndpointGroup request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsMirroringDeploymentGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMirroringDeploymentGroupsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a deployment group in a given project and location.
  ///
  /// See https://google.aip.dev/133.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this deployment group will
  /// be created. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [mirroringDeploymentGroupId] - Required. The ID to use for the new
  /// deployment group, which will become the final component of the deployment
  /// group's resource name.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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
    MirroringDeploymentGroup request,
    core.String parent, {
    core.String? mirroringDeploymentGroupId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mirroringDeploymentGroupId != null)
        'mirroringDeploymentGroupId': [mirroringDeploymentGroupId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/mirroringDeploymentGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a deployment group.
  ///
  /// See https://google.aip.dev/135.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The deployment group to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mirroringDeploymentGroups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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

  /// Gets a specific deployment group.
  ///
  /// See https://google.aip.dev/131.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment group to retrieve. Format:
  /// projects/{project}/locations/{location}/mirroringDeploymentGroups/{mirroring_deployment_group}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mirroringDeploymentGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MirroringDeploymentGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MirroringDeploymentGroup> get(
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
    return MirroringDeploymentGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists deployment groups in a given project and location.
  ///
  /// See https://google.aip.dev/132.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of deployment
  /// groups. Example: `projects/123456789/locations/global`. See
  /// https://google.aip.dev/132 for more details.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression. See
  /// https://google.aip.dev/160#filtering for more details.
  ///
  /// [orderBy] - Optional. Sort expression. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  /// See https://google.aip.dev/158 for more details.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListMirroringDeploymentGroups` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListMirroringDeploymentGroups` must match the call that provided the page
  /// token. See https://google.aip.dev/158 for more details.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMirroringDeploymentGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMirroringDeploymentGroupsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/mirroringDeploymentGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMirroringDeploymentGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a deployment group.
  ///
  /// See https://google.aip.dev/134.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The resource name of this deployment
  /// group, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`. See
  /// https://google.aip.dev/122 for more details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mirroringDeploymentGroups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
  ///
  /// [updateMask] - Optional. The list of fields to update. Fields are
  /// specified relative to the deployment group (e.g. `description`; *not*
  /// `mirroring_deployment_group.description`). See https://google.aip.dev/161
  /// for more details.
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
    MirroringDeploymentGroup request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsMirroringDeploymentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMirroringDeploymentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a deployment in a given project and location.
  ///
  /// See https://google.aip.dev/133.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this deployment will be
  /// created. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [mirroringDeploymentId] - Required. The ID to use for the new deployment,
  /// which will become the final component of the deployment's resource name.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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
    MirroringDeployment request,
    core.String parent, {
    core.String? mirroringDeploymentId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mirroringDeploymentId != null)
        'mirroringDeploymentId': [mirroringDeploymentId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/mirroringDeployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a deployment.
  ///
  /// See https://google.aip.dev/135.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mirroringDeployments/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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

  /// Gets a specific deployment.
  ///
  /// See https://google.aip.dev/131.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the deployment to retrieve. Format:
  /// projects/{project}/locations/{location}/mirroringDeployments/{mirroring_deployment}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mirroringDeployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MirroringDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MirroringDeployment> get(
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
    return MirroringDeployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists deployments in a given project and location.
  ///
  /// See https://google.aip.dev/132.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// deployments. Example: `projects/123456789/locations/us-central1-a`. See
  /// https://google.aip.dev/132 for more details.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression. See
  /// https://google.aip.dev/160#filtering for more details.
  ///
  /// [orderBy] - Optional. Sort expression. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  /// See https://google.aip.dev/158 for more details.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListMirroringDeployments` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListMirroringDeployments` must match the call that provided the page
  /// token. See https://google.aip.dev/158 for more details.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMirroringDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMirroringDeploymentsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/mirroringDeployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMirroringDeploymentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a deployment.
  ///
  /// See https://google.aip.dev/134.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The resource name of this deployment, for
  /// example:
  /// `projects/123456789/locations/us-central1-a/mirroringDeployments/my-dep`.
  /// See https://google.aip.dev/122 for more details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mirroringDeployments/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
  ///
  /// [updateMask] - Optional. The list of fields to update. Fields are
  /// specified relative to the deployment (e.g. `description`; *not*
  /// `mirroring_deployment.description`). See https://google.aip.dev/161 for
  /// more details.
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
    MirroringDeployment request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsMirroringEndpointGroupAssociationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMirroringEndpointGroupAssociationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates an association in a given project and location.
  ///
  /// See https://google.aip.dev/133.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this association will be
  /// created. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [mirroringEndpointGroupAssociationId] - Optional. The ID to use for the
  /// new association, which will become the final component of the endpoint
  /// group's resource name. If not provided, the server will generate a unique
  /// ID.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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
    MirroringEndpointGroupAssociation request,
    core.String parent, {
    core.String? mirroringEndpointGroupAssociationId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mirroringEndpointGroupAssociationId != null)
        'mirroringEndpointGroupAssociationId': [
          mirroringEndpointGroupAssociationId,
        ],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/mirroringEndpointGroupAssociations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an association.
  ///
  /// See https://google.aip.dev/135.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The association to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mirroringEndpointGroupAssociations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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

  /// Gets a specific association.
  ///
  /// See https://google.aip.dev/131.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the association to retrieve. Format:
  /// projects/{project}/locations/{location}/mirroringEndpointGroupAssociations/{mirroring_endpoint_group_association}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mirroringEndpointGroupAssociations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MirroringEndpointGroupAssociation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MirroringEndpointGroupAssociation> get(
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
    return MirroringEndpointGroupAssociation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists associations in a given project and location.
  ///
  /// See https://google.aip.dev/132.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// associations. Example: `projects/123456789/locations/global`. See
  /// https://google.aip.dev/132 for more details.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression. See
  /// https://google.aip.dev/160#filtering for more details.
  ///
  /// [orderBy] - Optional. Sort expression. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  /// See https://google.aip.dev/158 for more details.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListMirroringEndpointGroups` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListMirroringEndpointGroups` must match the call that provided the page
  /// token. See https://google.aip.dev/158 for more details.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMirroringEndpointGroupAssociationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMirroringEndpointGroupAssociationsResponse> list(
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
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/mirroringEndpointGroupAssociations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMirroringEndpointGroupAssociationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an association.
  ///
  /// See https://google.aip.dev/134.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The resource name of this endpoint group
  /// association, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroupAssociations/my-eg-association`.
  /// See https://google.aip.dev/122 for more details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mirroringEndpointGroupAssociations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
  ///
  /// [updateMask] - Optional. The list of fields to update. Fields are
  /// specified relative to the association (e.g. `description`; *not*
  /// `mirroring_endpoint_group_association.description`). See
  /// https://google.aip.dev/161 for more details.
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
    MirroringEndpointGroupAssociation request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsMirroringEndpointGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMirroringEndpointGroupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an endpoint group in a given project and location.
  ///
  /// See https://google.aip.dev/133.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this endpoint group will be
  /// created. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [mirroringEndpointGroupId] - Required. The ID to use for the endpoint
  /// group, which will become the final component of the endpoint group's
  /// resource name.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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
    MirroringEndpointGroup request,
    core.String parent, {
    core.String? mirroringEndpointGroupId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mirroringEndpointGroupId != null)
        'mirroringEndpointGroupId': [mirroringEndpointGroupId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/mirroringEndpointGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an endpoint group.
  ///
  /// See https://google.aip.dev/135.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The endpoint group to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mirroringEndpointGroups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
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

  /// Gets a specific endpoint group.
  ///
  /// See https://google.aip.dev/131.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the endpoint group to retrieve. Format:
  /// projects/{project}/locations/{location}/mirroringEndpointGroups/{mirroring_endpoint_group}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mirroringEndpointGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MirroringEndpointGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MirroringEndpointGroup> get(
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
    return MirroringEndpointGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists endpoint groups in a given project and location.
  ///
  /// See https://google.aip.dev/132.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of endpoint
  /// groups. Example: `projects/123456789/locations/global`. See
  /// https://google.aip.dev/132 for more details.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression. See
  /// https://google.aip.dev/160#filtering for more details.
  ///
  /// [orderBy] - Optional. Sort expression. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  /// See https://google.aip.dev/158 for more details.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListMirroringEndpointGroups` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListMirroringEndpointGroups` must match the call that provided the page
  /// token. See https://google.aip.dev/158 for more details.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMirroringEndpointGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMirroringEndpointGroupsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/mirroringEndpointGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMirroringEndpointGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an endpoint group.
  ///
  /// See https://google.aip.dev/134.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. Identifier. The resource name of this endpoint group,
  /// for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`. See
  /// https://google.aip.dev/122 for more details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/mirroringEndpointGroups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique identifier for this request. Must be a
  /// UUID4. This request is only idempotent if a `request_id` is provided. See
  /// https://google.aip.dev/155 for more details.
  ///
  /// [updateMask] - Optional. The list of fields to update. Fields are
  /// specified relative to the endpoint group (e.g. `description`; *not*
  /// `mirroring_endpoint_group.description`). See https://google.aip.dev/161
  /// for more details.
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
    MirroringEndpointGroup request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsServerTlsPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServerTlsPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new ServerTlsPolicy in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the ServerTlsPolicy. Must be
  /// in the format `projects / * /locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [serverTlsPolicyId] - Required. Short name of the ServerTlsPolicy resource
  /// to be created. This value should be 1-63 characters long, containing only
  /// letters, numbers, hyphens, and underscores, and should not start with a
  /// number. E.g. "server_mtls_policy".
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
    ServerTlsPolicy request,
    core.String parent, {
    core.String? serverTlsPolicyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (serverTlsPolicyId != null) 'serverTlsPolicyId': [serverTlsPolicyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/serverTlsPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ServerTlsPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the ServerTlsPolicy to delete. Must be in the
  /// format `projects / * /locations/{location}/serverTlsPolicies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serverTlsPolicies/\[^/\]+$`.
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

  /// Gets details of a single ServerTlsPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the ServerTlsPolicy to get. Must be in the
  /// format `projects / * /locations/{location}/serverTlsPolicies / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serverTlsPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServerTlsPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServerTlsPolicy> get(
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
    return ServerTlsPolicy.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serverTlsPolicies/\[^/\]+$`.
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
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
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
    return GoogleIamV1Policy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists ServerTlsPolicies in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// ServerTlsPolicies should be listed, specified in the format `projects / *
  /// /locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of ServerTlsPolicies to return per call.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListServerTlsPoliciesResponse` Indicates that this is a continuation of a
  /// prior `ListServerTlsPolicies` call, and that the system should return the
  /// next page of data.
  ///
  /// [returnPartialSuccess] - Optional. Setting this field to `true` will opt
  /// the request into returning the resources that are reachable, and into
  /// including the names of those that were unreachable in the
  /// \[ListServerTlsPoliciesResponse.unreachable\] field. This can only be
  /// `true` when reading across collections e.g. when `parent` is set to
  /// `"projects/example/locations/-"`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServerTlsPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServerTlsPoliciesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/serverTlsPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServerTlsPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single ServerTlsPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the ServerTlsPolicy resource. It matches the
  /// pattern `projects / *
  /// /locations/{location}/serverTlsPolicies/{server_tls_policy}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serverTlsPolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the ServerTlsPolicy resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    ServerTlsPolicy request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serverTlsPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
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
    return GoogleIamV1Policy.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/serverTlsPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
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
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsTlsInspectionPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTlsInspectionPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new TlsInspectionPolicy in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the TlsInspectionPolicy. Must
  /// be in the format `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [tlsInspectionPolicyId] - Required. Short name of the TlsInspectionPolicy
  /// resource to be created. This value should be 1-63 characters long,
  /// containing only letters, numbers, hyphens, and underscores, and should not
  /// start with a number. E.g. "tls_inspection_policy1".
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
    TlsInspectionPolicy request,
    core.String parent, {
    core.String? tlsInspectionPolicyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (tlsInspectionPolicyId != null)
        'tlsInspectionPolicyId': [tlsInspectionPolicyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/tlsInspectionPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single TlsInspectionPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the TlsInspectionPolicy to delete. Must be in
  /// the format
  /// `projects/{project}/locations/{location}/tlsInspectionPolicies/{tls_inspection_policy}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tlsInspectionPolicies/\[^/\]+$`.
  ///
  /// [force] - If set to true, any rules for this TlsInspectionPolicy will also
  /// be deleted. (Otherwise, the request will only work if the
  /// TlsInspectionPolicy has no rules.)
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
      if (force != null) 'force': ['${force}'],
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

  /// Gets details of a single TlsInspectionPolicy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the TlsInspectionPolicy to get. Must be in
  /// the format
  /// `projects/{project}/locations/{location}/tlsInspectionPolicies/{tls_inspection_policy}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tlsInspectionPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TlsInspectionPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TlsInspectionPolicy> get(
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
    return TlsInspectionPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists TlsInspectionPolicies in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the
  /// TlsInspectionPolicies should be listed, specified in the format
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of TlsInspectionPolicies to return per call.
  ///
  /// [pageToken] - The value returned by the last
  /// 'ListTlsInspectionPoliciesResponse' Indicates that this is a continuation
  /// of a prior 'ListTlsInspectionPolicies' call, and that the system should
  /// return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTlsInspectionPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTlsInspectionPoliciesResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/tlsInspectionPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTlsInspectionPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single TlsInspectionPolicy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. Name is of the form
  /// projects/{project}/locations/{location}/tlsInspectionPolicies/{tls_inspection_policy}
  /// tls_inspection_policy should match the
  /// pattern:(^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tlsInspectionPolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the TlsInspectionPolicy resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    TlsInspectionPolicy request,
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

class ProjectsLocationsUrlListsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsUrlListsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new UrlList in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource of the UrlList. Must be in the
  /// format `projects / * /locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [urlListId] - Required. Short name of the UrlList resource to be created.
  /// This value should be 1-63 characters long, containing only letters,
  /// numbers, hyphens, and underscores, and should not start with a number.
  /// E.g. "url_list".
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
    UrlList request,
    core.String parent, {
    core.String? urlListId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (urlListId != null) 'urlListId': [urlListId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/urlLists';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single UrlList.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the UrlList to delete. Must be in the format
  /// `projects / * /locations/{location}/urlLists / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/urlLists/\[^/\]+$`.
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

  /// Gets details of a single UrlList.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the UrlList to get. Must be in the format
  /// `projects / * /locations/{location}/urlLists / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/urlLists/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UrlList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UrlList> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UrlList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists UrlLists in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location from which the UrlLists
  /// should be listed, specified in the format
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of UrlLists to return per call.
  ///
  /// [pageToken] - The value returned by the last `ListUrlListsResponse`
  /// Indicates that this is a continuation of a prior `ListUrlLists` call, and
  /// that the system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUrlListsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUrlListsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/urlLists';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUrlListsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single UrlList.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource provided by the user. Name is of
  /// the form projects/{project}/locations/{location}/urlLists/{url_list}
  /// url_list should match the
  /// pattern:(^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$).
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/urlLists/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the UrlList resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    UrlList request,
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

/// Request used by the AddAddressGroupItems method.
class AddAddressGroupItemsRequest {
  /// List of items to add.
  ///
  /// Required.
  core.List<core.String>? items;

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

  AddAddressGroupItemsRequest({this.items, this.requestId});

  AddAddressGroupItemsRequest.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (requestId != null) 'requestId': requestId!,
  };
}

/// AddressGroup is a resource that specifies how a collection of IP/DNS used in
/// Firewall Policy.
class AddressGroup {
  /// Capacity of the Address Group
  ///
  /// Required.
  core.int? capacity;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Free-text description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// List of items.
  ///
  /// Optional.
  core.List<core.String>? items;

  /// Set of label tags associated with the AddressGroup resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Name of the AddressGroup resource.
  ///
  /// It matches pattern `projects / * /locations/{location}/addressGroups/`.
  ///
  /// Required.
  core.String? name;

  /// List of supported purposes of the Address Group.
  ///
  /// Optional.
  core.List<core.String>? purpose;

  /// Server-defined fully-qualified URL for this resource.
  ///
  /// Output only.
  core.String? selfLink;

  /// The type of the Address Group.
  ///
  /// Possible values are "IPv4" or "IPV6".
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value.
  /// - "IPV4" : IP v4 ranges.
  /// - "IPV6" : IP v6 ranges.
  core.String? type;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  AddressGroup({
    this.capacity,
    this.createTime,
    this.description,
    this.items,
    this.labels,
    this.name,
    this.purpose,
    this.selfLink,
    this.type,
    this.updateTime,
  });

  AddressGroup.fromJson(core.Map json_)
    : this(
        capacity: json_['capacity'] as core.int?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        items:
            (json_['items'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        purpose:
            (json_['purpose'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        selfLink: json_['selfLink'] as core.String?,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (capacity != null) 'capacity': capacity!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (items != null) 'items': items!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (purpose != null) 'purpose': purpose!,
    if (selfLink != null) 'selfLink': selfLink!,
    if (type != null) 'type': type!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Defines what action to take for antivirus threats per protocol.
class AntivirusOverride {
  /// Threat action override.
  ///
  /// For some threat types, only a subset of actions applies.
  ///
  /// Required.
  /// Possible string values are:
  /// - "THREAT_ACTION_UNSPECIFIED" : Threat action not specified.
  /// - "DEFAULT_ACTION" : The default action (as specified by the vendor) is
  /// taken.
  /// - "ALLOW" : The packet matching this rule will be allowed to transmit.
  /// - "ALERT" : The packet matching this rule will be allowed to transmit, but
  /// a threat_log entry will be sent to the consumer project.
  /// - "DENY" : The packet matching this rule will be dropped, and a threat_log
  /// entry will be sent to the consumer project.
  core.String? action;

  /// Protocol to match.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PROTOCOL_UNSPECIFIED" : Protocol not specified.
  /// - "SMTP" : SMTP protocol
  /// - "SMB" : SMB protocol
  /// - "POP3" : POP3 protocol
  /// - "IMAP" : IMAP protocol
  /// - "HTTP2" : HTTP2 protocol
  /// - "HTTP" : HTTP protocol
  /// - "FTP" : FTP protocol
  core.String? protocol;

  AntivirusOverride({this.action, this.protocol});

  AntivirusOverride.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        protocol: json_['protocol'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (protocol != null) 'protocol': protocol!,
  };
}

/// AuthorizationPolicy is a resource that specifies how a server should
/// authorize incoming connections.
///
/// This resource in itself does not change the configuration unless it's
/// attached to a target https proxy or endpoint config selector resource.
class AuthorizationPolicy {
  /// The action to take when a rule match is found.
  ///
  /// Possible values are "ALLOW" or "DENY".
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : Default value.
  /// - "ALLOW" : Grant access.
  /// - "DENY" : Deny access. Deny rules should be avoided unless they are used
  /// to provide a default "deny all" fallback.
  core.String? action;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Free-text description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// Set of label tags associated with the AuthorizationPolicy resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Name of the AuthorizationPolicy resource.
  ///
  /// It matches pattern
  /// `projects/{project}/locations/{location}/authorizationPolicies/`.
  ///
  /// Required.
  core.String? name;

  /// List of rules to match.
  ///
  /// Note that at least one of the rules must match in order for the action
  /// specified in the 'action' field to be taken. A rule is a match if there is
  /// a matching source and destination. If left blank, the action specified in
  /// the `action` field will be applied on every request.
  ///
  /// Optional.
  core.List<Rule>? rules;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  AuthorizationPolicy({
    this.action,
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.rules,
    this.updateTime,
  });

  AuthorizationPolicy.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        rules:
            (json_['rules'] as core.List?)
                ?.map(
                  (value) => Rule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (rules != null) 'rules': rules!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// `AuthzPolicy` is a resource that allows to forward traffic to a callout
/// backend designed to scan the traffic for security purposes.
class AuthzPolicy {
  /// Can be one of `ALLOW`, `DENY`, `CUSTOM`.
  ///
  /// When the action is `CUSTOM`, `customProvider` must be specified. When the
  /// action is `ALLOW`, only requests matching the policy will be allowed. When
  /// the action is `DENY`, only requests matching the policy will be denied.
  /// When a request arrives, the policies are evaluated in the following order:
  /// 1. If there is a `CUSTOM` policy that matches the request, the `CUSTOM`
  /// policy is evaluated using the custom authorization providers and the
  /// request is denied if the provider rejects the request. 2. If there are any
  /// `DENY` policies that match the request, the request is denied. 3. If there
  /// are no `ALLOW` policies for the resource or if any of the `ALLOW` policies
  /// match the request, the request is allowed. 4. Else the request is denied
  /// by default if none of the configured AuthzPolicies with `ALLOW` action
  /// match the request.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUTHZ_ACTION_UNSPECIFIED" : Unspecified action.
  /// - "ALLOW" : Allow request to pass through to the backend.
  /// - "DENY" : Deny the request and return a HTTP 404 to the client.
  /// - "CUSTOM" : Delegate the authorization decision to an external
  /// authorization engine.
  core.String? action;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Required if the action is `CUSTOM`.
  ///
  /// Allows delegating authorization decisions to Cloud IAP or to Service
  /// Extensions. One of `cloudIap` or `authzExtension` must be specified.
  ///
  /// Optional.
  AuthzPolicyCustomProvider? customProvider;

  /// A human-readable description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// A list of authorization HTTP rules to match against the incoming request.
  ///
  /// A policy match occurs when at least one HTTP rule matches the request or
  /// when no HTTP rules are specified in the policy. At least one HTTP Rule is
  /// required for Allow or Deny Action. Limited to 5 rules.
  ///
  /// Optional.
  core.List<AuthzPolicyAuthzRule>? httpRules;

  /// Set of labels associated with the `AuthzPolicy` resource.
  ///
  /// The format must comply with \[the following
  /// requirements\](/compute/docs/labeling-resources#requirements).
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Name of the `AuthzPolicy` resource in the following format:
  /// `projects/{project}/locations/{location}/authzPolicies/{authz_policy}`.
  ///
  /// Required.
  core.String? name;

  /// Specifies the set of resources to which this policy should be applied to.
  ///
  /// Required.
  AuthzPolicyTarget? target;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  AuthzPolicy({
    this.action,
    this.createTime,
    this.customProvider,
    this.description,
    this.httpRules,
    this.labels,
    this.name,
    this.target,
    this.updateTime,
  });

  AuthzPolicy.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        customProvider:
            json_.containsKey('customProvider')
                ? AuthzPolicyCustomProvider.fromJson(
                  json_['customProvider']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        httpRules:
            (json_['httpRules'] as core.List?)
                ?.map(
                  (value) => AuthzPolicyAuthzRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        target:
            json_.containsKey('target')
                ? AuthzPolicyTarget.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (createTime != null) 'createTime': createTime!,
    if (customProvider != null) 'customProvider': customProvider!,
    if (description != null) 'description': description!,
    if (httpRules != null) 'httpRules': httpRules!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (target != null) 'target': target!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Conditions to match against the incoming request.
class AuthzPolicyAuthzRule {
  /// Describes properties of a source of a request.
  ///
  /// Optional.
  AuthzPolicyAuthzRuleFrom? from;

  /// Describes properties of a target of a request.
  ///
  /// Optional.
  AuthzPolicyAuthzRuleTo? to;

  /// CEL expression that describes the conditions to be satisfied for the
  /// action.
  ///
  /// The result of the CEL expression is ANDed with the from and to. Refer to
  /// the CEL language reference for a list of available attributes.
  ///
  /// Optional.
  core.String? when;

  AuthzPolicyAuthzRule({this.from, this.to, this.when});

  AuthzPolicyAuthzRule.fromJson(core.Map json_)
    : this(
        from:
            json_.containsKey('from')
                ? AuthzPolicyAuthzRuleFrom.fromJson(
                  json_['from'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        to:
            json_.containsKey('to')
                ? AuthzPolicyAuthzRuleTo.fromJson(
                  json_['to'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        when: json_['when'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (from != null) 'from': from!,
    if (to != null) 'to': to!,
    if (when != null) 'when': when!,
  };
}

/// Describes properties of one or more sources of a request.
class AuthzPolicyAuthzRuleFrom {
  /// Describes the negated properties of request sources.
  ///
  /// Matches requests from sources that do not match the criteria specified in
  /// this field. At least one of sources or notSources must be specified.
  ///
  /// Optional.
  core.List<AuthzPolicyAuthzRuleFromRequestSource>? notSources;

  /// Describes the properties of a request's sources.
  ///
  /// At least one of sources or notSources must be specified. Limited to 1
  /// source. A match occurs when ANY source (in sources or notSources) matches
  /// the request. Within a single source, the match follows AND semantics
  /// across fields and OR semantics within a single field, i.e. a match occurs
  /// when ANY principal matches AND ANY ipBlocks match.
  ///
  /// Optional.
  core.List<AuthzPolicyAuthzRuleFromRequestSource>? sources;

  AuthzPolicyAuthzRuleFrom({this.notSources, this.sources});

  AuthzPolicyAuthzRuleFrom.fromJson(core.Map json_)
    : this(
        notSources:
            (json_['notSources'] as core.List?)
                ?.map(
                  (value) => AuthzPolicyAuthzRuleFromRequestSource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sources:
            (json_['sources'] as core.List?)
                ?.map(
                  (value) => AuthzPolicyAuthzRuleFromRequestSource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (notSources != null) 'notSources': notSources!,
    if (sources != null) 'sources': sources!,
  };
}

/// Describes the properties of a single source.
class AuthzPolicyAuthzRuleFromRequestSource {
  /// A list of IP addresses or IP address ranges to match against the source IP
  /// address of the request.
  ///
  /// Limited to 5 ip_blocks.
  ///
  /// Optional.
  core.List<AuthzPolicyAuthzRuleIpBlock>? ipBlocks;

  /// A list of identities derived from the client's certificate.
  ///
  /// This field will not match on a request unless frontend mutual TLS is
  /// enabled for the forwarding rule or Gateway and the client certificate has
  /// been successfully validated by mTLS. Each identity is a string whose value
  /// is matched against a list of URI SANs, DNS Name SANs, or the common name
  /// in the client's certificate. A match happens when any principal matches
  /// with the rule. Limited to 5 principals.
  ///
  /// Optional.
  core.List<AuthzPolicyAuthzRulePrincipal>? principals;

  /// A list of resources to match against the resource of the source VM of a
  /// request.
  ///
  /// Limited to 5 resources.
  ///
  /// Optional.
  core.List<AuthzPolicyAuthzRuleRequestResource>? resources;

  AuthzPolicyAuthzRuleFromRequestSource({
    this.ipBlocks,
    this.principals,
    this.resources,
  });

  AuthzPolicyAuthzRuleFromRequestSource.fromJson(core.Map json_)
    : this(
        ipBlocks:
            (json_['ipBlocks'] as core.List?)
                ?.map(
                  (value) => AuthzPolicyAuthzRuleIpBlock.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        principals:
            (json_['principals'] as core.List?)
                ?.map(
                  (value) => AuthzPolicyAuthzRulePrincipal.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        resources:
            (json_['resources'] as core.List?)
                ?.map(
                  (value) => AuthzPolicyAuthzRuleRequestResource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ipBlocks != null) 'ipBlocks': ipBlocks!,
    if (principals != null) 'principals': principals!,
    if (resources != null) 'resources': resources!,
  };
}

/// Determines how a HTTP header should be matched.
class AuthzPolicyAuthzRuleHeaderMatch {
  /// Specifies the name of the header in the request.
  ///
  /// Optional.
  core.String? name;

  /// Specifies how the header match will be performed.
  ///
  /// Optional.
  AuthzPolicyAuthzRuleStringMatch? value;

  AuthzPolicyAuthzRuleHeaderMatch({this.name, this.value});

  AuthzPolicyAuthzRuleHeaderMatch.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        value:
            json_.containsKey('value')
                ? AuthzPolicyAuthzRuleStringMatch.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (value != null) 'value': value!,
  };
}

/// Represents a range of IP Addresses.
class AuthzPolicyAuthzRuleIpBlock {
  /// The length of the address range.
  ///
  /// Required.
  core.int? length;

  /// The address prefix.
  ///
  /// Required.
  core.String? prefix;

  AuthzPolicyAuthzRuleIpBlock({this.length, this.prefix});

  AuthzPolicyAuthzRuleIpBlock.fromJson(core.Map json_)
    : this(
        length: json_['length'] as core.int?,
        prefix: json_['prefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (length != null) 'length': length!,
    if (prefix != null) 'prefix': prefix!,
  };
}

/// Describes the properties of a principal to be matched against.
class AuthzPolicyAuthzRulePrincipal {
  /// A non-empty string whose value is matched against the principal value
  /// based on the principal_selector.
  ///
  /// Only exact match can be applied for CLIENT_CERT_URI_SAN,
  /// CLIENT_CERT_DNS_NAME_SAN, CLIENT_CERT_COMMON_NAME selectors.
  ///
  /// Required.
  AuthzPolicyAuthzRuleStringMatch? principal;

  /// An enum to decide what principal value the principal rule will match
  /// against.
  ///
  /// If not specified, the PrincipalSelector is CLIENT_CERT_URI_SAN.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRINCIPAL_SELECTOR_UNSPECIFIED" : Unspecified principal selector. It
  /// will be treated as CLIENT_CERT_URI_SAN by default.
  /// - "CLIENT_CERT_URI_SAN" : The principal rule is matched against a list of
  /// URI SANs in the validated client’s certificate. A match happens when there
  /// is any exact URI SAN value match. This is the default principal selector.
  /// - "CLIENT_CERT_DNS_NAME_SAN" : The principal rule is matched against a
  /// list of DNS Name SANs in the validated client’s certificate. A match
  /// happens when there is any exact DNS Name SAN value match.
  /// - "CLIENT_CERT_COMMON_NAME" : The principal rule is matched against the
  /// common name in the client’s certificate. Authorization against multiple
  /// common names in the client certificate is not supported. Requests with
  /// multiple common names in the client certificate will be rejected if
  /// CLIENT_CERT_COMMON_NAME is set as the principal selector. A match happens
  /// when there is an exact common name value match. This is only applicable
  /// for Application Load Balancers except for classic Global External
  /// Application load balancer. CLIENT_CERT_COMMON_NAME is not supported for
  /// INTERNAL_SELF_MANAGED load balancing scheme.
  core.String? principalSelector;

  AuthzPolicyAuthzRulePrincipal({this.principal, this.principalSelector});

  AuthzPolicyAuthzRulePrincipal.fromJson(core.Map json_)
    : this(
        principal:
            json_.containsKey('principal')
                ? AuthzPolicyAuthzRuleStringMatch.fromJson(
                  json_['principal'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        principalSelector: json_['principalSelector'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (principal != null) 'principal': principal!,
    if (principalSelector != null) 'principalSelector': principalSelector!,
  };
}

/// Describes the properties of a client VM resource accessing the internal
/// application load balancers.
class AuthzPolicyAuthzRuleRequestResource {
  /// An IAM service account to match against the source service account of the
  /// VM sending the request.
  ///
  /// Optional.
  AuthzPolicyAuthzRuleStringMatch? iamServiceAccount;

  /// A list of resource tag value permanent IDs to match against the resource
  /// manager tags value associated with the source VM of a request.
  ///
  /// Optional.
  AuthzPolicyAuthzRuleRequestResourceTagValueIdSet? tagValueIdSet;

  AuthzPolicyAuthzRuleRequestResource({
    this.iamServiceAccount,
    this.tagValueIdSet,
  });

  AuthzPolicyAuthzRuleRequestResource.fromJson(core.Map json_)
    : this(
        iamServiceAccount:
            json_.containsKey('iamServiceAccount')
                ? AuthzPolicyAuthzRuleStringMatch.fromJson(
                  json_['iamServiceAccount']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tagValueIdSet:
            json_.containsKey('tagValueIdSet')
                ? AuthzPolicyAuthzRuleRequestResourceTagValueIdSet.fromJson(
                  json_['tagValueIdSet'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (iamServiceAccount != null) 'iamServiceAccount': iamServiceAccount!,
    if (tagValueIdSet != null) 'tagValueIdSet': tagValueIdSet!,
  };
}

/// Describes a set of resource tag value permanent IDs to match against the
/// resource manager tags value associated with the source VM of a request.
class AuthzPolicyAuthzRuleRequestResourceTagValueIdSet {
  /// A list of resource tag value permanent IDs to match against the resource
  /// manager tags value associated with the source VM of a request.
  ///
  /// The match follows AND semantics which means all the ids must match.
  /// Limited to 5 matches.
  ///
  /// Required.
  core.List<core.String>? ids;

  AuthzPolicyAuthzRuleRequestResourceTagValueIdSet({this.ids});

  AuthzPolicyAuthzRuleRequestResourceTagValueIdSet.fromJson(core.Map json_)
    : this(
        ids:
            (json_['ids'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ids != null) 'ids': ids!,
  };
}

/// Determines how a string value should be matched.
class AuthzPolicyAuthzRuleStringMatch {
  /// The input string must have the substring specified here.
  ///
  /// Note: empty contains match is not allowed, please use regex instead.
  /// Examples: * ``abc`` matches the value ``xyz.abc.def``
  core.String? contains;

  /// The input string must match exactly the string specified here.
  ///
  /// Examples: * ``abc`` only matches the value ``abc``.
  core.String? exact;

  /// If true, indicates the exact/prefix/suffix/contains matching should be
  /// case insensitive.
  ///
  /// For example, the matcher ``data`` will match both input string ``Data``
  /// and ``data`` if set to true.
  core.bool? ignoreCase;

  /// The input string must have the prefix specified here.
  ///
  /// Note: empty prefix is not allowed, please use regex instead. Examples: *
  /// ``abc`` matches the value ``abc.xyz``
  core.String? prefix;

  /// The input string must have the suffix specified here.
  ///
  /// Note: empty prefix is not allowed, please use regex instead. Examples: *
  /// ``abc`` matches the value ``xyz.abc``
  core.String? suffix;

  AuthzPolicyAuthzRuleStringMatch({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.suffix,
  });

  AuthzPolicyAuthzRuleStringMatch.fromJson(core.Map json_)
    : this(
        contains: json_['contains'] as core.String?,
        exact: json_['exact'] as core.String?,
        ignoreCase: json_['ignoreCase'] as core.bool?,
        prefix: json_['prefix'] as core.String?,
        suffix: json_['suffix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (contains != null) 'contains': contains!,
    if (exact != null) 'exact': exact!,
    if (ignoreCase != null) 'ignoreCase': ignoreCase!,
    if (prefix != null) 'prefix': prefix!,
    if (suffix != null) 'suffix': suffix!,
  };
}

/// Describes properties of one or more targets of a request.
class AuthzPolicyAuthzRuleTo {
  /// Describes the negated properties of the targets of a request.
  ///
  /// Matches requests for operations that do not match the criteria specified
  /// in this field. At least one of operations or notOperations must be
  /// specified.
  ///
  /// Optional.
  core.List<AuthzPolicyAuthzRuleToRequestOperation>? notOperations;

  /// Describes properties of one or more targets of a request.
  ///
  /// At least one of operations or notOperations must be specified. Limited to
  /// 1 operation. A match occurs when ANY operation (in operations or
  /// notOperations) matches. Within an operation, the match follows AND
  /// semantics across fields and OR semantics within a field, i.e. a match
  /// occurs when ANY path matches AND ANY header matches and ANY method
  /// matches.
  ///
  /// Optional.
  core.List<AuthzPolicyAuthzRuleToRequestOperation>? operations;

  AuthzPolicyAuthzRuleTo({this.notOperations, this.operations});

  AuthzPolicyAuthzRuleTo.fromJson(core.Map json_)
    : this(
        notOperations:
            (json_['notOperations'] as core.List?)
                ?.map(
                  (value) => AuthzPolicyAuthzRuleToRequestOperation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => AuthzPolicyAuthzRuleToRequestOperation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (notOperations != null) 'notOperations': notOperations!,
    if (operations != null) 'operations': operations!,
  };
}

/// Describes properties of one or more targets of a request.
class AuthzPolicyAuthzRuleToRequestOperation {
  /// A list of headers to match against in http header.
  ///
  /// Optional.
  AuthzPolicyAuthzRuleToRequestOperationHeaderSet? headerSet;

  /// A list of HTTP Hosts to match against.
  ///
  /// The match can be one of exact, prefix, suffix, or contains (substring
  /// match). Matches are always case sensitive unless the ignoreCase is set.
  /// Limited to 5 matches.
  ///
  /// Optional.
  core.List<AuthzPolicyAuthzRuleStringMatch>? hosts;

  /// A list of HTTP methods to match against.
  ///
  /// Each entry must be a valid HTTP method name (GET, PUT, POST, HEAD, PATCH,
  /// DELETE, OPTIONS). It only allows exact match and is always case sensitive.
  ///
  /// Optional.
  core.List<core.String>? methods;

  /// A list of paths to match against.
  ///
  /// The match can be one of exact, prefix, suffix, or contains (substring
  /// match). Matches are always case sensitive unless the ignoreCase is set.
  /// Limited to 5 matches. Note that this path match includes the query
  /// parameters. For gRPC services, this should be a fully-qualified name of
  /// the form /package.service/method.
  ///
  /// Optional.
  core.List<AuthzPolicyAuthzRuleStringMatch>? paths;

  AuthzPolicyAuthzRuleToRequestOperation({
    this.headerSet,
    this.hosts,
    this.methods,
    this.paths,
  });

  AuthzPolicyAuthzRuleToRequestOperation.fromJson(core.Map json_)
    : this(
        headerSet:
            json_.containsKey('headerSet')
                ? AuthzPolicyAuthzRuleToRequestOperationHeaderSet.fromJson(
                  json_['headerSet'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        hosts:
            (json_['hosts'] as core.List?)
                ?.map(
                  (value) => AuthzPolicyAuthzRuleStringMatch.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        methods:
            (json_['methods'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        paths:
            (json_['paths'] as core.List?)
                ?.map(
                  (value) => AuthzPolicyAuthzRuleStringMatch.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (headerSet != null) 'headerSet': headerSet!,
    if (hosts != null) 'hosts': hosts!,
    if (methods != null) 'methods': methods!,
    if (paths != null) 'paths': paths!,
  };
}

/// Describes a set of HTTP headers to match against.
class AuthzPolicyAuthzRuleToRequestOperationHeaderSet {
  /// A list of headers to match against in http header.
  ///
  /// The match can be one of exact, prefix, suffix, or contains (substring
  /// match). The match follows AND semantics which means all the headers must
  /// match. Matches are always case sensitive unless the ignoreCase is set.
  /// Limited to 5 matches.
  ///
  /// Required.
  core.List<AuthzPolicyAuthzRuleHeaderMatch>? headers;

  AuthzPolicyAuthzRuleToRequestOperationHeaderSet({this.headers});

  AuthzPolicyAuthzRuleToRequestOperationHeaderSet.fromJson(core.Map json_)
    : this(
        headers:
            (json_['headers'] as core.List?)
                ?.map(
                  (value) => AuthzPolicyAuthzRuleHeaderMatch.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (headers != null) 'headers': headers!,
  };
}

/// Allows delegating authorization decisions to Cloud IAP or to Service
/// Extensions.
class AuthzPolicyCustomProvider {
  /// Delegate authorization decision to user authored Service Extension.
  ///
  /// Only one of cloudIap or authzExtension can be specified.
  ///
  /// Optional.
  AuthzPolicyCustomProviderAuthzExtension? authzExtension;

  /// Delegates authorization decisions to Cloud IAP.
  ///
  /// Applicable only for managed load balancers. Enabling Cloud IAP at the
  /// AuthzPolicy level is not compatible with Cloud IAP settings in the
  /// BackendService. Enabling IAP in both places will result in request
  /// failure. Ensure that IAP is enabled in either the AuthzPolicy or the
  /// BackendService but not in both places.
  ///
  /// Optional.
  AuthzPolicyCustomProviderCloudIap? cloudIap;

  AuthzPolicyCustomProvider({this.authzExtension, this.cloudIap});

  AuthzPolicyCustomProvider.fromJson(core.Map json_)
    : this(
        authzExtension:
            json_.containsKey('authzExtension')
                ? AuthzPolicyCustomProviderAuthzExtension.fromJson(
                  json_['authzExtension']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cloudIap:
            json_.containsKey('cloudIap')
                ? AuthzPolicyCustomProviderCloudIap.fromJson(
                  json_['cloudIap'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authzExtension != null) 'authzExtension': authzExtension!,
    if (cloudIap != null) 'cloudIap': cloudIap!,
  };
}

/// Delegate authorization decision to user authored extension.
///
/// Only one of cloudIap or authzExtension can be specified.
///
/// Optional.
class AuthzPolicyCustomProviderAuthzExtension {
  /// A list of references to authorization extensions that will be invoked for
  /// requests matching this policy.
  ///
  /// Limited to 1 custom provider.
  ///
  /// Required.
  core.List<core.String>? resources;

  AuthzPolicyCustomProviderAuthzExtension({this.resources});

  AuthzPolicyCustomProviderAuthzExtension.fromJson(core.Map json_)
    : this(
        resources:
            (json_['resources'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (resources != null) 'resources': resources!,
  };
}

/// Delegates authorization decisions to Cloud IAP.
///
/// Applicable only for managed load balancers. Enabling Cloud IAP at the
/// AuthzPolicy level is not compatible with Cloud IAP settings in the
/// BackendService. Enabling IAP in both places will result in request failure.
/// Ensure that IAP is enabled in either the AuthzPolicy or the BackendService
/// but not in both places.
///
/// Optional.
typedef AuthzPolicyCustomProviderCloudIap = $Empty;

/// Specifies the set of targets to which this policy should be applied to.
class AuthzPolicyTarget {
  /// All gateways and forwarding rules referenced by this policy and extensions
  /// must share the same load balancing scheme.
  ///
  /// Supported values: `INTERNAL_MANAGED` and `EXTERNAL_MANAGED`. For more
  /// information, refer to
  /// [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service).
  ///
  /// Required.
  /// Possible string values are:
  /// - "LOAD_BALANCING_SCHEME_UNSPECIFIED" : Default value. Do not use.
  /// - "INTERNAL_MANAGED" : Signifies that this is used for Regional internal
  /// or Cross-region internal Application Load Balancing.
  /// - "EXTERNAL_MANAGED" : Signifies that this is used for Global external or
  /// Regional external Application Load Balancing.
  /// - "INTERNAL_SELF_MANAGED" : Signifies that this is used for Cloud Service
  /// Mesh. Meant for use by CSM GKE controller only.
  core.String? loadBalancingScheme;

  /// A list of references to the Forwarding Rules on which this policy will be
  /// applied.
  ///
  /// Required.
  core.List<core.String>? resources;

  AuthzPolicyTarget({this.loadBalancingScheme, this.resources});

  AuthzPolicyTarget.fromJson(core.Map json_)
    : this(
        loadBalancingScheme: json_['loadBalancingScheme'] as core.String?,
        resources:
            (json_['resources'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (loadBalancingScheme != null)
      'loadBalancingScheme': loadBalancingScheme!,
    if (resources != null) 'resources': resources!,
  };
}

/// BackendAuthenticationConfig message groups the TrustConfig together with
/// other settings that control how the load balancer authenticates, and
/// expresses its identity to, the backend: * `trustConfig` is the attached
/// TrustConfig.
///
/// * `wellKnownRoots` indicates whether the load balance should trust backend
/// server certificates that are issued by public certificate authorities, in
/// addition to certificates trusted by the TrustConfig. * `clientCertificate`
/// is a client certificate that the load balancer uses to express its identity
/// to the backend, if the connection to the backend uses mTLS. You can attach
/// the BackendAuthenticationConfig to the load balancer's BackendService
/// directly determining how that BackendService negotiates TLS.
class BackendAuthenticationConfig {
  /// A reference to a certificatemanager.googleapis.com.Certificate resource.
  ///
  /// This is a relative resource path following the form
  /// "projects/{project}/locations/{location}/certificates/{certificate}". Used
  /// by a BackendService to negotiate mTLS when the backend connection uses TLS
  /// and the backend requests a client certificate. Must have a CLIENT_AUTH
  /// scope.
  ///
  /// Optional.
  core.String? clientCertificate;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Free-text description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// Etag of the resource.
  ///
  /// Output only.
  core.String? etag;

  /// Set of label tags associated with the resource.
  core.Map<core.String, core.String>? labels;

  /// Name of the BackendAuthenticationConfig resource.
  ///
  /// It matches the pattern `projects / *
  /// /locations/{location}/backendAuthenticationConfigs/{backend_authentication_config}`
  ///
  /// Required.
  core.String? name;

  /// A reference to a TrustConfig resource from the
  /// certificatemanager.googleapis.com namespace.
  ///
  /// This is a relative resource path following the form
  /// "projects/{project}/locations/{location}/trustConfigs/{trust_config}". A
  /// BackendService uses the chain of trust represented by this TrustConfig, if
  /// specified, to validate the server certificates presented by the backend.
  /// Required unless wellKnownRoots is set to PUBLIC_ROOTS.
  ///
  /// Optional.
  core.String? trustConfig;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Well known roots to use for server certificate validation.
  /// Possible string values are:
  /// - "WELL_KNOWN_ROOTS_UNSPECIFIED" : Equivalent to NONE.
  /// - "NONE" : The BackendService will only validate server certificates
  /// against roots specified in TrustConfig.
  /// - "PUBLIC_ROOTS" : The BackendService uses a set of well-known public
  /// roots, in addition to any roots specified in the trustConfig field, when
  /// validating the server certificates presented by the backend. Validation
  /// with these roots is only considered when the TlsSettings.sni field in the
  /// BackendService is set. The well-known roots are a set of root CAs managed
  /// by Google. CAs in this set can be added or removed without notice.
  core.String? wellKnownRoots;

  BackendAuthenticationConfig({
    this.clientCertificate,
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.trustConfig,
    this.updateTime,
    this.wellKnownRoots,
  });

  BackendAuthenticationConfig.fromJson(core.Map json_)
    : this(
        clientCertificate: json_['clientCertificate'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        trustConfig: json_['trustConfig'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        wellKnownRoots: json_['wellKnownRoots'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientCertificate != null) 'clientCertificate': clientCertificate!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (trustConfig != null) 'trustConfig': trustConfig!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (wellKnownRoots != null) 'wellKnownRoots': wellKnownRoots!,
  };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Specification of a TLS certificate provider instance.
///
/// Workloads may have one or more CertificateProvider instances (plugins) and
/// one of them is enabled and configured by specifying this message. Workloads
/// use the values from this message to locate and load the CertificateProvider
/// instance configuration.
class CertificateProviderInstance {
  /// Plugin instance name, used to locate and load CertificateProvider instance
  /// configuration.
  ///
  /// Set to "google_cloud_private_spiffe" to use Certificate Authority Service
  /// certificate provider instance.
  ///
  /// Required.
  core.String? pluginInstance;

  CertificateProviderInstance({this.pluginInstance});

  CertificateProviderInstance.fromJson(core.Map json_)
    : this(pluginInstance: json_['pluginInstance'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (pluginInstance != null) 'pluginInstance': pluginInstance!,
  };
}

/// ClientTlsPolicy is a resource that specifies how a client should
/// authenticate connections to backends of a service.
///
/// This resource itself does not affect configuration unless it is attached to
/// a backend service resource.
class ClientTlsPolicy {
  /// Defines a mechanism to provision client identity (public and private keys)
  /// for peer to peer authentication.
  ///
  /// The presence of this dictates mTLS.
  ///
  /// Optional.
  GoogleCloudNetworksecurityV1CertificateProvider? clientCertificate;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Free-text description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// Set of label tags associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Name of the ClientTlsPolicy resource.
  ///
  /// It matches the pattern
  /// `projects/{project}/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  ///
  /// Required.
  core.String? name;

  /// Defines the mechanism to obtain the Certificate Authority certificate to
  /// validate the server certificate.
  ///
  /// If empty, client does not validate the server certificate.
  ///
  /// Optional.
  core.List<ValidationCA>? serverValidationCa;

  /// Server Name Indication string to present to the server during TLS
  /// handshake.
  ///
  /// E.g: "secure.example.com".
  ///
  /// Optional.
  core.String? sni;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  ClientTlsPolicy({
    this.clientCertificate,
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.serverValidationCa,
    this.sni,
    this.updateTime,
  });

  ClientTlsPolicy.fromJson(core.Map json_)
    : this(
        clientCertificate:
            json_.containsKey('clientCertificate')
                ? GoogleCloudNetworksecurityV1CertificateProvider.fromJson(
                  json_['clientCertificate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        serverValidationCa:
            (json_['serverValidationCa'] as core.List?)
                ?.map(
                  (value) => ValidationCA.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sni: json_['sni'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientCertificate != null) 'clientCertificate': clientCertificate!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (serverValidationCa != null) 'serverValidationCa': serverValidationCa!,
    if (sni != null) 'sni': sni!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Request used by the CloneAddressGroupItems method.
class CloneAddressGroupItemsRequest {
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

  /// Source address group to clone items from.
  ///
  /// Required.
  core.String? sourceAddressGroup;

  CloneAddressGroupItemsRequest({this.requestId, this.sourceAddressGroup});

  CloneAddressGroupItemsRequest.fromJson(core.Map json_)
    : this(
        requestId: json_['requestId'] as core.String?,
        sourceAddressGroup: json_['sourceAddressGroup'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestId != null) 'requestId': requestId!,
    if (sourceAddressGroup != null) 'sourceAddressGroup': sourceAddressGroup!,
  };
}

/// CustomInterceptProfile defines in-band integration behavior (intercept).
///
/// It is used by firewall rules with an APPLY_SECURITY_PROFILE_GROUP action.
class CustomInterceptProfile {
  /// The target InterceptEndpointGroup.
  ///
  /// When a firewall rule with this security profile attached matches a packet,
  /// the packet will be intercepted to the location-local target in this group.
  ///
  /// Required.
  core.String? interceptEndpointGroup;

  CustomInterceptProfile({this.interceptEndpointGroup});

  CustomInterceptProfile.fromJson(core.Map json_)
    : this(
        interceptEndpointGroup: json_['interceptEndpointGroup'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (interceptEndpointGroup != null)
      'interceptEndpointGroup': interceptEndpointGroup!,
  };
}

/// CustomMirroringProfile defines out-of-band integration behavior (mirroring).
///
/// It is used by mirroring rules with a MIRROR action.
class CustomMirroringProfile {
  /// The target MirroringEndpointGroup.
  ///
  /// When a mirroring rule with this security profile attached matches a
  /// packet, a replica will be mirrored to the location-local target in this
  /// group.
  ///
  /// Required.
  core.String? mirroringEndpointGroup;

  CustomMirroringProfile({this.mirroringEndpointGroup});

  CustomMirroringProfile.fromJson(core.Map json_)
    : this(
        mirroringEndpointGroup: json_['mirroringEndpointGroup'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mirroringEndpointGroup != null)
      'mirroringEndpointGroup': mirroringEndpointGroup!,
  };
}

/// Specification of traffic destination attributes.
class Destination {
  /// List of host names to match.
  ///
  /// Matched against the ":authority" header in http requests. At least one
  /// host should match. Each host can be an exact match, or a prefix match
  /// (example "mydomain.*") or a suffix match (example "*.myorg.com") or a
  /// presence (any) match "*".
  ///
  /// Required.
  core.List<core.String>? hosts;

  /// Match against key:value pair in http header.
  ///
  /// Provides a flexible match based on HTTP headers, for potentially advanced
  /// use cases. At least one header should match. Avoid using header matches to
  /// make authorization decisions unless there is a strong guarantee that
  /// requests arrive through a trusted client or proxy.
  ///
  /// Optional.
  HttpHeaderMatch? httpHeaderMatch;

  /// A list of HTTP methods to match.
  ///
  /// At least one method should match. Should not be set for gRPC services.
  ///
  /// Optional.
  core.List<core.String>? methods;

  /// List of destination ports to match.
  ///
  /// At least one port should match.
  ///
  /// Required.
  core.List<core.int>? ports;

  Destination({this.hosts, this.httpHeaderMatch, this.methods, this.ports});

  Destination.fromJson(core.Map json_)
    : this(
        hosts:
            (json_['hosts'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        httpHeaderMatch:
            json_.containsKey('httpHeaderMatch')
                ? HttpHeaderMatch.fromJson(
                  json_['httpHeaderMatch']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        methods:
            (json_['methods'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        ports:
            (json_['ports'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (hosts != null) 'hosts': hosts!,
    if (httpHeaderMatch != null) 'httpHeaderMatch': httpHeaderMatch!,
    if (methods != null) 'methods': methods!,
    if (ports != null) 'ports': ports!,
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

/// Message describing Endpoint object
class FirewallEndpoint {
  /// List of networks that are associated with this endpoint in the local zone.
  ///
  /// This is a projection of the FirewallEndpointAssociations pointing at this
  /// endpoint. A network will only appear in this list after traffic routing is
  /// fully configured. Format: projects/{project}/global/networks/{name}.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? associatedNetworks;

  /// List of FirewallEndpointAssociations that are associated to this endpoint.
  ///
  /// An association will only appear in this list after traffic routing is
  /// fully configured.
  ///
  /// Output only.
  core.List<FirewallEndpointAssociationReference>? associations;

  /// Project to bill on endpoint uptime usage.
  ///
  /// Required.
  core.String? billingProjectId;

  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the firewall endpoint.
  ///
  /// Max length 2048 characters.
  ///
  /// Optional.
  core.String? description;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// name of resource
  ///
  /// Immutable.
  core.String? name;

  /// Whether reconciling is in progress, recommended per
  /// https://google.aip.dev/128.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// Current state of the endpoint.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "CREATING" : Being created.
  /// - "ACTIVE" : Processing configuration updates.
  /// - "DELETING" : Being deleted.
  /// - "INACTIVE" : Down or in an error state.
  core.String? state;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  FirewallEndpoint({
    this.associatedNetworks,
    this.associations,
    this.billingProjectId,
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.reconciling,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.state,
    this.updateTime,
  });

  FirewallEndpoint.fromJson(core.Map json_)
    : this(
        associatedNetworks:
            (json_['associatedNetworks'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        associations:
            (json_['associations'] as core.List?)
                ?.map(
                  (value) => FirewallEndpointAssociationReference.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        billingProjectId: json_['billingProjectId'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (associatedNetworks != null) 'associatedNetworks': associatedNetworks!,
    if (associations != null) 'associations': associations!,
    if (billingProjectId != null) 'billingProjectId': billingProjectId!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Message describing Association object
class FirewallEndpointAssociation {
  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// Whether the association is disabled.
  ///
  /// True indicates that traffic won't be intercepted
  ///
  /// Optional.
  core.bool? disabled;

  /// The URL of the FirewallEndpoint that is being associated.
  ///
  /// Required.
  core.String? firewallEndpoint;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// name of resource
  ///
  /// Immutable.
  core.String? name;

  /// The URL of the network that is being associated.
  ///
  /// Required.
  core.String? network;

  /// Whether reconciling is in progress, recommended per
  /// https://google.aip.dev/128.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Current state of the association.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "CREATING" : Being created.
  /// - "ACTIVE" : Active and ready for traffic.
  /// - "DELETING" : Being deleted.
  /// - "INACTIVE" : Down or in an error state.
  /// - "ORPHAN" : The project that housed the association has been deleted.
  core.String? state;

  /// The URL of the TlsInspectionPolicy that is being associated.
  ///
  /// Optional.
  core.String? tlsInspectionPolicy;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  FirewallEndpointAssociation({
    this.createTime,
    this.disabled,
    this.firewallEndpoint,
    this.labels,
    this.name,
    this.network,
    this.reconciling,
    this.state,
    this.tlsInspectionPolicy,
    this.updateTime,
  });

  FirewallEndpointAssociation.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        disabled: json_['disabled'] as core.bool?,
        firewallEndpoint: json_['firewallEndpoint'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        state: json_['state'] as core.String?,
        tlsInspectionPolicy: json_['tlsInspectionPolicy'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (disabled != null) 'disabled': disabled!,
    if (firewallEndpoint != null) 'firewallEndpoint': firewallEndpoint!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (network != null) 'network': network!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (state != null) 'state': state!,
    if (tlsInspectionPolicy != null)
      'tlsInspectionPolicy': tlsInspectionPolicy!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// This is a subset of the FirewallEndpointAssociation message, containing
/// fields to be used by the consumer.
class FirewallEndpointAssociationReference {
  /// The resource name of the FirewallEndpointAssociation.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/firewallEndpointAssociations/{id}
  ///
  /// Output only.
  core.String? name;

  /// The VPC network associated.
  ///
  /// Format: projects/{project}/global/networks/{name}.
  ///
  /// Output only.
  core.String? network;

  FirewallEndpointAssociationReference({this.name, this.network});

  FirewallEndpointAssociationReference.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (network != null) 'network': network!,
  };
}

/// The GatewaySecurityPolicy resource contains a collection of
/// GatewaySecurityPolicyRules and associated metadata.
class GatewaySecurityPolicy {
  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Free-text description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// Name of the resource.
  ///
  /// Name is of the form
  /// projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}
  /// gateway_security_policy should match the
  /// pattern:(^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$).
  ///
  /// Required.
  core.String? name;

  /// Name of a TLS Inspection Policy resource that defines how TLS inspection
  /// will be performed for any rule(s) which enables it.
  ///
  /// Optional.
  core.String? tlsInspectionPolicy;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GatewaySecurityPolicy({
    this.createTime,
    this.description,
    this.name,
    this.tlsInspectionPolicy,
    this.updateTime,
  });

  GatewaySecurityPolicy.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        tlsInspectionPolicy: json_['tlsInspectionPolicy'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (name != null) 'name': name!,
    if (tlsInspectionPolicy != null)
      'tlsInspectionPolicy': tlsInspectionPolicy!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The GatewaySecurityPolicyRule resource is in a nested collection within a
/// GatewaySecurityPolicy and represents a traffic matching condition and
/// associated action to perform.
class GatewaySecurityPolicyRule {
  /// CEL expression for matching on L7/application level criteria.
  ///
  /// Optional.
  core.String? applicationMatcher;

  /// Profile which tells what the primitive action should be.
  ///
  /// Required.
  /// Possible string values are:
  /// - "BASIC_PROFILE_UNSPECIFIED" : If there is not a mentioned action for the
  /// target.
  /// - "ALLOW" : Allow the matched traffic.
  /// - "DENY" : Deny the matched traffic.
  core.String? basicProfile;

  /// Time when the rule was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Free-text description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// Whether the rule is enforced.
  ///
  /// Required.
  core.bool? enabled;

  /// Name of the resource.
  ///
  /// ame is the full resource name so
  /// projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// rule should match the pattern: (^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$).
  ///
  /// Required. Immutable.
  core.String? name;

  /// Priority of the rule.
  ///
  /// Lower number corresponds to higher precedence.
  ///
  /// Required.
  core.int? priority;

  /// CEL expression for matching on session criteria.
  ///
  /// Required.
  core.String? sessionMatcher;

  /// Flag to enable TLS inspection of traffic matching on , can only be true if
  /// the parent GatewaySecurityPolicy references a TLSInspectionConfig.
  ///
  /// Optional.
  core.bool? tlsInspectionEnabled;

  /// Time when the rule was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GatewaySecurityPolicyRule({
    this.applicationMatcher,
    this.basicProfile,
    this.createTime,
    this.description,
    this.enabled,
    this.name,
    this.priority,
    this.sessionMatcher,
    this.tlsInspectionEnabled,
    this.updateTime,
  });

  GatewaySecurityPolicyRule.fromJson(core.Map json_)
    : this(
        applicationMatcher: json_['applicationMatcher'] as core.String?,
        basicProfile: json_['basicProfile'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        enabled: json_['enabled'] as core.bool?,
        name: json_['name'] as core.String?,
        priority: json_['priority'] as core.int?,
        sessionMatcher: json_['sessionMatcher'] as core.String?,
        tlsInspectionEnabled: json_['tlsInspectionEnabled'] as core.bool?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (applicationMatcher != null) 'applicationMatcher': applicationMatcher!,
    if (basicProfile != null) 'basicProfile': basicProfile!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (enabled != null) 'enabled': enabled!,
    if (name != null) 'name': name!,
    if (priority != null) 'priority': priority!,
    if (sessionMatcher != null) 'sessionMatcher': sessionMatcher!,
    if (tlsInspectionEnabled != null)
      'tlsInspectionEnabled': tlsInspectionEnabled!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Specification of certificate provider.
///
/// Defines the mechanism to obtain the certificate and private key for peer to
/// peer authentication.
class GoogleCloudNetworksecurityV1CertificateProvider {
  /// The certificate provider instance specification that will be passed to the
  /// data plane, which will be used to load necessary credential information.
  CertificateProviderInstance? certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the cert
  /// and private key.
  GoogleCloudNetworksecurityV1GrpcEndpoint? grpcEndpoint;

  GoogleCloudNetworksecurityV1CertificateProvider({
    this.certificateProviderInstance,
    this.grpcEndpoint,
  });

  GoogleCloudNetworksecurityV1CertificateProvider.fromJson(core.Map json_)
    : this(
        certificateProviderInstance:
            json_.containsKey('certificateProviderInstance')
                ? CertificateProviderInstance.fromJson(
                  json_['certificateProviderInstance']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        grpcEndpoint:
            json_.containsKey('grpcEndpoint')
                ? GoogleCloudNetworksecurityV1GrpcEndpoint.fromJson(
                  json_['grpcEndpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificateProviderInstance != null)
      'certificateProviderInstance': certificateProviderInstance!,
    if (grpcEndpoint != null) 'grpcEndpoint': grpcEndpoint!,
  };
}

/// Specification of the GRPC Endpoint.
class GoogleCloudNetworksecurityV1GrpcEndpoint {
  /// The target URI of the gRPC endpoint.
  ///
  /// Only UDS path is supported, and should start with "unix:".
  ///
  /// Required.
  core.String? targetUri;

  GoogleCloudNetworksecurityV1GrpcEndpoint({this.targetUri});

  GoogleCloudNetworksecurityV1GrpcEndpoint.fromJson(core.Map json_)
    : this(targetUri: json_['targetUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (targetUri != null) 'targetUri': targetUri!,
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
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  GoogleIamV1AuditConfig({this.auditLogConfigs, this.service});

  GoogleIamV1AuditConfig.fromJson(core.Map json_)
    : this(
        auditLogConfigs:
            (json_['auditLogConfigs'] as core.List?)
                ?.map(
                  (value) => GoogleIamV1AuditLogConfig.fromJson(
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
typedef GoogleIamV1AuditLogConfig = $AuditLogConfig;

/// Associates `members`, or principals, with a `role`.
class GoogleIamV1Binding {
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

  GoogleIamV1Binding({this.condition, this.members, this.role});

  GoogleIamV1Binding.fromJson(core.Map json_)
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
class GoogleIamV1Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<GoogleIamV1AuditConfig>? auditConfigs;

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
  core.List<GoogleIamV1Binding>? bindings;

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

  GoogleIamV1Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  GoogleIamV1Policy.fromJson(core.Map json_)
    : this(
        auditConfigs:
            (json_['auditConfigs'] as core.List?)
                ?.map(
                  (value) => GoogleIamV1AuditConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        bindings:
            (json_['bindings'] as core.List?)
                ?.map(
                  (value) => GoogleIamV1Binding.fromJson(
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

/// Request message for `SetIamPolicy` method.
class GoogleIamV1SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  GoogleIamV1Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  GoogleIamV1SetIamPolicyRequest({this.policy, this.updateMask});

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy:
            json_.containsKey('policy')
                ? GoogleIamV1Policy.fromJson(
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

/// Request message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef GoogleIamV1TestIamPermissionsResponse = $PermissionsResponse;

/// Specification of HTTP header match attributes.
class HttpHeaderMatch {
  /// The name of the HTTP header to match.
  ///
  /// For matching against the HTTP request's authority, use a headerMatch with
  /// the header name ":authority". For matching a request's method, use the
  /// headerName ":method".
  ///
  /// Required.
  core.String? headerName;

  /// The value of the header must match the regular expression specified in
  /// regexMatch.
  ///
  /// For regular expression grammar, please see:
  /// en.cppreference.com/w/cpp/regex/ecmascript For matching against a port
  /// specified in the HTTP request, use a headerMatch with headerName set to
  /// Host and a regular expression that satisfies the RFC2616 Host header's
  /// port specifier.
  ///
  /// Required.
  core.String? regexMatch;

  HttpHeaderMatch({this.headerName, this.regexMatch});

  HttpHeaderMatch.fromJson(core.Map json_)
    : this(
        headerName: json_['headerName'] as core.String?,
        regexMatch: json_['regexMatch'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (headerName != null) 'headerName': headerName!,
    if (regexMatch != null) 'regexMatch': regexMatch!,
  };
}

/// A deployment represents a zonal intercept backend ready to accept
/// GENEVE-encapsulated traffic, e.g. a zonal instance group fronted by an
/// internal passthrough load balancer.
///
/// Deployments are always part of a global deployment group which represents a
/// global intercept service.
class InterceptDeployment {
  /// The timestamp when the resource was created.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description of the deployment.
  ///
  /// Used as additional context for the deployment.
  ///
  /// Optional.
  core.String? description;

  /// The regional forwarding rule that fronts the interceptors, for example:
  /// `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Required. Immutable.
  core.String? forwardingRule;

  /// The deployment group that this deployment is a part of, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Required. Immutable.
  core.String? interceptDeploymentGroup;

  /// Labels are key/value pairs that help to organize and filter resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of this deployment, for example:
  /// `projects/123456789/locations/us-central1-a/interceptDeployments/my-dep`.
  /// See https://google.aip.dev/122 for more details.
  ///
  /// Immutable.
  core.String? name;

  /// The current state of the resource does not match the user's intended
  /// state, and the system is working to reconcile them.
  ///
  /// This part of the normal operation (e.g. linking a new association to the
  /// parent group). See https://google.aip.dev/128.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The current state of the deployment.
  ///
  /// See https://google.aip.dev/216.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set (this is not a valid state).
  /// - "ACTIVE" : The deployment is ready and in sync with the parent group.
  /// - "CREATING" : The deployment is being created.
  /// - "DELETING" : The deployment is being deleted.
  /// - "OUT_OF_SYNC" : The deployment is out of sync with the parent group. In
  /// most cases, this is a result of a transient issue within the system (e.g.
  /// a delayed data-path config) and the system is expected to recover
  /// automatically. See the parent deployment group's state for more details.
  /// - "DELETE_FAILED" : An attempt to delete the deployment has failed. This
  /// is a terminal state and the deployment is not expected to recover. The
  /// only permitted operation is to retry deleting the deployment.
  core.String? state;

  /// The timestamp when the resource was most recently updated.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? updateTime;

  InterceptDeployment({
    this.createTime,
    this.description,
    this.forwardingRule,
    this.interceptDeploymentGroup,
    this.labels,
    this.name,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  InterceptDeployment.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        forwardingRule: json_['forwardingRule'] as core.String?,
        interceptDeploymentGroup:
            json_['interceptDeploymentGroup'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (forwardingRule != null) 'forwardingRule': forwardingRule!,
    if (interceptDeploymentGroup != null)
      'interceptDeploymentGroup': interceptDeploymentGroup!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A deployment group aggregates many zonal intercept backends (deployments)
/// into a single global intercept service.
///
/// Consumers can connect this service using an endpoint group.
class InterceptDeploymentGroup {
  /// The list of endpoint groups that are connected to this resource.
  ///
  /// Output only.
  core.List<InterceptDeploymentGroupConnectedEndpointGroup>?
  connectedEndpointGroups;

  /// The timestamp when the resource was created.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description of the deployment group.
  ///
  /// Used as additional context for the deployment group.
  ///
  /// Optional.
  core.String? description;

  /// Labels are key/value pairs that help to organize and filter resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The list of locations where the deployment group is present.
  ///
  /// Output only.
  core.List<InterceptLocation>? locations;

  /// Identifier.
  ///
  /// The resource name of this deployment group, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`. See
  /// https://google.aip.dev/122 for more details.
  ///
  /// Immutable.
  core.String? name;

  /// The list of Intercept Deployments that belong to this group.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<InterceptDeploymentGroupDeployment>? nestedDeployments;

  /// The network that will be used for all child deployments, for example:
  /// `projects/{project}/global/networks/{network}`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Required. Immutable.
  core.String? network;

  /// The current state of the resource does not match the user's intended
  /// state, and the system is working to reconcile them.
  ///
  /// This is part of the normal operation (e.g. adding a new deployment to the
  /// group) See https://google.aip.dev/128.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The current state of the deployment group.
  ///
  /// See https://google.aip.dev/216.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set (this is not a valid state).
  /// - "ACTIVE" : The deployment group is ready.
  /// - "CREATING" : The deployment group is being created.
  /// - "DELETING" : The deployment group is being deleted.
  core.String? state;

  /// The timestamp when the resource was most recently updated.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? updateTime;

  InterceptDeploymentGroup({
    this.connectedEndpointGroups,
    this.createTime,
    this.description,
    this.labels,
    this.locations,
    this.name,
    this.nestedDeployments,
    this.network,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  InterceptDeploymentGroup.fromJson(core.Map json_)
    : this(
        connectedEndpointGroups:
            (json_['connectedEndpointGroups'] as core.List?)
                ?.map(
                  (value) =>
                      InterceptDeploymentGroupConnectedEndpointGroup.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => InterceptLocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        nestedDeployments:
            (json_['nestedDeployments'] as core.List?)
                ?.map(
                  (value) => InterceptDeploymentGroupDeployment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        network: json_['network'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectedEndpointGroups != null)
      'connectedEndpointGroups': connectedEndpointGroups!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (labels != null) 'labels': labels!,
    if (locations != null) 'locations': locations!,
    if (name != null) 'name': name!,
    if (nestedDeployments != null) 'nestedDeployments': nestedDeployments!,
    if (network != null) 'network': network!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// An endpoint group connected to this deployment group.
class InterceptDeploymentGroupConnectedEndpointGroup {
  /// The connected endpoint group's resource name, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Output only.
  core.String? name;

  InterceptDeploymentGroupConnectedEndpointGroup({this.name});

  InterceptDeploymentGroupConnectedEndpointGroup.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// A deployment belonging to this deployment group.
class InterceptDeploymentGroupDeployment {
  /// The name of the Intercept Deployment, in the format:
  /// `projects/{project}/locations/{location}/interceptDeployments/{intercept_deployment}`.
  ///
  /// Output only.
  core.String? name;

  /// Most recent known state of the deployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set (this is not a valid state).
  /// - "ACTIVE" : The deployment is ready and in sync with the parent group.
  /// - "CREATING" : The deployment is being created.
  /// - "DELETING" : The deployment is being deleted.
  /// - "OUT_OF_SYNC" : The deployment is out of sync with the parent group. In
  /// most cases, this is a result of a transient issue within the system (e.g.
  /// a delayed data-path config) and the system is expected to recover
  /// automatically. See the parent deployment group's state for more details.
  /// - "DELETE_FAILED" : An attempt to delete the deployment has failed. This
  /// is a terminal state and the deployment is not expected to recover. The
  /// only permitted operation is to retry deleting the deployment.
  core.String? state;

  InterceptDeploymentGroupDeployment({this.name, this.state});

  InterceptDeploymentGroupDeployment.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
  };
}

/// An endpoint group is a consumer frontend for a deployment group (backend).
///
/// In order to configure intercept for a network, consumers must create: - An
/// association between their network and the endpoint group. - A security
/// profile that points to the endpoint group. - A firewall rule that references
/// the security profile (group).
class InterceptEndpointGroup {
  /// List of associations to this endpoint group.
  ///
  /// Output only.
  core.List<InterceptEndpointGroupAssociationDetails>? associations;

  /// Details about the connected deployment group to this endpoint group.
  ///
  /// Output only.
  InterceptEndpointGroupConnectedDeploymentGroup? connectedDeploymentGroup;

  /// The timestamp when the resource was created.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description of the endpoint group.
  ///
  /// Used as additional context for the endpoint group.
  ///
  /// Optional.
  core.String? description;

  /// The deployment group that this endpoint group is connected to, for
  /// example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Required. Immutable.
  core.String? interceptDeploymentGroup;

  /// Labels are key/value pairs that help to organize and filter resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of this endpoint group, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`. See
  /// https://google.aip.dev/122 for more details.
  ///
  /// Immutable.
  core.String? name;

  /// The current state of the resource does not match the user's intended
  /// state, and the system is working to reconcile them.
  ///
  /// This is part of the normal operation (e.g. adding a new association to the
  /// group). See https://google.aip.dev/128.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The current state of the endpoint group.
  ///
  /// See https://google.aip.dev/216.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set (this is not a valid state).
  /// - "ACTIVE" : The endpoint group is ready and in sync with the target
  /// deployment group.
  /// - "CLOSED" : The deployment group backing this endpoint group has been
  /// force-deleted. This endpoint group cannot be used and interception is
  /// effectively disabled.
  /// - "CREATING" : The endpoint group is being created.
  /// - "DELETING" : The endpoint group is being deleted.
  /// - "OUT_OF_SYNC" : The endpoint group is out of sync with the backing
  /// deployment group. In most cases, this is a result of a transient issue
  /// within the system (e.g. an inaccessible location) and the system is
  /// expected to recover automatically. See the associations field for details
  /// per network and location.
  /// - "DELETE_FAILED" : An attempt to delete the endpoint group has failed.
  /// This is a terminal state and the endpoint group is not expected to
  /// recover. The only permitted operation is to retry deleting the endpoint
  /// group.
  core.String? state;

  /// The timestamp when the resource was most recently updated.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? updateTime;

  InterceptEndpointGroup({
    this.associations,
    this.connectedDeploymentGroup,
    this.createTime,
    this.description,
    this.interceptDeploymentGroup,
    this.labels,
    this.name,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  InterceptEndpointGroup.fromJson(core.Map json_)
    : this(
        associations:
            (json_['associations'] as core.List?)
                ?.map(
                  (value) => InterceptEndpointGroupAssociationDetails.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        connectedDeploymentGroup:
            json_.containsKey('connectedDeploymentGroup')
                ? InterceptEndpointGroupConnectedDeploymentGroup.fromJson(
                  json_['connectedDeploymentGroup']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        interceptDeploymentGroup:
            json_['interceptDeploymentGroup'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (associations != null) 'associations': associations!,
    if (connectedDeploymentGroup != null)
      'connectedDeploymentGroup': connectedDeploymentGroup!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (interceptDeploymentGroup != null)
      'interceptDeploymentGroup': interceptDeploymentGroup!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// An endpoint group association represents a link between a network and an
/// endpoint group in the organization.
///
/// Creating an association creates the networking infrastructure linking the
/// network to the endpoint group, but does not enable intercept by itself. To
/// enable intercept, the user must also create a network firewall policy
/// containing intercept rules and associate it with the network.
class InterceptEndpointGroupAssociation {
  /// The timestamp when the resource was created.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? createTime;

  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Required. Immutable.
  core.String? interceptEndpointGroup;

  /// Labels are key/value pairs that help to organize and filter resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The list of locations where the association is configured.
  ///
  /// This information is retrieved from the linked endpoint group.
  ///
  /// Output only.
  core.List<InterceptLocation>? locations;

  /// The list of locations where the association is present.
  ///
  /// This information is retrieved from the linked endpoint group, and not
  /// configured as part of the association itself.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<InterceptEndpointGroupAssociationLocationDetails>? locationsDetails;

  /// Identifier.
  ///
  /// The resource name of this endpoint group association, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroupAssociations/my-eg-association`.
  /// See https://google.aip.dev/122 for more details.
  ///
  /// Immutable.
  core.String? name;

  /// The VPC network that is associated.
  ///
  /// for example: `projects/123456789/global/networks/my-network`. See
  /// https://google.aip.dev/124.
  ///
  /// Required. Immutable.
  core.String? network;

  /// The current state of the resource does not match the user's intended
  /// state, and the system is working to reconcile them.
  ///
  /// This part of the normal operation (e.g. adding a new location to the
  /// target deployment group). See https://google.aip.dev/128.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Current state of the endpoint group association.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "ACTIVE" : The association is ready and in sync with the linked endpoint
  /// group.
  /// - "CREATING" : The association is being created.
  /// - "DELETING" : The association is being deleted.
  /// - "CLOSED" : The association is disabled due to a breaking change in
  /// another resource.
  /// - "OUT_OF_SYNC" : The association is out of sync with the linked endpoint
  /// group. In most cases, this is a result of a transient issue within the
  /// system (e.g. an inaccessible location) and the system is expected to
  /// recover automatically. Check the `locations_details` field for more
  /// details.
  /// - "DELETE_FAILED" : An attempt to delete the association has failed. This
  /// is a terminal state and the association is not expected to be usable as
  /// some of its resources have been deleted. The only permitted operation is
  /// to retry deleting the association.
  core.String? state;

  /// The timestamp when the resource was most recently updated.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? updateTime;

  InterceptEndpointGroupAssociation({
    this.createTime,
    this.interceptEndpointGroup,
    this.labels,
    this.locations,
    this.locationsDetails,
    this.name,
    this.network,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  InterceptEndpointGroupAssociation.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        interceptEndpointGroup: json_['interceptEndpointGroup'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => InterceptLocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        locationsDetails:
            (json_['locationsDetails'] as core.List?)
                ?.map(
                  (value) =>
                      InterceptEndpointGroupAssociationLocationDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (interceptEndpointGroup != null)
      'interceptEndpointGroup': interceptEndpointGroup!,
    if (labels != null) 'labels': labels!,
    if (locations != null) 'locations': locations!,
    if (locationsDetails != null) 'locationsDetails': locationsDetails!,
    if (name != null) 'name': name!,
    if (network != null) 'network': network!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The endpoint group's view of a connected association.
class InterceptEndpointGroupAssociationDetails {
  /// The connected association's resource name, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroupAssociations/my-ega`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Output only.
  core.String? name;

  /// The associated network, for example:
  /// projects/123456789/global/networks/my-network.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Output only.
  core.String? network;

  /// Most recent known state of the association.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "ACTIVE" : The association is ready and in sync with the linked endpoint
  /// group.
  /// - "CREATING" : The association is being created.
  /// - "DELETING" : The association is being deleted.
  /// - "CLOSED" : The association is disabled due to a breaking change in
  /// another resource.
  /// - "OUT_OF_SYNC" : The association is out of sync with the linked endpoint
  /// group. In most cases, this is a result of a transient issue within the
  /// system (e.g. an inaccessible location) and the system is expected to
  /// recover automatically. Check the `locations_details` field for more
  /// details.
  /// - "DELETE_FAILED" : An attempt to delete the association has failed. This
  /// is a terminal state and the association is not expected to be usable as
  /// some of its resources have been deleted. The only permitted operation is
  /// to retry deleting the association.
  core.String? state;

  InterceptEndpointGroupAssociationDetails({
    this.name,
    this.network,
    this.state,
  });

  InterceptEndpointGroupAssociationDetails.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (network != null) 'network': network!,
    if (state != null) 'state': state!,
  };
}

/// Contains details about the state of an association in a specific cloud
/// location.
typedef InterceptEndpointGroupAssociationLocationDetails =
    $EndpointGroupAssociationLocationDetails;

/// The endpoint group's view of a connected deployment group.
class InterceptEndpointGroupConnectedDeploymentGroup {
  /// The list of locations where the deployment group is present.
  ///
  /// Output only.
  core.List<InterceptLocation>? locations;

  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/interceptDeploymentGroups/my-dg`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Output only.
  core.String? name;

  InterceptEndpointGroupConnectedDeploymentGroup({this.locations, this.name});

  InterceptEndpointGroupConnectedDeploymentGroup.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => InterceptLocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locations != null) 'locations': locations!,
    if (name != null) 'name': name!,
  };
}

/// Details about intercept in a specific cloud location.
typedef InterceptLocation = $Location02;

/// Response of the ListAddressGroupReferences method.
class ListAddressGroupReferencesResponse {
  /// A list of references that matches the specified filter in the request.
  core.List<ListAddressGroupReferencesResponseAddressGroupReference>?
  addressGroupReferences;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  ListAddressGroupReferencesResponse({
    this.addressGroupReferences,
    this.nextPageToken,
  });

  ListAddressGroupReferencesResponse.fromJson(core.Map json_)
    : this(
        addressGroupReferences:
            (json_['addressGroupReferences'] as core.List?)
                ?.map(
                  (value) =>
                      ListAddressGroupReferencesResponseAddressGroupReference.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (addressGroupReferences != null)
      'addressGroupReferences': addressGroupReferences!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The Reference of AddressGroup.
class ListAddressGroupReferencesResponseAddressGroupReference {
  /// FirewallPolicy that is using the Address Group.
  core.String? firewallPolicy;

  /// Rule priority of the FirewallPolicy that is using the Address Group.
  core.int? rulePriority;

  /// Cloud Armor SecurityPolicy that is using the Address Group.
  core.String? securityPolicy;

  ListAddressGroupReferencesResponseAddressGroupReference({
    this.firewallPolicy,
    this.rulePriority,
    this.securityPolicy,
  });

  ListAddressGroupReferencesResponseAddressGroupReference.fromJson(
    core.Map json_,
  ) : this(
        firewallPolicy: json_['firewallPolicy'] as core.String?,
        rulePriority: json_['rulePriority'] as core.int?,
        securityPolicy: json_['securityPolicy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (firewallPolicy != null) 'firewallPolicy': firewallPolicy!,
    if (rulePriority != null) 'rulePriority': rulePriority!,
    if (securityPolicy != null) 'securityPolicy': securityPolicy!,
  };
}

/// Response returned by the ListAddressGroups method.
class ListAddressGroupsResponse {
  /// List of AddressGroups resources.
  core.List<AddressGroup>? addressGroups;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAddressGroupsResponse({
    this.addressGroups,
    this.nextPageToken,
    this.unreachable,
  });

  ListAddressGroupsResponse.fromJson(core.Map json_)
    : this(
        addressGroups:
            (json_['addressGroups'] as core.List?)
                ?.map(
                  (value) => AddressGroup.fromJson(
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
    if (addressGroups != null) 'addressGroups': addressGroups!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response returned by the ListAuthorizationPolicies method.
class ListAuthorizationPoliciesResponse {
  /// List of AuthorizationPolicies resources.
  core.List<AuthorizationPolicy>? authorizationPolicies;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  ListAuthorizationPoliciesResponse({
    this.authorizationPolicies,
    this.nextPageToken,
  });

  ListAuthorizationPoliciesResponse.fromJson(core.Map json_)
    : this(
        authorizationPolicies:
            (json_['authorizationPolicies'] as core.List?)
                ?.map(
                  (value) => AuthorizationPolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authorizationPolicies != null)
      'authorizationPolicies': authorizationPolicies!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to listing `AuthzPolicy` resources.
class ListAuthzPoliciesResponse {
  /// The list of `AuthzPolicy` resources.
  core.List<AuthzPolicy>? authzPolicies;

  /// A token identifying a page of results that the server returns.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAuthzPoliciesResponse({
    this.authzPolicies,
    this.nextPageToken,
    this.unreachable,
  });

  ListAuthzPoliciesResponse.fromJson(core.Map json_)
    : this(
        authzPolicies:
            (json_['authzPolicies'] as core.List?)
                ?.map(
                  (value) => AuthzPolicy.fromJson(
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
    if (authzPolicies != null) 'authzPolicies': authzPolicies!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response returned by the ListBackendAuthenticationConfigs method.
class ListBackendAuthenticationConfigsResponse {
  /// List of BackendAuthenticationConfig resources.
  core.List<BackendAuthenticationConfig>? backendAuthenticationConfigs;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackendAuthenticationConfigsResponse({
    this.backendAuthenticationConfigs,
    this.nextPageToken,
    this.unreachable,
  });

  ListBackendAuthenticationConfigsResponse.fromJson(core.Map json_)
    : this(
        backendAuthenticationConfigs:
            (json_['backendAuthenticationConfigs'] as core.List?)
                ?.map(
                  (value) => BackendAuthenticationConfig.fromJson(
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
    if (backendAuthenticationConfigs != null)
      'backendAuthenticationConfigs': backendAuthenticationConfigs!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response returned by the ListClientTlsPolicies method.
class ListClientTlsPoliciesResponse {
  /// List of ClientTlsPolicy resources.
  core.List<ClientTlsPolicy>? clientTlsPolicies;

  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  ListClientTlsPoliciesResponse({this.clientTlsPolicies, this.nextPageToken});

  ListClientTlsPoliciesResponse.fromJson(core.Map json_)
    : this(
        clientTlsPolicies:
            (json_['clientTlsPolicies'] as core.List?)
                ?.map(
                  (value) => ClientTlsPolicy.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientTlsPolicies != null) 'clientTlsPolicies': clientTlsPolicies!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Message for response to listing Associations
class ListFirewallEndpointAssociationsResponse {
  /// The list of Association
  core.List<FirewallEndpointAssociation>? firewallEndpointAssociations;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListFirewallEndpointAssociationsResponse({
    this.firewallEndpointAssociations,
    this.nextPageToken,
    this.unreachable,
  });

  ListFirewallEndpointAssociationsResponse.fromJson(core.Map json_)
    : this(
        firewallEndpointAssociations:
            (json_['firewallEndpointAssociations'] as core.List?)
                ?.map(
                  (value) => FirewallEndpointAssociation.fromJson(
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
    if (firewallEndpointAssociations != null)
      'firewallEndpointAssociations': firewallEndpointAssociations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Message for response to listing Endpoints
class ListFirewallEndpointsResponse {
  /// The list of Endpoint
  core.List<FirewallEndpoint>? firewallEndpoints;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListFirewallEndpointsResponse({
    this.firewallEndpoints,
    this.nextPageToken,
    this.unreachable,
  });

  ListFirewallEndpointsResponse.fromJson(core.Map json_)
    : this(
        firewallEndpoints:
            (json_['firewallEndpoints'] as core.List?)
                ?.map(
                  (value) => FirewallEndpoint.fromJson(
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
    if (firewallEndpoints != null) 'firewallEndpoints': firewallEndpoints!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response returned by the ListGatewaySecurityPolicies method.
class ListGatewaySecurityPoliciesResponse {
  /// List of GatewaySecurityPolicies resources.
  core.List<GatewaySecurityPolicy>? gatewaySecurityPolicies;

  /// If there might be more results than those appearing in this response, then
  /// 'next_page_token' is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// 'next_page_token' as 'page_token'.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListGatewaySecurityPoliciesResponse({
    this.gatewaySecurityPolicies,
    this.nextPageToken,
    this.unreachable,
  });

  ListGatewaySecurityPoliciesResponse.fromJson(core.Map json_)
    : this(
        gatewaySecurityPolicies:
            (json_['gatewaySecurityPolicies'] as core.List?)
                ?.map(
                  (value) => GatewaySecurityPolicy.fromJson(
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
    if (gatewaySecurityPolicies != null)
      'gatewaySecurityPolicies': gatewaySecurityPolicies!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response returned by the ListGatewaySecurityPolicyRules method.
class ListGatewaySecurityPolicyRulesResponse {
  /// List of GatewaySecurityPolicyRule resources.
  core.List<GatewaySecurityPolicyRule>? gatewaySecurityPolicyRules;

  /// If there might be more results than those appearing in this response, then
  /// 'next_page_token' is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// 'next_page_token' as 'page_token'.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListGatewaySecurityPolicyRulesResponse({
    this.gatewaySecurityPolicyRules,
    this.nextPageToken,
    this.unreachable,
  });

  ListGatewaySecurityPolicyRulesResponse.fromJson(core.Map json_)
    : this(
        gatewaySecurityPolicyRules:
            (json_['gatewaySecurityPolicyRules'] as core.List?)
                ?.map(
                  (value) => GatewaySecurityPolicyRule.fromJson(
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
    if (gatewaySecurityPolicyRules != null)
      'gatewaySecurityPolicyRules': gatewaySecurityPolicyRules!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for ListInterceptDeploymentGroups.
class ListInterceptDeploymentGroupsResponse {
  /// The deployment groups from the specified parent.
  core.List<InterceptDeploymentGroup>? interceptDeploymentGroups;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. See
  /// https://google.aip.dev/158 for more details.
  core.String? nextPageToken;

  ListInterceptDeploymentGroupsResponse({
    this.interceptDeploymentGroups,
    this.nextPageToken,
  });

  ListInterceptDeploymentGroupsResponse.fromJson(core.Map json_)
    : this(
        interceptDeploymentGroups:
            (json_['interceptDeploymentGroups'] as core.List?)
                ?.map(
                  (value) => InterceptDeploymentGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (interceptDeploymentGroups != null)
      'interceptDeploymentGroups': interceptDeploymentGroups!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for ListInterceptDeployments.
class ListInterceptDeploymentsResponse {
  /// The deployments from the specified parent.
  core.List<InterceptDeployment>? interceptDeployments;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. See
  /// https://google.aip.dev/158 for more details.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListInterceptDeploymentsResponse({
    this.interceptDeployments,
    this.nextPageToken,
    this.unreachable,
  });

  ListInterceptDeploymentsResponse.fromJson(core.Map json_)
    : this(
        interceptDeployments:
            (json_['interceptDeployments'] as core.List?)
                ?.map(
                  (value) => InterceptDeployment.fromJson(
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
    if (interceptDeployments != null)
      'interceptDeployments': interceptDeployments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for ListInterceptEndpointGroupAssociations.
class ListInterceptEndpointGroupAssociationsResponse {
  /// The associations from the specified parent.
  core.List<InterceptEndpointGroupAssociation>?
  interceptEndpointGroupAssociations;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. See
  /// https://google.aip.dev/158 for more details.
  core.String? nextPageToken;

  ListInterceptEndpointGroupAssociationsResponse({
    this.interceptEndpointGroupAssociations,
    this.nextPageToken,
  });

  ListInterceptEndpointGroupAssociationsResponse.fromJson(core.Map json_)
    : this(
        interceptEndpointGroupAssociations:
            (json_['interceptEndpointGroupAssociations'] as core.List?)
                ?.map(
                  (value) => InterceptEndpointGroupAssociation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (interceptEndpointGroupAssociations != null)
      'interceptEndpointGroupAssociations': interceptEndpointGroupAssociations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for ListInterceptEndpointGroups.
class ListInterceptEndpointGroupsResponse {
  /// The endpoint groups from the specified parent.
  core.List<InterceptEndpointGroup>? interceptEndpointGroups;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. See
  /// https://google.aip.dev/158 for more details.
  core.String? nextPageToken;

  ListInterceptEndpointGroupsResponse({
    this.interceptEndpointGroups,
    this.nextPageToken,
  });

  ListInterceptEndpointGroupsResponse.fromJson(core.Map json_)
    : this(
        interceptEndpointGroups:
            (json_['interceptEndpointGroups'] as core.List?)
                ?.map(
                  (value) => InterceptEndpointGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (interceptEndpointGroups != null)
      'interceptEndpointGroups': interceptEndpointGroups!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

/// Response message for ListMirroringDeploymentGroups.
class ListMirroringDeploymentGroupsResponse {
  /// The deployment groups from the specified parent.
  core.List<MirroringDeploymentGroup>? mirroringDeploymentGroups;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. See
  /// https://google.aip.dev/158 for more details.
  core.String? nextPageToken;

  ListMirroringDeploymentGroupsResponse({
    this.mirroringDeploymentGroups,
    this.nextPageToken,
  });

  ListMirroringDeploymentGroupsResponse.fromJson(core.Map json_)
    : this(
        mirroringDeploymentGroups:
            (json_['mirroringDeploymentGroups'] as core.List?)
                ?.map(
                  (value) => MirroringDeploymentGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mirroringDeploymentGroups != null)
      'mirroringDeploymentGroups': mirroringDeploymentGroups!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for ListMirroringDeployments.
class ListMirroringDeploymentsResponse {
  /// The deployments from the specified parent.
  core.List<MirroringDeployment>? mirroringDeployments;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. See
  /// https://google.aip.dev/158 for more details.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListMirroringDeploymentsResponse({
    this.mirroringDeployments,
    this.nextPageToken,
    this.unreachable,
  });

  ListMirroringDeploymentsResponse.fromJson(core.Map json_)
    : this(
        mirroringDeployments:
            (json_['mirroringDeployments'] as core.List?)
                ?.map(
                  (value) => MirroringDeployment.fromJson(
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
    if (mirroringDeployments != null)
      'mirroringDeployments': mirroringDeployments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for ListMirroringEndpointGroupAssociations.
class ListMirroringEndpointGroupAssociationsResponse {
  /// The associations from the specified parent.
  core.List<MirroringEndpointGroupAssociation>?
  mirroringEndpointGroupAssociations;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. See
  /// https://google.aip.dev/158 for more details.
  core.String? nextPageToken;

  ListMirroringEndpointGroupAssociationsResponse({
    this.mirroringEndpointGroupAssociations,
    this.nextPageToken,
  });

  ListMirroringEndpointGroupAssociationsResponse.fromJson(core.Map json_)
    : this(
        mirroringEndpointGroupAssociations:
            (json_['mirroringEndpointGroupAssociations'] as core.List?)
                ?.map(
                  (value) => MirroringEndpointGroupAssociation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mirroringEndpointGroupAssociations != null)
      'mirroringEndpointGroupAssociations': mirroringEndpointGroupAssociations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for ListMirroringEndpointGroups.
class ListMirroringEndpointGroupsResponse {
  /// The endpoint groups from the specified parent.
  core.List<MirroringEndpointGroup>? mirroringEndpointGroups;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. See
  /// https://google.aip.dev/158 for more details.
  core.String? nextPageToken;

  ListMirroringEndpointGroupsResponse({
    this.mirroringEndpointGroups,
    this.nextPageToken,
  });

  ListMirroringEndpointGroupsResponse.fromJson(core.Map json_)
    : this(
        mirroringEndpointGroups:
            (json_['mirroringEndpointGroups'] as core.List?)
                ?.map(
                  (value) => MirroringEndpointGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mirroringEndpointGroups != null)
      'mirroringEndpointGroups': mirroringEndpointGroups!,
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

/// Response returned by the ListSecurityProfileGroups method.
class ListSecurityProfileGroupsResponse {
  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// List of SecurityProfileGroups resources.
  core.List<SecurityProfileGroup>? securityProfileGroups;

  ListSecurityProfileGroupsResponse({
    this.nextPageToken,
    this.securityProfileGroups,
  });

  ListSecurityProfileGroupsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        securityProfileGroups:
            (json_['securityProfileGroups'] as core.List?)
                ?.map(
                  (value) => SecurityProfileGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (securityProfileGroups != null)
      'securityProfileGroups': securityProfileGroups!,
  };
}

/// Response returned by the ListSecurityProfiles method.
class ListSecurityProfilesResponse {
  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// List of SecurityProfile resources.
  core.List<SecurityProfile>? securityProfiles;

  ListSecurityProfilesResponse({this.nextPageToken, this.securityProfiles});

  ListSecurityProfilesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        securityProfiles:
            (json_['securityProfiles'] as core.List?)
                ?.map(
                  (value) => SecurityProfile.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (securityProfiles != null) 'securityProfiles': securityProfiles!,
  };
}

/// Response returned by the ListServerTlsPolicies method.
class ListServerTlsPoliciesResponse {
  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// List of ServerTlsPolicy resources.
  core.List<ServerTlsPolicy>? serverTlsPolicies;

  /// Unreachable resources.
  ///
  /// Populated when the request opts into `return_partial_success` and reading
  /// across collections e.g. when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListServerTlsPoliciesResponse({
    this.nextPageToken,
    this.serverTlsPolicies,
    this.unreachable,
  });

  ListServerTlsPoliciesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        serverTlsPolicies:
            (json_['serverTlsPolicies'] as core.List?)
                ?.map(
                  (value) => ServerTlsPolicy.fromJson(
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
    if (serverTlsPolicies != null) 'serverTlsPolicies': serverTlsPolicies!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response returned by the ListTlsInspectionPolicies method.
class ListTlsInspectionPoliciesResponse {
  /// If there might be more results than those appearing in this response, then
  /// 'next_page_token' is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// 'next_page_token' as 'page_token'.
  core.String? nextPageToken;

  /// List of TlsInspectionPolicies resources.
  core.List<TlsInspectionPolicy>? tlsInspectionPolicies;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListTlsInspectionPoliciesResponse({
    this.nextPageToken,
    this.tlsInspectionPolicies,
    this.unreachable,
  });

  ListTlsInspectionPoliciesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        tlsInspectionPolicies:
            (json_['tlsInspectionPolicies'] as core.List?)
                ?.map(
                  (value) => TlsInspectionPolicy.fromJson(
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
    if (tlsInspectionPolicies != null)
      'tlsInspectionPolicies': tlsInspectionPolicies!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response returned by the ListUrlLists method.
class ListUrlListsResponse {
  /// If there might be more results than those appearing in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call this method again using the value of
  /// `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// List of UrlList resources.
  core.List<UrlList>? urlLists;

  ListUrlListsResponse({this.nextPageToken, this.unreachable, this.urlLists});

  ListUrlListsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        urlLists:
            (json_['urlLists'] as core.List?)
                ?.map(
                  (value) => UrlList.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
    if (urlLists != null) 'urlLists': urlLists!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Specification of the MTLSPolicy.
class MTLSPolicy {
  /// Required if the policy is to be used with Traffic Director.
  ///
  /// For Application Load Balancers it must be empty. Defines the mechanism to
  /// obtain the Certificate Authority certificate to validate the client
  /// certificate.
  core.List<ValidationCA>? clientValidationCa;

  /// When the client presents an invalid certificate or no certificate to the
  /// load balancer, the `client_validation_mode` specifies how the client
  /// connection is handled.
  ///
  /// Required if the policy is to be used with the Application Load Balancers.
  /// For Traffic Director it must be empty.
  /// Possible string values are:
  /// - "CLIENT_VALIDATION_MODE_UNSPECIFIED" : Not allowed.
  /// - "ALLOW_INVALID_OR_MISSING_CLIENT_CERT" : Allow connection even if
  /// certificate chain validation of the client certificate failed or no client
  /// certificate was presented. The proof of possession of the private key is
  /// always checked if client certificate was presented. This mode requires the
  /// backend to implement processing of data extracted from a client
  /// certificate to authenticate the peer, or to reject connections if the
  /// client certificate fingerprint is missing.
  /// - "REJECT_INVALID" : Require a client certificate and allow connection to
  /// the backend only if validation of the client certificate passed. If set,
  /// requires a reference to non-empty TrustConfig specified in
  /// `client_validation_trust_config`.
  core.String? clientValidationMode;

  /// Reference to the TrustConfig from certificatemanager.googleapis.com
  /// namespace.
  ///
  /// If specified, the chain validation will be performed against certificates
  /// configured in the given TrustConfig. Allowed only if the policy is to be
  /// used with Application Load Balancers.
  core.String? clientValidationTrustConfig;

  MTLSPolicy({
    this.clientValidationCa,
    this.clientValidationMode,
    this.clientValidationTrustConfig,
  });

  MTLSPolicy.fromJson(core.Map json_)
    : this(
        clientValidationCa:
            (json_['clientValidationCa'] as core.List?)
                ?.map(
                  (value) => ValidationCA.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        clientValidationMode: json_['clientValidationMode'] as core.String?,
        clientValidationTrustConfig:
            json_['clientValidationTrustConfig'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientValidationCa != null) 'clientValidationCa': clientValidationCa!,
    if (clientValidationMode != null)
      'clientValidationMode': clientValidationMode!,
    if (clientValidationTrustConfig != null)
      'clientValidationTrustConfig': clientValidationTrustConfig!,
  };
}

/// A deployment represents a zonal mirroring backend ready to accept
/// GENEVE-encapsulated replica traffic, e.g. a zonal instance group fronted by
/// an internal passthrough load balancer.
///
/// Deployments are always part of a global deployment group which represents a
/// global mirroring service.
class MirroringDeployment {
  /// The timestamp when the resource was created.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description of the deployment.
  ///
  /// Used as additional context for the deployment.
  ///
  /// Optional.
  core.String? description;

  /// The regional forwarding rule that fronts the mirroring collectors, for
  /// example: `projects/123456789/regions/us-central1/forwardingRules/my-rule`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Required. Immutable.
  core.String? forwardingRule;

  /// Labels are key/value pairs that help to organize and filter resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The deployment group that this deployment is a part of, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Required. Immutable.
  core.String? mirroringDeploymentGroup;

  /// Identifier.
  ///
  /// The resource name of this deployment, for example:
  /// `projects/123456789/locations/us-central1-a/mirroringDeployments/my-dep`.
  /// See https://google.aip.dev/122 for more details.
  ///
  /// Immutable.
  core.String? name;

  /// The current state of the resource does not match the user's intended
  /// state, and the system is working to reconcile them.
  ///
  /// This part of the normal operation (e.g. linking a new association to the
  /// parent group). See https://google.aip.dev/128.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The current state of the deployment.
  ///
  /// See https://google.aip.dev/216.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set (this is not a valid state).
  /// - "ACTIVE" : The deployment is ready and in sync with the parent group.
  /// - "CREATING" : The deployment is being created.
  /// - "DELETING" : The deployment is being deleted.
  /// - "OUT_OF_SYNC" : The deployment is out of sync with the parent group. In
  /// most cases, this is a result of a transient issue within the system (e.g.
  /// a delayed data-path config) and the system is expected to recover
  /// automatically. See the parent deployment group's state for more details.
  /// - "DELETE_FAILED" : An attempt to delete the deployment has failed. This
  /// is a terminal state and the deployment is not expected to recover. The
  /// only permitted operation is to retry deleting the deployment.
  core.String? state;

  /// The timestamp when the resource was most recently updated.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? updateTime;

  MirroringDeployment({
    this.createTime,
    this.description,
    this.forwardingRule,
    this.labels,
    this.mirroringDeploymentGroup,
    this.name,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  MirroringDeployment.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        forwardingRule: json_['forwardingRule'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        mirroringDeploymentGroup:
            json_['mirroringDeploymentGroup'] as core.String?,
        name: json_['name'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (forwardingRule != null) 'forwardingRule': forwardingRule!,
    if (labels != null) 'labels': labels!,
    if (mirroringDeploymentGroup != null)
      'mirroringDeploymentGroup': mirroringDeploymentGroup!,
    if (name != null) 'name': name!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A deployment group aggregates many zonal mirroring backends (deployments)
/// into a single global mirroring service.
///
/// Consumers can connect this service using an endpoint group.
class MirroringDeploymentGroup {
  /// The list of endpoint groups that are connected to this resource.
  ///
  /// Output only.
  core.List<MirroringDeploymentGroupConnectedEndpointGroup>?
  connectedEndpointGroups;

  /// The timestamp when the resource was created.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description of the deployment group.
  ///
  /// Used as additional context for the deployment group.
  ///
  /// Optional.
  core.String? description;

  /// Labels are key/value pairs that help to organize and filter resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The list of locations where the deployment group is present.
  ///
  /// Output only.
  core.List<MirroringLocation>? locations;

  /// Identifier.
  ///
  /// The resource name of this deployment group, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`. See
  /// https://google.aip.dev/122 for more details.
  ///
  /// Immutable.
  core.String? name;

  /// The list of Mirroring Deployments that belong to this group.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<MirroringDeploymentGroupDeployment>? nestedDeployments;

  /// The network that will be used for all child deployments, for example:
  /// `projects/{project}/global/networks/{network}`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Required. Immutable.
  core.String? network;

  /// The current state of the resource does not match the user's intended
  /// state, and the system is working to reconcile them.
  ///
  /// This is part of the normal operation (e.g. adding a new deployment to the
  /// group) See https://google.aip.dev/128.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The current state of the deployment group.
  ///
  /// See https://google.aip.dev/216.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set (this is not a valid state).
  /// - "ACTIVE" : The deployment group is ready.
  /// - "CREATING" : The deployment group is being created.
  /// - "DELETING" : The deployment group is being deleted.
  core.String? state;

  /// The timestamp when the resource was most recently updated.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? updateTime;

  MirroringDeploymentGroup({
    this.connectedEndpointGroups,
    this.createTime,
    this.description,
    this.labels,
    this.locations,
    this.name,
    this.nestedDeployments,
    this.network,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  MirroringDeploymentGroup.fromJson(core.Map json_)
    : this(
        connectedEndpointGroups:
            (json_['connectedEndpointGroups'] as core.List?)
                ?.map(
                  (value) =>
                      MirroringDeploymentGroupConnectedEndpointGroup.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => MirroringLocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        nestedDeployments:
            (json_['nestedDeployments'] as core.List?)
                ?.map(
                  (value) => MirroringDeploymentGroupDeployment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        network: json_['network'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectedEndpointGroups != null)
      'connectedEndpointGroups': connectedEndpointGroups!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (labels != null) 'labels': labels!,
    if (locations != null) 'locations': locations!,
    if (name != null) 'name': name!,
    if (nestedDeployments != null) 'nestedDeployments': nestedDeployments!,
    if (network != null) 'network': network!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// An endpoint group connected to this deployment group.
class MirroringDeploymentGroupConnectedEndpointGroup {
  /// The connected endpoint group's resource name, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Output only.
  core.String? name;

  MirroringDeploymentGroupConnectedEndpointGroup({this.name});

  MirroringDeploymentGroupConnectedEndpointGroup.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// A deployment belonging to this deployment group.
class MirroringDeploymentGroupDeployment {
  /// The name of the Mirroring Deployment, in the format:
  /// `projects/{project}/locations/{location}/mirroringDeployments/{mirroring_deployment}`.
  ///
  /// Output only.
  core.String? name;

  /// Most recent known state of the deployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set (this is not a valid state).
  /// - "ACTIVE" : The deployment is ready and in sync with the parent group.
  /// - "CREATING" : The deployment is being created.
  /// - "DELETING" : The deployment is being deleted.
  /// - "OUT_OF_SYNC" : The deployment is out of sync with the parent group. In
  /// most cases, this is a result of a transient issue within the system (e.g.
  /// a delayed data-path config) and the system is expected to recover
  /// automatically. See the parent deployment group's state for more details.
  /// - "DELETE_FAILED" : An attempt to delete the deployment has failed. This
  /// is a terminal state and the deployment is not expected to recover. The
  /// only permitted operation is to retry deleting the deployment.
  core.String? state;

  MirroringDeploymentGroupDeployment({this.name, this.state});

  MirroringDeploymentGroupDeployment.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
  };
}

/// An endpoint group is a consumer frontend for a deployment group (backend).
///
/// In order to configure mirroring for a network, consumers must create: - An
/// association between their network and the endpoint group. - A security
/// profile that points to the endpoint group. - A mirroring rule that
/// references the security profile (group).
class MirroringEndpointGroup {
  /// List of associations to this endpoint group.
  ///
  /// Output only.
  core.List<MirroringEndpointGroupAssociationDetails>? associations;

  /// List of details about the connected deployment groups to this endpoint
  /// group.
  ///
  /// Output only.
  core.List<MirroringEndpointGroupConnectedDeploymentGroup>?
  connectedDeploymentGroups;

  /// The timestamp when the resource was created.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description of the endpoint group.
  ///
  /// Used as additional context for the endpoint group.
  ///
  /// Optional.
  core.String? description;

  /// Labels are key/value pairs that help to organize and filter resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The deployment group that this DIRECT endpoint group is connected to, for
  /// example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Immutable.
  core.String? mirroringDeploymentGroup;

  /// Identifier.
  ///
  /// The resource name of this endpoint group, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`. See
  /// https://google.aip.dev/122 for more details.
  ///
  /// Immutable.
  core.String? name;

  /// The current state of the resource does not match the user's intended
  /// state, and the system is working to reconcile them.
  ///
  /// This is part of the normal operation (e.g. adding a new association to the
  /// group). See https://google.aip.dev/128.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The current state of the endpoint group.
  ///
  /// See https://google.aip.dev/216.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set (this is not a valid state).
  /// - "ACTIVE" : The endpoint group is ready and in sync with the target
  /// deployment group.
  /// - "CLOSED" : The deployment group backing this endpoint group has been
  /// force-deleted. This endpoint group cannot be used and mirroring is
  /// effectively disabled.
  /// - "CREATING" : The endpoint group is being created.
  /// - "DELETING" : The endpoint group is being deleted.
  /// - "OUT_OF_SYNC" : The endpoint group is out of sync with the backing
  /// deployment group. In most cases, this is a result of a transient issue
  /// within the system (e.g. an inaccessible location) and the system is
  /// expected to recover automatically. See the associations field for details
  /// per network and location.
  /// - "DELETE_FAILED" : An attempt to delete the endpoint group has failed.
  /// This is a terminal state and the endpoint group is not expected to
  /// recover. The only permitted operation is to retry deleting the endpoint
  /// group.
  core.String? state;

  /// The timestamp when the resource was most recently updated.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? updateTime;

  MirroringEndpointGroup({
    this.associations,
    this.connectedDeploymentGroups,
    this.createTime,
    this.description,
    this.labels,
    this.mirroringDeploymentGroup,
    this.name,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  MirroringEndpointGroup.fromJson(core.Map json_)
    : this(
        associations:
            (json_['associations'] as core.List?)
                ?.map(
                  (value) => MirroringEndpointGroupAssociationDetails.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        connectedDeploymentGroups:
            (json_['connectedDeploymentGroups'] as core.List?)
                ?.map(
                  (value) =>
                      MirroringEndpointGroupConnectedDeploymentGroup.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        mirroringDeploymentGroup:
            json_['mirroringDeploymentGroup'] as core.String?,
        name: json_['name'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (associations != null) 'associations': associations!,
    if (connectedDeploymentGroups != null)
      'connectedDeploymentGroups': connectedDeploymentGroups!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (labels != null) 'labels': labels!,
    if (mirroringDeploymentGroup != null)
      'mirroringDeploymentGroup': mirroringDeploymentGroup!,
    if (name != null) 'name': name!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// An endpoint group association represents a link between a network and an
/// endpoint group in the organization.
///
/// Creating an association creates the networking infrastructure linking the
/// network to the endpoint group, but does not enable mirroring by itself. To
/// enable mirroring, the user must also create a network firewall policy
/// containing mirroring rules and associate it with the network.
class MirroringEndpointGroupAssociation {
  /// The timestamp when the resource was created.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? createTime;

  /// Labels are key/value pairs that help to organize and filter resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The list of locations where the association is configured.
  ///
  /// This information is retrieved from the linked endpoint group.
  ///
  /// Output only.
  core.List<MirroringLocation>? locations;

  /// The list of locations where the association is present.
  ///
  /// This information is retrieved from the linked endpoint group, and not
  /// configured as part of the association itself.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<MirroringEndpointGroupAssociationLocationDetails>? locationsDetails;

  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Immutable.
  core.String? mirroringEndpointGroup;

  /// Identifier.
  ///
  /// The resource name of this endpoint group association, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroupAssociations/my-eg-association`.
  /// See https://google.aip.dev/122 for more details.
  ///
  /// Immutable.
  core.String? name;

  /// The VPC network that is associated.
  ///
  /// for example: `projects/123456789/global/networks/my-network`. See
  /// https://google.aip.dev/124.
  ///
  /// Immutable.
  core.String? network;

  /// The current state of the resource does not match the user's intended
  /// state, and the system is working to reconcile them.
  ///
  /// This part of the normal operation (e.g. adding a new location to the
  /// target deployment group). See https://google.aip.dev/128.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Current state of the endpoint group association.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "ACTIVE" : The association is ready and in sync with the linked endpoint
  /// group.
  /// - "CREATING" : The association is being created.
  /// - "DELETING" : The association is being deleted.
  /// - "CLOSED" : The association is disabled due to a breaking change in
  /// another resource.
  /// - "OUT_OF_SYNC" : The association is out of sync with the linked endpoint
  /// group. In most cases, this is a result of a transient issue within the
  /// system (e.g. an inaccessible location) and the system is expected to
  /// recover automatically. Check the `locations_details` field for more
  /// details.
  /// - "DELETE_FAILED" : An attempt to delete the association has failed. This
  /// is a terminal state and the association is not expected to be usable as
  /// some of its resources have been deleted. The only permitted operation is
  /// to retry deleting the association.
  core.String? state;

  /// The timestamp when the resource was most recently updated.
  ///
  /// See https://google.aip.dev/148#timestamps.
  ///
  /// Output only.
  core.String? updateTime;

  MirroringEndpointGroupAssociation({
    this.createTime,
    this.labels,
    this.locations,
    this.locationsDetails,
    this.mirroringEndpointGroup,
    this.name,
    this.network,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  MirroringEndpointGroupAssociation.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => MirroringLocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        locationsDetails:
            (json_['locationsDetails'] as core.List?)
                ?.map(
                  (value) =>
                      MirroringEndpointGroupAssociationLocationDetails.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        mirroringEndpointGroup: json_['mirroringEndpointGroup'] as core.String?,
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (labels != null) 'labels': labels!,
    if (locations != null) 'locations': locations!,
    if (locationsDetails != null) 'locationsDetails': locationsDetails!,
    if (mirroringEndpointGroup != null)
      'mirroringEndpointGroup': mirroringEndpointGroup!,
    if (name != null) 'name': name!,
    if (network != null) 'network': network!,
    if (reconciling != null) 'reconciling': reconciling!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// The endpoint group's view of a connected association.
class MirroringEndpointGroupAssociationDetails {
  /// The connected association's resource name, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroupAssociations/my-ega`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Output only.
  core.String? name;

  /// The associated network, for example:
  /// projects/123456789/global/networks/my-network.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Output only.
  core.String? network;

  /// Most recent known state of the association.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not set.
  /// - "ACTIVE" : The association is ready and in sync with the linked endpoint
  /// group.
  /// - "CREATING" : The association is being created.
  /// - "DELETING" : The association is being deleted.
  /// - "CLOSED" : The association is disabled due to a breaking change in
  /// another resource.
  /// - "OUT_OF_SYNC" : The association is out of sync with the linked endpoint
  /// group. In most cases, this is a result of a transient issue within the
  /// system (e.g. an inaccessible location) and the system is expected to
  /// recover automatically. Check the `locations_details` field for more
  /// details.
  /// - "DELETE_FAILED" : An attempt to delete the association has failed. This
  /// is a terminal state and the association is not expected to be usable as
  /// some of its resources have been deleted. The only permitted operation is
  /// to retry deleting the association.
  core.String? state;

  MirroringEndpointGroupAssociationDetails({
    this.name,
    this.network,
    this.state,
  });

  MirroringEndpointGroupAssociationDetails.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (network != null) 'network': network!,
    if (state != null) 'state': state!,
  };
}

/// Contains details about the state of an association in a specific cloud
/// location.
typedef MirroringEndpointGroupAssociationLocationDetails =
    $EndpointGroupAssociationLocationDetails;

/// The endpoint group's view of a connected deployment group.
class MirroringEndpointGroupConnectedDeploymentGroup {
  /// The list of locations where the deployment group is present.
  ///
  /// Output only.
  core.List<MirroringLocation>? locations;

  /// The connected deployment group's resource name, for example:
  /// `projects/123456789/locations/global/mirroringDeploymentGroups/my-dg`.
  ///
  /// See https://google.aip.dev/124.
  ///
  /// Output only.
  core.String? name;

  MirroringEndpointGroupConnectedDeploymentGroup({this.locations, this.name});

  MirroringEndpointGroupConnectedDeploymentGroup.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => MirroringLocation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locations != null) 'locations': locations!,
    if (name != null) 'name': name!,
  };
}

/// Details about mirroring in a specific cloud location.
typedef MirroringLocation = $Location02;

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

/// Request used by the RemoveAddressGroupItems method.
class RemoveAddressGroupItemsRequest {
  /// List of items to remove.
  ///
  /// Required.
  core.List<core.String>? items;

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

  RemoveAddressGroupItemsRequest({this.items, this.requestId});

  RemoveAddressGroupItemsRequest.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Specification of rules.
class Rule {
  /// List of attributes for the traffic destination.
  ///
  /// All of the destinations must match. A destination is a match if a request
  /// matches all the specified hosts, ports, methods and headers. If not set,
  /// the action specified in the 'action' field will be applied without any
  /// rule checks for the destination.
  ///
  /// Optional.
  core.List<Destination>? destinations;

  /// List of attributes for the traffic source.
  ///
  /// All of the sources must match. A source is a match if both principals and
  /// ip_blocks match. If not set, the action specified in the 'action' field
  /// will be applied without any rule checks for the source.
  ///
  /// Optional.
  core.List<Source>? sources;

  Rule({this.destinations, this.sources});

  Rule.fromJson(core.Map json_)
    : this(
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => Destination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sources:
            (json_['sources'] as core.List?)
                ?.map(
                  (value) => Source.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destinations != null) 'destinations': destinations!,
    if (sources != null) 'sources': sources!,
  };
}

/// SecurityProfile is a resource that defines the behavior for one of many
/// ProfileTypes.
class SecurityProfile {
  /// Resource creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// The custom TPPI configuration for the SecurityProfile.
  CustomInterceptProfile? customInterceptProfile;

  /// The custom Packet Mirroring v2 configuration for the SecurityProfile.
  CustomMirroringProfile? customMirroringProfile;

  /// An optional description of the profile.
  ///
  /// Max length 512 characters.
  ///
  /// Optional.
  core.String? description;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// Labels as key value pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Name of the SecurityProfile resource. It matches pattern
  /// `projects|organizations / *
  /// /locations/{location}/securityProfiles/{security_profile}`.
  ///
  /// Immutable.
  core.String? name;

  /// The threat prevention configuration for the SecurityProfile.
  ThreatPreventionProfile? threatPreventionProfile;

  /// The single ProfileType that the SecurityProfile resource configures.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "PROFILE_TYPE_UNSPECIFIED" : Profile type not specified.
  /// - "THREAT_PREVENTION" : Profile type for threat prevention.
  /// - "CUSTOM_MIRRORING" : Profile type for packet mirroring v2
  /// - "CUSTOM_INTERCEPT" : Profile type for TPPI.
  core.String? type;

  /// Last resource update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  SecurityProfile({
    this.createTime,
    this.customInterceptProfile,
    this.customMirroringProfile,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.threatPreventionProfile,
    this.type,
    this.updateTime,
  });

  SecurityProfile.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        customInterceptProfile:
            json_.containsKey('customInterceptProfile')
                ? CustomInterceptProfile.fromJson(
                  json_['customInterceptProfile']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        customMirroringProfile:
            json_.containsKey('customMirroringProfile')
                ? CustomMirroringProfile.fromJson(
                  json_['customMirroringProfile']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        threatPreventionProfile:
            json_.containsKey('threatPreventionProfile')
                ? ThreatPreventionProfile.fromJson(
                  json_['threatPreventionProfile']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (customInterceptProfile != null)
      'customInterceptProfile': customInterceptProfile!,
    if (customMirroringProfile != null)
      'customMirroringProfile': customMirroringProfile!,
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (threatPreventionProfile != null)
      'threatPreventionProfile': threatPreventionProfile!,
    if (type != null) 'type': type!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// SecurityProfileGroup is a resource that defines the behavior for various
/// ProfileTypes.
class SecurityProfileGroup {
  /// Resource creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Reference to a SecurityProfile with the CustomIntercept configuration.
  ///
  /// Optional.
  core.String? customInterceptProfile;

  /// Reference to a SecurityProfile with the CustomMirroring configuration.
  ///
  /// Optional.
  core.String? customMirroringProfile;

  /// Identifier used by the data-path.
  ///
  /// Unique within {container, location}.
  ///
  /// Output only.
  core.String? dataPathId;

  /// An optional description of the profile group.
  ///
  /// Max length 2048 characters.
  ///
  /// Optional.
  core.String? description;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// Labels as key value pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Name of the SecurityProfileGroup resource. It matches pattern
  /// `projects|organizations / *
  /// /locations/{location}/securityProfileGroups/{security_profile_group}`.
  ///
  /// Immutable.
  core.String? name;

  /// Reference to a SecurityProfile with the ThreatPrevention configuration.
  ///
  /// Optional.
  core.String? threatPreventionProfile;

  /// Last resource update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  SecurityProfileGroup({
    this.createTime,
    this.customInterceptProfile,
    this.customMirroringProfile,
    this.dataPathId,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.threatPreventionProfile,
    this.updateTime,
  });

  SecurityProfileGroup.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        customInterceptProfile: json_['customInterceptProfile'] as core.String?,
        customMirroringProfile: json_['customMirroringProfile'] as core.String?,
        dataPathId: json_['dataPathId'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        threatPreventionProfile:
            json_['threatPreventionProfile'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (customInterceptProfile != null)
      'customInterceptProfile': customInterceptProfile!,
    if (customMirroringProfile != null)
      'customMirroringProfile': customMirroringProfile!,
    if (dataPathId != null) 'dataPathId': dataPathId!,
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (threatPreventionProfile != null)
      'threatPreventionProfile': threatPreventionProfile!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// ServerTlsPolicy is a resource that specifies how a server should
/// authenticate incoming requests.
///
/// This resource itself does not affect configuration unless it is attached to
/// a target HTTPS proxy or endpoint config selector resource. ServerTlsPolicy
/// in the form accepted by Application Load Balancers can be attached only to
/// TargetHttpsProxy with an `EXTERNAL`, `EXTERNAL_MANAGED` or
/// `INTERNAL_MANAGED` load balancing scheme. Traffic Director compatible
/// ServerTlsPolicies can be attached to EndpointPolicy and TargetHttpsProxy
/// with Traffic Director `INTERNAL_SELF_MANAGED` load balancing scheme.
class ServerTlsPolicy {
  /// This field applies only for Traffic Director policies.
  ///
  /// It is must be set to false for Application Load Balancer policies.
  /// Determines if server allows plaintext connections. If set to true, server
  /// allows plain text connections. By default, it is set to false. This
  /// setting is not exclusive of other encryption modes. For example, if
  /// `allow_open` and `mtls_policy` are set, server allows both plain text and
  /// mTLS connections. See documentation of other encryption modes to confirm
  /// compatibility. Consider using it if you wish to upgrade in place your
  /// deployment to TLS while having mixed TLS and non-TLS traffic reaching port
  /// :80.
  core.bool? allowOpen;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Free-text description of the resource.
  core.String? description;

  /// Set of label tags associated with the resource.
  core.Map<core.String, core.String>? labels;

  /// This field is required if the policy is used with Application Load
  /// Balancers.
  ///
  /// This field can be empty for Traffic Director. Defines a mechanism to
  /// provision peer validation certificates for peer to peer authentication
  /// (Mutual TLS - mTLS). If not specified, client certificate will not be
  /// requested. The connection is treated as TLS and not mTLS. If `allow_open`
  /// and `mtls_policy` are set, server allows both plain text and mTLS
  /// connections.
  MTLSPolicy? mtlsPolicy;

  /// Name of the ServerTlsPolicy resource.
  ///
  /// It matches the pattern `projects / *
  /// /locations/{location}/serverTlsPolicies/{server_tls_policy}`
  ///
  /// Required.
  core.String? name;

  /// Optional if policy is to be used with Traffic Director.
  ///
  /// For Application Load Balancers must be empty. Defines a mechanism to
  /// provision server identity (public and private keys). Cannot be combined
  /// with `allow_open` as a permissive mode that allows both plain text and TLS
  /// is not supported.
  GoogleCloudNetworksecurityV1CertificateProvider? serverCertificate;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  ServerTlsPolicy({
    this.allowOpen,
    this.createTime,
    this.description,
    this.labels,
    this.mtlsPolicy,
    this.name,
    this.serverCertificate,
    this.updateTime,
  });

  ServerTlsPolicy.fromJson(core.Map json_)
    : this(
        allowOpen: json_['allowOpen'] as core.bool?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        mtlsPolicy:
            json_.containsKey('mtlsPolicy')
                ? MTLSPolicy.fromJson(
                  json_['mtlsPolicy'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        serverCertificate:
            json_.containsKey('serverCertificate')
                ? GoogleCloudNetworksecurityV1CertificateProvider.fromJson(
                  json_['serverCertificate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowOpen != null) 'allowOpen': allowOpen!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (labels != null) 'labels': labels!,
    if (mtlsPolicy != null) 'mtlsPolicy': mtlsPolicy!,
    if (name != null) 'name': name!,
    if (serverCertificate != null) 'serverCertificate': serverCertificate!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Defines what action to take for a specific severity match.
class SeverityOverride {
  /// Threat action override.
  ///
  /// Required.
  /// Possible string values are:
  /// - "THREAT_ACTION_UNSPECIFIED" : Threat action not specified.
  /// - "DEFAULT_ACTION" : The default action (as specified by the vendor) is
  /// taken.
  /// - "ALLOW" : The packet matching this rule will be allowed to transmit.
  /// - "ALERT" : The packet matching this rule will be allowed to transmit, but
  /// a threat_log entry will be sent to the consumer project.
  /// - "DENY" : The packet matching this rule will be dropped, and a threat_log
  /// entry will be sent to the consumer project.
  core.String? action;

  /// Severity level to match.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Severity level not specified.
  /// - "INFORMATIONAL" : Suspicious events that do not pose an immediate
  /// threat, but that are reported to call attention to deeper problems that
  /// could possibly exist.
  /// - "LOW" : Warning-level threats that have very little impact on an
  /// organization's infrastructure. They usually require local or physical
  /// system access and may often result in victim privacy issues and
  /// information leakage.
  /// - "MEDIUM" : Minor threats in which impact is minimized, that do not
  /// compromise the target or exploits that require an attacker to reside on
  /// the same local network as the victim, affect only non-standard
  /// configurations or obscure applications, or provide very limited access.
  /// - "HIGH" : Threats that have the ability to become critical but have
  /// mitigating factors; for example, they may be difficult to exploit, do not
  /// result in elevated privileges, or do not have a large victim pool.
  /// - "CRITICAL" : Serious threats, such as those that affect default
  /// installations of widely deployed software, result in root compromise of
  /// servers, and the exploit code is widely available to attackers. The
  /// attacker usually does not need any special authentication credentials or
  /// knowledge about the individual victims and the target does not need to be
  /// manipulated into performing any special functions.
  core.String? severity;

  SeverityOverride({this.action, this.severity});

  SeverityOverride.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (severity != null) 'severity': severity!,
  };
}

/// Specification of traffic source attributes.
class Source {
  /// List of CIDR ranges to match based on source IP address.
  ///
  /// At least one IP block should match. Single IP (e.g., "1.2.3.4") and CIDR
  /// (e.g., "1.2.3.0/24") are supported. Authorization based on source IP alone
  /// should be avoided. The IP addresses of any load balancers or proxies
  /// should be considered untrusted.
  ///
  /// Optional.
  core.List<core.String>? ipBlocks;

  /// List of peer identities to match for authorization.
  ///
  /// At least one principal should match. Each peer can be an exact match, or a
  /// prefix match (example, "namespace / * ") or a suffix match (example, " * /
  /// service-account") or a presence match "*". Authorization based on the
  /// principal name without certificate validation (configured by
  /// ServerTlsPolicy resource) is considered insecure.
  ///
  /// Optional.
  core.List<core.String>? principals;

  Source({this.ipBlocks, this.principals});

  Source.fromJson(core.Map json_)
    : this(
        ipBlocks:
            (json_['ipBlocks'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        principals:
            (json_['principals'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ipBlocks != null) 'ipBlocks': ipBlocks!,
    if (principals != null) 'principals': principals!,
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

/// Defines what action to take for a specific threat_id match.
class ThreatOverride {
  /// Threat action override.
  ///
  /// For some threat types, only a subset of actions applies.
  ///
  /// Required.
  /// Possible string values are:
  /// - "THREAT_ACTION_UNSPECIFIED" : Threat action not specified.
  /// - "DEFAULT_ACTION" : The default action (as specified by the vendor) is
  /// taken.
  /// - "ALLOW" : The packet matching this rule will be allowed to transmit.
  /// - "ALERT" : The packet matching this rule will be allowed to transmit, but
  /// a threat_log entry will be sent to the consumer project.
  /// - "DENY" : The packet matching this rule will be dropped, and a threat_log
  /// entry will be sent to the consumer project.
  core.String? action;

  /// Vendor-specific ID of a threat to override.
  ///
  /// Required.
  core.String? threatId;

  /// Type of the threat (read only).
  ///
  /// Output only.
  /// Possible string values are:
  /// - "THREAT_TYPE_UNSPECIFIED" : Type of threat not specified.
  /// - "UNKNOWN" : Type of threat is not derivable from threat ID. An override
  /// will be created for all types. Firewall will ignore overridden signature
  /// ID's that don't exist in the specific type.
  /// - "VULNERABILITY" : Threats related to system flaws that an attacker might
  /// otherwise attempt to exploit.
  /// - "ANTIVIRUS" : Threats related to viruses and malware found in
  /// executables and file types.
  /// - "SPYWARE" : Threats related to command-and-control (C2) activity, where
  /// spyware on an infected client is collecting data without the user's
  /// consent and/or communicating with a remote attacker.
  /// - "DNS" : Threats related to DNS.
  core.String? type;

  ThreatOverride({this.action, this.threatId, this.type});

  ThreatOverride.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        threatId: json_['threatId'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (threatId != null) 'threatId': threatId!,
    if (type != null) 'type': type!,
  };
}

/// ThreatPreventionProfile defines an action for specific threat signatures or
/// severity levels.
class ThreatPreventionProfile {
  /// Configuration for overriding antivirus actions per protocol.
  ///
  /// Optional.
  core.List<AntivirusOverride>? antivirusOverrides;

  /// Configuration for overriding threats actions by severity match.
  ///
  /// Optional.
  core.List<SeverityOverride>? severityOverrides;

  /// Configuration for overriding threats actions by threat_id match.
  ///
  /// If a threat is matched both by configuration provided in
  /// severity_overrides and threat_overrides, the threat_overrides action is
  /// applied.
  ///
  /// Optional.
  core.List<ThreatOverride>? threatOverrides;

  ThreatPreventionProfile({
    this.antivirusOverrides,
    this.severityOverrides,
    this.threatOverrides,
  });

  ThreatPreventionProfile.fromJson(core.Map json_)
    : this(
        antivirusOverrides:
            (json_['antivirusOverrides'] as core.List?)
                ?.map(
                  (value) => AntivirusOverride.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        severityOverrides:
            (json_['severityOverrides'] as core.List?)
                ?.map(
                  (value) => SeverityOverride.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        threatOverrides:
            (json_['threatOverrides'] as core.List?)
                ?.map(
                  (value) => ThreatOverride.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (antivirusOverrides != null) 'antivirusOverrides': antivirusOverrides!,
    if (severityOverrides != null) 'severityOverrides': severityOverrides!,
    if (threatOverrides != null) 'threatOverrides': threatOverrides!,
  };
}

/// The TlsInspectionPolicy resource contains references to CA pools in
/// Certificate Authority Service and associated metadata.
class TlsInspectionPolicy {
  /// A CA pool resource used to issue interception certificates.
  ///
  /// The CA pool string has a relative resource path following the form
  /// "projects/{project}/locations/{location}/caPools/{ca_pool}".
  ///
  /// Required.
  core.String? caPool;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// List of custom TLS cipher suites selected.
  ///
  /// This field is valid only if the selected tls_feature_profile is CUSTOM.
  /// The compute.SslPoliciesService.ListAvailableFeatures method returns the
  /// set of features that can be specified in this list. Note that Secure Web
  /// Proxy does not yet honor this field.
  ///
  /// Optional.
  core.List<core.String>? customTlsFeatures;

  /// Free-text description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// If FALSE (the default), use our default set of public CAs in addition to
  /// any CAs specified in trust_config.
  ///
  /// These public CAs are currently based on the Mozilla Root Program and are
  /// subject to change over time. If TRUE, do not accept our default set of
  /// public CAs. Only CAs specified in trust_config will be accepted. This
  /// defaults to FALSE (use public CAs in addition to trust_config) for
  /// backwards compatibility, but trusting public root CAs is *not recommended*
  /// unless the traffic in question is outbound to public web servers. When
  /// possible, prefer setting this to "false" and explicitly specifying trusted
  /// CAs and certificates in a TrustConfig. Note that Secure Web Proxy does not
  /// yet honor this field.
  ///
  /// Optional.
  core.bool? excludePublicCaSet;

  /// Minimum TLS version that the firewall should use when negotiating
  /// connections with both clients and servers.
  ///
  /// If this is not set, then the default value is to allow the broadest set of
  /// clients and servers (TLS 1.0 or higher). Setting this to more restrictive
  /// values may improve security, but may also prevent the firewall from
  /// connecting to some clients or servers. Note that Secure Web Proxy does not
  /// yet honor this field.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TLS_VERSION_UNSPECIFIED" : Indicates no TLS version was specified.
  /// - "TLS_1_0" : TLS 1.0
  /// - "TLS_1_1" : TLS 1.1
  /// - "TLS_1_2" : TLS 1.2
  /// - "TLS_1_3" : TLS 1.3
  core.String? minTlsVersion;

  /// Name of the resource.
  ///
  /// Name is of the form
  /// projects/{project}/locations/{location}/tlsInspectionPolicies/{tls_inspection_policy}
  /// tls_inspection_policy should match the
  /// pattern:(^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$).
  ///
  /// Required.
  core.String? name;

  /// The selected Profile.
  ///
  /// If this is not set, then the default value is to allow the broadest set of
  /// clients and servers ("PROFILE_COMPATIBLE"). Setting this to more
  /// restrictive values may improve security, but may also prevent the TLS
  /// inspection proxy from connecting to some clients or servers. Note that
  /// Secure Web Proxy does not yet honor this field.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PROFILE_UNSPECIFIED" : Indicates no profile was specified.
  /// - "PROFILE_COMPATIBLE" : Compatible profile. Allows the broadest set of
  /// clients, even those which support only out-of-date SSL features to
  /// negotiate with the TLS inspection proxy.
  /// - "PROFILE_MODERN" : Modern profile. Supports a wide set of SSL features,
  /// allowing modern clients to negotiate SSL with the TLS inspection proxy.
  /// - "PROFILE_RESTRICTED" : Restricted profile. Supports a reduced set of SSL
  /// features, intended to meet stricter compliance requirements.
  /// - "PROFILE_CUSTOM" : Custom profile. Allow only the set of allowed SSL
  /// features specified in the custom_features field of SslPolicy.
  core.String? tlsFeatureProfile;

  /// A TrustConfig resource used when making a connection to the TLS server.
  ///
  /// This is a relative resource path following the form
  /// "projects/{project}/locations/{location}/trustConfigs/{trust_config}".
  /// This is necessary to intercept TLS connections to servers with
  /// certificates signed by a private CA or self-signed certificates. Note that
  /// Secure Web Proxy does not yet honor this field.
  ///
  /// Optional.
  core.String? trustConfig;

  /// The timestamp when the resource was updated.
  ///
  /// Output only.
  core.String? updateTime;

  TlsInspectionPolicy({
    this.caPool,
    this.createTime,
    this.customTlsFeatures,
    this.description,
    this.excludePublicCaSet,
    this.minTlsVersion,
    this.name,
    this.tlsFeatureProfile,
    this.trustConfig,
    this.updateTime,
  });

  TlsInspectionPolicy.fromJson(core.Map json_)
    : this(
        caPool: json_['caPool'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        customTlsFeatures:
            (json_['customTlsFeatures'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        description: json_['description'] as core.String?,
        excludePublicCaSet: json_['excludePublicCaSet'] as core.bool?,
        minTlsVersion: json_['minTlsVersion'] as core.String?,
        name: json_['name'] as core.String?,
        tlsFeatureProfile: json_['tlsFeatureProfile'] as core.String?,
        trustConfig: json_['trustConfig'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (caPool != null) 'caPool': caPool!,
    if (createTime != null) 'createTime': createTime!,
    if (customTlsFeatures != null) 'customTlsFeatures': customTlsFeatures!,
    if (description != null) 'description': description!,
    if (excludePublicCaSet != null) 'excludePublicCaSet': excludePublicCaSet!,
    if (minTlsVersion != null) 'minTlsVersion': minTlsVersion!,
    if (name != null) 'name': name!,
    if (tlsFeatureProfile != null) 'tlsFeatureProfile': tlsFeatureProfile!,
    if (trustConfig != null) 'trustConfig': trustConfig!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// UrlList proto helps users to set reusable, independently manageable lists of
/// hosts, host patterns, URLs, URL patterns.
class UrlList {
  /// Time when the security policy was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Free-text description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// Name of the resource provided by the user.
  ///
  /// Name is of the form
  /// projects/{project}/locations/{location}/urlLists/{url_list} url_list
  /// should match the pattern:(^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$).
  ///
  /// Required.
  core.String? name;

  /// Time when the security policy was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// FQDNs and URLs.
  ///
  /// Required.
  core.List<core.String>? values;

  UrlList({
    this.createTime,
    this.description,
    this.name,
    this.updateTime,
    this.values,
  });

  UrlList.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        values:
            (json_['values'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (values != null) 'values': values!,
  };
}

/// Specification of ValidationCA.
///
/// Defines the mechanism to obtain the Certificate Authority certificate to
/// validate the peer certificate.
class ValidationCA {
  /// The certificate provider instance specification that will be passed to the
  /// data plane, which will be used to load necessary credential information.
  CertificateProviderInstance? certificateProviderInstance;

  /// gRPC specific configuration to access the gRPC server to obtain the CA
  /// certificate.
  GoogleCloudNetworksecurityV1GrpcEndpoint? grpcEndpoint;

  ValidationCA({this.certificateProviderInstance, this.grpcEndpoint});

  ValidationCA.fromJson(core.Map json_)
    : this(
        certificateProviderInstance:
            json_.containsKey('certificateProviderInstance')
                ? CertificateProviderInstance.fromJson(
                  json_['certificateProviderInstance']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        grpcEndpoint:
            json_.containsKey('grpcEndpoint')
                ? GoogleCloudNetworksecurityV1GrpcEndpoint.fromJson(
                  json_['grpcEndpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificateProviderInstance != null)
      'certificateProviderInstance': certificateProviderInstance!,
    if (grpcEndpoint != null) 'grpcEndpoint': grpcEndpoint!,
  };
}
