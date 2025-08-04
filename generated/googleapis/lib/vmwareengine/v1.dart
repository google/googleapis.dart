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

/// VMware Engine API - v1
///
/// The Google VMware Engine API lets you programmatically manage VMware
/// environments.
///
/// For more information, see
/// <https://cloud.google.com/solutions/vmware-as-a-service>
///
/// Create an instance of [VMwareEngineApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAnnouncementsResource]
///     - [ProjectsLocationsDnsBindPermissionResource]
///     - [ProjectsLocationsNetworkPeeringsResource]
///       - [ProjectsLocationsNetworkPeeringsPeeringRoutesResource]
///     - [ProjectsLocationsNetworkPoliciesResource]
///       - [ProjectsLocationsNetworkPoliciesExternalAccessRulesResource]
///     - [ProjectsLocationsNodeTypesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPrivateCloudsResource]
///       - [ProjectsLocationsPrivateCloudsClustersResource]
///         - [ProjectsLocationsPrivateCloudsClustersNodesResource]
///       - [ProjectsLocationsPrivateCloudsExternalAddressesResource]
///       - [ProjectsLocationsPrivateCloudsHcxActivationKeysResource]
///       - [ProjectsLocationsPrivateCloudsLoggingServersResource]
///       - [ProjectsLocationsPrivateCloudsManagementDnsZoneBindingsResource]
///       - [ProjectsLocationsPrivateCloudsSubnetsResource]
///       - [ProjectsLocationsPrivateCloudsUpgradesResource]
///     - [ProjectsLocationsPrivateConnectionsResource]
///       - [ProjectsLocationsPrivateConnectionsPeeringRoutesResource]
///     - [ProjectsLocationsVmwareEngineNetworksResource]
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

