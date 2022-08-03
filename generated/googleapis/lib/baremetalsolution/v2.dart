// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Bare Metal Solution API - v2
///
/// Provides ways to manage Bare Metal Solution hardware installed in a regional
/// extension located near a Google Cloud data center.
///
/// For more information, see <https://cloud.google.com/bare-metal>
///
/// Create an instance of [BaremetalsolutionApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsInstanceProvisioningSettingsResource]
///     - [ProjectsLocationsInstancesResource]
///     - [ProjectsLocationsNetworksResource]
///     - [ProjectsLocationsNfsSharesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsProvisioningConfigsResource]
///     - [ProjectsLocationsProvisioningQuotasResource]
///     - [ProjectsLocationsVolumesResource]
///       - [ProjectsLocationsVolumesLunsResource]
library baremetalsolution.v2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provides ways to manage Bare Metal Solution hardware installed in a regional
/// extension located near a Google Cloud data center.
class BaremetalsolutionApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  BaremetalsolutionApi(http.Client client,
      {core.String rootUrl = 'https://baremetalsolution.googleapis.com/',
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

  ProjectsLocationsInstanceProvisioningSettingsResource
      get instanceProvisioningSettings =>
          ProjectsLocationsInstanceProvisioningSettingsResource(_requester);
  ProjectsLocationsInstancesResource get instances =>
      ProjectsLocationsInstancesResource(_requester);
  ProjectsLocationsNetworksResource get networks =>
      ProjectsLocationsNetworksResource(_requester);
  ProjectsLocationsNfsSharesResource get nfsShares =>
      ProjectsLocationsNfsSharesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsProvisioningConfigsResource get provisioningConfigs =>
      ProjectsLocationsProvisioningConfigsResource(_requester);
  ProjectsLocationsProvisioningQuotasResource get provisioningQuotas =>
      ProjectsLocationsProvisioningQuotasResource(_requester);
  ProjectsLocationsVolumesResource get volumes =>
      ProjectsLocationsVolumesResource(_requester);

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstanceProvisioningSettingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstanceProvisioningSettingsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Get instance provisioning settings for a given project.
  ///
  /// This is hidden method used by UI only.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The parent project and location containing the
  /// ProvisioningSettings.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchInstanceProvisioningSettingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchInstanceProvisioningSettingsResponse> fetch(
    core.String location, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' +
        core.Uri.encodeFull('$location') +
        '/instanceProvisioningSettings:fetch';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchInstanceProvisioningSettingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project and location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Detach LUN from Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [instance] - Required. Name of the instance.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> detachLun(
    DetachLunRequest request,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$instance') + ':detachLun';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get details about a single server.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Instance.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List servers in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListInstancesRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results from the server.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInstancesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update details of a single server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The resource name of this `Instance`. Resource names
  /// are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update. The currently supported
  /// fields are: `labels` `hyperthreading_enabled` `os_image`
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
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Perform an ungraceful, hard reset on a server.
  ///
  /// Equivalent to shutting the power off and then turning it back on.
  ///
  /// [request] - The metadata request object.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> reset(
    ResetInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':reset';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts a server that was shutdown.
  ///
  /// [request] - The metadata request object.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> start(
    StartInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stop a running server.
  ///
  /// [request] - The metadata request object.
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> stop(
    StopInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsNetworksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNetworksResource(commons.ApiRequester client)
      : _requester = client;

  /// Get details of a single network.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Network].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Network> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Network.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List network in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListNetworksRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [pageSize] - Requested page size. The server might return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results from the server.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNetworksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNetworksResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/networks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNetworksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all Networks (and used IPs for each Network) in the vendor account
  /// associated with the specified project.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. Parent value (project and location).
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNetworkUsageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNetworkUsageResponse> listNetworkUsage(
    core.String location, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$location') + '/networks:listNetworkUsage';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNetworkUsageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update details of a single network.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of this `Network`. Resource names
  /// are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. Format:
  /// `projects/{project}/locations/{location}/networks/{network}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/networks/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update. The only currently supported
  /// fields are: `labels`, `reservations`
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
    Network request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsNfsSharesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNfsSharesResource(commons.ApiRequester client)
      : _requester = client;

  /// Get details of a single NFS share.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/nfsShares/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [NfsShare].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<NfsShare> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return NfsShare.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List NFS shares.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListNfsSharesRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [pageSize] - Requested page size. The server might return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results from the server.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListNfsSharesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNfsSharesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/nfsShares';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNfsSharesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update details of a single NFS share.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of the NFS share.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/nfsShares/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update. The only currently supported
  /// fields are: `labels`
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
    NfsShare request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

  /// Get details about an operation.
  ///
  /// This method used only to work around CCFE lack of passthrough LRO support
  /// (b/221498758).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/.*$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProvisioningConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProvisioningConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create new ProvisioningConfig.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project and location containing the
  /// ProvisioningConfig.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [email] - Optional. Email provided to send a confirmation with
  /// provisioning config to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProvisioningConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProvisioningConfig> create(
    ProvisioningConfig request,
    core.String parent, {
    core.String? email,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (email != null) 'email': [email],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/provisioningConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ProvisioningConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get ProvisioningConfig by name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the ProvisioningConfig.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/provisioningConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProvisioningConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProvisioningConfig> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ProvisioningConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update existing ProvisioningConfig.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of the provisioning config.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/provisioningConfigs/\[^/\]+$`.
  ///
  /// [email] - Optional. Email provided to send a confirmation with
  /// provisioning config to.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProvisioningConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProvisioningConfig> patch(
    ProvisioningConfig request,
    core.String name, {
    core.String? email,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (email != null) 'email': [email],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ProvisioningConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Submit a provisiong configuration for a given project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project and location containing the
  /// ProvisioningConfig.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubmitProvisioningConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubmitProvisioningConfigResponse> submit(
    SubmitProvisioningConfigRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/provisioningConfigs:submit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SubmitProvisioningConfigResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProvisioningQuotasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProvisioningQuotasResource(commons.ApiRequester client)
      : _requester = client;

  /// List the budget details to provision resources on a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListProvisioningQuotasRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server might return fewer items than
  /// requested. If unspecified, server will pick an appropriate default. Notice
  /// that page_size field is not supported and won't be respected in the API
  /// request for now, will be updated when pagination is supported.
  ///
  /// [pageToken] - A token identifying a page of results from the server.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProvisioningQuotasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProvisioningQuotasResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/provisioningQuotas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProvisioningQuotasResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVolumesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVolumesLunsResource get luns =>
      ProjectsLocationsVolumesLunsResource(_requester);

  ProjectsLocationsVolumesResource(commons.ApiRequester client)
      : _requester = client;

  /// Get details of a single storage volume.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Volume].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Volume> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Volume.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List storage volumes in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListVolumesRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [pageSize] - Requested page size. The server might return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results from the server.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVolumesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVolumesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/volumes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVolumesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update details of a single storage volume.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of this `Volume`. Resource names
  /// are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. Format:
  /// `projects/{project}/locations/{location}/volumes/{volume}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update. The only currently supported
  /// fields are: `snapshot_auto_delete_behavior`
  /// `snapshot_schedule_policy_name` 'labels' 'snapshot_enabled'
  /// 'snapshot_reservation_detail.reserved_space_percent'
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
    Volume request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Emergency Volume resize.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [volume] - Required. Volume to resize.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
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
  async.Future<Operation> resize(
    ResizeVolumeRequest request,
    core.String volume, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$volume') + ':resize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVolumesLunsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVolumesLunsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get details of a single storage logical unit number(LUN).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/luns/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Lun].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Lun> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Lun.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List storage volume luns for given storage volume.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListLunsRequest.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server might return fewer items than
  /// requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results from the server.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLunsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLunsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/luns';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLunsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Represents an 'access point' for the share.
class AllowedClient {
  /// Allow dev flag.
  ///
  /// Which controls whether to allow creation of devices.
  core.bool? allowDev;

  /// Allow the setuid flag.
  core.bool? allowSuid;

  /// The subnet of IP addresses permitted to access the share.
  core.String? allowedClientsCidr;

  /// Mount permissions.
  /// Possible string values are:
  /// - "MOUNT_PERMISSIONS_UNSPECIFIED" : Permissions were not specified.
  /// - "READ" : NFS share can be mount with read-only permissions.
  /// - "READ_WRITE" : NFS share can be mount with read-write permissions.
  core.String? mountPermissions;

  /// The network the access point sits on.
  core.String? network;

  /// The path to access NFS, in format shareIP:/InstanceID InstanceID is the
  /// generated ID instead of customer provided name.
  ///
  /// example like "10.0.0.0:/g123456789-nfs001"
  ///
  /// Output only.
  core.String? nfsPath;

  /// Disable root squashing, which is a feature of NFS.
  ///
  /// Root squash is a special mapping of the remote superuser (root) identity
  /// when using identity authentication.
  core.bool? noRootSquash;

  /// The IP address of the share on this network.
  core.String? shareIp;

  AllowedClient({
    this.allowDev,
    this.allowSuid,
    this.allowedClientsCidr,
    this.mountPermissions,
    this.network,
    this.nfsPath,
    this.noRootSquash,
    this.shareIp,
  });

  AllowedClient.fromJson(core.Map json_)
      : this(
          allowDev: json_.containsKey('allowDev')
              ? json_['allowDev'] as core.bool
              : null,
          allowSuid: json_.containsKey('allowSuid')
              ? json_['allowSuid'] as core.bool
              : null,
          allowedClientsCidr: json_.containsKey('allowedClientsCidr')
              ? json_['allowedClientsCidr'] as core.String
              : null,
          mountPermissions: json_.containsKey('mountPermissions')
              ? json_['mountPermissions'] as core.String
              : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          nfsPath: json_.containsKey('nfsPath')
              ? json_['nfsPath'] as core.String
              : null,
          noRootSquash: json_.containsKey('noRootSquash')
              ? json_['noRootSquash'] as core.bool
              : null,
          shareIp: json_.containsKey('shareIp')
              ? json_['shareIp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowDev != null) 'allowDev': allowDev!,
        if (allowSuid != null) 'allowSuid': allowSuid!,
        if (allowedClientsCidr != null)
          'allowedClientsCidr': allowedClientsCidr!,
        if (mountPermissions != null) 'mountPermissions': mountPermissions!,
        if (network != null) 'network': network!,
        if (nfsPath != null) 'nfsPath': nfsPath!,
        if (noRootSquash != null) 'noRootSquash': noRootSquash!,
        if (shareIp != null) 'shareIp': shareIp!,
      };
}

/// Message for detach specific LUN from an Instance.
class DetachLunRequest {
  /// Name of the Lun to detach.
  ///
  /// Required.
  core.String? lun;

  /// If true, performs lun unmapping without instance reboot.
  core.bool? skipReboot;

  DetachLunRequest({
    this.lun,
    this.skipReboot,
  });

  DetachLunRequest.fromJson(core.Map json_)
      : this(
          lun: json_.containsKey('lun') ? json_['lun'] as core.String : null,
          skipReboot: json_.containsKey('skipReboot')
              ? json_['skipReboot'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lun != null) 'lun': lun!,
        if (skipReboot != null) 'skipReboot': skipReboot!,
      };
}

/// Response with all provisioning settings.
class FetchInstanceProvisioningSettingsResponse {
  /// The OS images available.
  core.List<OSImage>? images;

  FetchInstanceProvisioningSettingsResponse({
    this.images,
  });

  FetchInstanceProvisioningSettingsResponse.fromJson(core.Map json_)
      : this(
          images: json_.containsKey('images')
              ? (json_['images'] as core.List)
                  .map((value) => OSImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (images != null) 'images': images!,
      };
}

/// Each logical interface represents a logical abstraction of the underlying
/// physical interface (for eg.
///
/// bond, nic) of the instance. Each logical interface can effectively map to
/// multiple network-IP pairs and still be mapped to one underlying physical
/// interface.
class GoogleCloudBaremetalsolutionV2LogicalInterface {
  /// The index of the logical interface mapping to the index of the hardware
  /// bond or nic on the chosen network template.
  ///
  /// This field is deprecated.
  core.int? interfaceIndex;

  /// List of logical network interfaces within a logical interface.
  core.List<LogicalNetworkInterface>? logicalNetworkInterfaces;

  /// Interface name.
  ///
  /// This is of syntax or and forms part of the network template name.
  core.String? name;

  GoogleCloudBaremetalsolutionV2LogicalInterface({
    this.interfaceIndex,
    this.logicalNetworkInterfaces,
    this.name,
  });

  GoogleCloudBaremetalsolutionV2LogicalInterface.fromJson(core.Map json_)
      : this(
          interfaceIndex: json_.containsKey('interfaceIndex')
              ? json_['interfaceIndex'] as core.int
              : null,
          logicalNetworkInterfaces:
              json_.containsKey('logicalNetworkInterfaces')
                  ? (json_['logicalNetworkInterfaces'] as core.List)
                      .map((value) => LogicalNetworkInterface.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (interfaceIndex != null) 'interfaceIndex': interfaceIndex!,
        if (logicalNetworkInterfaces != null)
          'logicalNetworkInterfaces': logicalNetworkInterfaces!,
        if (name != null) 'name': name!,
      };
}

/// Logical interface.
class GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface {
  /// Interface name.
  ///
  /// This is not a globally unique identifier. Name is unique only inside the
  /// ServerNetworkTemplate. This is of syntax or and forms part of the network
  /// template name.
  core.String? name;

  /// If true, interface must have network connected.
  core.bool? required;

  /// Interface type.
  /// Possible string values are:
  /// - "INTERFACE_TYPE_UNSPECIFIED" : Unspecified value.
  /// - "BOND" : Bond interface type.
  /// - "NIC" : NIC interface type.
  core.String? type;

  GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface({
    this.name,
    this.required,
    this.type,
  });

  GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface.fromJson(
      core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          required: json_.containsKey('required')
              ? json_['required'] as core.bool
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (required != null) 'required': required!,
        if (type != null) 'type': type!,
      };
}

/// A server.
class Instance {
  /// Create a time stamp.
  ///
  /// Output only.
  core.String? createTime;

  /// True if you enable hyperthreading for the server, otherwise false.
  ///
  /// The default value is false.
  core.bool? hyperthreadingEnabled;

  /// An identifier for the `Instance`, generated by the backend.
  ///
  /// Output only.
  core.String? id;

  /// True if the interactive serial console feature is enabled for the
  /// instance, false otherwise.
  ///
  /// The default value is false.
  ///
  /// Output only.
  core.bool? interactiveSerialConsoleEnabled;

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// List of logical interfaces for the instance.
  ///
  /// The number of logical interfaces will be the same as number of hardware
  /// bond/nic on the chosen network template. For the non-multivlan
  /// configurations (for eg, existing servers) that use existing default
  /// network template (bondaa-bondaa), both the Instance.networks field and the
  /// Instance.logical_interfaces fields will be filled to ensure backward
  /// compatibility. For the others, only Instance.logical_interfaces will be
  /// filled.
  core.List<GoogleCloudBaremetalsolutionV2LogicalInterface>? logicalInterfaces;

  /// Text field about info for logging in.
  ///
  /// Output only.
  core.String? loginInfo;

  /// List of LUNs associated with this server.
  ///
  /// Immutable.
  core.List<Lun>? luns;

  /// The server type.
  ///
  /// [Available server types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  ///
  /// Immutable.
  core.String? machineType;

  /// The resource name of this `Instance`.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}`
  ///
  /// Immutable.
  core.String? name;

  /// Instance network template name.
  ///
  /// For eg, bondaa-bondaa, bondab-nic, etc. Generally, the template name
  /// follows the syntax of "bond" or "nic".
  core.String? networkTemplate;

  /// List of networks associated with this server.
  ///
  /// Output only.
  core.List<Network>? networks;

  /// The OS image currently installed on the server.
  core.String? osImage;

  /// Pod name.
  ///
  /// Pod is an independent part of infrastructure. Instance can be connected to
  /// the assets (networks, volumes) allocated in the same pod only.
  ///
  /// Immutable.
  core.String? pod;

  /// The state of the server.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The server is in an unknown state.
  /// - "PROVISIONING" : The server is being provisioned.
  /// - "RUNNING" : The server is running.
  /// - "DELETED" : The server has been deleted.
  core.String? state;

  /// Update a time stamp.
  ///
  /// Output only.
  core.String? updateTime;

  /// Input only.
  ///
  /// List of Volumes to attach to this Instance on creation. This field won't
  /// be populated in Get/List responses.
  core.List<Volume>? volumes;

  Instance({
    this.createTime,
    this.hyperthreadingEnabled,
    this.id,
    this.interactiveSerialConsoleEnabled,
    this.labels,
    this.logicalInterfaces,
    this.loginInfo,
    this.luns,
    this.machineType,
    this.name,
    this.networkTemplate,
    this.networks,
    this.osImage,
    this.pod,
    this.state,
    this.updateTime,
    this.volumes,
  });

  Instance.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          hyperthreadingEnabled: json_.containsKey('hyperthreadingEnabled')
              ? json_['hyperthreadingEnabled'] as core.bool
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          interactiveSerialConsoleEnabled:
              json_.containsKey('interactiveSerialConsoleEnabled')
                  ? json_['interactiveSerialConsoleEnabled'] as core.bool
                  : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          logicalInterfaces: json_.containsKey('logicalInterfaces')
              ? (json_['logicalInterfaces'] as core.List)
                  .map((value) =>
                      GoogleCloudBaremetalsolutionV2LogicalInterface.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          loginInfo: json_.containsKey('loginInfo')
              ? json_['loginInfo'] as core.String
              : null,
          luns: json_.containsKey('luns')
              ? (json_['luns'] as core.List)
                  .map((value) => Lun.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkTemplate: json_.containsKey('networkTemplate')
              ? json_['networkTemplate'] as core.String
              : null,
          networks: json_.containsKey('networks')
              ? (json_['networks'] as core.List)
                  .map((value) => Network.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          osImage: json_.containsKey('osImage')
              ? json_['osImage'] as core.String
              : null,
          pod: json_.containsKey('pod') ? json_['pod'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (hyperthreadingEnabled != null)
          'hyperthreadingEnabled': hyperthreadingEnabled!,
        if (id != null) 'id': id!,
        if (interactiveSerialConsoleEnabled != null)
          'interactiveSerialConsoleEnabled': interactiveSerialConsoleEnabled!,
        if (labels != null) 'labels': labels!,
        if (logicalInterfaces != null) 'logicalInterfaces': logicalInterfaces!,
        if (loginInfo != null) 'loginInfo': loginInfo!,
        if (luns != null) 'luns': luns!,
        if (machineType != null) 'machineType': machineType!,
        if (name != null) 'name': name!,
        if (networkTemplate != null) 'networkTemplate': networkTemplate!,
        if (networks != null) 'networks': networks!,
        if (osImage != null) 'osImage': osImage!,
        if (pod != null) 'pod': pod!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (volumes != null) 'volumes': volumes!,
      };
}

/// Configuration parameters for a new instance.
class InstanceConfig {
  /// If true networks can be from different projects of the same vendor
  /// account.
  core.bool? accountNetworksEnabled;

  /// Client network address.
  ///
  /// Filled if InstanceConfig.multivlan_config is false.
  NetworkAddress? clientNetwork;

  /// Whether the instance should be provisioned with Hyperthreading enabled.
  core.bool? hyperthreading;

  /// A transient unique identifier to idenfity an instance within an
  /// ProvisioningConfig request.
  core.String? id;

  /// Instance type.
  ///
  /// [Available types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  core.String? instanceType;

  /// List of logical interfaces for the instance.
  ///
  /// The number of logical interfaces will be the same as number of hardware
  /// bond/nic on the chosen network template. Filled if
  /// InstanceConfig.multivlan_config is true.
  core.List<GoogleCloudBaremetalsolutionV2LogicalInterface>? logicalInterfaces;

  /// The name of the instance config.
  ///
  /// Output only.
  core.String? name;

  /// The type of network configuration on the instance.
  /// Possible string values are:
  /// - "NETWORKCONFIG_UNSPECIFIED" : The unspecified network configuration.
  /// - "SINGLE_VLAN" : Instance part of single client network and single
  /// private network.
  /// - "MULTI_VLAN" : Instance part of multiple (or single) client networks and
  /// private networks.
  core.String? networkConfig;

  /// Server network template name.
  ///
  /// Filled if InstanceConfig.multivlan_config is true.
  core.String? networkTemplate;

  /// OS image to initialize the instance.
  ///
  /// [Available images](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  core.String? osImage;

  /// Private network address, if any.
  ///
  /// Filled if InstanceConfig.multivlan_config is false.
  NetworkAddress? privateNetwork;

  /// User note field, it can be used by customers to add additional information
  /// for the BMS Ops team .
  core.String? userNote;

  InstanceConfig({
    this.accountNetworksEnabled,
    this.clientNetwork,
    this.hyperthreading,
    this.id,
    this.instanceType,
    this.logicalInterfaces,
    this.name,
    this.networkConfig,
    this.networkTemplate,
    this.osImage,
    this.privateNetwork,
    this.userNote,
  });

  InstanceConfig.fromJson(core.Map json_)
      : this(
          accountNetworksEnabled: json_.containsKey('accountNetworksEnabled')
              ? json_['accountNetworksEnabled'] as core.bool
              : null,
          clientNetwork: json_.containsKey('clientNetwork')
              ? NetworkAddress.fromJson(
                  json_['clientNetwork'] as core.Map<core.String, core.dynamic>)
              : null,
          hyperthreading: json_.containsKey('hyperthreading')
              ? json_['hyperthreading'] as core.bool
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          instanceType: json_.containsKey('instanceType')
              ? json_['instanceType'] as core.String
              : null,
          logicalInterfaces: json_.containsKey('logicalInterfaces')
              ? (json_['logicalInterfaces'] as core.List)
                  .map((value) =>
                      GoogleCloudBaremetalsolutionV2LogicalInterface.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkConfig: json_.containsKey('networkConfig')
              ? json_['networkConfig'] as core.String
              : null,
          networkTemplate: json_.containsKey('networkTemplate')
              ? json_['networkTemplate'] as core.String
              : null,
          osImage: json_.containsKey('osImage')
              ? json_['osImage'] as core.String
              : null,
          privateNetwork: json_.containsKey('privateNetwork')
              ? NetworkAddress.fromJson(json_['privateNetwork']
                  as core.Map<core.String, core.dynamic>)
              : null,
          userNote: json_.containsKey('userNote')
              ? json_['userNote'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountNetworksEnabled != null)
          'accountNetworksEnabled': accountNetworksEnabled!,
        if (clientNetwork != null) 'clientNetwork': clientNetwork!,
        if (hyperthreading != null) 'hyperthreading': hyperthreading!,
        if (id != null) 'id': id!,
        if (instanceType != null) 'instanceType': instanceType!,
        if (logicalInterfaces != null) 'logicalInterfaces': logicalInterfaces!,
        if (name != null) 'name': name!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (networkTemplate != null) 'networkTemplate': networkTemplate!,
        if (osImage != null) 'osImage': osImage!,
        if (privateNetwork != null) 'privateNetwork': privateNetwork!,
        if (userNote != null) 'userNote': userNote!,
      };
}

/// A resource budget.
class InstanceQuota {
  /// Number of machines than can be created for the given location and
  /// instance_type.
  core.int? availableMachineCount;

  /// The gcp service of the provisioning quota.
  core.String? gcpService;

  /// Instance type.
  ///
  /// Deprecated: use gcp_service.
  core.String? instanceType;

  /// Location where the quota applies.
  core.String? location;

  /// The name of the instance quota.
  ///
  /// Output only.
  core.String? name;

  InstanceQuota({
    this.availableMachineCount,
    this.gcpService,
    this.instanceType,
    this.location,
    this.name,
  });

  InstanceQuota.fromJson(core.Map json_)
      : this(
          availableMachineCount: json_.containsKey('availableMachineCount')
              ? json_['availableMachineCount'] as core.int
              : null,
          gcpService: json_.containsKey('gcpService')
              ? json_['gcpService'] as core.String
              : null,
          instanceType: json_.containsKey('instanceType')
              ? json_['instanceType'] as core.String
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableMachineCount != null)
          'availableMachineCount': availableMachineCount!,
        if (gcpService != null) 'gcpService': gcpService!,
        if (instanceType != null) 'instanceType': instanceType!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
      };
}

/// A GCP vlan attachment.
class IntakeVlanAttachment {
  /// Identifier of the VLAN attachment.
  core.String? id;

  /// Attachment pairing key.
  core.String? pairingKey;

  IntakeVlanAttachment({
    this.id,
    this.pairingKey,
  });

  IntakeVlanAttachment.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          pairingKey: json_.containsKey('pairingKey')
              ? json_['pairingKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (pairingKey != null) 'pairingKey': pairingKey!,
      };
}

/// Response message for the list of servers.
class ListInstancesResponse {
  /// The list of servers.
  core.List<Instance>? instances;

  /// A token identifying a page of results from the server.
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
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => Instance.fromJson(
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
        if (instances != null) 'instances': instances!,
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

/// Response message containing the list of storage volume luns.
class ListLunsResponse {
  /// The list of luns.
  core.List<Lun>? luns;

  /// A token identifying a page of results from the server.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListLunsResponse({
    this.luns,
    this.nextPageToken,
    this.unreachable,
  });

  ListLunsResponse.fromJson(core.Map json_)
      : this(
          luns: json_.containsKey('luns')
              ? (json_['luns'] as core.List)
                  .map((value) => Lun.fromJson(
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
        if (luns != null) 'luns': luns!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response with Networks with IPs
class ListNetworkUsageResponse {
  /// Networks with IPs.
  core.List<NetworkUsage>? networks;

  ListNetworkUsageResponse({
    this.networks,
  });

  ListNetworkUsageResponse.fromJson(core.Map json_)
      : this(
          networks: json_.containsKey('networks')
              ? (json_['networks'] as core.List)
                  .map((value) => NetworkUsage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (networks != null) 'networks': networks!,
      };
}

/// Response message containing the list of networks.
class ListNetworksResponse {
  /// The list of networks.
  core.List<Network>? networks;

  /// A token identifying a page of results from the server.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListNetworksResponse({
    this.networks,
    this.nextPageToken,
    this.unreachable,
  });

  ListNetworksResponse.fromJson(core.Map json_)
      : this(
          networks: json_.containsKey('networks')
              ? (json_['networks'] as core.List)
                  .map((value) => Network.fromJson(
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
        if (networks != null) 'networks': networks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message containing the list of NFS shares.
class ListNfsSharesResponse {
  /// A token identifying a page of results from the server.
  core.String? nextPageToken;

  /// The list of NFS shares.
  core.List<NfsShare>? nfsShares;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListNfsSharesResponse({
    this.nextPageToken,
    this.nfsShares,
    this.unreachable,
  });

  ListNfsSharesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          nfsShares: json_.containsKey('nfsShares')
              ? (json_['nfsShares'] as core.List)
                  .map((value) => NfsShare.fromJson(
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
        if (nfsShares != null) 'nfsShares': nfsShares!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for the list of provisioning quotas.
class ListProvisioningQuotasResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The provisioning quotas registered in this project.
  core.List<ProvisioningQuota>? provisioningQuotas;

  ListProvisioningQuotasResponse({
    this.nextPageToken,
    this.provisioningQuotas,
  });

  ListProvisioningQuotasResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          provisioningQuotas: json_.containsKey('provisioningQuotas')
              ? (json_['provisioningQuotas'] as core.List)
                  .map((value) => ProvisioningQuota.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (provisioningQuotas != null)
          'provisioningQuotas': provisioningQuotas!,
      };
}

/// Response message containing the list of storage volumes.
class ListVolumesResponse {
  /// A token identifying a page of results from the server.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// The list of storage volumes.
  core.List<Volume>? volumes;

  ListVolumesResponse({
    this.nextPageToken,
    this.unreachable,
    this.volumes,
  });

  ListVolumesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (volumes != null) 'volumes': volumes!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

/// Each logical network interface is effectively a network and IP pair.
class LogicalNetworkInterface {
  /// Whether this interface is the default gateway for the instance.
  ///
  /// Only one interface can be the default gateway for the instance.
  core.bool? defaultGateway;

  /// An identifier for the `Network`, generated by the backend.
  core.String? id;

  /// IP address in the network
  core.String? ipAddress;

  /// Name of the network
  core.String? network;

  /// Type of network.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified value.
  /// - "CLIENT" : Client network, a network peered to a Google Cloud VPC.
  /// - "PRIVATE" : Private network, a network local to the Bare Metal Solution
  /// environment.
  core.String? networkType;

  LogicalNetworkInterface({
    this.defaultGateway,
    this.id,
    this.ipAddress,
    this.network,
    this.networkType,
  });

  LogicalNetworkInterface.fromJson(core.Map json_)
      : this(
          defaultGateway: json_.containsKey('defaultGateway')
              ? json_['defaultGateway'] as core.bool
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          ipAddress: json_.containsKey('ipAddress')
              ? json_['ipAddress'] as core.String
              : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          networkType: json_.containsKey('networkType')
              ? json_['networkType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultGateway != null) 'defaultGateway': defaultGateway!,
        if (id != null) 'id': id!,
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (network != null) 'network': network!,
        if (networkType != null) 'networkType': networkType!,
      };
}

/// A storage volume logical unit number (LUN).
class Lun {
  /// Display if this LUN is a boot LUN.
  core.bool? bootLun;

  /// An identifier for the LUN, generated by the backend.
  core.String? id;

  /// The LUN multiprotocol type ensures the characteristics of the LUN are
  /// optimized for each operating system.
  /// Possible string values are:
  /// - "MULTIPROTOCOL_TYPE_UNSPECIFIED" : Server has no OS specified.
  /// - "LINUX" : Server with Linux OS.
  core.String? multiprotocolType;

  /// The name of the LUN.
  ///
  /// Output only.
  core.String? name;

  /// Display if this LUN can be shared between multiple physical servers.
  core.bool? shareable;

  /// The size of this LUN, in gigabytes.
  core.String? sizeGb;

  /// The state of this storage volume.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The LUN is in an unknown state.
  /// - "CREATING" : The LUN is being created.
  /// - "UPDATING" : The LUN is being updated.
  /// - "READY" : The LUN is ready for use.
  /// - "DELETING" : The LUN has been requested to be deleted.
  core.String? state;

  /// The storage type for this LUN.
  /// Possible string values are:
  /// - "STORAGE_TYPE_UNSPECIFIED" : The storage type for this LUN is unknown.
  /// - "SSD" : This storage type for this LUN is SSD.
  /// - "HDD" : This storage type for this LUN is HDD.
  core.String? storageType;

  /// Display the storage volume for this LUN.
  core.String? storageVolume;

  /// The WWID for this LUN.
  core.String? wwid;

  Lun({
    this.bootLun,
    this.id,
    this.multiprotocolType,
    this.name,
    this.shareable,
    this.sizeGb,
    this.state,
    this.storageType,
    this.storageVolume,
    this.wwid,
  });

  Lun.fromJson(core.Map json_)
      : this(
          bootLun: json_.containsKey('bootLun')
              ? json_['bootLun'] as core.bool
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          multiprotocolType: json_.containsKey('multiprotocolType')
              ? json_['multiprotocolType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          shareable: json_.containsKey('shareable')
              ? json_['shareable'] as core.bool
              : null,
          sizeGb: json_.containsKey('sizeGb')
              ? json_['sizeGb'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          storageType: json_.containsKey('storageType')
              ? json_['storageType'] as core.String
              : null,
          storageVolume: json_.containsKey('storageVolume')
              ? json_['storageVolume'] as core.String
              : null,
          wwid: json_.containsKey('wwid') ? json_['wwid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bootLun != null) 'bootLun': bootLun!,
        if (id != null) 'id': id!,
        if (multiprotocolType != null) 'multiprotocolType': multiprotocolType!,
        if (name != null) 'name': name!,
        if (shareable != null) 'shareable': shareable!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
        if (state != null) 'state': state!,
        if (storageType != null) 'storageType': storageType!,
        if (storageVolume != null) 'storageVolume': storageVolume!,
        if (wwid != null) 'wwid': wwid!,
      };
}

/// A LUN(Logical Unit Number) range.
class LunRange {
  /// Number of LUNs to create.
  core.int? quantity;

  /// The requested size of each LUN, in GB.
  core.int? sizeGb;

  LunRange({
    this.quantity,
    this.sizeGb,
  });

  LunRange.fromJson(core.Map json_)
      : this(
          quantity: json_.containsKey('quantity')
              ? json_['quantity'] as core.int
              : null,
          sizeGb:
              json_.containsKey('sizeGb') ? json_['sizeGb'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (quantity != null) 'quantity': quantity!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
      };
}

/// A Network.
class Network {
  /// The cidr of the Network.
  core.String? cidr;

  /// An identifier for the `Network`, generated by the backend.
  core.String? id;

  /// IP address configured.
  core.String? ipAddress;

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// List of physical interfaces.
  core.List<core.String>? macAddress;

  /// The resource name of this `Network`.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. Format:
  /// `projects/{project}/locations/{location}/networks/{network}`
  ///
  /// Output only.
  core.String? name;

  /// List of IP address reservations in this network.
  ///
  /// When updating this field, an error will be generated if a reservation
  /// conflicts with an IP address already allocated to a physical server.
  core.List<NetworkAddressReservation>? reservations;

  /// IP range for reserved for services (e.g. NFS).
  core.String? servicesCidr;

  /// The Network state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The Network is in an unknown state.
  /// - "PROVISIONING" : The Network is provisioning.
  /// - "PROVISIONED" : The Network has been provisioned.
  /// - "DEPROVISIONING" : The Network is being deprovisioned.
  core.String? state;

  /// The type of this network.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified value.
  /// - "CLIENT" : Client network, a network peered to a Google Cloud VPC.
  /// - "PRIVATE" : Private network, a network local to the Bare Metal Solution
  /// environment.
  core.String? type;

  /// The vlan id of the Network.
  core.String? vlanId;

  /// The vrf for the Network.
  VRF? vrf;

  Network({
    this.cidr,
    this.id,
    this.ipAddress,
    this.labels,
    this.macAddress,
    this.name,
    this.reservations,
    this.servicesCidr,
    this.state,
    this.type,
    this.vlanId,
    this.vrf,
  });

  Network.fromJson(core.Map json_)
      : this(
          cidr: json_.containsKey('cidr') ? json_['cidr'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          ipAddress: json_.containsKey('ipAddress')
              ? json_['ipAddress'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          macAddress: json_.containsKey('macAddress')
              ? (json_['macAddress'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reservations: json_.containsKey('reservations')
              ? (json_['reservations'] as core.List)
                  .map((value) => NetworkAddressReservation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          servicesCidr: json_.containsKey('servicesCidr')
              ? json_['servicesCidr'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          vlanId: json_.containsKey('vlanId')
              ? json_['vlanId'] as core.String
              : null,
          vrf: json_.containsKey('vrf')
              ? VRF
                  .fromJson(json_['vrf'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cidr != null) 'cidr': cidr!,
        if (id != null) 'id': id!,
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (labels != null) 'labels': labels!,
        if (macAddress != null) 'macAddress': macAddress!,
        if (name != null) 'name': name!,
        if (reservations != null) 'reservations': reservations!,
        if (servicesCidr != null) 'servicesCidr': servicesCidr!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (vlanId != null) 'vlanId': vlanId!,
        if (vrf != null) 'vrf': vrf!,
      };
}

/// A network.
class NetworkAddress {
  /// IPv4 address to be assigned to the server.
  core.String? address;

  /// Name of the existing network to use.
  core.String? existingNetworkId;

  /// Id of the network to use, within the same ProvisioningConfig request.
  core.String? networkId;

  NetworkAddress({
    this.address,
    this.existingNetworkId,
    this.networkId,
  });

  NetworkAddress.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? json_['address'] as core.String
              : null,
          existingNetworkId: json_.containsKey('existingNetworkId')
              ? json_['existingNetworkId'] as core.String
              : null,
          networkId: json_.containsKey('networkId')
              ? json_['networkId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (existingNetworkId != null) 'existingNetworkId': existingNetworkId!,
        if (networkId != null) 'networkId': networkId!,
      };
}

/// A reservation of one or more addresses in a network.
class NetworkAddressReservation {
  /// The last address of this reservation block, inclusive.
  ///
  /// I.e., for cases when reservations are only single addresses, end_address
  /// and start_address will be the same. Must be specified as a single IPv4
  /// address, e.g. 10.1.2.2.
  core.String? endAddress;

  /// A note about this reservation, intended for human consumption.
  core.String? note;

  /// The first address of this reservation block.
  ///
  /// Must be specified as a single IPv4 address, e.g. 10.1.2.2.
  core.String? startAddress;

  NetworkAddressReservation({
    this.endAddress,
    this.note,
    this.startAddress,
  });

  NetworkAddressReservation.fromJson(core.Map json_)
      : this(
          endAddress: json_.containsKey('endAddress')
              ? json_['endAddress'] as core.String
              : null,
          note: json_.containsKey('note') ? json_['note'] as core.String : null,
          startAddress: json_.containsKey('startAddress')
              ? json_['startAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endAddress != null) 'endAddress': endAddress!,
        if (note != null) 'note': note!,
        if (startAddress != null) 'startAddress': startAddress!,
      };
}

/// Configuration parameters for a new network.
class NetworkConfig {
  /// Interconnect bandwidth.
  ///
  /// Set only when type is CLIENT.
  /// Possible string values are:
  /// - "BANDWIDTH_UNSPECIFIED" : Unspecified value.
  /// - "BW_1_GBPS" : 1 Gbps.
  /// - "BW_2_GBPS" : 2 Gbps.
  /// - "BW_5_GBPS" : 5 Gbps.
  /// - "BW_10_GBPS" : 10 Gbps.
  core.String? bandwidth;

  /// CIDR range of the network.
  core.String? cidr;

  /// The GCP service of the network.
  ///
  /// Available gcp_service are in
  /// https://cloud.google.com/bare-metal/docs/bms-planning.
  core.String? gcpService;

  /// A transient unique identifier to identify a volume within an
  /// ProvisioningConfig request.
  core.String? id;

  /// The JumboFramesEnabled option for customer to set.
  core.bool? jumboFramesEnabled;

  /// The name of the network config.
  ///
  /// Output only.
  core.String? name;

  /// Service CIDR, if any.
  /// Possible string values are:
  /// - "SERVICE_CIDR_UNSPECIFIED" : Unspecified value.
  /// - "DISABLED" : Services are disabled for the given network.
  /// - "HIGH_26" : Use the highest /26 block of the network to host services.
  /// - "HIGH_27" : Use the highest /27 block of the network to host services.
  /// - "HIGH_28" : Use the highest /28 block of the network to host services.
  core.String? serviceCidr;

  /// The type of this network, either Client or Private.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified value.
  /// - "CLIENT" : Client network, that is a network peered to a GCP VPC.
  /// - "PRIVATE" : Private network, that is a network local to the BMS POD.
  core.String? type;

  /// User note field, it can be used by customers to add additional information
  /// for the BMS Ops team .
  core.String? userNote;

  /// List of VLAN attachments.
  ///
  /// As of now there are always 2 attachments, but it is going to change in the
  /// future (multi vlan).
  core.List<IntakeVlanAttachment>? vlanAttachments;

  /// Whether the VLAN attachment pair is located in the same project.
  core.bool? vlanSameProject;

  NetworkConfig({
    this.bandwidth,
    this.cidr,
    this.gcpService,
    this.id,
    this.jumboFramesEnabled,
    this.name,
    this.serviceCidr,
    this.type,
    this.userNote,
    this.vlanAttachments,
    this.vlanSameProject,
  });

  NetworkConfig.fromJson(core.Map json_)
      : this(
          bandwidth: json_.containsKey('bandwidth')
              ? json_['bandwidth'] as core.String
              : null,
          cidr: json_.containsKey('cidr') ? json_['cidr'] as core.String : null,
          gcpService: json_.containsKey('gcpService')
              ? json_['gcpService'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          jumboFramesEnabled: json_.containsKey('jumboFramesEnabled')
              ? json_['jumboFramesEnabled'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          serviceCidr: json_.containsKey('serviceCidr')
              ? json_['serviceCidr'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          userNote: json_.containsKey('userNote')
              ? json_['userNote'] as core.String
              : null,
          vlanAttachments: json_.containsKey('vlanAttachments')
              ? (json_['vlanAttachments'] as core.List)
                  .map((value) => IntakeVlanAttachment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vlanSameProject: json_.containsKey('vlanSameProject')
              ? json_['vlanSameProject'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bandwidth != null) 'bandwidth': bandwidth!,
        if (cidr != null) 'cidr': cidr!,
        if (gcpService != null) 'gcpService': gcpService!,
        if (id != null) 'id': id!,
        if (jumboFramesEnabled != null)
          'jumboFramesEnabled': jumboFramesEnabled!,
        if (name != null) 'name': name!,
        if (serviceCidr != null) 'serviceCidr': serviceCidr!,
        if (type != null) 'type': type!,
        if (userNote != null) 'userNote': userNote!,
        if (vlanAttachments != null) 'vlanAttachments': vlanAttachments!,
        if (vlanSameProject != null) 'vlanSameProject': vlanSameProject!,
      };
}

/// Network with all used IP addresses.
class NetworkUsage {
  /// Network.
  Network? network;

  /// All used IP addresses in this network.
  core.List<core.String>? usedIps;

  NetworkUsage({
    this.network,
    this.usedIps,
  });

  NetworkUsage.fromJson(core.Map json_)
      : this(
          network: json_.containsKey('network')
              ? Network.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>)
              : null,
          usedIps: json_.containsKey('usedIps')
              ? (json_['usedIps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (usedIps != null) 'usedIps': usedIps!,
      };
}

/// A NFS export entry.
class NfsExport {
  /// Allow dev flag in NfsShare AllowedClientsRequest.
  core.bool? allowDev;

  /// Allow the setuid flag.
  core.bool? allowSuid;

  /// A CIDR range.
  core.String? cidr;

  /// Either a single machine, identified by an ID, or a comma-separated list of
  /// machine IDs.
  core.String? machineId;

  /// Network to use to publish the export.
  core.String? networkId;

  /// Disable root squashing, which is a feature of NFS.
  ///
  /// Root squash is a special mapping of the remote superuser (root) identity
  /// when using identity authentication.
  core.bool? noRootSquash;

  /// Export permissions.
  /// Possible string values are:
  /// - "PERMISSIONS_UNSPECIFIED" : Unspecified value.
  /// - "READ_ONLY" : Read-only permission.
  /// - "READ_WRITE" : Read-write permission.
  core.String? permissions;

  NfsExport({
    this.allowDev,
    this.allowSuid,
    this.cidr,
    this.machineId,
    this.networkId,
    this.noRootSquash,
    this.permissions,
  });

  NfsExport.fromJson(core.Map json_)
      : this(
          allowDev: json_.containsKey('allowDev')
              ? json_['allowDev'] as core.bool
              : null,
          allowSuid: json_.containsKey('allowSuid')
              ? json_['allowSuid'] as core.bool
              : null,
          cidr: json_.containsKey('cidr') ? json_['cidr'] as core.String : null,
          machineId: json_.containsKey('machineId')
              ? json_['machineId'] as core.String
              : null,
          networkId: json_.containsKey('networkId')
              ? json_['networkId'] as core.String
              : null,
          noRootSquash: json_.containsKey('noRootSquash')
              ? json_['noRootSquash'] as core.bool
              : null,
          permissions: json_.containsKey('permissions')
              ? json_['permissions'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowDev != null) 'allowDev': allowDev!,
        if (allowSuid != null) 'allowSuid': allowSuid!,
        if (cidr != null) 'cidr': cidr!,
        if (machineId != null) 'machineId': machineId!,
        if (networkId != null) 'networkId': networkId!,
        if (noRootSquash != null) 'noRootSquash': noRootSquash!,
        if (permissions != null) 'permissions': permissions!,
      };
}

/// An NFS share.
class NfsShare {
  /// List of allowed access points.
  core.List<AllowedClient>? allowedClients;

  /// An identifier for the NFS share, generated by the backend.
  ///
  /// This is the same value as nfs_share_id and will replace it in the future.
  ///
  /// Output only.
  core.String? id;

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// The name of the NFS share.
  ///
  /// Output only.
  core.String? name;

  /// An identifier for the NFS share, generated by the backend.
  ///
  /// This field will be deprecated in the future, use `id` instead.
  ///
  /// Output only.
  core.String? nfsShareId;

  /// The requested size, in GiB.
  core.String? requestedSizeGib;

  /// The state of the NFS share.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The share is in an unknown state.
  /// - "PROVISIONED" : The share has been provisioned.
  /// - "CREATING" : The NFS Share is being created.
  /// - "UPDATING" : The NFS Share is being updated.
  /// - "DELETING" : The NFS Share has been requested to be deleted.
  core.String? state;

  /// The volume containing the share.
  core.String? volume;

  NfsShare({
    this.allowedClients,
    this.id,
    this.labels,
    this.name,
    this.nfsShareId,
    this.requestedSizeGib,
    this.state,
    this.volume,
  });

  NfsShare.fromJson(core.Map json_)
      : this(
          allowedClients: json_.containsKey('allowedClients')
              ? (json_['allowedClients'] as core.List)
                  .map((value) => AllowedClient.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nfsShareId: json_.containsKey('nfsShareId')
              ? json_['nfsShareId'] as core.String
              : null,
          requestedSizeGib: json_.containsKey('requestedSizeGib')
              ? json_['requestedSizeGib'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          volume: json_.containsKey('volume')
              ? json_['volume'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedClients != null) 'allowedClients': allowedClients!,
        if (id != null) 'id': id!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (nfsShareId != null) 'nfsShareId': nfsShareId!,
        if (requestedSizeGib != null) 'requestedSizeGib': requestedSizeGib!,
        if (state != null) 'state': state!,
        if (volume != null) 'volume': volume!,
      };
}

/// Operation System image.
class OSImage {
  /// Instance types this image is applicable to.
  ///
  /// [Available types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  core.List<core.String>? applicableInstanceTypes;

  /// OS Image code.
  core.String? code;

  /// OS Image description.
  core.String? description;

  /// OS Image's unique name.
  ///
  /// Output only.
  core.String? name;

  /// Network templates that can be used with this OS Image.
  core.List<ServerNetworkTemplate>? supportedNetworkTemplates;

  OSImage({
    this.applicableInstanceTypes,
    this.code,
    this.description,
    this.name,
    this.supportedNetworkTemplates,
  });

  OSImage.fromJson(core.Map json_)
      : this(
          applicableInstanceTypes: json_.containsKey('applicableInstanceTypes')
              ? (json_['applicableInstanceTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          supportedNetworkTemplates:
              json_.containsKey('supportedNetworkTemplates')
                  ? (json_['supportedNetworkTemplates'] as core.List)
                      .map((value) => ServerNetworkTemplate.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicableInstanceTypes != null)
          'applicableInstanceTypes': applicableInstanceTypes!,
        if (code != null) 'code': code!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (supportedNetworkTemplates != null)
          'supportedNetworkTemplates': supportedNetworkTemplates!,
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

  /// The normal response of the operation in case of success.
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
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
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

/// A provisioning configuration.
class ProvisioningConfig {
  /// URI to Cloud Console UI view of this provisioning config.
  ///
  /// Output only.
  core.String? cloudConsoleUri;

  /// Email provided to send a confirmation with provisioning config to.
  ///
  /// Deprecated in favour of email field in request messages.
  core.String? email;

  /// A service account to enable customers to access instance credentials upon
  /// handover.
  core.String? handoverServiceAccount;

  /// Instances to be created.
  core.List<InstanceConfig>? instances;

  /// Location name of this ProvisioningConfig.
  ///
  /// It is optional only for Intake UI transition period.
  ///
  /// Optional.
  core.String? location;

  /// The name of the provisioning config.
  ///
  /// Output only.
  core.String? name;

  /// Networks to be created.
  core.List<NetworkConfig>? networks;

  /// State of ProvisioningConfig.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State wasn't specified.
  /// - "DRAFT" : ProvisioningConfig is a draft and can be freely modified.
  /// - "SUBMITTED" : ProvisioningConfig was already submitted and cannot be
  /// modified.
  /// - "PROVISIONING" : ProvisioningConfig was in the provisioning state.
  /// Initially this state comes from the work order table in big query when
  /// SNOW is used. Later this field can be set by the work order API.
  /// - "PROVISIONED" : ProvisioningConfig was provisioned, meaning the
  /// resources exist.
  /// - "VALIDATED" : ProvisioningConfig was validated. A validation tool will
  /// be run to set this state.
  /// - "CANCELLED" : ProvisioningConfig was canceled.
  /// - "FAILED" : The request is submitted for provisioning, with error return.
  core.String? state;

  /// Optional status messages associated with the FAILED state.
  core.String? statusMessage;

  /// A generated ticket id to track provisioning request.
  core.String? ticketId;

  /// Last update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  /// Volumes to be created.
  core.List<VolumeConfig>? volumes;

  /// If true, VPC SC is enabled for the cluster.
  core.bool? vpcScEnabled;

  ProvisioningConfig({
    this.cloudConsoleUri,
    this.email,
    this.handoverServiceAccount,
    this.instances,
    this.location,
    this.name,
    this.networks,
    this.state,
    this.statusMessage,
    this.ticketId,
    this.updateTime,
    this.volumes,
    this.vpcScEnabled,
  });

  ProvisioningConfig.fromJson(core.Map json_)
      : this(
          cloudConsoleUri: json_.containsKey('cloudConsoleUri')
              ? json_['cloudConsoleUri'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          handoverServiceAccount: json_.containsKey('handoverServiceAccount')
              ? json_['handoverServiceAccount'] as core.String
              : null,
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => InstanceConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networks: json_.containsKey('networks')
              ? (json_['networks'] as core.List)
                  .map((value) => NetworkConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          statusMessage: json_.containsKey('statusMessage')
              ? json_['statusMessage'] as core.String
              : null,
          ticketId: json_.containsKey('ticketId')
              ? json_['ticketId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => VolumeConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vpcScEnabled: json_.containsKey('vpcScEnabled')
              ? json_['vpcScEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudConsoleUri != null) 'cloudConsoleUri': cloudConsoleUri!,
        if (email != null) 'email': email!,
        if (handoverServiceAccount != null)
          'handoverServiceAccount': handoverServiceAccount!,
        if (instances != null) 'instances': instances!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (networks != null) 'networks': networks!,
        if (state != null) 'state': state!,
        if (statusMessage != null) 'statusMessage': statusMessage!,
        if (ticketId != null) 'ticketId': ticketId!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (volumes != null) 'volumes': volumes!,
        if (vpcScEnabled != null) 'vpcScEnabled': vpcScEnabled!,
      };
}

/// A provisioning quota for a given project.
class ProvisioningQuota {
  /// The asset type of this provisioning quota.
  /// Possible string values are:
  /// - "ASSET_TYPE_UNSPECIFIED" : The unspecified type.
  /// - "ASSET_TYPE_SERVER" : The server asset type.
  /// - "ASSET_TYPE_STORAGE" : The storage asset type.
  /// - "ASSET_TYPE_NETWORK" : The network asset type.
  core.String? assetType;

  /// The available count of the provisioning quota.
  core.int? availableCount;

  /// The gcp service of the provisioning quota.
  core.String? gcpService;

  /// Instance quota.
  InstanceQuota? instanceQuota;

  /// The specific location of the provisioining quota.
  core.String? location;

  /// The name of the provisioning quota.
  ///
  /// Output only.
  core.String? name;

  /// Network bandwidth, Gbps
  core.String? networkBandwidth;

  /// Server count.
  core.String? serverCount;

  /// Storage size (GB).
  core.String? storageGib;

  ProvisioningQuota({
    this.assetType,
    this.availableCount,
    this.gcpService,
    this.instanceQuota,
    this.location,
    this.name,
    this.networkBandwidth,
    this.serverCount,
    this.storageGib,
  });

  ProvisioningQuota.fromJson(core.Map json_)
      : this(
          assetType: json_.containsKey('assetType')
              ? json_['assetType'] as core.String
              : null,
          availableCount: json_.containsKey('availableCount')
              ? json_['availableCount'] as core.int
              : null,
          gcpService: json_.containsKey('gcpService')
              ? json_['gcpService'] as core.String
              : null,
          instanceQuota: json_.containsKey('instanceQuota')
              ? InstanceQuota.fromJson(
                  json_['instanceQuota'] as core.Map<core.String, core.dynamic>)
              : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkBandwidth: json_.containsKey('networkBandwidth')
              ? json_['networkBandwidth'] as core.String
              : null,
          serverCount: json_.containsKey('serverCount')
              ? json_['serverCount'] as core.String
              : null,
          storageGib: json_.containsKey('storageGib')
              ? json_['storageGib'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetType != null) 'assetType': assetType!,
        if (availableCount != null) 'availableCount': availableCount!,
        if (gcpService != null) 'gcpService': gcpService!,
        if (instanceQuota != null) 'instanceQuota': instanceQuota!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (networkBandwidth != null) 'networkBandwidth': networkBandwidth!,
        if (serverCount != null) 'serverCount': serverCount!,
        if (storageGib != null) 'storageGib': storageGib!,
      };
}

/// QOS policy parameters.
class QosPolicy {
  /// The bandwidth permitted by the QOS policy, in gbps.
  core.double? bandwidthGbps;

  QosPolicy({
    this.bandwidthGbps,
  });

  QosPolicy.fromJson(core.Map json_)
      : this(
          bandwidthGbps: json_.containsKey('bandwidthGbps')
              ? (json_['bandwidthGbps'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bandwidthGbps != null) 'bandwidthGbps': bandwidthGbps!,
      };
}

/// Message requesting to reset a server.
typedef ResetInstanceRequest = $Empty;

/// Request for emergency resize Volume.
class ResizeVolumeRequest {
  /// New Volume size, in GiB.
  core.String? sizeGib;

  ResizeVolumeRequest({
    this.sizeGib,
  });

  ResizeVolumeRequest.fromJson(core.Map json_)
      : this(
          sizeGib: json_.containsKey('sizeGib')
              ? json_['sizeGib'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sizeGib != null) 'sizeGib': sizeGib!,
      };
}

/// Network template.
class ServerNetworkTemplate {
  /// Instance types this template is applicable to.
  core.List<core.String>? applicableInstanceTypes;

  /// Logical interfaces.
  core.List<
          GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface>?
      logicalInterfaces;

  /// Template's unique name.
  ///
  /// The full resource name follows the pattern:
  /// `projects/{project}/locations/{location}/serverNetworkTemplate/{server_network_template}`
  /// Generally, the {server_network_template} follows the syntax of "bond" or
  /// "nic".
  ///
  /// Output only.
  core.String? name;

  ServerNetworkTemplate({
    this.applicableInstanceTypes,
    this.logicalInterfaces,
    this.name,
  });

  ServerNetworkTemplate.fromJson(core.Map json_)
      : this(
          applicableInstanceTypes: json_.containsKey('applicableInstanceTypes')
              ? (json_['applicableInstanceTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logicalInterfaces: json_.containsKey('logicalInterfaces')
              ? (json_['logicalInterfaces'] as core.List)
                  .map((value) =>
                      GoogleCloudBaremetalsolutionV2ServerNetworkTemplateLogicalInterface
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicableInstanceTypes != null)
          'applicableInstanceTypes': applicableInstanceTypes!,
        if (logicalInterfaces != null) 'logicalInterfaces': logicalInterfaces!,
        if (name != null) 'name': name!,
      };
}

/// Details about snapshot space reservation and usage on the storage volume.
class SnapshotReservationDetail {
  /// The space on this storage volume reserved for snapshots, shown in GiB.
  core.String? reservedSpaceGib;

  /// Percent of the total Volume size reserved for snapshot copies.
  ///
  /// Enabling snapshots requires reserving 20% or more of the storage volume
  /// space for snapshots. Maximum reserved space for snapshots is 40%. Setting
  /// this field will effectively set snapshot_enabled to true.
  core.int? reservedSpacePercent;

  /// The amount, in GiB, of available space in this storage volume's reserved
  /// snapshot space.
  core.String? reservedSpaceRemainingGib;

  /// The percent of snapshot space on this storage volume actually being used
  /// by the snapshot copies.
  ///
  /// This value might be higher than 100% if the snapshot copies have
  /// overflowed into the data portion of the storage volume.
  core.int? reservedSpaceUsedPercent;

  SnapshotReservationDetail({
    this.reservedSpaceGib,
    this.reservedSpacePercent,
    this.reservedSpaceRemainingGib,
    this.reservedSpaceUsedPercent,
  });

  SnapshotReservationDetail.fromJson(core.Map json_)
      : this(
          reservedSpaceGib: json_.containsKey('reservedSpaceGib')
              ? json_['reservedSpaceGib'] as core.String
              : null,
          reservedSpacePercent: json_.containsKey('reservedSpacePercent')
              ? json_['reservedSpacePercent'] as core.int
              : null,
          reservedSpaceRemainingGib:
              json_.containsKey('reservedSpaceRemainingGib')
                  ? json_['reservedSpaceRemainingGib'] as core.String
                  : null,
          reservedSpaceUsedPercent:
              json_.containsKey('reservedSpaceUsedPercent')
                  ? json_['reservedSpaceUsedPercent'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reservedSpaceGib != null) 'reservedSpaceGib': reservedSpaceGib!,
        if (reservedSpacePercent != null)
          'reservedSpacePercent': reservedSpacePercent!,
        if (reservedSpaceRemainingGib != null)
          'reservedSpaceRemainingGib': reservedSpaceRemainingGib!,
        if (reservedSpaceUsedPercent != null)
          'reservedSpaceUsedPercent': reservedSpaceUsedPercent!,
      };
}

/// Message requesting to start a server.
typedef StartInstanceRequest = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Message requesting to stop a server.
typedef StopInstanceRequest = $Empty;

/// Request for SubmitProvisioningConfig.
class SubmitProvisioningConfigRequest {
  /// Email provided to send a confirmation with provisioning config to.
  ///
  /// Optional.
  core.String? email;

  /// The ProvisioningConfig to create.
  ///
  /// Required.
  ProvisioningConfig? provisioningConfig;

  SubmitProvisioningConfigRequest({
    this.email,
    this.provisioningConfig,
  });

  SubmitProvisioningConfigRequest.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          provisioningConfig: json_.containsKey('provisioningConfig')
              ? ProvisioningConfig.fromJson(json_['provisioningConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (provisioningConfig != null)
          'provisioningConfig': provisioningConfig!,
      };
}

/// Response for SubmitProvisioningConfig.
class SubmitProvisioningConfigResponse {
  /// The submitted provisioning config.
  ProvisioningConfig? provisioningConfig;

  SubmitProvisioningConfigResponse({
    this.provisioningConfig,
  });

  SubmitProvisioningConfigResponse.fromJson(core.Map json_)
      : this(
          provisioningConfig: json_.containsKey('provisioningConfig')
              ? ProvisioningConfig.fromJson(json_['provisioningConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (provisioningConfig != null)
          'provisioningConfig': provisioningConfig!,
      };
}

/// A network VRF.
class VRF {
  /// The name of the VRF.
  core.String? name;

  /// The QOS policy applied to this VRF.
  QosPolicy? qosPolicy;

  /// The possible state of VRF.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The unspecified state.
  /// - "PROVISIONING" : The vrf is provisioning.
  /// - "PROVISIONED" : The vrf is provisioned.
  core.String? state;

  /// The list of VLAN attachments for the VRF.
  core.List<VlanAttachment>? vlanAttachments;

  VRF({
    this.name,
    this.qosPolicy,
    this.state,
    this.vlanAttachments,
  });

  VRF.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          qosPolicy: json_.containsKey('qosPolicy')
              ? QosPolicy.fromJson(
                  json_['qosPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          vlanAttachments: json_.containsKey('vlanAttachments')
              ? (json_['vlanAttachments'] as core.List)
                  .map((value) => VlanAttachment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (qosPolicy != null) 'qosPolicy': qosPolicy!,
        if (state != null) 'state': state!,
        if (vlanAttachments != null) 'vlanAttachments': vlanAttachments!,
      };
}

/// VLAN attachment details.
class VlanAttachment {
  /// The peer IP of the attachment.
  core.String? peerIp;

  /// The peer vlan ID of the attachment.
  core.String? peerVlanId;

  /// The router IP of the attachment.
  core.String? routerIp;

  VlanAttachment({
    this.peerIp,
    this.peerVlanId,
    this.routerIp,
  });

  VlanAttachment.fromJson(core.Map json_)
      : this(
          peerIp: json_.containsKey('peerIp')
              ? json_['peerIp'] as core.String
              : null,
          peerVlanId: json_.containsKey('peerVlanId')
              ? json_['peerVlanId'] as core.String
              : null,
          routerIp: json_.containsKey('routerIp')
              ? json_['routerIp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (peerIp != null) 'peerIp': peerIp!,
        if (peerVlanId != null) 'peerVlanId': peerVlanId!,
        if (routerIp != null) 'routerIp': routerIp!,
      };
}

/// A storage volume.
class Volume {
  /// The size, in GiB, that this storage volume has expanded as a result of an
  /// auto grow policy.
  ///
  /// In the absence of auto-grow, the value is 0.
  core.String? autoGrownSizeGib;

  /// The current size of this storage volume, in GiB, including space reserved
  /// for snapshots.
  ///
  /// This size might be different than the requested size if the storage volume
  /// has been configured with auto grow or auto shrink.
  core.String? currentSizeGib;

  /// Additional emergency size that was requested for this Volume, in GiB.
  ///
  /// current_size_gib includes this value.
  core.String? emergencySizeGib;

  /// An identifier for the `Volume`, generated by the backend.
  core.String? id;

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// Maximum size volume can be expanded to in case of evergency, in GiB.
  core.String? maxSizeGib;

  /// The resource name of this `Volume`.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. Format:
  /// `projects/{project}/locations/{location}/volumes/{volume}`
  ///
  /// Output only.
  core.String? name;

  /// Originally requested size, in GiB.
  core.String? originallyRequestedSizeGib;

  /// Pod name.
  ///
  /// Immutable.
  core.String? pod;

  /// Storage protocol for the Volume.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROTOCOL_UNSPECIFIED" : Value is not specified.
  /// - "FIBRE_CHANNEL" : Fibre Channel protocol.
  /// - "NFS" : NFS protocol means Volume is a NFS Share volume. Such volumes
  /// cannot be manipulated via Volumes API.
  core.String? protocol;

  /// The space remaining in the storage volume for new LUNs, in GiB, excluding
  /// space reserved for snapshots.
  core.String? remainingSpaceGib;

  /// The requested size of this storage volume, in GiB.
  core.String? requestedSizeGib;

  /// The behavior to use when snapshot reserved space is full.
  /// Possible string values are:
  /// - "SNAPSHOT_AUTO_DELETE_BEHAVIOR_UNSPECIFIED" : The unspecified behavior.
  /// - "DISABLED" : Don't delete any snapshots. This disables new snapshot
  /// creation, as long as the snapshot reserved space is full.
  /// - "OLDEST_FIRST" : Delete the oldest snapshots first.
  /// - "NEWEST_FIRST" : Delete the newest snapshots first.
  core.String? snapshotAutoDeleteBehavior;

  /// Whether snapshots are enabled.
  core.bool? snapshotEnabled;

  /// Details about snapshot space reservation and usage on the storage volume.
  SnapshotReservationDetail? snapshotReservationDetail;

  /// The name of the snapshot schedule policy in use for this volume, if any.
  core.String? snapshotSchedulePolicy;

  /// The state of this storage volume.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The storage volume is in an unknown state.
  /// - "CREATING" : The storage volume is being created.
  /// - "READY" : The storage volume is ready for use.
  /// - "DELETING" : The storage volume has been requested to be deleted.
  core.String? state;

  /// The storage type for this volume.
  /// Possible string values are:
  /// - "STORAGE_TYPE_UNSPECIFIED" : The storage type for this volume is
  /// unknown.
  /// - "SSD" : The storage type for this volume is SSD.
  /// - "HDD" : This storage type for this volume is HDD.
  core.String? storageType;

  Volume({
    this.autoGrownSizeGib,
    this.currentSizeGib,
    this.emergencySizeGib,
    this.id,
    this.labels,
    this.maxSizeGib,
    this.name,
    this.originallyRequestedSizeGib,
    this.pod,
    this.protocol,
    this.remainingSpaceGib,
    this.requestedSizeGib,
    this.snapshotAutoDeleteBehavior,
    this.snapshotEnabled,
    this.snapshotReservationDetail,
    this.snapshotSchedulePolicy,
    this.state,
    this.storageType,
  });

  Volume.fromJson(core.Map json_)
      : this(
          autoGrownSizeGib: json_.containsKey('autoGrownSizeGib')
              ? json_['autoGrownSizeGib'] as core.String
              : null,
          currentSizeGib: json_.containsKey('currentSizeGib')
              ? json_['currentSizeGib'] as core.String
              : null,
          emergencySizeGib: json_.containsKey('emergencySizeGib')
              ? json_['emergencySizeGib'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          maxSizeGib: json_.containsKey('maxSizeGib')
              ? json_['maxSizeGib'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          originallyRequestedSizeGib:
              json_.containsKey('originallyRequestedSizeGib')
                  ? json_['originallyRequestedSizeGib'] as core.String
                  : null,
          pod: json_.containsKey('pod') ? json_['pod'] as core.String : null,
          protocol: json_.containsKey('protocol')
              ? json_['protocol'] as core.String
              : null,
          remainingSpaceGib: json_.containsKey('remainingSpaceGib')
              ? json_['remainingSpaceGib'] as core.String
              : null,
          requestedSizeGib: json_.containsKey('requestedSizeGib')
              ? json_['requestedSizeGib'] as core.String
              : null,
          snapshotAutoDeleteBehavior:
              json_.containsKey('snapshotAutoDeleteBehavior')
                  ? json_['snapshotAutoDeleteBehavior'] as core.String
                  : null,
          snapshotEnabled: json_.containsKey('snapshotEnabled')
              ? json_['snapshotEnabled'] as core.bool
              : null,
          snapshotReservationDetail:
              json_.containsKey('snapshotReservationDetail')
                  ? SnapshotReservationDetail.fromJson(
                      json_['snapshotReservationDetail']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          snapshotSchedulePolicy: json_.containsKey('snapshotSchedulePolicy')
              ? json_['snapshotSchedulePolicy'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          storageType: json_.containsKey('storageType')
              ? json_['storageType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoGrownSizeGib != null) 'autoGrownSizeGib': autoGrownSizeGib!,
        if (currentSizeGib != null) 'currentSizeGib': currentSizeGib!,
        if (emergencySizeGib != null) 'emergencySizeGib': emergencySizeGib!,
        if (id != null) 'id': id!,
        if (labels != null) 'labels': labels!,
        if (maxSizeGib != null) 'maxSizeGib': maxSizeGib!,
        if (name != null) 'name': name!,
        if (originallyRequestedSizeGib != null)
          'originallyRequestedSizeGib': originallyRequestedSizeGib!,
        if (pod != null) 'pod': pod!,
        if (protocol != null) 'protocol': protocol!,
        if (remainingSpaceGib != null) 'remainingSpaceGib': remainingSpaceGib!,
        if (requestedSizeGib != null) 'requestedSizeGib': requestedSizeGib!,
        if (snapshotAutoDeleteBehavior != null)
          'snapshotAutoDeleteBehavior': snapshotAutoDeleteBehavior!,
        if (snapshotEnabled != null) 'snapshotEnabled': snapshotEnabled!,
        if (snapshotReservationDetail != null)
          'snapshotReservationDetail': snapshotReservationDetail!,
        if (snapshotSchedulePolicy != null)
          'snapshotSchedulePolicy': snapshotSchedulePolicy!,
        if (state != null) 'state': state!,
        if (storageType != null) 'storageType': storageType!,
      };
}

/// Configuration parameters for a new volume.
class VolumeConfig {
  /// The GCP service of the storage volume.
  ///
  /// Available gcp_service are in
  /// https://cloud.google.com/bare-metal/docs/bms-planning.
  core.String? gcpService;

  /// A transient unique identifier to identify a volume within an
  /// ProvisioningConfig request.
  core.String? id;

  /// LUN ranges to be configured.
  ///
  /// Set only when protocol is PROTOCOL_FC.
  core.List<LunRange>? lunRanges;

  /// Machine ids connected to this volume.
  ///
  /// Set only when protocol is PROTOCOL_FC.
  core.List<core.String>? machineIds;

  /// The name of the volume config.
  ///
  /// Output only.
  core.String? name;

  /// NFS exports.
  ///
  /// Set only when protocol is PROTOCOL_NFS.
  core.List<NfsExport>? nfsExports;

  /// Volume protocol.
  /// Possible string values are:
  /// - "PROTOCOL_UNSPECIFIED" : Unspecified value.
  /// - "PROTOCOL_FC" : Fibre channel.
  /// - "PROTOCOL_NFS" : Network file system.
  core.String? protocol;

  /// The requested size of this volume, in GB.
  core.int? sizeGb;

  /// Whether snapshots should be enabled.
  core.bool? snapshotsEnabled;

  /// The type of this Volume.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The unspecified type.
  /// - "FLASH" : This Volume is on flash.
  /// - "DISK" : This Volume is on disk.
  core.String? type;

  /// User note field, it can be used by customers to add additional information
  /// for the BMS Ops team .
  core.String? userNote;

  VolumeConfig({
    this.gcpService,
    this.id,
    this.lunRanges,
    this.machineIds,
    this.name,
    this.nfsExports,
    this.protocol,
    this.sizeGb,
    this.snapshotsEnabled,
    this.type,
    this.userNote,
  });

  VolumeConfig.fromJson(core.Map json_)
      : this(
          gcpService: json_.containsKey('gcpService')
              ? json_['gcpService'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          lunRanges: json_.containsKey('lunRanges')
              ? (json_['lunRanges'] as core.List)
                  .map((value) => LunRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          machineIds: json_.containsKey('machineIds')
              ? (json_['machineIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nfsExports: json_.containsKey('nfsExports')
              ? (json_['nfsExports'] as core.List)
                  .map((value) => NfsExport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          protocol: json_.containsKey('protocol')
              ? json_['protocol'] as core.String
              : null,
          sizeGb:
              json_.containsKey('sizeGb') ? json_['sizeGb'] as core.int : null,
          snapshotsEnabled: json_.containsKey('snapshotsEnabled')
              ? json_['snapshotsEnabled'] as core.bool
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          userNote: json_.containsKey('userNote')
              ? json_['userNote'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcpService != null) 'gcpService': gcpService!,
        if (id != null) 'id': id!,
        if (lunRanges != null) 'lunRanges': lunRanges!,
        if (machineIds != null) 'machineIds': machineIds!,
        if (name != null) 'name': name!,
        if (nfsExports != null) 'nfsExports': nfsExports!,
        if (protocol != null) 'protocol': protocol!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
        if (snapshotsEnabled != null) 'snapshotsEnabled': snapshotsEnabled!,
        if (type != null) 'type': type!,
        if (userNote != null) 'userNote': userNote!,
      };
}
