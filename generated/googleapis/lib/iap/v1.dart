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

/// Cloud Identity-Aware Proxy API - v1
///
/// Controls access to cloud applications running on Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/iap>
///
/// Create an instance of [CloudIAPApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsBrandsResource]
///     - [ProjectsBrandsIdentityAwareProxyClientsResource]
///   - [ProjectsIapTunnelResource]
///     - [ProjectsIapTunnelLocationsResource]
///       - [ProjectsIapTunnelLocationsDestGroupsResource]
/// - [V1Resource]
library iap.v1;

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

/// Controls access to cloud applications running on Google Cloud Platform.
class CloudIAPApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  CloudIAPApi(http.Client client,
      {core.String rootUrl = 'https://iap.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsBrandsResource get brands => ProjectsBrandsResource(_requester);
  ProjectsIapTunnelResource get iapTunnel =>
      ProjectsIapTunnelResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsBrandsResource {
  final commons.ApiRequester _requester;

  ProjectsBrandsIdentityAwareProxyClientsResource
      get identityAwareProxyClients =>
          ProjectsBrandsIdentityAwareProxyClientsResource(_requester);

  ProjectsBrandsResource(commons.ApiRequester client) : _requester = client;

  /// Constructs a new OAuth brand for the project if one does not exist.
  ///
  /// The created brand is "internal only", meaning that OAuth clients created
  /// under it only accept requests from users who belong to the same Google
  /// Workspace organization as the project. The brand is created in an
  /// un-reviewed status. NOTE: The "internal only" status can be manually
  /// changed in the Google Cloud Console. Requires that a brand does not
  /// already exist for the project, and that the specified support email is
  /// owned by the caller.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. GCP Project number/id under which the brand is to be
  /// created. In the following format: projects/{project_number/id}.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Brand].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Brand> create(
    Brand request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/brands';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Brand.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the OAuth brand of the project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the brand to be fetched. In the following
  /// format: projects/{project_number/id}/brands/{brand}.
  /// Value must have pattern `^projects/\[^/\]+/brands/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Brand].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Brand> get(
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
    return Brand.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the existing brands for the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. GCP Project number/id. In the following format:
  /// projects/{project_number/id}.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBrandsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBrandsResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/brands';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBrandsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsBrandsIdentityAwareProxyClientsResource {
  final commons.ApiRequester _requester;

  ProjectsBrandsIdentityAwareProxyClientsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an Identity Aware Proxy (IAP) OAuth client.
  ///
  /// The client is owned by IAP. Requires that the brand for the project exists
  /// and that it is set for internal-only use.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Path to create the client in. In the following
  /// format: projects/{project_number/id}/brands/{brand}. The project must
  /// belong to a G Suite account.
  /// Value must have pattern `^projects/\[^/\]+/brands/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IdentityAwareProxyClient].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IdentityAwareProxyClient> create(
    IdentityAwareProxyClient request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/identityAwareProxyClients';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IdentityAwareProxyClient.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an Identity Aware Proxy (IAP) OAuth client.
  ///
  /// Useful for removing obsolete clients, managing the number of clients in a
  /// given project, and cleaning up after tests. Requires that the client is
  /// owned by IAP.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Identity Aware Proxy client to be deleted.
  /// In the following format:
  /// projects/{project_number/id}/brands/{brand}/identityAwareProxyClients/{client_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/brands/\[^/\]+/identityAwareProxyClients/\[^/\]+$`.
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

  /// Retrieves an Identity Aware Proxy (IAP) OAuth client.
  ///
  /// Requires that the client is owned by IAP.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Identity Aware Proxy client to be fetched.
  /// In the following format:
  /// projects/{project_number/id}/brands/{brand}/identityAwareProxyClients/{client_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/brands/\[^/\]+/identityAwareProxyClients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IdentityAwareProxyClient].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IdentityAwareProxyClient> get(
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
    return IdentityAwareProxyClient.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the existing clients for the brand.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Full brand path. In the following format:
  /// projects/{project_number/id}/brands/{brand}.
  /// Value must have pattern `^projects/\[^/\]+/brands/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of clients to return. The service may
  /// return fewer than this value. If unspecified, at most 100 clients will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListIdentityAwareProxyClients` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListIdentityAwareProxyClients` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListIdentityAwareProxyClientsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListIdentityAwareProxyClientsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/identityAwareProxyClients';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListIdentityAwareProxyClientsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets an Identity Aware Proxy (IAP) OAuth client secret.
  ///
  /// Useful if the secret was compromised. Requires that the client is owned by
  /// IAP.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Identity Aware Proxy client to that will
  /// have its secret reset. In the following format:
  /// projects/{project_number/id}/brands/{brand}/identityAwareProxyClients/{client_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/brands/\[^/\]+/identityAwareProxyClients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IdentityAwareProxyClient].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IdentityAwareProxyClient> resetSecret(
    ResetIdentityAwareProxyClientSecretRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':resetSecret';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IdentityAwareProxyClient.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsIapTunnelResource {
  final commons.ApiRequester _requester;

  ProjectsIapTunnelLocationsResource get locations =>
      ProjectsIapTunnelLocationsResource(_requester);

  ProjectsIapTunnelResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsIapTunnelLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsIapTunnelLocationsDestGroupsResource get destGroups =>
      ProjectsIapTunnelLocationsDestGroupsResource(_requester);

  ProjectsIapTunnelLocationsResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsIapTunnelLocationsDestGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsIapTunnelLocationsDestGroupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new TunnelDestGroup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Google Cloud Project ID and location. In the
  /// following format:
  /// `projects/{project_number/id}/iap_tunnel/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/iap_tunnel/locations/\[^/\]+$`.
  ///
  /// [tunnelDestGroupId] - Required. The ID to use for the TunnelDestGroup,
  /// which becomes the final component of the resource name. This value must be
  /// 4-63 characters, and valid characters are `[a-z]-`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TunnelDestGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TunnelDestGroup> create(
    TunnelDestGroup request,
    core.String parent, {
    core.String? tunnelDestGroupId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (tunnelDestGroupId != null) 'tunnelDestGroupId': [tunnelDestGroupId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/destGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TunnelDestGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a TunnelDestGroup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the TunnelDestGroup to delete. In the following
  /// format:
  /// `projects/{project_number/id}/iap_tunnel/locations/{location}/destGroups/{dest_group}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/iap_tunnel/locations/\[^/\]+/destGroups/\[^/\]+$`.
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

  /// Retrieves an existing TunnelDestGroup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the TunnelDestGroup to be fetched. In the
  /// following format:
  /// `projects/{project_number/id}/iap_tunnel/locations/{location}/destGroups/{dest_group}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/iap_tunnel/locations/\[^/\]+/destGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TunnelDestGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TunnelDestGroup> get(
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
    return TunnelDestGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the existing TunnelDestGroups.
  ///
  /// To group across all locations, use a `-` as the location ID. For example:
  /// `/v1/projects/123/iap_tunnel/locations/-/destGroups`
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Google Cloud Project ID and location. In the
  /// following format:
  /// `projects/{project_number/id}/iap_tunnel/locations/{location}`. A `-` can
  /// be used for the location to group across all locations.
  /// Value must have pattern `^projects/\[^/\]+/iap_tunnel/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of groups to return. The service might
  /// return fewer than this value. If unspecified, at most 100 groups are
  /// returned. The maximum value is 1000; values above 1000 are coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListTunnelDestGroups` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListTunnelDestGroups`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTunnelDestGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTunnelDestGroupsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/destGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTunnelDestGroupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a TunnelDestGroup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Immutable. Identifier for the TunnelDestGroup. Must be
  /// unique within the project and contain only lower case letters (a-z) and
  /// dashes (-).
  /// Value must have pattern
  /// `^projects/\[^/\]+/iap_tunnel/locations/\[^/\]+/destGroups/\[^/\]+$`.
  ///
  /// [updateMask] - A field mask that specifies which IAP settings to update.
  /// If omitted, then all of the settings are updated. See
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TunnelDestGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TunnelDestGroup> patch(
    TunnelDestGroup request,
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
    return TunnelDestGroup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// Gets the access control policy for an Identity-Aware Proxy protected
  /// resource.
  ///
  /// More information about managing access via IAP can be found at:
  /// https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^.*$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the IAP settings on a particular IAP protected resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for which to retrieve the settings.
  /// Authorization: Requires the `getSettings` permission for the associated
  /// resource.
  /// Value must have pattern `^.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IapSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IapSettings> getIapSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':iapSettings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return IapSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy for an Identity-Aware Proxy protected
  /// resource.
  ///
  /// Replaces any existing policy. More information about managing access via
  /// IAP can be found at:
  /// https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^.*$`.
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

  /// Returns permissions that a caller has on the Identity-Aware Proxy
  /// protected resource.
  ///
  /// More information about managing access via IAP can be found at:
  /// https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^.*$`.
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

  /// Updates the IAP settings on a particular IAP protected resource.
  ///
  /// It replaces all fields unless the `update_mask` is set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the IAP protected resource.
  /// Value must have pattern `^.*$`.
  ///
  /// [updateMask] - The field mask specifying which IAP settings should be
  /// updated. If omitted, the all of the settings are updated. See
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IapSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IapSettings> updateIapSettings(
    IapSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':iapSettings';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return IapSettings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Custom content configuration for access denied page.
///
/// IAP allows customers to define a custom URI to use as the error page when
/// access is denied to users. If IAP prevents access to this page, the default
/// IAP error page will be displayed instead.
class AccessDeniedPageSettings {
  /// The URI to be redirected to when access is denied.
  core.String? accessDeniedPageUri;

  /// Whether to generate a troubleshooting URL on access denied events to this
  /// application.
  core.bool? generateTroubleshootingUri;

  /// Whether to generate remediation token on access denied events to this
  /// application.
  core.bool? remediationTokenGenerationEnabled;

  AccessDeniedPageSettings({
    this.accessDeniedPageUri,
    this.generateTroubleshootingUri,
    this.remediationTokenGenerationEnabled,
  });

  AccessDeniedPageSettings.fromJson(core.Map json_)
      : this(
          accessDeniedPageUri: json_.containsKey('accessDeniedPageUri')
              ? json_['accessDeniedPageUri'] as core.String
              : null,
          generateTroubleshootingUri:
              json_.containsKey('generateTroubleshootingUri')
                  ? json_['generateTroubleshootingUri'] as core.bool
                  : null,
          remediationTokenGenerationEnabled:
              json_.containsKey('remediationTokenGenerationEnabled')
                  ? json_['remediationTokenGenerationEnabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessDeniedPageUri != null)
          'accessDeniedPageUri': accessDeniedPageUri!,
        if (generateTroubleshootingUri != null)
          'generateTroubleshootingUri': generateTroubleshootingUri!,
        if (remediationTokenGenerationEnabled != null)
          'remediationTokenGenerationEnabled':
              remediationTokenGenerationEnabled!,
      };
}

/// Access related settings for IAP protected apps.
class AccessSettings {
  /// Settings to configure and enable allowed domains.
  AllowedDomainsSettings? allowedDomainsSettings;

  /// Configuration to allow cross-origin requests via IAP.
  CorsSettings? corsSettings;

  /// GCIP claims and endpoint configurations for 3p identity providers.
  GcipSettings? gcipSettings;

  /// Settings to configure IAP's OAuth behavior.
  OAuthSettings? oauthSettings;

  /// Settings to configure Policy delegation for apps hosted in tenant
  /// projects.
  ///
  /// INTERNAL_ONLY.
  PolicyDelegationSettings? policyDelegationSettings;

  /// Settings to configure reauthentication policies in IAP.
  ReauthSettings? reauthSettings;

  AccessSettings({
    this.allowedDomainsSettings,
    this.corsSettings,
    this.gcipSettings,
    this.oauthSettings,
    this.policyDelegationSettings,
    this.reauthSettings,
  });

  AccessSettings.fromJson(core.Map json_)
      : this(
          allowedDomainsSettings: json_.containsKey('allowedDomainsSettings')
              ? AllowedDomainsSettings.fromJson(json_['allowedDomainsSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          corsSettings: json_.containsKey('corsSettings')
              ? CorsSettings.fromJson(
                  json_['corsSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          gcipSettings: json_.containsKey('gcipSettings')
              ? GcipSettings.fromJson(
                  json_['gcipSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          oauthSettings: json_.containsKey('oauthSettings')
              ? OAuthSettings.fromJson(
                  json_['oauthSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          policyDelegationSettings:
              json_.containsKey('policyDelegationSettings')
                  ? PolicyDelegationSettings.fromJson(
                      json_['policyDelegationSettings']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          reauthSettings: json_.containsKey('reauthSettings')
              ? ReauthSettings.fromJson(json_['reauthSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedDomainsSettings != null)
          'allowedDomainsSettings': allowedDomainsSettings!,
        if (corsSettings != null) 'corsSettings': corsSettings!,
        if (gcipSettings != null) 'gcipSettings': gcipSettings!,
        if (oauthSettings != null) 'oauthSettings': oauthSettings!,
        if (policyDelegationSettings != null)
          'policyDelegationSettings': policyDelegationSettings!,
        if (reauthSettings != null) 'reauthSettings': reauthSettings!,
      };
}

/// Configuration for IAP allowed domains.
///
/// Lets you to restrict access to an app and allow access to only the domains
/// that you list.
class AllowedDomainsSettings {
  /// List of trusted domains.
  core.List<core.String>? domains;

  /// Configuration for customers to opt in for the feature.
  core.bool? enable;

  AllowedDomainsSettings({
    this.domains,
    this.enable,
  });

  AllowedDomainsSettings.fromJson(core.Map json_)
      : this(
          domains: json_.containsKey('domains')
              ? (json_['domains'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          enable:
              json_.containsKey('enable') ? json_['enable'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domains != null) 'domains': domains!,
        if (enable != null) 'enable': enable!,
      };
}

/// Wrapper over application specific settings for IAP.
class ApplicationSettings {
  /// Customization for Access Denied page.
  AccessDeniedPageSettings? accessDeniedPageSettings;

  /// The Domain value to set for cookies generated by IAP.
  ///
  /// This value is not validated by the API, but will be ignored at runtime if
  /// invalid.
  core.String? cookieDomain;

  /// Settings to configure IAP's behavior for a service mesh.
  CsmSettings? csmSettings;

  ApplicationSettings({
    this.accessDeniedPageSettings,
    this.cookieDomain,
    this.csmSettings,
  });

  ApplicationSettings.fromJson(core.Map json_)
      : this(
          accessDeniedPageSettings:
              json_.containsKey('accessDeniedPageSettings')
                  ? AccessDeniedPageSettings.fromJson(
                      json_['accessDeniedPageSettings']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          cookieDomain: json_.containsKey('cookieDomain')
              ? json_['cookieDomain'] as core.String
              : null,
          csmSettings: json_.containsKey('csmSettings')
              ? CsmSettings.fromJson(
                  json_['csmSettings'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessDeniedPageSettings != null)
          'accessDeniedPageSettings': accessDeniedPageSettings!,
        if (cookieDomain != null) 'cookieDomain': cookieDomain!,
        if (csmSettings != null) 'csmSettings': csmSettings!,
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
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
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

/// OAuth brand data.
///
/// NOTE: Only contains a portion of the data that describes a brand.
class Brand {
  /// Application name displayed on OAuth consent screen.
  core.String? applicationTitle;

  /// Identifier of the brand.
  ///
  /// NOTE: GCP project number achieves the same brand identification purpose as
  /// only one brand per project can be created.
  ///
  /// Output only.
  core.String? name;

  /// Whether the brand is only intended for usage inside the G Suite
  /// organization only.
  ///
  /// Output only.
  core.bool? orgInternalOnly;

  /// Support email displayed on the OAuth consent screen.
  core.String? supportEmail;

  Brand({
    this.applicationTitle,
    this.name,
    this.orgInternalOnly,
    this.supportEmail,
  });

  Brand.fromJson(core.Map json_)
      : this(
          applicationTitle: json_.containsKey('applicationTitle')
              ? json_['applicationTitle'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          orgInternalOnly: json_.containsKey('orgInternalOnly')
              ? json_['orgInternalOnly'] as core.bool
              : null,
          supportEmail: json_.containsKey('supportEmail')
              ? json_['supportEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicationTitle != null) 'applicationTitle': applicationTitle!,
        if (name != null) 'name': name!,
        if (orgInternalOnly != null) 'orgInternalOnly': orgInternalOnly!,
        if (supportEmail != null) 'supportEmail': supportEmail!,
      };
}

/// Allows customers to configure HTTP request paths that'll allow HTTP OPTIONS
/// call to bypass authentication and authorization.
class CorsSettings {
  /// Configuration to allow HTTP OPTIONS calls to skip authorization.
  ///
  /// If undefined, IAP will not apply any special logic to OPTIONS requests.
  core.bool? allowHttpOptions;

  CorsSettings({
    this.allowHttpOptions,
  });

  CorsSettings.fromJson(core.Map json_)
      : this(
          allowHttpOptions: json_.containsKey('allowHttpOptions')
              ? json_['allowHttpOptions'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowHttpOptions != null) 'allowHttpOptions': allowHttpOptions!,
      };
}

/// Configuration for RCToken generated for service mesh workloads protected by
/// IAP.
///
/// RCToken are IAP generated JWTs that can be verified at the application. The
/// RCToken is primarily used for service mesh deployments, and can be scoped to
/// a single mesh by configuring the audience field accordingly.
class CsmSettings {
  /// Audience claim set in the generated RCToken.
  ///
  /// This value is not validated by IAP.
  core.String? rctokenAud;

  CsmSettings({
    this.rctokenAud,
  });

  CsmSettings.fromJson(core.Map json_)
      : this(
          rctokenAud: json_.containsKey('rctokenAud')
              ? json_['rctokenAud'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rctokenAud != null) 'rctokenAud': rctokenAud!,
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

/// Allows customers to configure tenant_id for GCIP instance per-app.
class GcipSettings {
  /// Login page URI associated with the GCIP tenants.
  ///
  /// Typically, all resources within the same project share the same login
  /// page, though it could be overridden at the sub resource level.
  core.String? loginPageUri;

  /// GCIP tenant ids that are linked to the IAP resource.
  ///
  /// tenant_ids could be a string beginning with a number character to indicate
  /// authenticating with GCIP tenant flow, or in the format of _ to indicate
  /// authenticating with GCIP agent flow. If agent flow is used, tenant_ids
  /// should only contain one single element, while for tenant flow, tenant_ids
  /// can contain multiple elements.
  core.List<core.String>? tenantIds;

  GcipSettings({
    this.loginPageUri,
    this.tenantIds,
  });

  GcipSettings.fromJson(core.Map json_)
      : this(
          loginPageUri: json_.containsKey('loginPageUri')
              ? json_['loginPageUri'] as core.String
              : null,
          tenantIds: json_.containsKey('tenantIds')
              ? (json_['tenantIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (loginPageUri != null) 'loginPageUri': loginPageUri!,
        if (tenantIds != null) 'tenantIds': tenantIds!,
      };
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// The IAP configurable settings.
class IapSettings {
  /// Top level wrapper for all access related setting in IAP
  AccessSettings? accessSettings;

  /// Top level wrapper for all application related settings in IAP
  ApplicationSettings? applicationSettings;

  /// The resource name of the IAP protected resource.
  ///
  /// Required.
  core.String? name;

  IapSettings({
    this.accessSettings,
    this.applicationSettings,
    this.name,
  });

  IapSettings.fromJson(core.Map json_)
      : this(
          accessSettings: json_.containsKey('accessSettings')
              ? AccessSettings.fromJson(json_['accessSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          applicationSettings: json_.containsKey('applicationSettings')
              ? ApplicationSettings.fromJson(json_['applicationSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessSettings != null) 'accessSettings': accessSettings!,
        if (applicationSettings != null)
          'applicationSettings': applicationSettings!,
        if (name != null) 'name': name!,
      };
}

/// Contains the data that describes an Identity Aware Proxy owned client.
class IdentityAwareProxyClient {
  /// Human-friendly name given to the OAuth client.
  core.String? displayName;

  /// Unique identifier of the OAuth client.
  ///
  /// Output only.
  core.String? name;

  /// Client secret of the OAuth client.
  ///
  /// Output only.
  core.String? secret;

  IdentityAwareProxyClient({
    this.displayName,
    this.name,
    this.secret,
  });

  IdentityAwareProxyClient.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          secret: json_.containsKey('secret')
              ? json_['secret'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (secret != null) 'secret': secret!,
      };
}

/// Response message for ListBrands.
class ListBrandsResponse {
  /// Brands existing in the project.
  core.List<Brand>? brands;

  ListBrandsResponse({
    this.brands,
  });

  ListBrandsResponse.fromJson(core.Map json_)
      : this(
          brands: json_.containsKey('brands')
              ? (json_['brands'] as core.List)
                  .map((value) => Brand.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (brands != null) 'brands': brands!,
      };
}

/// Response message for ListIdentityAwareProxyClients.
class ListIdentityAwareProxyClientsResponse {
  /// Clients existing in the brand.
  core.List<IdentityAwareProxyClient>? identityAwareProxyClients;

  /// A token, which can be send as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListIdentityAwareProxyClientsResponse({
    this.identityAwareProxyClients,
    this.nextPageToken,
  });

  ListIdentityAwareProxyClientsResponse.fromJson(core.Map json_)
      : this(
          identityAwareProxyClients:
              json_.containsKey('identityAwareProxyClients')
                  ? (json_['identityAwareProxyClients'] as core.List)
                      .map((value) => IdentityAwareProxyClient.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (identityAwareProxyClients != null)
          'identityAwareProxyClients': identityAwareProxyClients!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response from ListTunnelDestGroups.
class ListTunnelDestGroupsResponse {
  /// A token that you can send as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// TunnelDestGroup existing in the project.
  core.List<TunnelDestGroup>? tunnelDestGroups;

  ListTunnelDestGroupsResponse({
    this.nextPageToken,
    this.tunnelDestGroups,
  });

  ListTunnelDestGroupsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tunnelDestGroups: json_.containsKey('tunnelDestGroups')
              ? (json_['tunnelDestGroups'] as core.List)
                  .map((value) => TunnelDestGroup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tunnelDestGroups != null) 'tunnelDestGroups': tunnelDestGroups!,
      };
}

/// Configuration for OAuth login&consent flow behavior as well as for OAuth
/// Credentials.
class OAuthSettings {
  /// Domain hint to send as hd=? parameter in OAuth request flow.
  ///
  /// Enables redirect to primary IDP by skipping Google's login screen.
  /// https://developers.google.com/identity/protocols/OpenIDConnect#hd-param
  /// Note: IAP does not verify that the id token's hd claim matches this value
  /// since access behavior is managed by IAM policies.
  core.String? loginHint;

  OAuthSettings({
    this.loginHint,
  });

  OAuthSettings.fromJson(core.Map json_)
      : this(
          loginHint: json_.containsKey('loginHint')
              ? json_['loginHint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (loginHint != null) 'loginHint': loginHint!,
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
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
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
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
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
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// PolicyDelegationConfig allows google-internal teams to use IAP for apps
/// hosted in a tenant project.
///
/// Using these settings, the app can delegate permission check to happen
/// against the linked customer project. This is only ever supposed to be used
/// by google internal teams, hence the restriction on the proto.
class PolicyDelegationSettings {
  /// Permission to check in IAM.
  core.String? iamPermission;

  /// The DNS name of the service (e.g. "resourcemanager.googleapis.com").
  ///
  /// This should be the domain name part of the full resource names (see
  /// https://aip.dev/122#full-resource-names), which is usually the same as
  /// IamServiceSpec.service of the service where the resource type is defined.
  core.String? iamServiceName;

  /// Policy name to be checked
  PolicyName? policyName;

  /// IAM resource to check permission on
  Resource? resource;

  PolicyDelegationSettings({
    this.iamPermission,
    this.iamServiceName,
    this.policyName,
    this.resource,
  });

  PolicyDelegationSettings.fromJson(core.Map json_)
      : this(
          iamPermission: json_.containsKey('iamPermission')
              ? json_['iamPermission'] as core.String
              : null,
          iamServiceName: json_.containsKey('iamServiceName')
              ? json_['iamServiceName'] as core.String
              : null,
          policyName: json_.containsKey('policyName')
              ? PolicyName.fromJson(
                  json_['policyName'] as core.Map<core.String, core.dynamic>)
              : null,
          resource: json_.containsKey('resource')
              ? Resource.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iamPermission != null) 'iamPermission': iamPermission!,
        if (iamServiceName != null) 'iamServiceName': iamServiceName!,
        if (policyName != null) 'policyName': policyName!,
        if (resource != null) 'resource': resource!,
      };
}

/// An internal name for an IAM policy, based on the resource to which the
/// policy applies.
///
/// Not to be confused with a resource's external full resource name. For more
/// information on this distinction, see go/iam-full-resource-names.
class PolicyName {
  /// Identifies an instance of the type.
  ///
  /// ID format varies by type. The ID format is defined in the IAM .service
  /// file that defines the type, either in path_mapping or in a comment.
  core.String? id;

  /// For Cloud IAM: The location of the Policy.
  ///
  /// Must be empty or "global" for Policies owned by global IAM. Must name a
  /// region from prodspec/cloud-iam-cloudspec for Regional IAM Policies, see
  /// go/iam-faq#where-is-iam-currently-deployed. For Local IAM: This field
  /// should be set to "local".
  core.String? region;

  /// Resource type.
  ///
  /// Types are defined in IAM's .service files. Valid values for type might be
  /// 'gce', 'gcs', 'project', 'account' etc.
  core.String? type;

  PolicyName({
    this.id,
    this.region,
    this.type,
  });

  PolicyName.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          region: json_.containsKey('region')
              ? json_['region'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (region != null) 'region': region!,
        if (type != null) 'type': type!,
      };
}

/// Configuration for IAP reauthentication policies.
class ReauthSettings {
  /// Reauth session lifetime, how long before a user has to reauthenticate
  /// again.
  core.String? maxAge;

  /// Reauth method requested.
  /// Possible string values are:
  /// - "METHOD_UNSPECIFIED" : Reauthentication disabled.
  /// - "LOGIN" : Prompts the user to log in again.
  /// - "SECURE_KEY" : User must use their secure key 2nd factor device.
  core.String? method;

  /// How IAP determines the effective policy in cases of hierarchial policies.
  ///
  /// Policies are merged from higher in the hierarchy to lower in the
  /// hierarchy.
  /// Possible string values are:
  /// - "POLICY_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "MINIMUM" : This policy acts as a minimum to other policies, lower in
  /// the hierarchy. Effective policy may only be the same or stricter.
  /// - "DEFAULT" : This policy acts as a default if no other reauth policy is
  /// set.
  core.String? policyType;

  ReauthSettings({
    this.maxAge,
    this.method,
    this.policyType,
  });

  ReauthSettings.fromJson(core.Map json_)
      : this(
          maxAge: json_.containsKey('maxAge')
              ? json_['maxAge'] as core.String
              : null,
          method: json_.containsKey('method')
              ? json_['method'] as core.String
              : null,
          policyType: json_.containsKey('policyType')
              ? json_['policyType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxAge != null) 'maxAge': maxAge!,
        if (method != null) 'method': method!,
        if (policyType != null) 'policyType': policyType!,
      };
}

/// The request sent to ResetIdentityAwareProxyClientSecret.
typedef ResetIdentityAwareProxyClientSecretRequest = $Empty;

class Resource {
  /// The service defined labels of the resource on which the conditions will be
  /// evaluated.
  ///
  /// The semantics - including the key names - are vague to IAM. If the
  /// effective condition has a reference to a `resource.labels[foo]` construct,
  /// IAM consults with this map to retrieve the values associated with `foo`
  /// key for Conditions evaluation. If the provided key is not found in the
  /// labels map, the condition would evaluate to false. This field is in
  /// limited use. If your intended use case is not expected to express
  /// resource.labels attribute in IAM Conditions, leave this field empty.
  /// Before planning on using this attribute please: * Read
  /// go/iam-conditions-labels-comm and ensure your service can meet the data
  /// availability and management requirements. * Talk to iam-conditions-eng@
  /// about your use case.
  core.Map<core.String, core.String>? labels;

  /// Name of the resource on which conditions will be evaluated.
  ///
  /// Must use the Relative Resource Name of the resource, which is the URI path
  /// of the resource without the leading "/". Examples are
  /// "projects/_/buckets/\[BUCKET-ID\]" for storage buckets or
  /// "projects/\[PROJECT-ID\]/global/firewalls/\[FIREWALL-ID\]" for a firewall.
  /// This field is required for evaluating conditions with rules on resource
  /// names. For a `list` permission check, the resource.name value must be set
  /// to the parent resource. If the parent resource is a project, this field
  /// should be left unset.
  core.String? name;

  /// The name of the service this resource belongs to.
  ///
  /// It is configured using the official_service_name of the Service as defined
  /// in service configurations under //configs/cloud/resourcetypes. For
  /// example, the official_service_name of cloud resource manager service is
  /// set as 'cloudresourcemanager.googleapis.com' according to
  /// //configs/cloud/resourcetypes/google/cloud/resourcemanager/prod.yaml
  core.String? service;

  /// The public resource type name of the resource on which conditions will be
  /// evaluated.
  ///
  /// It is configured using the official_name of the ResourceType as defined in
  /// service configurations under //configs/cloud/resourcetypes. For example,
  /// the official_name for GCP projects is set as
  /// 'cloudresourcemanager.googleapis.com/Project' according to
  /// //configs/cloud/resourcetypes/google/cloud/resourcemanager/prod.yaml For
  /// details see go/iam-conditions-integration-guide.
  core.String? type;

  Resource({
    this.labels,
    this.name,
    this.service,
    this.type,
  });

  Resource.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (service != null) 'service': service!,
        if (type != null) 'type': type!,
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

  SetIamPolicyRequest({
    this.policy,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// A TunnelDestGroup.
class TunnelDestGroup {
  /// null List of CIDRs that this group applies to.
  core.List<core.String>? cidrs;

  /// null List of FQDNs that this group applies to.
  core.List<core.String>? fqdns;

  /// Identifier for the TunnelDestGroup.
  ///
  /// Must be unique within the project and contain only lower case letters
  /// (a-z) and dashes (-).
  ///
  /// Required. Immutable.
  core.String? name;

  TunnelDestGroup({
    this.cidrs,
    this.fqdns,
    this.name,
  });

  TunnelDestGroup.fromJson(core.Map json_)
      : this(
          cidrs: json_.containsKey('cidrs')
              ? (json_['cidrs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fqdns: json_.containsKey('fqdns')
              ? (json_['fqdns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cidrs != null) 'cidrs': cidrs!,
        if (fqdns != null) 'fqdns': fqdns!,
        if (name != null) 'name': name!,
      };
}