/// The Google VMware Engine API lets you programmatically manage VMware
/// environments.
class VMwareEngineApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  VMwareEngineApi(
    http.Client client, {
    core.String rootUrl = 'https://vmwareengine.googleapis.com/',
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

  ProjectsLocationsAnnouncementsResource get announcements =>
      ProjectsLocationsAnnouncementsResource(_requester);
  ProjectsLocationsDnsBindPermissionResource get dnsBindPermission =>
      ProjectsLocationsDnsBindPermissionResource(_requester);
  ProjectsLocationsNetworkPeeringsResource get networkPeerings =>
      ProjectsLocationsNetworkPeeringsResource(_requester);
  ProjectsLocationsNetworkPoliciesResource get networkPolicies =>
      ProjectsLocationsNetworkPoliciesResource(_requester);
  ProjectsLocationsNodeTypesResource get nodeTypes =>
      ProjectsLocationsNodeTypesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPrivateCloudsResource get privateClouds =>
      ProjectsLocationsPrivateCloudsResource(_requester);
  ProjectsLocationsPrivateConnectionsResource get privateConnections =>
      ProjectsLocationsPrivateConnectionsResource(_requester);
  ProjectsLocationsVmwareEngineNetworksResource get vmwareEngineNetworks =>
      ProjectsLocationsVmwareEngineNetworksResource(_requester);

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

  /// Gets all the principals having bind permission on the intranet VPC
  /// associated with the consumer project granted by the Grant API.
  ///
  /// DnsBindPermission is a global resource and location can only be global.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource which stores the users/service
  /// accounts having the permission to bind to the corresponding intranet VPC
  /// of the consumer project. DnsBindPermission is a global resource. Resource
  /// names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/dnsBindPermission`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dnsBindPermission$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DnsBindPermission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DnsBindPermission> getDnsBindPermission(
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
    return DnsBindPermission.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

class ProjectsLocationsAnnouncementsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAnnouncementsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves a `Announcement` by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the announcement to retrieve.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-west1-a/announcements/announcement-uuid`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/announcements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Announcement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Announcement> get(
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
    return Announcement.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists `Announcements` for a given region and project
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to be queried for
  /// announcements. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/us-west1-a`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of
  /// announcement runs, you can exclude the ones named `example-announcement`
  /// by specifying `name != "example-announcement"`. You can also filter nested
  /// fields. To filter on multiple expressions, provide each separate
  /// expression within parentheses. For example: ``` (name =
  /// "example-announcement") (createTime > "2021-04-12T08:15:10.40Z") ``` By
  /// default, each expression is an `AND` expression. However, you can include
  /// `AND` and `OR` expressions explicitly. For example: ``` (name =
  /// "announcement-1") AND (createTime > "2021-04-12T08:15:10.40Z") OR (name =
  /// "announcement-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of announcements to return in one page.
  /// The service may return fewer than this value. The maximum value is coerced
  /// to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListAnnouncements`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListAnnouncements` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAnnouncementsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAnnouncementsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/announcements';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAnnouncementsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDnsBindPermissionResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDnsBindPermissionResource(commons.ApiRequester client)
    : _requester = client;

  /// Grants the bind permission to the customer provided principal(user /
  /// service account) to bind their DNS zone with the intranet VPC associated
  /// with the project.
  ///
  /// DnsBindPermission is a global resource and location can only be global.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource which stores the users/service
  /// accounts having the permission to bind to the corresponding intranet VPC
  /// of the consumer project. DnsBindPermission is a global resource. Resource
  /// names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/dnsBindPermission`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dnsBindPermission$`.
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
  async.Future<Operation> grant(
    GrantDnsBindPermissionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':grant';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Revokes the bind permission from the customer provided principal(user /
  /// service account) on the intranet VPC associated with the consumer project.
  ///
  /// DnsBindPermission is a global resource and location can only be global.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource which stores the users/service
  /// accounts having the permission to bind to the corresponding intranet VPC
  /// of the consumer project. DnsBindPermission is a global resource. Resource
  /// names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/dnsBindPermission`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dnsBindPermission$`.
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
  async.Future<Operation> revoke(
    RevokeDnsBindPermissionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':revoke';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsNetworkPeeringsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNetworkPeeringsPeeringRoutesResource get peeringRoutes =>
      ProjectsLocationsNetworkPeeringsPeeringRoutesResource(_requester);

  ProjectsLocationsNetworkPeeringsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new network peering between the peer network and VMware Engine
  /// network provided in a `NetworkPeering` resource.
  ///
  /// NetworkPeering is a global resource and location can only be global.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to create the new
  /// network peering in. This value is always `global`, because
  /// `NetworkPeering` is a global resource. Resource names are schemeless URIs
  /// that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [networkPeeringId] - Required. The user-provided identifier of the new
  /// `NetworkPeering`. This identifier must be unique among `NetworkPeering`
  /// resources within the parent and becomes the final token in the name URI.
  /// The identifier must meet the following requirements: * Only contains 1-63
  /// alphanumeric characters and hyphens * Begins with an alphabetical
  /// character * Ends with a non-hyphen character * Not formatted as a UUID *
  /// Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
  /// (section 3.5)
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
    NetworkPeering request,
    core.String parent, {
    core.String? networkPeeringId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (networkPeeringId != null) 'networkPeeringId': [networkPeeringId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/networkPeerings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `NetworkPeering` resource.
  ///
  /// When a network peering is deleted for a VMware Engine network, the peer
  /// network becomes inaccessible to that VMware Engine network. NetworkPeering
  /// is a global resource and location can only be global.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the network peering to be deleted.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/networkPeerings/my-peering`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPeerings/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

  /// Retrieves a `NetworkPeering` resource by its resource name.
  ///
  /// The resource contains details of the network peering, such as peered
  /// networks, import and export custom route configurations, and peering
  /// state. NetworkPeering is a global resource and location can only be
  /// global.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the network peering to retrieve.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/networkPeerings/my-peering`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPeerings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NetworkPeering].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NetworkPeering> get(
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
    return NetworkPeering.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists `NetworkPeering` resources in a given project.
  ///
  /// NetworkPeering is a global resource and location can only be global.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location (global) to query
  /// for network peerings. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of network
  /// peerings, you can exclude the ones named `example-peering` by specifying
  /// `name != "example-peering"`. To filter on multiple expressions, provide
  /// each separate expression within parentheses. For example: ``` (name =
  /// "example-peering") (createTime > "2021-04-12T08:15:10.40Z") ``` By
  /// default, each expression is an `AND` expression. However, you can include
  /// `AND` and `OR` expressions explicitly. For example: ``` (name =
  /// "example-peering-1") AND (createTime > "2021-04-12T08:15:10.40Z") OR (name
  /// = "example-peering-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of network peerings to return in one page.
  /// The maximum value is coerced to 1000. The default value of this field is
  /// 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListNetworkPeerings`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListNetworkPeerings` must match the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNetworkPeeringsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNetworkPeeringsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/networkPeerings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNetworkPeeringsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Modifies a `NetworkPeering` resource.
  ///
  /// Only the `description` field can be updated. Only fields specified in
  /// `updateMask` are applied. NetworkPeering is a global resource and location
  /// can only be global.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of the network
  /// peering. NetworkPeering is a global resource and location can only be
  /// global. Resource names are scheme-less URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/networkPeerings/my-peering`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPeerings/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `NetworkPeering` resource by the update. The fields
  /// specified in the `update_mask` are relative to the resource, not the full
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
    NetworkPeering request,
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

class ProjectsLocationsNetworkPeeringsPeeringRoutesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNetworkPeeringsPeeringRoutesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists the network peering routes exchanged over a peering connection.
  ///
  /// NetworkPeering is a global resource and location can only be global.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the network peering to retrieve
  /// peering routes from. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/global/networkPeerings/my-peering`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPeerings/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. Currently, only filtering on the `direction` field is supported.
  /// To return routes imported from the peer network, provide
  /// "direction=INCOMING". To return routes exported from the VMware Engine
  /// network, provide "direction=OUTGOING". Other filter expressions return an
  /// error.
  ///
  /// [pageSize] - The maximum number of peering routes to return in one page.
  /// The service may return fewer than this value. The maximum value is coerced
  /// to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListPeeringRoutes`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListPeeringRoutes` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPeeringRoutesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPeeringRoutesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/peeringRoutes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPeeringRoutesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsNetworkPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNetworkPoliciesExternalAccessRulesResource
  get externalAccessRules =>
      ProjectsLocationsNetworkPoliciesExternalAccessRulesResource(_requester);

  ProjectsLocationsNetworkPoliciesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new network policy in a given VMware Engine network of a project
  /// and location (region).
  ///
  /// A new network policy cannot be created if another network policy already
  /// exists in the same scope.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location (region) to create
  /// the new network policy in. Resource names are schemeless URIs that follow
  /// the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: `projects/my-project/locations/us-central1`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [networkPolicyId] - Required. The user-provided identifier of the network
  /// policy to be created. This identifier must be unique within parent
  /// `projects/{my-project}/locations/{us-central1}/networkPolicies` and
  /// becomes the final token in the name URI. The identifier must meet the
  /// following requirements: * Only contains 1-63 alphanumeric characters and
  /// hyphens * Begins with an alphabetical character * Ends with a non-hyphen
  /// character * Not formatted as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
    NetworkPolicy request,
    core.String parent, {
    core.String? networkPolicyId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (networkPolicyId != null) 'networkPolicyId': [networkPolicyId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/networkPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `NetworkPolicy` resource.
  ///
  /// A network policy cannot be deleted when `NetworkService.state` is set to
  /// `RECONCILING` for either its external IP or internet access service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the network policy to delete.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-network-policy`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPolicies/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

  /// Lists external IP addresses assigned to VMware workload VMs within the
  /// scope of the given network policy.
  ///
  /// Request parameters:
  ///
  /// [networkPolicy] - Required. The resource name of the network policy to
  /// query for assigned external IP addresses. Resource names are schemeless
  /// URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-policy`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPolicies/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of external IP addresses to return in one
  /// page. The service may return fewer than this value. The maximum value is
  /// coerced to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `FetchNetworkPolicyExternalAddresses` call. Provide this to retrieve the
  /// subsequent page. When paginating, all parameters provided to
  /// `FetchNetworkPolicyExternalAddresses`, except for `page_size` and
  /// `page_token`, must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchNetworkPolicyExternalAddressesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchNetworkPolicyExternalAddressesResponse>
  fetchExternalAddresses(
    core.String networkPolicy, {
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
        core.Uri.encodeFull('$networkPolicy') +
        ':fetchExternalAddresses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchNetworkPolicyExternalAddressesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves a `NetworkPolicy` resource by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the network policy to retrieve.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-network-policy`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NetworkPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NetworkPolicy> get(
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
    return NetworkPolicy.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists `NetworkPolicy` resources in a specified project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location (region) to query
  /// for network policies. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/us-central1`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of network
  /// policies, you can exclude the ones named `example-policy` by specifying
  /// `name != "example-policy"`. To filter on multiple expressions, provide
  /// each separate expression within parentheses. For example: ``` (name =
  /// "example-policy") (createTime > "2021-04-12T08:15:10.40Z") ``` By default,
  /// each expression is an `AND` expression. However, you can include `AND` and
  /// `OR` expressions explicitly. For example: ``` (name = "example-policy-1")
  /// AND (createTime > "2021-04-12T08:15:10.40Z") OR (name =
  /// "example-policy-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of network policies to return in one page.
  /// The service may return fewer than this value. The maximum value is coerced
  /// to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListNetworkPolicies`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListNetworkPolicies` must match the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNetworkPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNetworkPoliciesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/networkPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNetworkPoliciesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Modifies a `NetworkPolicy` resource.
  ///
  /// Only the following fields can be updated: `internet_access`,
  /// `external_ip`, `edge_services_cidr`. Only fields specified in `updateMask`
  /// are applied. When updating a network policy, the external IP network
  /// service can only be disabled if there are no external IP addresses present
  /// in the scope of the policy. Also, a `NetworkService` cannot be updated
  /// when `NetworkService.state` is set to `RECONCILING`. During operation
  /// processing, the resource is temporarily in the `ACTIVE` state before the
  /// operation fully completes. For that period of time, you can't update the
  /// resource. Use the operation status to determine when the processing fully
  /// completes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of this network
  /// policy. Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-network-policy`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPolicies/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `NetworkPolicy` resource by the update. The fields
  /// specified in the `update_mask` are relative to the resource, not the full
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
    NetworkPolicy request,
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

class ProjectsLocationsNetworkPoliciesExternalAccessRulesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNetworkPoliciesExternalAccessRulesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new external access rule in a given network policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the network policy to create a
  /// new external access firewall rule in. Resource names are schemeless URIs
  /// that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-policy`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPolicies/\[^/\]+$`.
  ///
  /// [externalAccessRuleId] - Required. The user-provided identifier of the
  /// `ExternalAccessRule` to be created. This identifier must be unique among
  /// `ExternalAccessRule` resources within the parent and becomes the final
  /// token in the name URI. The identifier must meet the following
  /// requirements: * Only contains 1-63 alphanumeric characters and hyphens *
  /// Begins with an alphabetical character * Ends with a non-hyphen character *
  /// Not formatted as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server guarantees that a
  /// request doesn't result in creation of duplicate commitments for at least
  /// 60 minutes. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if the original operation with the
  /// same request ID was received, and if so, will ignore the second request.
  /// This prevents clients from accidentally creating duplicate commitments.
  /// The request ID must be a valid UUID with the exception that zero UUID is
  /// not supported (00000000-0000-0000-0000-000000000000).
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
    ExternalAccessRule request,
    core.String parent, {
    core.String? externalAccessRuleId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (externalAccessRuleId != null)
        'externalAccessRuleId': [externalAccessRuleId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/externalAccessRules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single external access rule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the external access firewall rule
  /// to delete. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-policy/externalAccessRules/my-rule`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPolicies/\[^/\]+/externalAccessRules/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if the
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

  /// Gets details of a single external access rule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the external access firewall rule
  /// to retrieve. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-policy/externalAccessRules/my-rule`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPolicies/\[^/\]+/externalAccessRules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExternalAccessRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExternalAccessRule> get(
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
    return ExternalAccessRule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists `ExternalAccessRule` resources in the specified network policy.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the network policy to query for
  /// external access firewall rules. Resource names are schemeless URIs that
  /// follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-policy`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPolicies/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of external
  /// access rules, you can exclude the ones named `example-rule` by specifying
  /// `name != "example-rule"`. To filter on multiple expressions, provide each
  /// separate expression within parentheses. For example: ``` (name =
  /// "example-rule") (createTime > "2021-04-12T08:15:10.40Z") ``` By default,
  /// each expression is an `AND` expression. However, you can include `AND` and
  /// `OR` expressions explicitly. For example: ``` (name = "example-rule-1")
  /// AND (createTime > "2021-04-12T08:15:10.40Z") OR (name = "example-rule-2")
  /// ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of external access rules to return in one
  /// page. The service may return fewer than this value. The maximum value is
  /// coerced to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListExternalAccessRulesRequest` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListExternalAccessRulesRequest` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExternalAccessRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExternalAccessRulesResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/externalAccessRules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListExternalAccessRulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single external access rule.
  ///
  /// Only fields specified in `update_mask` are applied.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of this external access rule.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-policy/externalAccessRules/my-rule`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networkPolicies/\[^/\]+/externalAccessRules/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if the
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `ExternalAccessRule` resource by the update. The fields
  /// specified in the `update_mask` are relative to the resource, not the full
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
    ExternalAccessRule request,
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

class ProjectsLocationsNodeTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNodeTypesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single `NodeType`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the node type to retrieve.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-proj/locations/us-central1-a/nodeTypes/standard-72`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/nodeTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NodeType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NodeType> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NodeType.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists node types
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to be queried for
  /// node types. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of node types,
  /// you can exclude the ones named `standard-72` by specifying `name !=
  /// "standard-72"`. To filter on multiple expressions, provide each separate
  /// expression within parentheses. For example: ``` (name = "standard-72")
  /// (virtual_cpu_count > 2) ``` By default, each expression is an `AND`
  /// expression. However, you can include `AND` and `OR` expressions
  /// explicitly. For example: ``` (name = "standard-96") AND (virtual_cpu_count
  /// > 2) OR (name = "standard-72") ```
  ///
  /// [pageSize] - The maximum number of node types to return in one page. The
  /// service may return fewer than this value. The maximum value is coerced to
  /// 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListNodeTypes` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListNodeTypes` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNodeTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNodeTypesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/nodeTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNodeTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

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

class ProjectsLocationsPrivateCloudsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsClustersResource get clusters =>
      ProjectsLocationsPrivateCloudsClustersResource(_requester);
  ProjectsLocationsPrivateCloudsExternalAddressesResource
  get externalAddresses =>
      ProjectsLocationsPrivateCloudsExternalAddressesResource(_requester);
  ProjectsLocationsPrivateCloudsHcxActivationKeysResource
  get hcxActivationKeys =>
      ProjectsLocationsPrivateCloudsHcxActivationKeysResource(_requester);
  ProjectsLocationsPrivateCloudsLoggingServersResource get loggingServers =>
      ProjectsLocationsPrivateCloudsLoggingServersResource(_requester);
  ProjectsLocationsPrivateCloudsManagementDnsZoneBindingsResource
  get managementDnsZoneBindings =>
      ProjectsLocationsPrivateCloudsManagementDnsZoneBindingsResource(
        _requester,
      );
  ProjectsLocationsPrivateCloudsSubnetsResource get subnets =>
      ProjectsLocationsPrivateCloudsSubnetsResource(_requester);
  ProjectsLocationsPrivateCloudsUpgradesResource get upgrades =>
      ProjectsLocationsPrivateCloudsUpgradesResource(_requester);

  ProjectsLocationsPrivateCloudsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new `PrivateCloud` resource in a given project and location.
  ///
  /// Private clouds of type `STANDARD` and `TIME_LIMITED` are zonal resources,
  /// `STRETCHED` private clouds are regional. Creating a private cloud also
  /// creates a
  /// [management cluster](https://cloud.google.com/vmware-engine/docs/concepts-vmware-components)
  /// for that private cloud.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to create the new
  /// private cloud in. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/us-central1-a`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [privateCloudId] - Required. The user-provided identifier of the private
  /// cloud to be created. This identifier must be unique among each
  /// `PrivateCloud` within the parent and becomes the final token in the name
  /// URI. The identifier must meet the following requirements: * Only contains
  /// 1-63 alphanumeric characters and hyphens * Begins with an alphabetical
  /// character * Ends with a non-hyphen character * Not formatted as a UUID *
  /// Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
  /// (section 3.5)
  ///
  /// [requestId] - Optional. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. True if you want the request to be validated
  /// and not executed; false otherwise.
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
    PrivateCloud request,
    core.String parent, {
    core.String? privateCloudId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (privateCloudId != null) 'privateCloudId': [privateCloudId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/privateClouds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Schedules a `PrivateCloud` resource for deletion.
  ///
  /// A `PrivateCloud` resource scheduled for deletion has `PrivateCloud.state`
  /// set to `DELETED` and `expireTime` set to the time when deletion is final
  /// and can no longer be reversed. The delete operation is marked as done as
  /// soon as the `PrivateCloud` is successfully scheduled for deletion (this
  /// also applies when `delayHours` is set to zero), and the operation is not
  /// kept in pending state until `PrivateCloud` is purged. `PrivateCloud` can
  /// be restored using `UndeletePrivateCloud` method before the `expireTime`
  /// elapses. When `expireTime` is reached, deletion is final and all private
  /// cloud resources are irreversibly removed and billing stops. During the
  /// final removal process, `PrivateCloud.state` is set to `PURGING`.
  /// `PrivateCloud` can be polled using standard `GET` method for the whole
  /// period of deletion and purging. It will not be returned only when it is
  /// completely purged.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the private cloud to delete.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [delayHours] - Optional. Time delay of the deletion specified in hours.
  /// The default value is `3`. Specifying a non-zero value for this field
  /// changes the value of `PrivateCloud.state` to `DELETED` and sets
  /// `expire_time` to the planned deletion time. Deletion can be cancelled
  /// before `expire_time` elapses using VmwareEngine.UndeletePrivateCloud.
  /// Specifying a value of `0` for this field instead begins the deletion
  /// process and ceases billing immediately. During the final deletion process,
  /// the value of `PrivateCloud.state` becomes `PURGING`.
  ///
  /// [force] - Optional. If set to true, cascade delete is enabled and all
  /// children of this private cloud resource are also deleted. When this flag
  /// is set to false, the private cloud will not be deleted if there are any
  /// children other than the management cluster. The management cluster is
  /// always deleted.
  ///
  /// [requestId] - Optional. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
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
    core.int? delayHours,
    core.bool? force,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (delayHours != null) 'delayHours': ['${delayHours}'],
      if (force != null) 'force': ['${force}'],
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

  /// Retrieves a `PrivateCloud` resource by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the private cloud to retrieve.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PrivateCloud].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PrivateCloud> get(
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
    return PrivateCloud.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of the `DnsForwarding` config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of a `DnsForwarding` to retrieve.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/dnsForwarding`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/dnsForwarding$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DnsForwarding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DnsForwarding> getDnsForwarding(
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
    return DnsForwarding.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
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

  /// Lists `PrivateCloud` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to be queried
  /// for clusters. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/us-central1-a`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of private
  /// clouds, you can exclude the ones named `example-pc` by specifying `name !=
  /// "example-pc"`. You can also filter nested fields. For example, you could
  /// specify `networkConfig.managementCidr = "192.168.0.0/24"` to include
  /// private clouds only if they have a matching address in their network
  /// configuration. To filter on multiple expressions, provide each separate
  /// expression within parentheses. For example: ``` (name = "example-pc")
  /// (createTime > "2021-04-12T08:15:10.40Z") ``` By default, each expression
  /// is an `AND` expression. However, you can include `AND` and `OR`
  /// expressions explicitly. For example: ``` (name = "private-cloud-1") AND
  /// (createTime > "2021-04-12T08:15:10.40Z") OR (name = "private-cloud-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of private clouds to return in one page.
  /// The service may return fewer than this value. The maximum value is coerced
  /// to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListPrivateClouds`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListPrivateClouds` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPrivateCloudsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPrivateCloudsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/privateClouds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPrivateCloudsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Modifies a `PrivateCloud` resource.
  ///
  /// Only the following fields can be updated: `description`. Only fields
  /// specified in `updateMask` are applied. During operation processing, the
  /// resource is temporarily in the `ACTIVE` state before the operation fully
  /// completes. For that period of time, you can't update the resource. Use the
  /// operation status to determine when the processing fully completes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of this private cloud.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [requestId] - Optional. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `PrivateCloud` resource by the update. The fields
  /// specified in `updateMask` are relative to the resource, not the full
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
    PrivateCloud request,
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

  /// Resets credentials of the NSX appliance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [privateCloud] - Required. The resource name of the private cloud to reset
  /// credentials for. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
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
  async.Future<Operation> resetNsxCredentials(
    ResetNsxCredentialsRequest request,
    core.String privateCloud, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$privateCloud') + ':resetNsxCredentials';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets credentials of the Vcenter appliance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [privateCloud] - Required. The resource name of the private cloud to reset
  /// credentials for. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
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
  async.Future<Operation> resetVcenterCredentials(
    ResetVcenterCredentialsRequest request,
    core.String privateCloud, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$privateCloud') +
        ':resetVcenterCredentials';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
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

  /// Gets details of credentials for NSX appliance.
  ///
  /// Request parameters:
  ///
  /// [privateCloud] - Required. The resource name of the private cloud to be
  /// queried for credentials. Resource names are schemeless URIs that follow
  /// the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Credentials].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Credentials> showNsxCredentials(
    core.String privateCloud, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$privateCloud') + ':showNsxCredentials';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Credentials.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of credentials for Vcenter appliance.
  ///
  /// Request parameters:
  ///
  /// [privateCloud] - Required. The resource name of the private cloud to be
  /// queried for credentials. Resource names are schemeless URIs that follow
  /// the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [username] - Optional. The username of the user to be queried for
  /// credentials. The default value of this field is CloudOwner@gve.local. The
  /// provided value must be one of the following: CloudOwner@gve.local,
  /// solution-user-01@gve.local, solution-user-02@gve.local,
  /// solution-user-03@gve.local, solution-user-04@gve.local,
  /// solution-user-05@gve.local, zertoadmin@gve.local.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Credentials].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Credentials> showVcenterCredentials(
    core.String privateCloud, {
    core.String? username,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (username != null) 'username': [username],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$privateCloud') +
        ':showVcenterCredentials';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Credentials.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
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

  /// Restores a private cloud that was previously scheduled for deletion by
  /// `DeletePrivateCloud`.
  ///
  /// A `PrivateCloud` resource scheduled for deletion has `PrivateCloud.state`
  /// set to `DELETED` and `PrivateCloud.expireTime` set to the time when
  /// deletion can no longer be reversed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the private cloud scheduled for
  /// deletion. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
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
  async.Future<Operation> undelete(
    UndeletePrivateCloudRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of the `DnsForwarding` config, like associated
  /// domains.
  ///
  /// Only fields specified in `update_mask` are applied.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of this DNS profile.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/dnsForwarding`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/dnsForwarding$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `DnsForwarding` resource by the update. The fields
  /// specified in the `update_mask` are relative to the resource, not the full
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
  async.Future<Operation> updateDnsForwarding(
    DnsForwarding request,
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

class ProjectsLocationsPrivateCloudsClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsClustersNodesResource get nodes =>
      ProjectsLocationsPrivateCloudsClustersNodesResource(_requester);

  ProjectsLocationsPrivateCloudsClustersResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new cluster in a given private cloud.
  ///
  /// Creating a new cluster provides additional nodes for use in the parent
  /// private cloud and requires sufficient
  /// [node quota](https://cloud.google.com/vmware-engine/quotas).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to create a
  /// new cluster in. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [clusterId] - Required. The user-provided identifier of the new `Cluster`.
  /// This identifier must be unique among clusters within the parent and
  /// becomes the final token in the name URI. The identifier must meet the
  /// following requirements: * Only contains 1-63 alphanumeric characters and
  /// hyphens * Begins with an alphabetical character * Ends with a non-hyphen
  /// character * Not formatted as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// [requestId] - Optional. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. True if you want the request to be validated
  /// and not executed; false otherwise.
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
    core.String? clusterId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (clusterId != null) 'clusterId': [clusterId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `Cluster` resource.
  ///
  /// To avoid unintended data loss, migrate or gracefully shut down any
  /// workloads running on the cluster before deletion. You cannot delete the
  /// management cluster of a private cloud using this method.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the cluster to delete. Resource
  /// names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
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

  /// Retrieves a `Cluster` resource by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The cluster resource name to retrieve. Resource names
  /// are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
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
  async.Future<Cluster> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Cluster.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
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

  /// Lists `Cluster` resources in a given private cloud.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to query for
  /// clusters. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [filter] - To filter on multiple expressions, provide each separate
  /// expression within parentheses. For example: ``` (name = "example-cluster")
  /// (nodeCount = "3") ``` By default, each expression is an `AND` expression.
  /// However, you can include `AND` and `OR` expressions explicitly. For
  /// example: ``` (name = "example-cluster-1") AND (createTime >
  /// "2021-04-12T08:15:10.40Z") OR (name = "example-cluster-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of clusters to return in one page. The
  /// service may return fewer than this value. The maximum value is coerced to
  /// 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListClusters` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListClusters` must match the call that provided
  /// the page token.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/clusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListClustersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Modifies a `Cluster` resource.
  ///
  /// Only fields specified in `updateMask` are applied. During operation
  /// processing, the resource is temporarily in the `ACTIVE` state before the
  /// operation fully completes. For that period of time, you can't update the
  /// resource. Use the operation status to determine when the processing fully
  /// completes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of this cluster.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `Cluster` resource by the update. The fields specified
  /// in the `updateMask` are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. True if you want the request to be validated
  /// and not executed; false otherwise.
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
    Cluster request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
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

class ProjectsLocationsPrivateCloudsClustersNodesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsClustersNodesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets details of a single node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the node to retrieve. For example:
  /// `projects/{project}/locations/{location}/privateClouds/{private_cloud}/clusters/{cluster}/nodes/{node}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Node].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Node> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Node.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists nodes in a given cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the cluster to be queried for
  /// nodes. Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/clusters/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of nodes to return in one page. The
  /// service may return fewer than this value. The maximum value is coerced to
  /// 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListNodes` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListNodes` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNodesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNodesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNodesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsPrivateCloudsExternalAddressesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsExternalAddressesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new `ExternalAddress` resource in a given private cloud.
  ///
  /// The network policy that corresponds to the private cloud must have the
  /// external IP address network service enabled (`NetworkPolicy.external_ip`).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to create a
  /// new external IP address in. Resource names are schemeless URIs that follow
  /// the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [externalAddressId] - Required. The user-provided identifier of the
  /// `ExternalAddress` to be created. This identifier must be unique among
  /// `ExternalAddress` resources within the parent and becomes the final token
  /// in the name URI. The identifier must meet the following requirements: *
  /// Only contains 1-63 alphanumeric characters and hyphens * Begins with an
  /// alphabetical character * Ends with a non-hyphen character * Not formatted
  /// as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if the
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
    ExternalAddress request,
    core.String parent, {
    core.String? externalAddressId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (externalAddressId != null) 'externalAddressId': [externalAddressId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/externalAddresses';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single external IP address.
  ///
  /// When you delete an external IP address, connectivity between the external
  /// IP address and the corresponding internal IP address is lost.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the external IP address to delete.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/externalAddresses/my-ip`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/externalAddresses/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if the
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

  /// Gets details of a single external IP address.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the external IP address to
  /// retrieve. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/externalAddresses/my-ip`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/externalAddresses/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExternalAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExternalAddress> get(
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
    return ExternalAddress.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists external IP addresses assigned to VMware workload VMs in a given
  /// private cloud.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to be queried
  /// for external IP addresses. Resource names are schemeless URIs that follow
  /// the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of IP
  /// addresses, you can exclude the ones named `example-ip` by specifying `name
  /// != "example-ip"`. To filter on multiple expressions, provide each separate
  /// expression within parentheses. For example: ``` (name = "example-ip")
  /// (createTime > "2021-04-12T08:15:10.40Z") ``` By default, each expression
  /// is an `AND` expression. However, you can include `AND` and `OR`
  /// expressions explicitly. For example: ``` (name = "example-ip-1") AND
  /// (createTime > "2021-04-12T08:15:10.40Z") OR (name = "example-ip-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of external IP addresses to return in one
  /// page. The service may return fewer than this value. The maximum value is
  /// coerced to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListExternalAddresses` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListExternalAddresses` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExternalAddressesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExternalAddressesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/externalAddresses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListExternalAddressesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single external IP address.
  ///
  /// Only fields specified in `update_mask` are applied. During operation
  /// processing, the resource is temporarily in the `ACTIVE` state before the
  /// operation fully completes. For that period of time, you can't update the
  /// resource. Use the operation status to determine when the processing fully
  /// completes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of this external IP
  /// address. Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/externalAddresses/my-address`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/externalAddresses/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if the
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `ExternalAddress` resource by the update. The fields
  /// specified in the `update_mask` are relative to the resource, not the full
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
    ExternalAddress request,
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

class ProjectsLocationsPrivateCloudsHcxActivationKeysResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsHcxActivationKeysResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new HCX activation key in a given private cloud.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to create the
  /// key for. Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [hcxActivationKeyId] - Required. The user-provided identifier of the
  /// `HcxActivationKey` to be created. This identifier must be unique among
  /// `HcxActivationKey` resources within the parent and becomes the final token
  /// in the name URI. The identifier must meet the following requirements: *
  /// Only contains 1-63 alphanumeric characters and hyphens * Begins with an
  /// alphabetical character * Ends with a non-hyphen character * Not formatted
  /// as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// [requestId] - A request ID to identify requests. Specify a unique request
  /// ID so that if you must retry your request, the server will know to ignore
  /// the request if it has already been completed. The server guarantees that a
  /// request doesn't result in creation of duplicate commitments for at least
  /// 60 minutes. For example, consider a situation where you make an initial
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
    HcxActivationKey request,
    core.String parent, {
    core.String? hcxActivationKeyId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (hcxActivationKeyId != null)
        'hcxActivationKeyId': [hcxActivationKeyId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/hcxActivationKeys';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a `HcxActivationKey` resource by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the HCX activation key to
  /// retrieve. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateClouds/my-cloud/hcxActivationKeys/my-key`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/hcxActivationKeys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HcxActivationKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HcxActivationKey> get(
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
    return HcxActivationKey.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/hcxActivationKeys/\[^/\]+$`.
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

  /// Lists `HcxActivationKey` resources in a given private cloud.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to be queried
  /// for HCX activation keys. Resource names are schemeless URIs that follow
  /// the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example:
  /// `projects/my-project/locations/us-central1/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of HCX activation keys to return in one
  /// page. The service may return fewer than this value. The maximum value is
  /// coerced to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListHcxActivationKeys` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListHcxActivationKeys` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHcxActivationKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHcxActivationKeysResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/hcxActivationKeys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListHcxActivationKeysResponse.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/hcxActivationKeys/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/hcxActivationKeys/\[^/\]+$`.
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

class ProjectsLocationsPrivateCloudsLoggingServersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsLoggingServersResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Create a new logging server for a given private cloud.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to create a
  /// new Logging Server in. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [loggingServerId] - Required. The user-provided identifier of the
  /// `LoggingServer` to be created. This identifier must be unique among
  /// `LoggingServer` resources within the parent and becomes the final token in
  /// the name URI. The identifier must meet the following requirements: * Only
  /// contains 1-63 alphanumeric characters and hyphens * Begins with an
  /// alphabetical character * Ends with a non-hyphen character * Not formatted
  /// as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
    LoggingServer request,
    core.String parent, {
    core.String? loggingServerId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (loggingServerId != null) 'loggingServerId': [loggingServerId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/loggingServers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single logging server.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the logging server to delete.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/loggingServers/my-logging-server`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/loggingServers/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

  /// Gets details of a logging server.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Logging Server to retrieve.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/loggingServers/my-logging-server`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/loggingServers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoggingServer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoggingServer> get(
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
    return LoggingServer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists logging servers configured for a given private cloud.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to be queried
  /// for logging servers. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of logging
  /// servers, you can exclude the ones named `example-server` by specifying
  /// `name != "example-server"`. To filter on multiple expressions, provide
  /// each separate expression within parentheses. For example: ``` (name =
  /// "example-server") (createTime > "2021-04-12T08:15:10.40Z") ``` By default,
  /// each expression is an `AND` expression. However, you can include `AND` and
  /// `OR` expressions explicitly. For example: ``` (name = "example-server-1")
  /// AND (createTime > "2021-04-12T08:15:10.40Z") OR (name =
  /// "example-server-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of logging servers to return in one page.
  /// The service may return fewer than this value. The maximum value is coerced
  /// to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListLoggingServersRequest` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListLoggingServersRequest` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLoggingServersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLoggingServersResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/loggingServers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLoggingServersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single logging server.
  ///
  /// Only fields specified in `update_mask` are applied.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of this logging server. Resource
  /// names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/loggingServers/my-logging-server`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/loggingServers/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `LoggingServer` resource by the update. The fields
  /// specified in the `update_mask` are relative to the resource, not the full
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
    LoggingServer request,
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

class ProjectsLocationsPrivateCloudsManagementDnsZoneBindingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsManagementDnsZoneBindingsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new `ManagementDnsZoneBinding` resource in a private cloud.
  ///
  /// This RPC creates the DNS binding and the resource that represents the DNS
  /// binding of the consumer VPC network to the management DNS zone. A
  /// management DNS zone is the Cloud DNS cross-project binding zone that
  /// VMware Engine creates for each private cloud. It contains FQDNs and
  /// corresponding IP addresses for the private cloud's ESXi hosts and
  /// management VM appliances like vCenter and NSX Manager.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to create a
  /// new management DNS zone binding for. Resource names are schemeless URIs
  /// that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [managementDnsZoneBindingId] - Required. The user-provided identifier of
  /// the `ManagementDnsZoneBinding` resource to be created. This identifier
  /// must be unique among `ManagementDnsZoneBinding` resources within the
  /// parent and becomes the final token in the name URI. The identifier must
  /// meet the following requirements: * Only contains 1-63 alphanumeric
  /// characters and hyphens * Begins with an alphabetical character * Ends with
  /// a non-hyphen character * Not formatted as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if the
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
    ManagementDnsZoneBinding request,
    core.String parent, {
    core.String? managementDnsZoneBindingId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (managementDnsZoneBindingId != null)
        'managementDnsZoneBindingId': [managementDnsZoneBindingId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/managementDnsZoneBindings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `ManagementDnsZoneBinding` resource.
  ///
  /// When a management DNS zone binding is deleted, the corresponding consumer
  /// VPC network is no longer bound to the management DNS zone.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the management DNS zone binding to
  /// delete. Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/managementDnsZoneBindings/my-management-dns-zone-binding`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/managementDnsZoneBindings/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if the
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

  /// Retrieves a 'ManagementDnsZoneBinding' resource by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the management DNS zone binding to
  /// retrieve. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/managementDnsZoneBindings/my-management-dns-zone-binding`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/managementDnsZoneBindings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagementDnsZoneBinding].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagementDnsZoneBinding> get(
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
    return ManagementDnsZoneBinding.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Consumer VPCs bound to Management DNS Zone of a given private cloud.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to be queried
  /// for management DNS zone bindings. Resource names are schemeless URIs that
  /// follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of Management
  /// DNS Zone Bindings, you can exclude the ones named
  /// `example-management-dns-zone-binding` by specifying `name !=
  /// "example-management-dns-zone-binding"`. To filter on multiple expressions,
  /// provide each separate expression within parentheses. For example: ```
  /// (name = "example-management-dns-zone-binding") (createTime >
  /// "2021-04-12T08:15:10.40Z") ``` By default, each expression is an `AND`
  /// expression. However, you can include `AND` and `OR` expressions
  /// explicitly. For example: ``` (name =
  /// "example-management-dns-zone-binding-1") AND (createTime >
  /// "2021-04-12T08:15:10.40Z") OR (name =
  /// "example-management-dns-zone-binding-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of management DNS zone bindings to return
  /// in one page. The service may return fewer than this value. The maximum
  /// value is coerced to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListManagementDnsZoneBindings` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListManagementDnsZoneBindings` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListManagementDnsZoneBindingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListManagementDnsZoneBindingsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/managementDnsZoneBindings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListManagementDnsZoneBindingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a `ManagementDnsZoneBinding` resource.
  ///
  /// Only fields specified in `update_mask` are applied.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of this binding. Resource names
  /// are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/managementDnsZoneBindings/my-management-dns-zone-binding`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/managementDnsZoneBindings/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if the
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `ManagementDnsZoneBinding` resource by the update. The
  /// fields specified in the `update_mask` are relative to the resource, not
  /// the full request. A field will be overwritten if it is in the mask. If the
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
    ManagementDnsZoneBinding request,
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

  /// Retries to create a `ManagementDnsZoneBinding` resource that is in failed
  /// state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the management DNS zone binding to
  /// repair. Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/managementDnsZoneBindings/my-management-dns-zone-binding`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/managementDnsZoneBindings/\[^/\]+$`.
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
  async.Future<Operation> repair(
    RepairManagementDnsZoneBindingRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':repair';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsPrivateCloudsSubnetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsSubnetsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single subnet.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the subnet to retrieve. Resource
  /// names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/subnets/my-subnet`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/subnets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subnet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subnet> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Subnet.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists subnets in a given private cloud.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private cloud to be queried
  /// for subnets. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of subnets to return in one page. The
  /// service may return fewer than this value. The maximum value is coerced to
  /// 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListSubnetsRequest`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListSubnetsRequest` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSubnetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSubnetsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/subnets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSubnetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single subnet.
  ///
  /// Only fields specified in `update_mask` are applied. *Note*: This API is
  /// synchronous and always returns a successful `google.longrunning.Operation`
  /// (LRO). The returned LRO will only have `done` and `response` fields.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of this subnet.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/subnets/my-subnet`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/subnets/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `Subnet` resource by the update. The fields specified
  /// in the `update_mask` are relative to the resource, not the full request. A
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
    Subnet request,
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

class ProjectsLocationsPrivateCloudsUpgradesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateCloudsUpgradesResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves a private cloud `Upgrade` resource by its resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `Upgrade` resource to be retrieved.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-west1-a/privateClouds/my-cloud/upgrades/my-upgrade`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/upgrades/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Upgrade].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Upgrade> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Upgrade.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists past, ongoing and upcoming `Upgrades` for the given private cloud.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Query a list of `Upgrades` for the given private
  /// cloud resource name. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/us-west1-a/privateClouds/my-cloud`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of upgrades,
  /// you can exclude the ones named `example-upgrade1` by specifying `name !=
  /// "example-upgrade1"`. You can also filter nested fields. To filter on
  /// multiple expressions, provide each separate expression within parentheses.
  /// For example: ``` (name = "example-upgrade") (createTime >
  /// "2021-04-12T08:15:10.40Z") ``` By default, each expression is an `AND`
  /// expression. However, you can include `AND` and `OR` expressions
  /// explicitly. For example: ``` (name = "upgrade-1") AND (createTime >
  /// "2021-04-12T08:15:10.40Z") OR (name = "upgrade-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of `Upgrades` to return in one page. The
  /// service may return fewer resources than this value. The maximum value is
  /// coerced to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListUpgrades` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListUpgrades` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUpgradesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUpgradesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/upgrades';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUpgradesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the private cloud `Upgrade` resource.
  ///
  /// Only `schedule` field can updated. The schedule can only be updated when
  /// the upgrade has not started and schedule edit window is open. Only fields
  /// specified in `update_mask` are considered.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of the private cloud
  /// `Upgrade`. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-west1-a/privateClouds/my-cloud/upgrades/my-upgrade`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateClouds/\[^/\]+/upgrades/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `Upgrade` resource by the update. The fields specified
  /// in the `update_mask` are relative to the resource, not the full request. A
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
    Upgrade request,
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

class ProjectsLocationsPrivateConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateConnectionsPeeringRoutesResource get peeringRoutes =>
      ProjectsLocationsPrivateConnectionsPeeringRoutesResource(_requester);

  ProjectsLocationsPrivateConnectionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new private connection that can be used for accessing private
  /// Clouds.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to create the new
  /// private connection in. Private connection is a regional resource. Resource
  /// names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [privateConnectionId] - Required. The user-provided identifier of the new
  /// private connection. This identifier must be unique among private
  /// connection resources within the parent and becomes the final token in the
  /// name URI. The identifier must meet the following requirements: * Only
  /// contains 1-63 alphanumeric characters and hyphens * Begins with an
  /// alphabetical character * Ends with a non-hyphen character * Not formatted
  /// as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
    PrivateConnection request,
    core.String parent, {
    core.String? privateConnectionId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (privateConnectionId != null)
        'privateConnectionId': [privateConnectionId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/privateConnections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `PrivateConnection` resource.
  ///
  /// When a private connection is deleted for a VMware Engine network, the
  /// connected network becomes inaccessible to that VMware Engine network.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the private connection to be
  /// deleted. Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateConnections/my-connection`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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

  /// Retrieves a `PrivateConnection` resource by its resource name.
  ///
  /// The resource contains details of the private connection, such as connected
  /// network, routing mode and state.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the private connection to
  /// retrieve. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateConnections/my-connection`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PrivateConnection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PrivateConnection> get(
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
    return PrivateConnection.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists `PrivateConnection` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to query for
  /// private connections. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/us-central1`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of private
  /// connections, you can exclude the ones named `example-connection` by
  /// specifying `name != "example-connection"`. To filter on multiple
  /// expressions, provide each separate expression within parentheses. For
  /// example: ``` (name = "example-connection") (createTime >
  /// "2022-09-22T08:15:10.40Z") ``` By default, each expression is an `AND`
  /// expression. However, you can include `AND` and `OR` expressions
  /// explicitly. For example: ``` (name = "example-connection-1") AND
  /// (createTime > "2021-04-12T08:15:10.40Z") OR (name =
  /// "example-connection-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of private connections to return in one
  /// page. The maximum value is coerced to 1000. The default value of this
  /// field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListPrivateConnections` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListPrivateConnections` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPrivateConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPrivateConnectionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/privateConnections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPrivateConnectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Modifies a `PrivateConnection` resource.
  ///
  /// Only `description` and `routing_mode` fields can be updated. Only fields
  /// specified in `updateMask` are applied.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the private connection.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateConnections/my-connection`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `PrivateConnection` resource by the update. The fields
  /// specified in the `update_mask` are relative to the resource, not the full
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
    PrivateConnection request,
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

class ProjectsLocationsPrivateConnectionsPeeringRoutesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateConnectionsPeeringRoutesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists the private connection routes exchanged over a peering connection.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the private connection to
  /// retrieve peering routes from. Resource names are schemeless URIs that
  /// follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-west1/privateConnections/my-connection`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of peering routes to return in one page.
  /// The service may return fewer than this value. The maximum value is coerced
  /// to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListPrivateConnectionPeeringRoutes` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListPrivateConnectionPeeringRoutes` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPrivateConnectionPeeringRoutesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPrivateConnectionPeeringRoutesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/peeringRoutes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPrivateConnectionPeeringRoutesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsVmwareEngineNetworksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVmwareEngineNetworksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new VMware Engine network that can be used by a private cloud.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to create the new
  /// VMware Engine network in. A VMware Engine network of type `LEGACY` is a
  /// regional resource, and a VMware Engine network of type `STANDARD` is a
  /// global resource. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [vmwareEngineNetworkId] - Required. The user-provided identifier of the
  /// new VMware Engine network. This identifier must be unique among VMware
  /// Engine network resources within the parent and becomes the final token in
  /// the name URI. The identifier must meet the following requirements: * For
  /// networks of type LEGACY, adheres to the format: `{region-id}-default`.
  /// Replace `{region-id}` with the region where you want to create the VMware
  /// Engine network. For example, "us-central1-default". * Only contains 1-63
  /// alphanumeric characters and hyphens * Begins with an alphabetical
  /// character * Ends with a non-hyphen character * Not formatted as a UUID *
  /// Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
  /// (section 3.5)
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
    VmwareEngineNetwork request,
    core.String parent, {
    core.String? requestId,
    core.String? vmwareEngineNetworkId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (vmwareEngineNetworkId != null)
        'vmwareEngineNetworkId': [vmwareEngineNetworkId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/vmwareEngineNetworks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a `VmwareEngineNetwork` resource.
  ///
  /// You can only delete a VMware Engine network after all resources that refer
  /// to it are deleted. For example, a private cloud, a network peering, and a
  /// network policy can all refer to the same VMware Engine network.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the VMware Engine network to be
  /// deleted. Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/vmwareEngineNetworks/my-network`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareEngineNetworks/\[^/\]+$`.
  ///
  /// [etag] - Optional. Checksum used to ensure that the user-provided value is
  /// up to date before the server processes the request. The server compares
  /// provided checksum with the current checksum of the resource. If the
  /// user-provided value is out of date, this request returns an `ABORTED`
  /// error.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a `VmwareEngineNetwork` resource by its resource name.
  ///
  /// The resource contains details of the VMware Engine network, such as its
  /// VMware Engine network type, peered networks in a service project, and
  /// state (for example, `CREATING`, `ACTIVE`, `DELETING`).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the VMware Engine network to
  /// retrieve. Resource names are schemeless URIs that follow the conventions
  /// in https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/vmwareEngineNetworks/my-network`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareEngineNetworks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VmwareEngineNetwork].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VmwareEngineNetwork> get(
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
    return VmwareEngineNetwork.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists `VmwareEngineNetwork` resources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location to query for VMware
  /// Engine networks. Resource names are schemeless URIs that follow the
  /// conventions in https://cloud.google.com/apis/design/resource_names. For
  /// example: `projects/my-project/locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that matches resources returned in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be `=`,
  /// `!=`, `>`, or `<`. For example, if you are filtering a list of network
  /// peerings, you can exclude the ones named `example-network` by specifying
  /// `name != "example-network"`. To filter on multiple expressions, provide
  /// each separate expression within parentheses. For example: ``` (name =
  /// "example-network") (createTime > "2021-04-12T08:15:10.40Z") ``` By
  /// default, each expression is an `AND` expression. However, you can include
  /// `AND` and `OR` expressions explicitly. For example: ``` (name =
  /// "example-network-1") AND (createTime > "2021-04-12T08:15:10.40Z") OR (name
  /// = "example-network-2") ```
  ///
  /// [orderBy] - Sorts list results by a certain order. By default, returned
  /// results are ordered by `name` in ascending order. You can also sort
  /// results in descending order based on the `name` value using `orderBy="name
  /// desc"`. Currently, only ordering by `name` is supported.
  ///
  /// [pageSize] - The maximum number of results to return in one page. The
  /// maximum value is coerced to 1000. The default value of this field is 500.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListVmwareEngineNetworks` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListVmwareEngineNetworks` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVmwareEngineNetworksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVmwareEngineNetworksResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/vmwareEngineNetworks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVmwareEngineNetworksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Modifies a VMware Engine network resource.
  ///
  /// Only the following fields can be updated: `description`. Only fields
  /// specified in `updateMask` are applied.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. The resource name of the VMware Engine
  /// network. Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/vmwareEngineNetworks/my-network`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/vmwareEngineNetworks/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// guarantees that a request doesn't result in creation of duplicate
  /// commitments for at least 60 minutes. For example, consider a situation
  /// where you make an initial request and the request times out. If you make
  /// the request again with the same request ID, the server can check if
  /// original operation with the same request ID was received, and if so, will
  /// ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the VMware Engine network resource by the update. The
  /// fields specified in the `update_mask` are relative to the resource, not
  /// the full request. A field will be overwritten if it is in the mask. If the
  /// user does not provide a mask then all fields will be overwritten. Only the
  /// following fields can be updated: `description`.
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
    VmwareEngineNetwork request,
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

/// Announcement for the resources of Vmware Engine.
class Announcement {
  /// Activity type of the announcement There can be only one active
  /// announcement for a given activity type and target resource.
  ///
  /// Optional.
  core.String? activityType;

  /// A Cluster resource name.
  core.String? cluster;

  /// Code of the announcement.
  ///
  /// Indicates the presence of a VMware Engine related announcement and
  /// corresponds to a related message in the `description` field.
  ///
  /// Required.
  core.String? code;

  /// Creation time of this resource.
  ///
  /// It also serves as start time of notification.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the announcement.
  ///
  /// Output only.
  core.String? description;

  /// Additional structured details about this announcement.
  ///
  /// Output only.
  core.Map<core.String, core.String>? metadata;

  /// The resource name of the announcement.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-west1-a/announcements/my-announcement-id`
  ///
  /// Output only.
  core.String? name;

  /// A Private Cloud resource name.
  core.String? privateCloud;

  /// State of the resource.
  ///
  /// New values may be added to this enum when appropriate.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "ACTIVE" : Active announcement which should be visible to user.
  /// - "INACTIVE" : Inactive announcement which should not be visible to user.
  /// - "DELETING" : Announcement which is being deleted
  /// - "CREATING" : Announcement which being created
  core.String? state;

  /// Target Resource Type defines the type of the target for the announcement
  ///
  /// Output only.
  core.String? targetResourceType;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  Announcement({
    this.activityType,
    this.cluster,
    this.code,
    this.createTime,
    this.description,
    this.metadata,
    this.name,
    this.privateCloud,
    this.state,
    this.targetResourceType,
    this.updateTime,
  });

  Announcement.fromJson(core.Map json_)
    : this(
        activityType: json_['activityType'] as core.String?,
        cluster: json_['cluster'] as core.String?,
        code: json_['code'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        name: json_['name'] as core.String?,
        privateCloud: json_['privateCloud'] as core.String?,
        state: json_['state'] as core.String?,
        targetResourceType: json_['targetResourceType'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activityType != null) 'activityType': activityType!,
    if (cluster != null) 'cluster': cluster!,
    if (code != null) 'code': code!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (privateCloud != null) 'privateCloud': privateCloud!,
    if (state != null) 'state': state!,
    if (targetResourceType != null) 'targetResourceType': targetResourceType!,
    if (updateTime != null) 'updateTime': updateTime!,
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

/// Autoscaling policy describes the behavior of the autoscaling with respect to
/// the resource utilization.
///
/// The scale-out operation is initiated if the utilization exceeds ANY of the
/// respective thresholds. The scale-in operation is initiated if the
/// utilization is below ALL of the respective thresholds.
class AutoscalingPolicy {
  /// Utilization thresholds pertaining to amount of consumed memory.
  ///
  /// Optional.
  Thresholds? consumedMemoryThresholds;

  /// Utilization thresholds pertaining to CPU utilization.
  ///
  /// Optional.
  Thresholds? cpuThresholds;

  /// Utilization thresholds pertaining to amount of granted memory.
  ///
  /// Optional.
  Thresholds? grantedMemoryThresholds;

  /// The canonical identifier of the node type to add or remove.
  ///
  /// Corresponds to the `NodeType`.
  ///
  /// Required.
  core.String? nodeTypeId;

  /// Number of nodes to add to a cluster during a scale-out operation.
  ///
  /// Must be divisible by 2 for stretched clusters. During a scale-in operation
  /// only one node (or 2 for stretched clusters) are removed in a single
  /// iteration.
  ///
  /// Required.
  core.int? scaleOutSize;

  /// Utilization thresholds pertaining to amount of consumed storage.
  ///
  /// Optional.
  Thresholds? storageThresholds;

  AutoscalingPolicy({
    this.consumedMemoryThresholds,
    this.cpuThresholds,
    this.grantedMemoryThresholds,
    this.nodeTypeId,
    this.scaleOutSize,
    this.storageThresholds,
  });

  AutoscalingPolicy.fromJson(core.Map json_)
    : this(
        consumedMemoryThresholds:
            json_.containsKey('consumedMemoryThresholds')
                ? Thresholds.fromJson(
                  json_['consumedMemoryThresholds']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        cpuThresholds:
            json_.containsKey('cpuThresholds')
                ? Thresholds.fromJson(
                  json_['cpuThresholds'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        grantedMemoryThresholds:
            json_.containsKey('grantedMemoryThresholds')
                ? Thresholds.fromJson(
                  json_['grantedMemoryThresholds']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        nodeTypeId: json_['nodeTypeId'] as core.String?,
        scaleOutSize: json_['scaleOutSize'] as core.int?,
        storageThresholds:
            json_.containsKey('storageThresholds')
                ? Thresholds.fromJson(
                  json_['storageThresholds']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (consumedMemoryThresholds != null)
      'consumedMemoryThresholds': consumedMemoryThresholds!,
    if (cpuThresholds != null) 'cpuThresholds': cpuThresholds!,
    if (grantedMemoryThresholds != null)
      'grantedMemoryThresholds': grantedMemoryThresholds!,
    if (nodeTypeId != null) 'nodeTypeId': nodeTypeId!,
    if (scaleOutSize != null) 'scaleOutSize': scaleOutSize!,
    if (storageThresholds != null) 'storageThresholds': storageThresholds!,
  };
}

/// Autoscaling settings define the rules used by VMware Engine to automatically
/// scale-out and scale-in the clusters in a private cloud.
class AutoscalingSettings {
  /// The map with autoscaling policies applied to the cluster.
  ///
  /// The key is the identifier of the policy. It must meet the following
  /// requirements: * Only contains 1-63 alphanumeric characters and hyphens *
  /// Begins with an alphabetical character * Ends with a non-hyphen character *
  /// Not formatted as a UUID * Complies with
  /// [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// Currently there map must contain only one element that describes the
  /// autoscaling policy for compute nodes.
  ///
  /// Required.
  core.Map<core.String, AutoscalingPolicy>? autoscalingPolicies;

  /// The minimum duration between consecutive autoscale operations.
  ///
  /// It starts once addition or removal of nodes is fully completed. Defaults
  /// to 30 minutes if not specified. Cool down period must be in whole minutes
  /// (for example, 30, 31, 50, 180 minutes).
  ///
  /// Optional.
  core.String? coolDownPeriod;

  /// Maximum number of nodes of any type in a cluster.
  ///
  /// If not specified the default limits apply.
  ///
  /// Optional.
  core.int? maxClusterNodeCount;

  /// Minimum number of nodes of any type in a cluster.
  ///
  /// If not specified the default limits apply.
  ///
  /// Optional.
  core.int? minClusterNodeCount;

  AutoscalingSettings({
    this.autoscalingPolicies,
    this.coolDownPeriod,
    this.maxClusterNodeCount,
    this.minClusterNodeCount,
  });

  AutoscalingSettings.fromJson(core.Map json_)
    : this(
        autoscalingPolicies: (json_['autoscalingPolicies']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                AutoscalingPolicy.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        coolDownPeriod: json_['coolDownPeriod'] as core.String?,
        maxClusterNodeCount: json_['maxClusterNodeCount'] as core.int?,
        minClusterNodeCount: json_['minClusterNodeCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoscalingPolicies != null)
      'autoscalingPolicies': autoscalingPolicies!,
    if (coolDownPeriod != null) 'coolDownPeriod': coolDownPeriod!,
    if (maxClusterNodeCount != null)
      'maxClusterNodeCount': maxClusterNodeCount!,
    if (minClusterNodeCount != null)
      'minClusterNodeCount': minClusterNodeCount!,
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

/// A cluster in a private cloud.
class Cluster {
  /// Configuration of the autoscaling applied to this cluster.
  ///
  /// Optional.
  AutoscalingSettings? autoscalingSettings;

  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// True if the cluster is a management cluster; false otherwise.
  ///
  /// There can only be one management cluster in a private cloud and it has to
  /// be the first one.
  ///
  /// Output only.
  core.bool? management;

  /// Identifier.
  ///
  /// The resource name of this cluster. Resource names are schemeless URIs that
  /// follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster`
  ///
  /// Output only.
  core.String? name;

  /// The map of cluster node types in this cluster, where the key is canonical
  /// identifier of the node type (corresponds to the `NodeType`).
  ///
  /// Required.
  core.Map<core.String, NodeTypeConfig>? nodeTypeConfigs;

  /// State of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "ACTIVE" : The Cluster is operational and can be used by the user.
  /// - "CREATING" : The Cluster is being deployed.
  /// - "UPDATING" : Adding or removing of a node to the cluster, any other
  /// cluster specific updates.
  /// - "DELETING" : The Cluster is being deleted.
  /// - "REPAIRING" : The Cluster is undergoing maintenance, for example: a
  /// failed node is getting replaced.
  core.String? state;

  /// Configuration of a stretched cluster.
  ///
  /// Required for clusters that belong to a STRETCHED private cloud.
  ///
  /// Optional.
  StretchedClusterConfig? stretchedClusterConfig;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  Cluster({
    this.autoscalingSettings,
    this.createTime,
    this.management,
    this.name,
    this.nodeTypeConfigs,
    this.state,
    this.stretchedClusterConfig,
    this.uid,
    this.updateTime,
  });

  Cluster.fromJson(core.Map json_)
    : this(
        autoscalingSettings:
            json_.containsKey('autoscalingSettings')
                ? AutoscalingSettings.fromJson(
                  json_['autoscalingSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        management: json_['management'] as core.bool?,
        name: json_['name'] as core.String?,
        nodeTypeConfigs: (json_['nodeTypeConfigs']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                NodeTypeConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        state: json_['state'] as core.String?,
        stretchedClusterConfig:
            json_.containsKey('stretchedClusterConfig')
                ? StretchedClusterConfig.fromJson(
                  json_['stretchedClusterConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoscalingSettings != null)
      'autoscalingSettings': autoscalingSettings!,
    if (createTime != null) 'createTime': createTime!,
    if (management != null) 'management': management!,
    if (name != null) 'name': name!,
    if (nodeTypeConfigs != null) 'nodeTypeConfigs': nodeTypeConfigs!,
    if (state != null) 'state': state!,
    if (stretchedClusterConfig != null)
      'stretchedClusterConfig': stretchedClusterConfig!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Constraints to be applied while editing a schedule.
///
/// These constraints ensure that `Upgrade` specific requirements are met.
class Constraints {
  /// A list of intervals in which maintenance windows are not allowed.
  ///
  /// Any time window that overlaps with any of these intervals will be
  /// considered invalid.
  ///
  /// Output only.
  core.List<WeeklyTimeInterval>? disallowedIntervals;

  /// Minimum number of hours must be allotted for the upgrade activities for
  /// each selected day.
  ///
  /// This is a minimum; the upgrade schedule can allot more hours for the given
  /// day.
  ///
  /// Output only.
  core.int? minHoursDay;

  /// The minimum number of weekly hours must be allotted for the upgrade
  /// activities.
  ///
  /// This is just a minimum; the schedule can assign more weekly hours.
  ///
  /// Output only.
  core.int? minHoursWeek;

  /// The user can only reschedule an upgrade that starts within this range.
  ///
  /// Output only.
  Interval? rescheduleDateRange;

  Constraints({
    this.disallowedIntervals,
    this.minHoursDay,
    this.minHoursWeek,
    this.rescheduleDateRange,
  });

  Constraints.fromJson(core.Map json_)
    : this(
        disallowedIntervals:
            (json_['disallowedIntervals'] as core.List?)
                ?.map(
                  (value) => WeeklyTimeInterval.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        minHoursDay: json_['minHoursDay'] as core.int?,
        minHoursWeek: json_['minHoursWeek'] as core.int?,
        rescheduleDateRange:
            json_.containsKey('rescheduleDateRange')
                ? Interval.fromJson(
                  json_['rescheduleDateRange']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disallowedIntervals != null)
      'disallowedIntervals': disallowedIntervals!,
    if (minHoursDay != null) 'minHoursDay': minHoursDay!,
    if (minHoursWeek != null) 'minHoursWeek': minHoursWeek!,
    if (rescheduleDateRange != null)
      'rescheduleDateRange': rescheduleDateRange!,
  };
}

/// Credentials for a private cloud.
class Credentials {
  /// Initial password.
  core.String? password;

  /// Initial username.
  core.String? username;

  Credentials({this.password, this.username});

  Credentials.fromJson(core.Map json_)
    : this(
        password: json_['password'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (password != null) 'password': password!,
    if (username != null) 'username': username!,
  };
}

/// DnsBindPermission resource that contains the accounts having the consumer
/// DNS bind permission on the corresponding intranet VPC of the consumer
/// project.
class DnsBindPermission {
  /// The name of the resource which stores the users/service accounts having
  /// the permission to bind to the corresponding intranet VPC of the consumer
  /// project.
  ///
  /// DnsBindPermission is a global resource and location can only be global.
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/dnsBindPermission`
  ///
  /// Required. Output only.
  core.String? name;

  /// Users/Service accounts which have access for binding on the intranet VPC
  /// project corresponding to the consumer project.
  ///
  /// Output only.
  core.List<Principal>? principals;

  DnsBindPermission({this.name, this.principals});

  DnsBindPermission.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        principals:
            (json_['principals'] as core.List?)
                ?.map(
                  (value) => Principal.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (principals != null) 'principals': principals!,
  };
}

/// DNS forwarding config.
///
/// This config defines a list of domain to name server mappings, and is
/// attached to the private cloud for custom domain resolution.
class DnsForwarding {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// List of domain mappings to configure
  ///
  /// Required.
  core.List<ForwardingRule>? forwardingRules;

  /// Identifier.
  ///
  /// The resource name of this DNS profile. Resource names are schemeless URIs
  /// that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/dnsForwarding`
  ///
  /// Output only.
  core.String? name;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  DnsForwarding({
    this.createTime,
    this.forwardingRules,
    this.name,
    this.updateTime,
  });

  DnsForwarding.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        forwardingRules:
            (json_['forwardingRules'] as core.List?)
                ?.map(
                  (value) => ForwardingRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (forwardingRules != null) 'forwardingRules': forwardingRules!,
    if (name != null) 'name': name!,
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

/// External access firewall rules for filtering incoming traffic destined to
/// `ExternalAddress` resources.
class ExternalAccessRule {
  /// The action that the external access rule performs.
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : Defaults to allow.
  /// - "ALLOW" : Allows connections that match the other specified components.
  /// - "DENY" : Blocks connections that match the other specified components.
  core.String? action;

  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description for this external access rule.
  core.String? description;

  /// If destination ranges are specified, the external access rule applies only
  /// to the traffic that has a destination IP address in these ranges.
  ///
  /// The specified IP addresses must have reserved external IP addresses in the
  /// scope of the parent network policy. To match all external IP addresses in
  /// the scope of the parent network policy, specify `0.0.0.0/0`. To match a
  /// specific external IP address, specify it using the
  /// `IpRange.external_address` property.
  core.List<IpRange>? destinationIpRanges;

  /// A list of destination ports to which the external access rule applies.
  ///
  /// This field is only applicable for the UDP or TCP protocol. Each entry must
  /// be either an integer or a range. For example: `["22"]`, `["80","443"]`, or
  /// `["12345-12349"]`. To match all destination ports, specify `["0-65535"]`.
  core.List<core.String>? destinationPorts;

  /// The IP protocol to which the external access rule applies.
  ///
  /// This value can be one of the following three protocol strings (not
  /// case-sensitive): `tcp`, `udp`, or `icmp`.
  core.String? ipProtocol;

  /// The resource name of this external access rule.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-policy/externalAccessRules/my-rule`
  ///
  /// Output only.
  core.String? name;

  /// External access rule priority, which determines the external access rule
  /// to use when multiple rules apply.
  ///
  /// If multiple rules have the same priority, their ordering is
  /// non-deterministic. If specific ordering is required, assign unique
  /// priorities to enforce such ordering. The external access rule priority is
  /// an integer from 100 to 4096, both inclusive. Lower integers indicate
  /// higher precedence. For example, a rule with priority `100` has higher
  /// precedence than a rule with priority `101`.
  core.int? priority;

  /// If source ranges are specified, the external access rule applies only to
  /// traffic that has a source IP address in these ranges.
  ///
  /// These ranges can either be expressed in the CIDR format or as an IP
  /// address. As only inbound rules are supported, `ExternalAddress` resources
  /// cannot be the source IP addresses of an external access rule. To match all
  /// source addresses, specify `0.0.0.0/0`.
  core.List<IpRange>? sourceIpRanges;

  /// A list of source ports to which the external access rule applies.
  ///
  /// This field is only applicable for the UDP or TCP protocol. Each entry must
  /// be either an integer or a range. For example: `["22"]`, `["80","443"]`, or
  /// `["12345-12349"]`. To match all source ports, specify `["0-65535"]`.
  core.List<core.String>? sourcePorts;

  /// The state of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "ACTIVE" : The rule is ready.
  /// - "CREATING" : The rule is being created.
  /// - "UPDATING" : The rule is being updated.
  /// - "DELETING" : The rule is being deleted.
  core.String? state;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  ExternalAccessRule({
    this.action,
    this.createTime,
    this.description,
    this.destinationIpRanges,
    this.destinationPorts,
    this.ipProtocol,
    this.name,
    this.priority,
    this.sourceIpRanges,
    this.sourcePorts,
    this.state,
    this.uid,
    this.updateTime,
  });

  ExternalAccessRule.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        destinationIpRanges:
            (json_['destinationIpRanges'] as core.List?)
                ?.map(
                  (value) => IpRange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        destinationPorts:
            (json_['destinationPorts'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        ipProtocol: json_['ipProtocol'] as core.String?,
        name: json_['name'] as core.String?,
        priority: json_['priority'] as core.int?,
        sourceIpRanges:
            (json_['sourceIpRanges'] as core.List?)
                ?.map(
                  (value) => IpRange.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sourcePorts:
            (json_['sourcePorts'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (destinationIpRanges != null)
      'destinationIpRanges': destinationIpRanges!,
    if (destinationPorts != null) 'destinationPorts': destinationPorts!,
    if (ipProtocol != null) 'ipProtocol': ipProtocol!,
    if (name != null) 'name': name!,
    if (priority != null) 'priority': priority!,
    if (sourceIpRanges != null) 'sourceIpRanges': sourceIpRanges!,
    if (sourcePorts != null) 'sourcePorts': sourcePorts!,
    if (state != null) 'state': state!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Represents an allocated external IP address and its corresponding internal
/// IP address in a private cloud.
class ExternalAddress {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description for this resource.
  core.String? description;

  /// The external IP address of a workload VM.
  ///
  /// Output only.
  core.String? externalIp;

  /// The internal IP address of a workload VM.
  core.String? internalIp;

  /// Identifier.
  ///
  /// The resource name of this external IP address. Resource names are
  /// schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/externalAddresses/my-address`
  ///
  /// Output only.
  core.String? name;

  /// The state of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "ACTIVE" : The address is ready.
  /// - "CREATING" : The address is being created.
  /// - "UPDATING" : The address is being updated.
  /// - "DELETING" : The address is being deleted.
  core.String? state;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  ExternalAddress({
    this.createTime,
    this.description,
    this.externalIp,
    this.internalIp,
    this.name,
    this.state,
    this.uid,
    this.updateTime,
  });

  ExternalAddress.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        externalIp: json_['externalIp'] as core.String?,
        internalIp: json_['internalIp'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (externalIp != null) 'externalIp': externalIp!,
    if (internalIp != null) 'internalIp': internalIp!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Response message for VmwareEngine.FetchNetworkPolicyExternalAddresses
class FetchNetworkPolicyExternalAddressesResponse {
  /// A list of external IP addresses assigned to VMware workload VMs within the
  /// scope of the given network policy.
  core.List<ExternalAddress>? externalAddresses;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  FetchNetworkPolicyExternalAddressesResponse({
    this.externalAddresses,
    this.nextPageToken,
  });

  FetchNetworkPolicyExternalAddressesResponse.fromJson(core.Map json_)
    : this(
        externalAddresses:
            (json_['externalAddresses'] as core.List?)
                ?.map(
                  (value) => ExternalAddress.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (externalAddresses != null) 'externalAddresses': externalAddresses!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// A forwarding rule is a mapping of a `domain` to `name_servers`.
///
/// This mapping allows VMware Engine to resolve domains for attached private
/// clouds by forwarding DNS requests for a given domain to the specified
/// nameservers.
class ForwardingRule {
  /// Domain used to resolve a `name_servers` list.
  ///
  /// Required.
  core.String? domain;

  /// List of DNS servers to use for domain resolution
  ///
  /// Required.
  core.List<core.String>? nameServers;

  ForwardingRule({this.domain, this.nameServers});

  ForwardingRule.fromJson(core.Map json_)
    : this(
        domain: json_['domain'] as core.String?,
        nameServers:
            (json_['nameServers'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (domain != null) 'domain': domain!,
    if (nameServers != null) 'nameServers': nameServers!,
  };
}

/// Request message for VmwareEngine.GrantDnsBindPermission
class GrantDnsBindPermissionRequest {
  /// The consumer provided user/service account which needs to be granted
  /// permission to bind with the intranet VPC corresponding to the consumer
  /// project.
  ///
  /// Required.
  Principal? principal;

  /// A request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server guarantees that a request doesn't result in creation of
  /// duplicate commitments for at least 60 minutes. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID, the server can check
  /// if original operation with the same request ID was received, and if so,
  /// will ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  GrantDnsBindPermissionRequest({this.principal, this.requestId});

  GrantDnsBindPermissionRequest.fromJson(core.Map json_)
    : this(
        principal:
            json_.containsKey('principal')
                ? Principal.fromJson(
                  json_['principal'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (principal != null) 'principal': principal!,
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Details about a HCX Cloud Manager appliance.
class Hcx {
  /// Fully qualified domain name of the appliance.
  core.String? fqdn;

  /// Internal IP address of the appliance.
  core.String? internalIp;

  /// The state of the appliance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified appliance state. This is the default
  /// value.
  /// - "ACTIVE" : The appliance is operational and can be used.
  /// - "CREATING" : The appliance is being deployed.
  /// - "ACTIVATING" : The appliance is being activated.
  core.String? state;

  /// Version of the appliance.
  core.String? version;

  Hcx({this.fqdn, this.internalIp, this.state, this.version});

  Hcx.fromJson(core.Map json_)
    : this(
        fqdn: json_['fqdn'] as core.String?,
        internalIp: json_['internalIp'] as core.String?,
        state: json_['state'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fqdn != null) 'fqdn': fqdn!,
    if (internalIp != null) 'internalIp': internalIp!,
    if (state != null) 'state': state!,
    if (version != null) 'version': version!,
  };
}

/// HCX activation key.
///
/// A default key is created during private cloud provisioning, but this
/// behavior is subject to change and you should always verify active keys. Use
/// VmwareEngine.ListHcxActivationKeys to retrieve existing keys and
/// VmwareEngine.CreateHcxActivationKey to create new ones.
class HcxActivationKey {
  /// HCX activation key.
  ///
  /// Output only.
  core.String? activationKey;

  /// Creation time of HCX activation key.
  ///
  /// Output only.
  core.String? createTime;

  /// The resource name of this HcxActivationKey.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateClouds/my-cloud/hcxActivationKeys/my-key`
  ///
  /// Output only.
  core.String? name;

  /// State of HCX activation key.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "AVAILABLE" : State of a newly generated activation key.
  /// - "CONSUMED" : State of key when it has been used to activate HCX
  /// appliance.
  /// - "CREATING" : State of key when it is being created.
  core.String? state;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  HcxActivationKey({
    this.activationKey,
    this.createTime,
    this.name,
    this.state,
    this.uid,
  });

  HcxActivationKey.fromJson(core.Map json_)
    : this(
        activationKey: json_['activationKey'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activationKey != null) 'activationKey': activationKey!,
    if (createTime != null) 'createTime': createTime!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (uid != null) 'uid': uid!,
  };
}

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).
///
/// The start must be less than or equal to the end. When the start equals the
/// end, the interval is empty (matches no time). When both start and end are
/// unspecified, the interval matches any time.
typedef Interval = $Interval;

/// An IP range provided in any one of the supported formats.
class IpRange {
  /// The name of an `ExternalAddress` resource.
  ///
  /// The external address must have been reserved in the scope of this external
  /// access rule's parent network policy. Provide the external address name in
  /// the form of
  /// `projects/{project}/locations/{location}/privateClouds/{private_cloud}/externalAddresses/{external_address}`.
  /// For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/externalAddresses/my-address`.
  core.String? externalAddress;

  /// A single IP address.
  ///
  /// For example: `10.0.0.5`.
  core.String? ipAddress;

  /// An IP address range in the CIDR format.
  ///
  /// For example: `10.0.0.0/24`.
  core.String? ipAddressRange;

  IpRange({this.externalAddress, this.ipAddress, this.ipAddressRange});

  IpRange.fromJson(core.Map json_)
    : this(
        externalAddress: json_['externalAddress'] as core.String?,
        ipAddress: json_['ipAddress'] as core.String?,
        ipAddressRange: json_['ipAddressRange'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (externalAddress != null) 'externalAddress': externalAddress!,
    if (ipAddress != null) 'ipAddress': ipAddress!,
    if (ipAddressRange != null) 'ipAddressRange': ipAddressRange!,
  };
}

/// Response message for VmwareEngine.ListAnnouncements
class ListAnnouncementsResponse {
  /// A list of announcement runs.
  core.List<Announcement>? announcements;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// list of unreachable locations
  core.List<core.String>? unreachable;

  ListAnnouncementsResponse({
    this.announcements,
    this.nextPageToken,
    this.unreachable,
  });

  ListAnnouncementsResponse.fromJson(core.Map json_)
    : this(
        announcements:
            (json_['announcements'] as core.List?)
                ?.map(
                  (value) => Announcement.fromJson(
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
    if (announcements != null) 'announcements': announcements!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for VmwareEngine.ListClusters
class ListClustersResponse {
  /// A list of private cloud clusters.
  core.List<Cluster>? clusters;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListClustersResponse({this.clusters, this.nextPageToken, this.unreachable});

  ListClustersResponse.fromJson(core.Map json_)
    : this(
        clusters:
            (json_['clusters'] as core.List?)
                ?.map(
                  (value) => Cluster.fromJson(
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
    if (clusters != null) 'clusters': clusters!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for VmwareEngine.ListExternalAccessRules
class ListExternalAccessRulesResponse {
  /// A list of external access firewall rules.
  core.List<ExternalAccessRule>? externalAccessRules;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListExternalAccessRulesResponse({
    this.externalAccessRules,
    this.nextPageToken,
    this.unreachable,
  });

  ListExternalAccessRulesResponse.fromJson(core.Map json_)
    : this(
        externalAccessRules:
            (json_['externalAccessRules'] as core.List?)
                ?.map(
                  (value) => ExternalAccessRule.fromJson(
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
    if (externalAccessRules != null)
      'externalAccessRules': externalAccessRules!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for VmwareEngine.ListExternalAddresses
class ListExternalAddressesResponse {
  /// A list of external IP addresses.
  core.List<ExternalAddress>? externalAddresses;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListExternalAddressesResponse({
    this.externalAddresses,
    this.nextPageToken,
    this.unreachable,
  });

  ListExternalAddressesResponse.fromJson(core.Map json_)
    : this(
        externalAddresses:
            (json_['externalAddresses'] as core.List?)
                ?.map(
                  (value) => ExternalAddress.fromJson(
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
    if (externalAddresses != null) 'externalAddresses': externalAddresses!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for VmwareEngine.ListHcxActivationKeys
class ListHcxActivationKeysResponse {
  /// List of HCX activation keys.
  core.List<HcxActivationKey>? hcxActivationKeys;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListHcxActivationKeysResponse({
    this.hcxActivationKeys,
    this.nextPageToken,
    this.unreachable,
  });

  ListHcxActivationKeysResponse.fromJson(core.Map json_)
    : this(
        hcxActivationKeys:
            (json_['hcxActivationKeys'] as core.List?)
                ?.map(
                  (value) => HcxActivationKey.fromJson(
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
    if (hcxActivationKeys != null) 'hcxActivationKeys': hcxActivationKeys!,
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

/// Response message for VmwareEngine.ListLoggingServers
class ListLoggingServersResponse {
  /// A list of Logging Servers.
  core.List<LoggingServer>? loggingServers;

  /// A token, which can be send as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListLoggingServersResponse({
    this.loggingServers,
    this.nextPageToken,
    this.unreachable,
  });

  ListLoggingServersResponse.fromJson(core.Map json_)
    : this(
        loggingServers:
            (json_['loggingServers'] as core.List?)
                ?.map(
                  (value) => LoggingServer.fromJson(
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
    if (loggingServers != null) 'loggingServers': loggingServers!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for VmwareEngine.ListManagementDnsZoneBindings
class ListManagementDnsZoneBindingsResponse {
  /// A list of management DNS zone bindings.
  core.List<ManagementDnsZoneBinding>? managementDnsZoneBindings;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListManagementDnsZoneBindingsResponse({
    this.managementDnsZoneBindings,
    this.nextPageToken,
    this.unreachable,
  });

  ListManagementDnsZoneBindingsResponse.fromJson(core.Map json_)
    : this(
        managementDnsZoneBindings:
            (json_['managementDnsZoneBindings'] as core.List?)
                ?.map(
                  (value) => ManagementDnsZoneBinding.fromJson(
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
    if (managementDnsZoneBindings != null)
      'managementDnsZoneBindings': managementDnsZoneBindings!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for VmwareEngine.ListNetworkPeerings
class ListNetworkPeeringsResponse {
  /// A list of network peerings.
  core.List<NetworkPeering>? networkPeerings;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Unreachable resources.
  core.List<core.String>? unreachable;

  ListNetworkPeeringsResponse({
    this.networkPeerings,
    this.nextPageToken,
    this.unreachable,
  });

  ListNetworkPeeringsResponse.fromJson(core.Map json_)
    : this(
        networkPeerings:
            (json_['networkPeerings'] as core.List?)
                ?.map(
                  (value) => NetworkPeering.fromJson(
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
    if (networkPeerings != null) 'networkPeerings': networkPeerings!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for VmwareEngine.ListNetworkPolicies
class ListNetworkPoliciesResponse {
  /// A list of network policies.
  core.List<NetworkPolicy>? networkPolicies;

  /// A token, which can be send as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListNetworkPoliciesResponse({
    this.networkPolicies,
    this.nextPageToken,
    this.unreachable,
  });

  ListNetworkPoliciesResponse.fromJson(core.Map json_)
    : this(
        networkPolicies:
            (json_['networkPolicies'] as core.List?)
                ?.map(
                  (value) => NetworkPolicy.fromJson(
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
    if (networkPolicies != null) 'networkPolicies': networkPolicies!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for VmwareEngine.ListNodeTypes
class ListNodeTypesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of Node Types.
  core.List<NodeType>? nodeTypes;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListNodeTypesResponse({this.nextPageToken, this.nodeTypes, this.unreachable});

  ListNodeTypesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        nodeTypes:
            (json_['nodeTypes'] as core.List?)
                ?.map(
                  (value) => NodeType.fromJson(
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
    if (nodeTypes != null) 'nodeTypes': nodeTypes!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for VmwareEngine.ListNodes
class ListNodesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The nodes.
  core.List<Node>? nodes;

  ListNodesResponse({this.nextPageToken, this.nodes});

  ListNodesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        nodes:
            (json_['nodes'] as core.List?)
                ?.map(
                  (value) => Node.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (nodes != null) 'nodes': nodes!,
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

/// Response message for VmwareEngine.ListPeeringRoutes
class ListPeeringRoutesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of peering routes.
  core.List<PeeringRoute>? peeringRoutes;

  ListPeeringRoutesResponse({this.nextPageToken, this.peeringRoutes});

  ListPeeringRoutesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        peeringRoutes:
            (json_['peeringRoutes'] as core.List?)
                ?.map(
                  (value) => PeeringRoute.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (peeringRoutes != null) 'peeringRoutes': peeringRoutes!,
  };
}

/// Response message for VmwareEngine.ListPrivateClouds
class ListPrivateCloudsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of private clouds.
  core.List<PrivateCloud>? privateClouds;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListPrivateCloudsResponse({
    this.nextPageToken,
    this.privateClouds,
    this.unreachable,
  });

  ListPrivateCloudsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        privateClouds:
            (json_['privateClouds'] as core.List?)
                ?.map(
                  (value) => PrivateCloud.fromJson(
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
    if (privateClouds != null) 'privateClouds': privateClouds!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for VmwareEngine.ListPrivateConnectionPeeringRoutes
class ListPrivateConnectionPeeringRoutesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of peering routes.
  core.List<PeeringRoute>? peeringRoutes;

  ListPrivateConnectionPeeringRoutesResponse({
    this.nextPageToken,
    this.peeringRoutes,
  });

  ListPrivateConnectionPeeringRoutesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        peeringRoutes:
            (json_['peeringRoutes'] as core.List?)
                ?.map(
                  (value) => PeeringRoute.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (peeringRoutes != null) 'peeringRoutes': peeringRoutes!,
  };
}

/// Response message for VmwareEngine.ListPrivateConnections
class ListPrivateConnectionsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of private connections.
  core.List<PrivateConnection>? privateConnections;

  /// Unreachable resources.
  core.List<core.String>? unreachable;

  ListPrivateConnectionsResponse({
    this.nextPageToken,
    this.privateConnections,
    this.unreachable,
  });

  ListPrivateConnectionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        privateConnections:
            (json_['privateConnections'] as core.List?)
                ?.map(
                  (value) => PrivateConnection.fromJson(
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
    if (privateConnections != null) 'privateConnections': privateConnections!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for VmwareEngine.ListSubnets
class ListSubnetsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of subnets.
  core.List<Subnet>? subnets;

  /// Locations that could not be reached when making an aggregated query using
  /// wildcards.
  core.List<core.String>? unreachable;

  ListSubnetsResponse({this.nextPageToken, this.subnets, this.unreachable});

  ListSubnetsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        subnets:
            (json_['subnets'] as core.List?)
                ?.map(
                  (value) => Subnet.fromJson(
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
    if (subnets != null) 'subnets': subnets!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for VmwareEngine.ListUpgrades.
class ListUpgradesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of unreachable resources.
  core.List<core.String>? unreachable;

  /// A list of `Upgrades`.
  core.List<Upgrade>? upgrades;

  ListUpgradesResponse({this.nextPageToken, this.unreachable, this.upgrades});

  ListUpgradesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        upgrades:
            (json_['upgrades'] as core.List?)
                ?.map(
                  (value) => Upgrade.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
    if (upgrades != null) 'upgrades': upgrades!,
  };
}

/// Response message for VmwareEngine.ListVmwareEngineNetworks
class ListVmwareEngineNetworksResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Unreachable resources.
  core.List<core.String>? unreachable;

  /// A list of VMware Engine networks.
  core.List<VmwareEngineNetwork>? vmwareEngineNetworks;

  ListVmwareEngineNetworksResponse({
    this.nextPageToken,
    this.unreachable,
    this.vmwareEngineNetworks,
  });

  ListVmwareEngineNetworksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        vmwareEngineNetworks:
            (json_['vmwareEngineNetworks'] as core.List?)
                ?.map(
                  (value) => VmwareEngineNetwork.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
    if (vmwareEngineNetworks != null)
      'vmwareEngineNetworks': vmwareEngineNetworks!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Logging server to receive vCenter or ESXi logs.
class LoggingServer {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// Fully-qualified domain name (FQDN) or IP Address of the logging server.
  ///
  /// Required.
  core.String? hostname;

  /// The resource name of this logging server.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/loggingServers/my-logging-server`
  ///
  /// Output only.
  core.String? name;

  /// Port number at which the logging server receives logs.
  ///
  /// Required.
  core.int? port;

  /// Protocol used by vCenter to send logs to a logging server.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PROTOCOL_UNSPECIFIED" : Unspecified communications protocol. This is
  /// the default value.
  /// - "UDP" : UDP
  /// - "TCP" : TCP
  /// - "TLS" : TLS
  /// - "SSL" : SSL
  /// - "RELP" : RELP
  core.String? protocol;

  /// The type of component that produces logs that will be forwarded to this
  /// logging server.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SOURCE_TYPE_UNSPECIFIED" : The default value. This value should never
  /// be used.
  /// - "ESXI" : Logs produced by ESXI hosts
  /// - "VCSA" : Logs produced by vCenter server
  core.String? sourceType;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  LoggingServer({
    this.createTime,
    this.hostname,
    this.name,
    this.port,
    this.protocol,
    this.sourceType,
    this.uid,
    this.updateTime,
  });

  LoggingServer.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        hostname: json_['hostname'] as core.String?,
        name: json_['name'] as core.String?,
        port: json_['port'] as core.int?,
        protocol: json_['protocol'] as core.String?,
        sourceType: json_['sourceType'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (hostname != null) 'hostname': hostname!,
    if (name != null) 'name': name!,
    if (port != null) 'port': port!,
    if (protocol != null) 'protocol': protocol!,
    if (sourceType != null) 'sourceType': sourceType!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Management cluster configuration.
class ManagementCluster {
  /// The user-provided identifier of the new `Cluster`.
  ///
  /// The identifier must meet the following requirements: * Only contains 1-63
  /// alphanumeric characters and hyphens * Begins with an alphabetical
  /// character * Ends with a non-hyphen character * Not formatted as a UUID *
  /// Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
  /// (section 3.5)
  ///
  /// Required.
  core.String? clusterId;

  /// The map of cluster node types in this cluster, where the key is canonical
  /// identifier of the node type (corresponds to the `NodeType`).
  ///
  /// Required.
  core.Map<core.String, NodeTypeConfig>? nodeTypeConfigs;

  /// Configuration of a stretched cluster.
  ///
  /// Required for STRETCHED private clouds.
  ///
  /// Optional.
  StretchedClusterConfig? stretchedClusterConfig;

  ManagementCluster({
    this.clusterId,
    this.nodeTypeConfigs,
    this.stretchedClusterConfig,
  });

  ManagementCluster.fromJson(core.Map json_)
    : this(
        clusterId: json_['clusterId'] as core.String?,
        nodeTypeConfigs: (json_['nodeTypeConfigs']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                NodeTypeConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        stretchedClusterConfig:
            json_.containsKey('stretchedClusterConfig')
                ? StretchedClusterConfig.fromJson(
                  json_['stretchedClusterConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clusterId != null) 'clusterId': clusterId!,
    if (nodeTypeConfigs != null) 'nodeTypeConfigs': nodeTypeConfigs!,
    if (stretchedClusterConfig != null)
      'stretchedClusterConfig': stretchedClusterConfig!,
  };
}

/// Represents a binding between a network and the management DNS zone.
///
/// A management DNS zone is the Cloud DNS cross-project binding zone that
/// VMware Engine creates for each private cloud. It contains FQDNs and
/// corresponding IP addresses for the private cloud's ESXi hosts and management
/// VM appliances like vCenter and NSX Manager.
class ManagementDnsZoneBinding {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description for this resource.
  core.String? description;

  /// The resource name of this binding.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/managementDnsZoneBindings/my-management-dns-zone-binding`
  ///
  /// Output only.
  core.String? name;

  /// The state of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "ACTIVE" : The binding is ready.
  /// - "CREATING" : The binding is being created.
  /// - "UPDATING" : The binding is being updated.
  /// - "DELETING" : The binding is being deleted.
  /// - "FAILED" : The binding has failed.
  core.String? state;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  /// Network to bind is a VMware Engine network.
  ///
  /// Specify the name in the following form for VMware engine network:
  /// `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`.
  /// `{project}` can either be a project number or a project ID.
  core.String? vmwareEngineNetwork;

  /// Network to bind is a standard consumer VPC.
  ///
  /// Specify the name in the following form for consumer VPC network:
  /// `projects/{project}/global/networks/{network_id}`. `{project}` can either
  /// be a project number or a project ID.
  core.String? vpcNetwork;

  ManagementDnsZoneBinding({
    this.createTime,
    this.description,
    this.name,
    this.state,
    this.uid,
    this.updateTime,
    this.vmwareEngineNetwork,
    this.vpcNetwork,
  });

  ManagementDnsZoneBinding.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        vmwareEngineNetwork: json_['vmwareEngineNetwork'] as core.String?,
        vpcNetwork: json_['vpcNetwork'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (vmwareEngineNetwork != null)
      'vmwareEngineNetwork': vmwareEngineNetwork!,
    if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
  };
}

/// Network configuration in the consumer project with which the peering has to
/// be done.
class NetworkConfig {
  /// DNS Server IP of the Private Cloud.
  ///
  /// All DNS queries can be forwarded to this address for name resolution of
  /// Private Cloud's management entities like vCenter, NSX-T Manager and ESXi
  /// hosts.
  ///
  /// Output only.
  core.String? dnsServerIp;

  /// Management CIDR used by VMware management appliances.
  ///
  /// Required.
  core.String? managementCidr;

  /// The IP address layout version of the management IP address range.
  ///
  /// Possible versions include: * `managementIpAddressLayoutVersion=1`:
  /// Indicates the legacy IP address layout used by some existing private
  /// clouds. This is no longer supported for new private clouds as it does not
  /// support all features. * `managementIpAddressLayoutVersion=2`: Indicates
  /// the latest IP address layout used by all newly created private clouds.
  /// This version supports all current features.
  ///
  /// Output only.
  core.int? managementIpAddressLayoutVersion;

  /// The relative resource name of the VMware Engine network attached to the
  /// private cloud.
  ///
  /// Specify the name in the following form:
  /// `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  /// where `{project}` can either be a project number or a project ID.
  ///
  /// Optional.
  core.String? vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form:
  /// `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  ///
  /// Output only.
  core.String? vmwareEngineNetworkCanonical;

  NetworkConfig({
    this.dnsServerIp,
    this.managementCidr,
    this.managementIpAddressLayoutVersion,
    this.vmwareEngineNetwork,
    this.vmwareEngineNetworkCanonical,
  });

  NetworkConfig.fromJson(core.Map json_)
    : this(
        dnsServerIp: json_['dnsServerIp'] as core.String?,
        managementCidr: json_['managementCidr'] as core.String?,
        managementIpAddressLayoutVersion:
            json_['managementIpAddressLayoutVersion'] as core.int?,
        vmwareEngineNetwork: json_['vmwareEngineNetwork'] as core.String?,
        vmwareEngineNetworkCanonical:
            json_['vmwareEngineNetworkCanonical'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dnsServerIp != null) 'dnsServerIp': dnsServerIp!,
    if (managementCidr != null) 'managementCidr': managementCidr!,
    if (managementIpAddressLayoutVersion != null)
      'managementIpAddressLayoutVersion': managementIpAddressLayoutVersion!,
    if (vmwareEngineNetwork != null)
      'vmwareEngineNetwork': vmwareEngineNetwork!,
    if (vmwareEngineNetworkCanonical != null)
      'vmwareEngineNetworkCanonical': vmwareEngineNetworkCanonical!,
  };
}

/// Details of a network peering.
class NetworkPeering {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description for this network peering.
  ///
  /// Optional.
  core.String? description;

  /// True if full mesh connectivity is created and managed automatically
  /// between peered networks; false otherwise.
  ///
  /// Currently this field is always true because Google Compute Engine
  /// automatically creates and manages subnetwork routes between two VPC
  /// networks when peering state is 'ACTIVE'.
  ///
  /// Optional.
  core.bool? exchangeSubnetRoutes;

  /// True if custom routes are exported to the peered network; false otherwise.
  ///
  /// The default value is true.
  ///
  /// Optional.
  core.bool? exportCustomRoutes;

  /// True if all subnet routes with a public IP address range are exported;
  /// false otherwise.
  ///
  /// The default value is true. IPv4 special-use ranges
  /// (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported
  /// to peers and are not controlled by this field.
  ///
  /// Optional.
  core.bool? exportCustomRoutesWithPublicIp;

  /// True if custom routes are imported from the peered network; false
  /// otherwise.
  ///
  /// The default value is true.
  ///
  /// Optional.
  core.bool? importCustomRoutes;

  /// True if all subnet routes with public IP address range are imported; false
  /// otherwise.
  ///
  /// The default value is true. IPv4 special-use ranges
  /// (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported
  /// to peers and are not controlled by this field.
  ///
  /// Optional.
  core.bool? importCustomRoutesWithPublicIp;

  /// Identifier.
  ///
  /// The resource name of the network peering. NetworkPeering is a global
  /// resource and location can only be global. Resource names are scheme-less
  /// URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/networkPeerings/my-peering`
  ///
  /// Output only.
  core.String? name;

  /// Maximum transmission unit (MTU) in bytes.
  ///
  /// The default value is `1500`. If a value of `0` is provided for this field,
  /// VMware Engine uses the default value instead.
  ///
  /// Optional.
  core.int? peerMtu;

  /// The relative resource name of the network to peer with a standard VMware
  /// Engine network.
  ///
  /// The provided network can be a consumer VPC network or another standard
  /// VMware Engine network. If the `peer_network_type` is
  /// VMWARE_ENGINE_NETWORK, specify the name in the form:
  /// `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`.
  /// Otherwise specify the name in the form:
  /// `projects/{project}/global/networks/{network_id}`, where `{project}` can
  /// either be a project number or a project ID.
  ///
  /// Required.
  core.String? peerNetwork;

  /// The type of the network to peer with the VMware Engine network.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PEER_NETWORK_TYPE_UNSPECIFIED" : Unspecified
  /// - "STANDARD" : Peering connection used for connecting to another VPC
  /// network established by the same user. For example, a peering connection to
  /// another VPC network in the same project or to an on-premises network.
  /// - "VMWARE_ENGINE_NETWORK" : Peering connection used for connecting to
  /// another VMware Engine network.
  /// - "PRIVATE_SERVICES_ACCESS" : Peering connection used for establishing
  /// [private services access](https://cloud.google.com/vpc/docs/private-services-access).
  /// - "NETAPP_CLOUD_VOLUMES" : Peering connection used for connecting to
  /// NetApp Cloud Volumes.
  /// - "THIRD_PARTY_SERVICE" : Peering connection used for connecting to
  /// third-party services. Most third-party services require manual setup of
  /// reverse peering on the VPC network associated with the third-party
  /// service.
  /// - "DELL_POWERSCALE" : Peering connection used for connecting to Dell
  /// PowerScale Filers
  /// - "GOOGLE_CLOUD_NETAPP_VOLUMES" : Peering connection used for connecting
  /// to Google Cloud NetApp Volumes.
  /// - "GOOGLE_CLOUD_FILESTORE_INSTANCES" : Peering connection used for
  /// connecting to Google Cloud Filestore Instances.
  core.String? peerNetworkType;

  /// State of the network peering.
  ///
  /// This field has a value of 'ACTIVE' when there's a matching configuration
  /// in the peer network. New values may be added to this enum when
  /// appropriate.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified network peering state. This is the
  /// default value.
  /// - "INACTIVE" : The peering is not active.
  /// - "ACTIVE" : The peering is active.
  /// - "CREATING" : The peering is being created.
  /// - "DELETING" : The peering is being deleted.
  core.String? state;

  /// Details about the current state of the network peering.
  ///
  /// Output only.
  core.String? stateDetails;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  /// The relative resource name of the VMware Engine network.
  ///
  /// Specify the name in the following form:
  /// `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  /// where `{project}` can either be a project number or a project ID.
  ///
  /// Required.
  core.String? vmwareEngineNetwork;

  NetworkPeering({
    this.createTime,
    this.description,
    this.exchangeSubnetRoutes,
    this.exportCustomRoutes,
    this.exportCustomRoutesWithPublicIp,
    this.importCustomRoutes,
    this.importCustomRoutesWithPublicIp,
    this.name,
    this.peerMtu,
    this.peerNetwork,
    this.peerNetworkType,
    this.state,
    this.stateDetails,
    this.uid,
    this.updateTime,
    this.vmwareEngineNetwork,
  });

  NetworkPeering.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        exchangeSubnetRoutes: json_['exchangeSubnetRoutes'] as core.bool?,
        exportCustomRoutes: json_['exportCustomRoutes'] as core.bool?,
        exportCustomRoutesWithPublicIp:
            json_['exportCustomRoutesWithPublicIp'] as core.bool?,
        importCustomRoutes: json_['importCustomRoutes'] as core.bool?,
        importCustomRoutesWithPublicIp:
            json_['importCustomRoutesWithPublicIp'] as core.bool?,
        name: json_['name'] as core.String?,
        peerMtu: json_['peerMtu'] as core.int?,
        peerNetwork: json_['peerNetwork'] as core.String?,
        peerNetworkType: json_['peerNetworkType'] as core.String?,
        state: json_['state'] as core.String?,
        stateDetails: json_['stateDetails'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        vmwareEngineNetwork: json_['vmwareEngineNetwork'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (exchangeSubnetRoutes != null)
      'exchangeSubnetRoutes': exchangeSubnetRoutes!,
    if (exportCustomRoutes != null) 'exportCustomRoutes': exportCustomRoutes!,
    if (exportCustomRoutesWithPublicIp != null)
      'exportCustomRoutesWithPublicIp': exportCustomRoutesWithPublicIp!,
    if (importCustomRoutes != null) 'importCustomRoutes': importCustomRoutes!,
    if (importCustomRoutesWithPublicIp != null)
      'importCustomRoutesWithPublicIp': importCustomRoutesWithPublicIp!,
    if (name != null) 'name': name!,
    if (peerMtu != null) 'peerMtu': peerMtu!,
    if (peerNetwork != null) 'peerNetwork': peerNetwork!,
    if (peerNetworkType != null) 'peerNetworkType': peerNetworkType!,
    if (state != null) 'state': state!,
    if (stateDetails != null) 'stateDetails': stateDetails!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (vmwareEngineNetwork != null)
      'vmwareEngineNetwork': vmwareEngineNetwork!,
  };
}

/// Represents a network policy resource.
///
/// Network policies are regional resources. You can use a network policy to
/// enable or disable internet access and external IP access. Network policies
/// are associated with a VMware Engine network, which might span across
/// regions. For a given region, a network policy applies to all private clouds
/// in the VMware Engine network associated with the policy.
class NetworkPolicy {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description for this network policy.
  ///
  /// Optional.
  core.String? description;

  /// IP address range in CIDR notation used to create internet access and
  /// external IP access.
  ///
  /// An RFC 1918 CIDR block, with a "/26" prefix, is required. The range cannot
  /// overlap with any prefixes either in the consumer VPC network or in use by
  /// the private clouds attached to that VPC network.
  ///
  /// Required.
  core.String? edgeServicesCidr;

  /// Network service that allows External IP addresses to be assigned to VMware
  /// workloads.
  ///
  /// This service can only be enabled when `internet_access` is also enabled.
  NetworkService? externalIp;

  /// Network service that allows VMware workloads to access the internet.
  NetworkService? internetAccess;

  /// Identifier.
  ///
  /// The resource name of this network policy. Resource names are schemeless
  /// URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/networkPolicies/my-network-policy`
  ///
  /// Output only.
  core.String? name;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  /// The relative resource name of the VMware Engine network.
  ///
  /// Specify the name in the following form:
  /// `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  /// where `{project}` can either be a project number or a project ID.
  ///
  /// Optional.
  core.String? vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form:
  /// `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  ///
  /// Output only.
  core.String? vmwareEngineNetworkCanonical;

  NetworkPolicy({
    this.createTime,
    this.description,
    this.edgeServicesCidr,
    this.externalIp,
    this.internetAccess,
    this.name,
    this.uid,
    this.updateTime,
    this.vmwareEngineNetwork,
    this.vmwareEngineNetworkCanonical,
  });

  NetworkPolicy.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        edgeServicesCidr: json_['edgeServicesCidr'] as core.String?,
        externalIp:
            json_.containsKey('externalIp')
                ? NetworkService.fromJson(
                  json_['externalIp'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        internetAccess:
            json_.containsKey('internetAccess')
                ? NetworkService.fromJson(
                  json_['internetAccess']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        vmwareEngineNetwork: json_['vmwareEngineNetwork'] as core.String?,
        vmwareEngineNetworkCanonical:
            json_['vmwareEngineNetworkCanonical'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (edgeServicesCidr != null) 'edgeServicesCidr': edgeServicesCidr!,
    if (externalIp != null) 'externalIp': externalIp!,
    if (internetAccess != null) 'internetAccess': internetAccess!,
    if (name != null) 'name': name!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (vmwareEngineNetwork != null)
      'vmwareEngineNetwork': vmwareEngineNetwork!,
    if (vmwareEngineNetworkCanonical != null)
      'vmwareEngineNetworkCanonical': vmwareEngineNetworkCanonical!,
  };
}

/// Represents a network service that is managed by a `NetworkPolicy` resource.
///
/// A network service provides a way to control an aspect of external access to
/// VMware workloads. For example, whether the VMware workloads in the private
/// clouds governed by a network policy can access or be accessed from the
/// internet.
class NetworkService {
  /// True if the service is enabled; false otherwise.
  core.bool? enabled;

  /// State of the service.
  ///
  /// New values may be added to this enum when appropriate.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified service state. This is the default
  /// value.
  /// - "UNPROVISIONED" : Service is not provisioned.
  /// - "RECONCILING" : Service is in the process of being
  /// provisioned/deprovisioned.
  /// - "ACTIVE" : Service is active.
  core.String? state;

  NetworkService({this.enabled, this.state});

  NetworkService.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enabled != null) 'enabled': enabled!,
    if (state != null) 'state': state!,
  };
}

/// Node in a cluster.
class Node {
  /// Customized number of cores
  ///
  /// Output only.
  core.String? customCoreCount;

  /// Fully qualified domain name of the node.
  ///
  /// Output only.
  core.String? fqdn;

  /// Internal IP address of the node.
  ///
  /// Output only.
  core.String? internalIp;

  /// The resource name of this node.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// projects/my-project/locations/us-central1-a/privateClouds/my-cloud/clusters/my-cluster/nodes/my-node
  ///
  /// Output only.
  core.String? name;

  /// The canonical identifier of the node type (corresponds to the `NodeType`).
  ///
  /// For example: standard-72.
  ///
  /// Output only.
  core.String? nodeTypeId;

  /// The state of the appliance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "ACTIVE" : Node is operational and can be used by the user.
  /// - "CREATING" : Node is being provisioned.
  /// - "FAILED" : Node is in a failed state.
  /// - "UPGRADING" : Node is undergoing maintenance, e.g.: during private cloud
  /// upgrade.
  core.String? state;

  /// The version number of the VMware ESXi management component in this
  /// cluster.
  ///
  /// Output only.
  core.String? version;

  Node({
    this.customCoreCount,
    this.fqdn,
    this.internalIp,
    this.name,
    this.nodeTypeId,
    this.state,
    this.version,
  });

  Node.fromJson(core.Map json_)
    : this(
        customCoreCount: json_['customCoreCount'] as core.String?,
        fqdn: json_['fqdn'] as core.String?,
        internalIp: json_['internalIp'] as core.String?,
        name: json_['name'] as core.String?,
        nodeTypeId: json_['nodeTypeId'] as core.String?,
        state: json_['state'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customCoreCount != null) 'customCoreCount': customCoreCount!,
    if (fqdn != null) 'fqdn': fqdn!,
    if (internalIp != null) 'internalIp': internalIp!,
    if (name != null) 'name': name!,
    if (nodeTypeId != null) 'nodeTypeId': nodeTypeId!,
    if (state != null) 'state': state!,
    if (version != null) 'version': version!,
  };
}

/// Describes node type.
class NodeType {
  /// List of possible values of custom core count.
  ///
  /// Output only.
  core.List<core.int>? availableCustomCoreCounts;

  /// Capabilities of this node type.
  ///
  /// Output only.
  core.List<core.String>? capabilities;

  /// The amount of storage available, defined in GB.
  ///
  /// Output only.
  core.int? diskSizeGb;

  /// The friendly name for this node type.
  ///
  /// For example: ve1-standard-72
  ///
  /// Output only.
  core.String? displayName;

  /// Families of the node type.
  ///
  /// For node types to be in the same cluster they must share at least one
  /// element in the `families`.
  ///
  /// Output only.
  core.List<core.String>? families;

  /// The type of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : The default value. This value should never be used.
  /// - "STANDARD" : Standard HCI node.
  /// - "STORAGE_ONLY" : Storage only Node.
  core.String? kind;

  /// The amount of physical memory available, defined in GB.
  ///
  /// Output only.
  core.int? memoryGb;

  /// The resource name of this node type.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-proj/locations/us-central1-a/nodeTypes/standard-72`
  ///
  /// Output only.
  core.String? name;

  /// The canonical identifier of the node type (corresponds to the `NodeType`).
  ///
  /// For example: standard-72.
  ///
  /// Output only.
  core.String? nodeTypeId;

  /// The total number of CPU cores in a single node.
  ///
  /// Output only.
  core.int? totalCoreCount;

  /// The total number of virtual CPUs in a single node.
  ///
  /// Output only.
  core.int? virtualCpuCount;

  NodeType({
    this.availableCustomCoreCounts,
    this.capabilities,
    this.diskSizeGb,
    this.displayName,
    this.families,
    this.kind,
    this.memoryGb,
    this.name,
    this.nodeTypeId,
    this.totalCoreCount,
    this.virtualCpuCount,
  });

  NodeType.fromJson(core.Map json_)
    : this(
        availableCustomCoreCounts:
            (json_['availableCustomCoreCounts'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
        capabilities:
            (json_['capabilities'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        diskSizeGb: json_['diskSizeGb'] as core.int?,
        displayName: json_['displayName'] as core.String?,
        families:
            (json_['families'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        kind: json_['kind'] as core.String?,
        memoryGb: json_['memoryGb'] as core.int?,
        name: json_['name'] as core.String?,
        nodeTypeId: json_['nodeTypeId'] as core.String?,
        totalCoreCount: json_['totalCoreCount'] as core.int?,
        virtualCpuCount: json_['virtualCpuCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (availableCustomCoreCounts != null)
      'availableCustomCoreCounts': availableCustomCoreCounts!,
    if (capabilities != null) 'capabilities': capabilities!,
    if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
    if (displayName != null) 'displayName': displayName!,
    if (families != null) 'families': families!,
    if (kind != null) 'kind': kind!,
    if (memoryGb != null) 'memoryGb': memoryGb!,
    if (name != null) 'name': name!,
    if (nodeTypeId != null) 'nodeTypeId': nodeTypeId!,
    if (totalCoreCount != null) 'totalCoreCount': totalCoreCount!,
    if (virtualCpuCount != null) 'virtualCpuCount': virtualCpuCount!,
  };
}

/// Information about the type and number of nodes associated with the cluster.
class NodeTypeConfig {
  /// Customized number of cores available to each node of the type.
  ///
  /// This number must always be one of `nodeType.availableCustomCoreCounts`. If
  /// zero is provided max value from `nodeType.availableCustomCoreCounts` will
  /// be used.
  ///
  /// Optional.
  core.int? customCoreCount;

  /// The number of nodes of this type in the cluster
  ///
  /// Required.
  core.int? nodeCount;

  NodeTypeConfig({this.customCoreCount, this.nodeCount});

  NodeTypeConfig.fromJson(core.Map json_)
    : this(
        customCoreCount: json_['customCoreCount'] as core.int?,
        nodeCount: json_['nodeCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customCoreCount != null) 'customCoreCount': customCoreCount!,
    if (nodeCount != null) 'nodeCount': nodeCount!,
  };
}

/// Details about a NSX Manager appliance.
typedef Nsx = $Shared13;

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

/// Exchanged network peering route.
class PeeringRoute {
  /// Destination range of the peering route in CIDR notation.
  ///
  /// Output only.
  core.String? destRange;

  /// Direction of the routes exchanged with the peer network, from the VMware
  /// Engine network perspective: * Routes of direction `INCOMING` are imported
  /// from the peer network.
  ///
  /// * Routes of direction `OUTGOING` are exported from the intranet VPC
  /// network of the VMware Engine network.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : Unspecified exchanged routes direction. This
  /// is default.
  /// - "INCOMING" : Routes imported from the peer network.
  /// - "OUTGOING" : Routes exported to the peer network.
  core.String? direction;

  /// True if the peering route has been imported from a peered VPC network;
  /// false otherwise.
  ///
  /// The import happens if the field `NetworkPeering.importCustomRoutes` is
  /// true for this network, `NetworkPeering.exportCustomRoutes` is true for the
  /// peer VPC network, and the import does not result in a route conflict.
  ///
  /// Output only.
  core.bool? imported;

  /// Region containing the next hop of the peering route.
  ///
  /// This field only applies to dynamic routes in the peer VPC network.
  ///
  /// Output only.
  core.String? nextHopRegion;

  /// The priority of the peering route.
  ///
  /// Output only.
  core.String? priority;

  /// Type of the route in the peer VPC network.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified peering route type. This is the default
  /// value.
  /// - "DYNAMIC_PEERING_ROUTE" : Dynamic routes in the peer network.
  /// - "STATIC_PEERING_ROUTE" : Static routes in the peer network.
  /// - "SUBNET_PEERING_ROUTE" : Created, updated, and removed automatically by
  /// Google Cloud when subnets are created, modified, or deleted in the peer
  /// network.
  core.String? type;

  PeeringRoute({
    this.destRange,
    this.direction,
    this.imported,
    this.nextHopRegion,
    this.priority,
    this.type,
  });

  PeeringRoute.fromJson(core.Map json_)
    : this(
        destRange: json_['destRange'] as core.String?,
        direction: json_['direction'] as core.String?,
        imported: json_['imported'] as core.bool?,
        nextHopRegion: json_['nextHopRegion'] as core.String?,
        priority: json_['priority'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destRange != null) 'destRange': destRange!,
    if (direction != null) 'direction': direction!,
    if (imported != null) 'imported': imported!,
    if (nextHopRegion != null) 'nextHopRegion': nextHopRegion!,
    if (priority != null) 'priority': priority!,
    if (type != null) 'type': type!,
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

/// Users/Service accounts which have access for DNS binding on the intranet VPC
/// corresponding to the consumer project.
class Principal {
  /// The service account which needs to be granted the permission.
  core.String? serviceAccount;

  /// The user who needs to be granted permission.
  core.String? user;

  Principal({this.serviceAccount, this.user});

  Principal.fromJson(core.Map json_)
    : this(
        serviceAccount: json_['serviceAccount'] as core.String?,
        user: json_['user'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (user != null) 'user': user!,
  };
}

/// Represents a private cloud resource.
///
/// Private clouds of type `STANDARD` and `TIME_LIMITED` are zonal resources,
/// `STRETCHED` private clouds are regional.
class PrivateCloud {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// Time when the resource was scheduled for deletion.
  ///
  /// Output only.
  core.String? deleteTime;

  /// User-provided description for this private cloud.
  core.String? description;

  /// Time when the resource will be irreversibly deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// HCX appliance.
  ///
  /// Output only.
  Hcx? hcx;

  /// Input only.
  ///
  /// The management cluster for this private cloud. This field is required
  /// during creation of the private cloud to provide details for the default
  /// cluster. The following fields can't be changed after private cloud
  /// creation: `ManagementCluster.clusterId`, `ManagementCluster.nodeTypeId`.
  ///
  /// Required.
  ManagementCluster? managementCluster;

  /// Identifier.
  ///
  /// The resource name of this private cloud. Resource names are schemeless
  /// URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud`
  ///
  /// Output only.
  core.String? name;

  /// Network configuration of the private cloud.
  ///
  /// Required.
  NetworkConfig? networkConfig;

  /// NSX appliance.
  ///
  /// Output only.
  Nsx? nsx;

  /// State of the resource.
  ///
  /// New values may be added to this enum when appropriate.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "ACTIVE" : The private cloud is ready.
  /// - "CREATING" : The private cloud is being created.
  /// - "UPDATING" : The private cloud is being updated.
  /// - "FAILED" : The private cloud is in failed state.
  /// - "DELETED" : The private cloud is scheduled for deletion. The deletion
  /// process can be cancelled by using the corresponding undelete method.
  /// - "PURGING" : The private cloud is irreversibly deleted and is being
  /// removed from the system.
  core.String? state;

  /// Type of the private cloud.
  ///
  /// Defaults to STANDARD.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STANDARD" : Standard private is a zonal resource, with 3+ nodes.
  /// Default type.
  /// - "TIME_LIMITED" : Time limited private cloud is a zonal resource, can
  /// have only 1 node and has limited life span. Will be deleted after defined
  /// period of time, can be converted into standard private cloud by expanding
  /// it up to 3 or more nodes.
  /// - "STRETCHED" : Stretched private cloud is a regional resource with
  /// redundancy, with a minimum of 6 nodes, nodes count has to be even.
  core.String? type;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  /// Vcenter appliance.
  ///
  /// Output only.
  Vcenter? vcenter;

  PrivateCloud({
    this.createTime,
    this.deleteTime,
    this.description,
    this.expireTime,
    this.hcx,
    this.managementCluster,
    this.name,
    this.networkConfig,
    this.nsx,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.vcenter,
  });

  PrivateCloud.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        description: json_['description'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        hcx:
            json_.containsKey('hcx')
                ? Hcx.fromJson(
                  json_['hcx'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        managementCluster:
            json_.containsKey('managementCluster')
                ? ManagementCluster.fromJson(
                  json_['managementCluster']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        networkConfig:
            json_.containsKey('networkConfig')
                ? NetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        nsx:
            json_.containsKey('nsx')
                ? Nsx.fromJson(
                  json_['nsx'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        type: json_['type'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        vcenter:
            json_.containsKey('vcenter')
                ? Vcenter.fromJson(
                  json_['vcenter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (deleteTime != null) 'deleteTime': deleteTime!,
    if (description != null) 'description': description!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (hcx != null) 'hcx': hcx!,
    if (managementCluster != null) 'managementCluster': managementCluster!,
    if (name != null) 'name': name!,
    if (networkConfig != null) 'networkConfig': networkConfig!,
    if (nsx != null) 'nsx': nsx!,
    if (state != null) 'state': state!,
    if (type != null) 'type': type!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (vcenter != null) 'vcenter': vcenter!,
  };
}

/// Private connection resource that provides connectivity for VMware Engine
/// private clouds.
class PrivateConnection {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description for this private connection.
  ///
  /// Optional.
  core.String? description;

  /// The resource name of the private connection.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1/privateConnections/my-connection`
  ///
  /// Output only.
  core.String? name;

  /// VPC network peering id between given network VPC and VMwareEngineNetwork.
  ///
  /// Output only.
  core.String? peeringId;

  /// Peering state between service network and VMware Engine network.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PEERING_STATE_UNSPECIFIED" : The default value. This value is used if
  /// the peering state is omitted or unknown.
  /// - "PEERING_ACTIVE" : The peering is in active state.
  /// - "PEERING_INACTIVE" : The peering is in inactive state.
  core.String? peeringState;

  /// Routing Mode.
  ///
  /// Default value is set to GLOBAL. For type = PRIVATE_SERVICE_ACCESS, this
  /// field can be set to GLOBAL or REGIONAL, for other types only GLOBAL is
  /// supported.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ROUTING_MODE_UNSPECIFIED" : The default value. This value should never
  /// be used.
  /// - "GLOBAL" : Global Routing Mode
  /// - "REGIONAL" : Regional Routing Mode
  core.String? routingMode;

  /// Service network to create private connection.
  ///
  /// Specify the name in the following form:
  /// `projects/{project}/global/networks/{network_id}` For type =
  /// PRIVATE_SERVICE_ACCESS, this field represents servicenetworking VPC, e.g.
  /// projects/project-tp/global/networks/servicenetworking. For type =
  /// NETAPP_CLOUD_VOLUME, this field represents NetApp service VPC, e.g.
  /// projects/project-tp/global/networks/netapp-tenant-vpc. For type =
  /// DELL_POWERSCALE, this field represent Dell service VPC, e.g.
  /// projects/project-tp/global/networks/dell-tenant-vpc. For type=
  /// THIRD_PARTY_SERVICE, this field could represent a consumer VPC or any
  /// other producer VPC to which the VMware Engine Network needs to be
  /// connected, e.g. projects/project/global/networks/vpc.
  ///
  /// Required.
  core.String? serviceNetwork;

  /// State of the private connection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "CREATING" : The private connection is being created.
  /// - "ACTIVE" : The private connection is ready.
  /// - "UPDATING" : The private connection is being updated.
  /// - "DELETING" : The private connection is being deleted.
  /// - "UNPROVISIONED" : The private connection is not provisioned, since no
  /// private cloud is present for which this private connection is needed.
  /// - "FAILED" : The private connection is in failed state.
  core.String? state;

  /// Private connection type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The default value. This value should never be used.
  /// - "PRIVATE_SERVICE_ACCESS" : Connection used for establishing
  /// [private services access](https://cloud.google.com/vpc/docs/private-services-access).
  /// - "NETAPP_CLOUD_VOLUMES" : Connection used for connecting to NetApp Cloud
  /// Volumes.
  /// - "DELL_POWERSCALE" : Connection used for connecting to Dell PowerScale.
  /// - "THIRD_PARTY_SERVICE" : Connection used for connecting to third-party
  /// services.
  core.String? type;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  /// The relative resource name of Legacy VMware Engine network.
  ///
  /// Specify the name in the following form:
  /// `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  /// where `{project}`, `{location}` will be same as specified in private
  /// connection resource name and `{vmware_engine_network_id}` will be in the
  /// form of `{location}`-default e.g.
  /// projects/project/locations/us-central1/vmwareEngineNetworks/us-central1-default.
  ///
  /// Required.
  core.String? vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form:
  /// `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  ///
  /// Output only.
  core.String? vmwareEngineNetworkCanonical;

  PrivateConnection({
    this.createTime,
    this.description,
    this.name,
    this.peeringId,
    this.peeringState,
    this.routingMode,
    this.serviceNetwork,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.vmwareEngineNetwork,
    this.vmwareEngineNetworkCanonical,
  });

  PrivateConnection.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        peeringId: json_['peeringId'] as core.String?,
        peeringState: json_['peeringState'] as core.String?,
        routingMode: json_['routingMode'] as core.String?,
        serviceNetwork: json_['serviceNetwork'] as core.String?,
        state: json_['state'] as core.String?,
        type: json_['type'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        vmwareEngineNetwork: json_['vmwareEngineNetwork'] as core.String?,
        vmwareEngineNetworkCanonical:
            json_['vmwareEngineNetworkCanonical'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (name != null) 'name': name!,
    if (peeringId != null) 'peeringId': peeringId!,
    if (peeringState != null) 'peeringState': peeringState!,
    if (routingMode != null) 'routingMode': routingMode!,
    if (serviceNetwork != null) 'serviceNetwork': serviceNetwork!,
    if (state != null) 'state': state!,
    if (type != null) 'type': type!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (vmwareEngineNetwork != null)
      'vmwareEngineNetwork': vmwareEngineNetwork!,
    if (vmwareEngineNetworkCanonical != null)
      'vmwareEngineNetworkCanonical': vmwareEngineNetworkCanonical!,
  };
}

/// Request message for VmwareEngine.RepairManagementDnsZoneBindings
class RepairManagementDnsZoneBindingRequest {
  /// A request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server guarantees that a request doesn't result in creation of
  /// duplicate commitments for at least 60 minutes. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID, the server can check
  /// if the original operation with the same request ID was received, and if
  /// so, will ignore the second request. This prevents clients from
  /// accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  RepairManagementDnsZoneBindingRequest({this.requestId});

  RepairManagementDnsZoneBindingRequest.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Request message for VmwareEngine.ResetNsxCredentials
class ResetNsxCredentialsRequest {
  /// A request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server guarantees that a request doesn't result in creation of
  /// duplicate commitments for at least 60 minutes. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID, the server can check
  /// if original operation with the same request ID was received, and if so,
  /// will ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  ResetNsxCredentialsRequest({this.requestId});

  ResetNsxCredentialsRequest.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Request message for VmwareEngine.ResetVcenterCredentials
class ResetVcenterCredentialsRequest {
  /// A request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server guarantees that a request doesn't result in creation of
  /// duplicate commitments for at least 60 minutes. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID, the server can check
  /// if original operation with the same request ID was received, and if so,
  /// will ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// The username of the user to be to reset the credentials.
  ///
  /// The default value of this field is CloudOwner@gve.local. The provided
  /// value should be one of the following: solution-user-01@gve.local,
  /// solution-user-02@gve.local, solution-user-03@gve.local,
  /// solution-user-04@gve.local, solution-user-05@gve.local,
  /// zertoadmin@gve.local.
  ///
  /// Optional.
  core.String? username;

  ResetVcenterCredentialsRequest({this.requestId, this.username});

  ResetVcenterCredentialsRequest.fromJson(core.Map json_)
    : this(
        requestId: json_['requestId'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestId != null) 'requestId': requestId!,
    if (username != null) 'username': username!,
  };
}

/// Request message for VmwareEngine.RevokeDnsBindPermission
class RevokeDnsBindPermissionRequest {
  /// The consumer provided user/service account which needs to be granted
  /// permission to bind with the intranet VPC corresponding to the consumer
  /// project.
  ///
  /// Required.
  Principal? principal;

  /// A request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server guarantees that a request doesn't result in creation of
  /// duplicate commitments for at least 60 minutes. For example, consider a
  /// situation where you make an initial request and the request times out. If
  /// you make the request again with the same request ID, the server can check
  /// if original operation with the same request ID was received, and if so,
  /// will ignore the second request. This prevents clients from accidentally
  /// creating duplicate commitments. The request ID must be a valid UUID with
  /// the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  RevokeDnsBindPermissionRequest({this.principal, this.requestId});

  RevokeDnsBindPermissionRequest.fromJson(core.Map json_)
    : this(
        principal:
            json_.containsKey('principal')
                ? Principal.fromJson(
                  json_['principal'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (principal != null) 'principal': principal!,
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Schedule for the upgrade.
class Schedule {
  /// Constraints applied to the schedule.
  ///
  /// These constraints should be applicable at the time of any rescheduling.
  ///
  /// Output only.
  Constraints? constraints;

  /// The schedule is open for edits during this time interval or window.
  ///
  /// Output only.
  Interval? editWindow;

  /// Indicates who most recently edited the upgrade schedule.
  ///
  /// The value is updated whenever the upgrade is rescheduled.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "EDITOR_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "SYSTEM" : The upgrade is scheduled by the System or internal service.
  /// - "USER" : The upgrade is scheduled by the end user.
  core.String? lastEditor;

  /// The scheduled start time for the upgrade.
  ///
  /// Required.
  core.String? startTime;

  /// Weekly time windows for upgrade activities.
  ///
  /// The server performs upgrade activities during these time windows to
  /// minimize disruptions.
  ///
  /// Required.
  core.List<TimeWindow>? weeklyWindows;

  Schedule({
    this.constraints,
    this.editWindow,
    this.lastEditor,
    this.startTime,
    this.weeklyWindows,
  });

  Schedule.fromJson(core.Map json_)
    : this(
        constraints:
            json_.containsKey('constraints')
                ? Constraints.fromJson(
                  json_['constraints'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        editWindow:
            json_.containsKey('editWindow')
                ? Interval.fromJson(
                  json_['editWindow'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lastEditor: json_['lastEditor'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        weeklyWindows:
            (json_['weeklyWindows'] as core.List?)
                ?.map(
                  (value) => TimeWindow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (constraints != null) 'constraints': constraints!,
    if (editWindow != null) 'editWindow': editWindow!,
    if (lastEditor != null) 'lastEditor': lastEditor!,
    if (startTime != null) 'startTime': startTime!,
    if (weeklyWindows != null) 'weeklyWindows': weeklyWindows!,
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Configuration of a stretched cluster.
class StretchedClusterConfig {
  /// Zone that will remain operational when connection between the two zones is
  /// lost.
  ///
  /// Specify the resource name of a zone that belongs to the region of the
  /// private cloud. For example: `projects/{project}/locations/europe-west3-a`
  /// where `{project}` can either be a project number or a project ID.
  ///
  /// Required.
  core.String? preferredLocation;

  /// Additional zone for a higher level of availability and load balancing.
  ///
  /// Specify the resource name of a zone that belongs to the region of the
  /// private cloud. For example: `projects/{project}/locations/europe-west3-b`
  /// where `{project}` can either be a project number or a project ID.
  ///
  /// Required.
  core.String? secondaryLocation;

  StretchedClusterConfig({this.preferredLocation, this.secondaryLocation});

  StretchedClusterConfig.fromJson(core.Map json_)
    : this(
        preferredLocation: json_['preferredLocation'] as core.String?,
        secondaryLocation: json_['secondaryLocation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (preferredLocation != null) 'preferredLocation': preferredLocation!,
    if (secondaryLocation != null) 'secondaryLocation': secondaryLocation!,
  };
}

/// Subnet in a private cloud.
///
/// Either `management` subnets (such as vMotion) that are read-only, or
/// `userDefined`, which can also be updated.
class Subnet {
  /// The IP address of the gateway of this subnet.
  ///
  /// Must fall within the IP prefix defined above.
  core.String? gatewayIp;

  /// The IP address range of the subnet in CIDR format '10.0.0.0/24'.
  core.String? ipCidrRange;

  /// Identifier.
  ///
  /// The resource name of this subnet. Resource names are schemeless URIs that
  /// follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-central1-a/privateClouds/my-cloud/subnets/my-subnet`
  ///
  /// Output only.
  core.String? name;

  /// The state of the resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "ACTIVE" : The subnet is ready.
  /// - "CREATING" : The subnet is being created.
  /// - "UPDATING" : The subnet is being updated.
  /// - "DELETING" : The subnet is being deleted.
  /// - "RECONCILING" : Changes requested in the last operation are being
  /// propagated.
  /// - "FAILED" : Last operation on the subnet did not succeed. Subnet's
  /// payload is reverted back to its most recent working state.
  core.String? state;

  /// The type of the subnet.
  ///
  /// For example "management" or "userDefined".
  ///
  /// Output only.
  core.String? type;

  /// VLAN ID of the VLAN on which the subnet is configured
  ///
  /// Output only.
  core.int? vlanId;

  Subnet({
    this.gatewayIp,
    this.ipCidrRange,
    this.name,
    this.state,
    this.type,
    this.vlanId,
  });

  Subnet.fromJson(core.Map json_)
    : this(
        gatewayIp: json_['gatewayIp'] as core.String?,
        ipCidrRange: json_['ipCidrRange'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        type: json_['type'] as core.String?,
        vlanId: json_['vlanId'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gatewayIp != null) 'gatewayIp': gatewayIp!,
    if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (type != null) 'type': type!,
    if (vlanId != null) 'vlanId': vlanId!,
  };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Thresholds define the utilization of resources triggering scale-out and
/// scale-in operations.
class Thresholds {
  /// The utilization triggering the scale-in operation in percent.
  ///
  /// Required.
  core.int? scaleIn;

  /// The utilization triggering the scale-out operation in percent.
  ///
  /// Required.
  core.int? scaleOut;

  Thresholds({this.scaleIn, this.scaleOut});

  Thresholds.fromJson(core.Map json_)
    : this(
        scaleIn: json_['scaleIn'] as core.int?,
        scaleOut: json_['scaleOut'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (scaleIn != null) 'scaleIn': scaleIn!,
    if (scaleOut != null) 'scaleOut': scaleOut!,
  };
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Represents the time window to perform upgrade activities.
class TimeWindow {
  /// Day of the week for this window.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? dayOfWeek;

  /// The duration of the window.
  ///
  /// The max allowed duration for any window is 24 hours.
  ///
  /// Required.
  core.String? duration;

  /// Time in UTC when the window starts.
  ///
  /// Required.
  TimeOfDay? startTime;

  TimeWindow({this.dayOfWeek, this.duration, this.startTime});

  TimeWindow.fromJson(core.Map json_)
    : this(
        dayOfWeek: json_['dayOfWeek'] as core.String?,
        duration: json_['duration'] as core.String?,
        startTime:
            json_.containsKey('startTime')
                ? TimeOfDay.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
    if (duration != null) 'duration': duration!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// Request message for VmwareEngine.UndeletePrivateCloud
class UndeletePrivateCloudRequest {
  /// The request ID must be a valid UUID with the exception that zero UUID is
  /// not supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  UndeletePrivateCloudRequest({this.requestId});

  UndeletePrivateCloudRequest.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Describes Private cloud Upgrade.
class Upgrade {
  /// The list of component upgrades.
  ///
  /// Output only.
  core.List<VmwareUpgradeComponent>? componentUpgrades;

  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the upgrade.
  ///
  /// This is used to provide additional information about the private cloud
  /// upgrade, such as the upgrade's purpose, the changes included in the
  /// upgrade, or any other relevant information about the upgrade.
  ///
  /// Output only.
  core.String? description;

  /// End time of the upgrade.
  ///
  /// Output only.
  core.String? endTime;

  /// The estimated total duration of the upgrade.
  ///
  /// This information can be used to plan or schedule upgrades to minimize
  /// disruptions. Please note that the estimated duration is only an estimate.
  /// The actual upgrade duration may vary.
  ///
  /// Output only.
  core.String? estimatedDuration;

  /// The etag for the upgrade resource.
  ///
  /// If this is provided on update, it must match the server's etag.
  core.String? etag;

  /// Identifier.
  ///
  /// The resource name of the private cloud `Upgrade`. Resource names are
  /// schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/us-west1-a/privateClouds/my-cloud/upgrades/my-upgrade`
  ///
  /// Output only.
  core.String? name;

  /// Schedule details for the upgrade.
  Schedule? schedule;

  /// The start version
  ///
  /// Output only.
  core.String? startVersion;

  /// The current state of the upgrade.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "SCHEDULED" : The upgrade is scheduled but not started yet.
  /// - "ONGOING" : The upgrade is currently in progress and has not completed
  /// yet.
  /// - "SUCCEEDED" : The upgrade completed successfully.
  /// - "PAUSED" : The upgrade is currently paused.
  /// - "FAILED" : The upgrade failed.
  /// - "CANCELLING" : The upgrade is in process of being canceled.
  /// - "CANCELLED" : The upgrade is canceled.
  /// - "RESCHEDULING" : The upgrade is in process of being rescheduled.
  core.String? state;

  /// The target version
  ///
  /// Output only.
  core.String? targetVersion;

  /// The type of upgrade.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The default value. This value should never be used.
  /// - "VSPHERE_UPGRADE" : Upgrade of vmware components when a major version is
  /// available. 7.0u2 -\> 7.0u3.
  /// - "VSPHERE_PATCH" : Patching of vmware components when a minor version is
  /// available. 7.0u2c -\> 7.0u2d.
  /// - "WORKAROUND" : Workarounds are hotfixes for vulnerabilities or issues
  /// applied to mitigate the known vulnerability or issue until a patch or
  /// update is released. The description of the upgrade will have more details.
  /// - "FIRMWARE_UPGRADE" : Firmware upgrade for VMware product used in the
  /// private cloud.
  /// - "SWITCH_UPGRADE" : Switch upgrade.
  /// - "OTHER" : The upgrade type that doesn't fall into any other category.
  /// - "INFRASTRUCTURE_UPGRADE" : Infrastructure upgrade in BM node
  /// maintenance.
  core.String? type;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  ///
  ///
  /// Output only.
  core.String? version;

  Upgrade({
    this.componentUpgrades,
    this.createTime,
    this.description,
    this.endTime,
    this.estimatedDuration,
    this.etag,
    this.name,
    this.schedule,
    this.startVersion,
    this.state,
    this.targetVersion,
    this.type,
    this.uid,
    this.updateTime,
    this.version,
  });

  Upgrade.fromJson(core.Map json_)
    : this(
        componentUpgrades:
            (json_['componentUpgrades'] as core.List?)
                ?.map(
                  (value) => VmwareUpgradeComponent.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        estimatedDuration: json_['estimatedDuration'] as core.String?,
        etag: json_['etag'] as core.String?,
        name: json_['name'] as core.String?,
        schedule:
            json_.containsKey('schedule')
                ? Schedule.fromJson(
                  json_['schedule'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startVersion: json_['startVersion'] as core.String?,
        state: json_['state'] as core.String?,
        targetVersion: json_['targetVersion'] as core.String?,
        type: json_['type'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (componentUpgrades != null) 'componentUpgrades': componentUpgrades!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (endTime != null) 'endTime': endTime!,
    if (estimatedDuration != null) 'estimatedDuration': estimatedDuration!,
    if (etag != null) 'etag': etag!,
    if (name != null) 'name': name!,
    if (schedule != null) 'schedule': schedule!,
    if (startVersion != null) 'startVersion': startVersion!,
    if (state != null) 'state': state!,
    if (targetVersion != null) 'targetVersion': targetVersion!,
    if (type != null) 'type': type!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (version != null) 'version': version!,
  };
}

/// Details about a vCenter Server management appliance.
typedef Vcenter = $Shared13;

/// VMware Engine network resource that provides connectivity for VMware Engine
/// private clouds.
class VmwareEngineNetwork {
  /// Creation time of this resource.
  ///
  /// Output only.
  core.String? createTime;

  /// User-provided description for this VMware Engine network.
  core.String? description;

  /// Checksum that may be sent on update and delete requests to ensure that the
  /// user-provided value is up to date before the server processes a request.
  ///
  /// The server computes checksums based on the value of other fields in the
  /// request.
  core.String? etag;

  /// Identifier.
  ///
  /// The resource name of the VMware Engine network. Resource names are
  /// schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. For example:
  /// `projects/my-project/locations/global/vmwareEngineNetworks/my-network`
  ///
  /// Output only.
  core.String? name;

  /// State of the VMware Engine network.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "CREATING" : The VMware Engine network is being created.
  /// - "ACTIVE" : The VMware Engine network is ready.
  /// - "UPDATING" : The VMware Engine network is being updated.
  /// - "DELETING" : The VMware Engine network is being deleted.
  core.String? state;

  /// VMware Engine network type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The default value. This value should never be used.
  /// - "LEGACY" : Network type used by private clouds created in projects
  /// without a network of type `STANDARD`. This network type is no longer used
  /// for new VMware Engine private cloud deployments.
  /// - "STANDARD" : Standard network type used for private cloud connectivity.
  core.String? type;

  /// System-generated unique identifier for the resource.
  ///
  /// Output only.
  core.String? uid;

  /// Last update time of this resource.
  ///
  /// Output only.
  core.String? updateTime;

  /// VMware Engine service VPC networks that provide connectivity from a
  /// private cloud to customer projects, the internet, and other Google Cloud
  /// services.
  ///
  /// Output only.
  core.List<VpcNetwork>? vpcNetworks;

  VmwareEngineNetwork({
    this.createTime,
    this.description,
    this.etag,
    this.name,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
    this.vpcNetworks,
  });

  VmwareEngineNetwork.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        etag: json_['etag'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        type: json_['type'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        vpcNetworks:
            (json_['vpcNetworks'] as core.List?)
                ?.map(
                  (value) => VpcNetwork.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (etag != null) 'etag': etag!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (type != null) 'type': type!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (vpcNetworks != null) 'vpcNetworks': vpcNetworks!,
  };
}

/// Per component upgrade resource
class VmwareUpgradeComponent {
  /// Type of component
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VMWARE_COMPONENT_TYPE_UNSPECIFIED" : The default value. This value
  /// should never be used.
  /// - "VCENTER" : vcenter
  /// - "ESXI" : esxi nodes + transport nodes
  /// - "NSXT_UC" : nsxt upgrade coordinator
  /// - "NSXT_EDGE" : nsxt edges cluster
  /// - "NSXT_MGR" : nsxt managers/management plane
  /// - "HCX" : hcx
  /// - "VSAN" : VSAN cluster
  /// - "DVS" : DVS switch
  /// - "NAMESERVER_VM" : Nameserver VMs
  /// - "KMS_VM" : KMS VM used for vsan encryption
  /// - "WITNESS_VM" : witness VM in case of stretch PC
  /// - "NSXT" : nsxt
  /// - "CLUSTER" : Cluster is used in case of BM
  core.String? componentType;

  /// Component's upgrade state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value should never be
  /// used.
  /// - "RUNNING" : Component's upgrade is in progress
  /// - "PAUSED" : The component's upgrade is paused. Will be resumed when
  /// upgrade job is resumed
  /// - "SUCCEEDED" : The component's upgrade is successfully completed
  /// - "FAILED" : The component's upgrade has failed. This will move to resume
  /// if upgrade is resumed or stay as is
  /// - "NOT_STARTED" : Component's upgrade has not started yet
  /// - "NOT_APPLICABLE" : Component's upgrade is not applicable in this
  /// upgrade. It will be skipped.
  core.String? state;

  VmwareUpgradeComponent({this.componentType, this.state});

  VmwareUpgradeComponent.fromJson(core.Map json_)
    : this(
        componentType: json_['componentType'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (componentType != null) 'componentType': componentType!,
    if (state != null) 'state': state!,
  };
}

/// Represents a VMware Engine VPC network that is managed by a VMware Engine
/// network resource.
class VpcNetwork {
  /// The relative resource name of the service VPC network this VMware Engine
  /// network is attached to.
  ///
  /// For example: `projects/123123/global/networks/my-network`
  ///
  /// Output only.
  core.String? network;

  /// Type of VPC network (INTRANET, INTERNET, or GOOGLE_CLOUD)
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The default value. This value should never be used.
  /// - "INTRANET" : VPC network that will be peered with a consumer VPC network
  /// or the intranet VPC of another VMware Engine network. Access a private
  /// cloud through Compute Engine VMs on a peered VPC network or an on-premises
  /// resource connected to a peered consumer VPC network.
  /// - "INTERNET" : VPC network used for internet access to and from a private
  /// cloud.
  /// - "GOOGLE_CLOUD" : VPC network used for access to Google Cloud services
  /// like Cloud Storage.
  core.String? type;

  VpcNetwork({this.network, this.type});

  VpcNetwork.fromJson(core.Map json_)
    : this(
        network: json_['network'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (network != null) 'network': network!,
    if (type != null) 'type': type!,
  };
}

/// Represents a time interval, spanning across days of the week.
///
/// Until local timezones are supported, this interval is in UTC.
class WeeklyTimeInterval {
  /// The day on which the interval ends.
  ///
  /// Can be same as start day.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? endDay;

  /// The time on the end day at which the interval ends.
  ///
  /// Output only.
  TimeOfDay? endTime;

  /// The day on which the interval starts.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? startDay;

  /// The time on the start day at which the interval starts.
  ///
  /// Output only.
  TimeOfDay? startTime;

  WeeklyTimeInterval({
    this.endDay,
    this.endTime,
    this.startDay,
    this.startTime,
  });

  WeeklyTimeInterval.fromJson(core.Map json_)
    : this(
        endDay: json_['endDay'] as core.String?,
        endTime:
            json_.containsKey('endTime')
                ? TimeOfDay.fromJson(
                  json_['endTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startDay: json_['startDay'] as core.String?,
        startTime:
            json_.containsKey('startTime')
                ? TimeOfDay.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endDay != null) 'endDay': endDay!,
    if (endTime != null) 'endTime': endTime!,
    if (startDay != null) 'startDay': startDay!,
    if (startTime != null) 'startTime': startTime!,
  };
}
