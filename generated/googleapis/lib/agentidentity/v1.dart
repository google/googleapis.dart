// Copyright 2026 Google LLC
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

/// Agent Identity API - v1
///
/// For more information, see <https://cloud.google.com/iam/docs/>
///
/// Create an instance of [AgentIdentityApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAccessSummariesResource]
///     - [ProjectsLocationsAuthProvidersResource]
///       - [ProjectsLocationsAuthProvidersAuthorizationsResource]
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

class AgentIdentityApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  AgentIdentityApi(
    http.Client client, {
    core.String rootUrl = 'https://agentidentity.googleapis.com/',
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

  ProjectsLocationsAccessSummariesResource get accessSummaries =>
      ProjectsLocationsAccessSummariesResource(_requester);
  ProjectsLocationsAuthProvidersResource get authProviders =>
      ProjectsLocationsAuthProvidersResource(_requester);

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

class ProjectsLocationsAccessSummariesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAccessSummariesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single AccessSummary.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/accessSummaries/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccessSummary].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccessSummary> get(
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
    return AccessSummary.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists AccessSummaries in a given project and location.
  ///
  /// Supported Filters: - `workload_id`: Filter by the SPIFFE ID of the agent.
  /// Example: `workload_id="spiffe://example.com/ns/default/sa/my-agent"`
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where the search is performed.
  /// Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter string to restrict the results. Currently
  /// supports filtering by `workload_id` or `auth_provider_name`. If no filter
  /// is provided, returns all access summaries for the requested project and
  /// location. Format: `workload_id=""` or `auth_provider_name=""`
  ///
  /// [orderBy] - Optional. This field is currently ignored. Defaults to
  /// ordering by (auth_provider_id, user_id) in ascending order.
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
  /// Completes with a [ListAccessSummariesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccessSummariesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/accessSummaries';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccessSummariesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAuthProvidersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthProvidersAuthorizationsResource get authorizations =>
      ProjectsLocationsAuthProvidersAuthorizationsResource(_requester);

  ProjectsLocationsAuthProvidersResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new AuthProvider in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where the AuthProvider is
  /// created. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [authProviderId] - Required. The ID to use for the AuthProvider, which
  /// will become the final segment of the AuthProvider's resource name. This
  /// value should be 1-63 characters, and valid characters are /a-z-/. The
  /// first character must be a lowercase letter, and the last character must be
  /// a lowercase letter or a number.
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
  /// Completes with a [AuthProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthProvider> create(
    AuthProvider request,
    core.String parent, {
    core.String? authProviderId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'authProviderId': ?authProviderId == null ? null : [authProviderId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/authProviders';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AuthProvider.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single AuthProvider.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
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

  /// Disables a single AuthProvider.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource Format:
  /// projects/{project}/locations/{location}/authProviders/{auth_provider}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthProvider> disable(
    DisableAuthProviderRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AuthProvider.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Enables a single AuthProvider.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource Format:
  /// projects/{project}/locations/{location}/authProviders/{auth_provider}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthProvider> enable(
    EnableAuthProviderRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AuthProvider.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single AuthProvider.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthProvider> get(
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
    return AuthProvider.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
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
      'options.requestedPolicyVersion': ?options_requestedPolicyVersion == null
          ? null
          : ['${options_requestedPolicyVersion}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists AuthProviders in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where the search is performed.
  /// Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter results. This field is currently ignored.
  ///
  /// [orderBy] - Optional. Currently ignored. Defaults to ordering by
  /// auth_provider_id in ascending order.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token, which can be sent as `page_token` to
  /// retrieve the next page. If this field is omitted, the first page is
  /// returned.
  ///
  /// [showDeleted] - Optional. Deleted auth_providers will be kept with a
  /// soft-delete for 30 days before being purged. If this field is set to true,
  /// deleted auth_providers will also be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthProvidersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthProvidersResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'showDeleted': ?showDeleted == null ? null : ['${showDeleted}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/authProviders';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthProvidersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single AuthProvider.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The full resource name of the auth_provider. Format:
  /// projects/{project}/locations/{location}/authProviders/{auth_provider}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
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
  /// overwritten in the AuthProvider resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields present in the request will be
  /// overwritten.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthProvider> patch(
    AuthProvider request,
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
    return AuthProvider.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries what all auth_providers are used by a given workload_id.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where the search is performed.
  /// Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  /// The maximum page size is 1000.
  ///
  /// [pageToken] - Optional. A token, which can be sent as `page_token` to
  /// retrieve the next page. If this field is omitted, the first page is
  /// returned. A page token, received from a previous QueryAuthProviders call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to QueryAuthProviders must match the call that
  /// provided the page token.
  ///
  /// [workloadId] - Required. The workload identifier to filter by.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryAuthProvidersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryAuthProvidersResponse> query(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? workloadId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'workloadId': ?workloadId == null ? null : [workloadId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/authProviders:query';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return QueryAuthProvidersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Queries what all workloads are using a given auth_provider.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the auth_provider to query. Format:
  /// projects/{project}/locations/{location}/authProviders/{auth_provider}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token, which can be sent as `page_token` to
  /// retrieve the next page. When paginating, all other parameters provided to
  /// QueryWorkloads must match the call that provided the page token. If this
  /// field is omitted, the first page is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryWorkloadsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryWorkloadsResponse> queryWorkloads(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':queryWorkloads';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return QueryWorkloadsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Revokes all authorizations for a specific user on an AuthProvider.
  ///
  /// This deletes all authorization records associated with the user and
  /// AuthProvider, effectively revoking access across all agents.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the AuthProvider. Format:
  /// projects/{project}/locations/{location}/authProviders/{auth_provider}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RevokeAuthorizationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RevokeAuthorizationResponse> revokeAuthorization(
    RevokeAuthorizationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':revokeAuthorization';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RevokeAuthorizationResponse.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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

  /// Undeletes a single AuthProvider.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource Format:
  /// projects/{project}/locations/{location}/authProviders/{auth_provider}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuthProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuthProvider> undelete(
    UndeleteAuthProviderRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AuthProvider.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAuthProvidersAuthorizationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAuthProvidersAuthorizationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Deletes a single Authorization.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Authorization to delete. Format:
  /// projects/{project}/locations/{location}/authProviders/{auth_provider}/authorizations/{authorization}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+/authorizations/\[^/\]+$`.
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

  /// Gets details of a single Authorization.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+/authorizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Authorization].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Authorization> get(
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
    return Authorization.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Authorizations in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where the search is performed.
  /// Format:
  /// projects/{project}/locations/{location}/authProviders/{auth_provider}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/authProviders/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter string to restrict the results. Currently
  /// supports filtering by `client_user_id` only. Format: `client_user_id=""`
  ///
  /// [orderBy] - Optional. This field is currently ignored. Defaults to
  /// ordering by authorization_id in ascending order.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListAuthorizations` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListAuthorizations`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuthorizationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuthorizationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/authorizations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAuthorizationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Message describing AccessSummary object
class AccessSummary {
  /// The auth_provider that this access summary is associated with.
  ///
  /// Output only.
  core.String? authProvider;

  /// The type of the connector that was used to create this access summary.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "AUTH_PROVIDER_TYPE_UNSPECIFIED" : Unspecified auth-provider type.
  /// - "AUTH_PROVIDER_TYPE_THREE_LEGGED_OAUTH" : Three Legged OAuth
  /// auth-provider type.
  /// - "AUTH_PROVIDER_TYPE_TWO_LEGGED_OAUTH" : Two Legged OAuth auth-provider
  /// type.
  /// - "AUTH_PROVIDER_TYPE_API_KEY" : API Key auth-provider type.
  /// - "AUTH_PROVIDER_TYPE_GEMINI_ENTERPRISE" : Gemini Enterprise auth-provider
  /// type.
  core.String? authProviderType;

  /// The first time this user has interacted with this workload.
  ///
  /// Rounded to the previous hour.
  ///
  /// Output only.
  core.String? firstAccessTime;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The most recent time this user has interacted with this workload.
  ///
  /// Rounded to the previous hour.
  ///
  /// Output only.
  core.String? lastAccessTime;

  /// Identifier.
  ///
  /// Name of the AccessSummary
  ///
  /// Output only.
  core.String? name;

  /// The time when this access summary is permanently deleted.
  ///
  /// Output only.
  core.String? purgeTime;

  /// All scopes that have been used by this user with this workload.
  ///
  /// The number of scopes is limited to 200.
  ///
  /// Output only.
  core.List<core.String>? scopes;

  /// The url of the authentication server that was accessed.
  ///
  /// Output only.
  core.String? tokenUrl;

  /// The user_id provided by the workload application for this user.
  ///
  /// Not verified by Google.
  ///
  /// Output only.
  core.String? userId;

  /// The identity bound to the workload that this user interacted with to
  /// produce this AccessSummary.
  ///
  /// Will typically be an agentic spiffe id
  ///
  /// Output only.
  core.String? workloadId;

  AccessSummary({
    this.authProvider,
    this.authProviderType,
    this.firstAccessTime,
    this.labels,
    this.lastAccessTime,
    this.name,
    this.purgeTime,
    this.scopes,
    this.tokenUrl,
    this.userId,
    this.workloadId,
  });

  AccessSummary.fromJson(core.Map json_)
    : this(
        authProvider: json_['authProvider'] as core.String?,
        authProviderType: json_['authProviderType'] as core.String?,
        firstAccessTime: json_['firstAccessTime'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        lastAccessTime: json_['lastAccessTime'] as core.String?,
        name: json_['name'] as core.String?,
        purgeTime: json_['purgeTime'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        tokenUrl: json_['tokenUrl'] as core.String?,
        userId: json_['userId'] as core.String?,
        workloadId: json_['workloadId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authProvider = this.authProvider;
    final authProviderType = this.authProviderType;
    final firstAccessTime = this.firstAccessTime;
    final labels = this.labels;
    final lastAccessTime = this.lastAccessTime;
    final name = this.name;
    final purgeTime = this.purgeTime;
    final scopes = this.scopes;
    final tokenUrl = this.tokenUrl;
    final userId = this.userId;
    final workloadId = this.workloadId;
    return {
      'authProvider': ?authProvider,
      'authProviderType': ?authProviderType,
      'firstAccessTime': ?firstAccessTime,
      'labels': ?labels,
      'lastAccessTime': ?lastAccessTime,
      'name': ?name,
      'purgeTime': ?purgeTime,
      'scopes': ?scopes,
      'tokenUrl': ?tokenUrl,
      'userId': ?userId,
      'workloadId': ?workloadId,
    };
  }
}

/// Message describing ApiKeyParams object.
class ApiKeyParams {
  /// Input only.
  ///
  /// The API key for this auth_provider.
  ///
  /// Optional.
  core.String? apiKey;

  ApiKeyParams({this.apiKey});

  ApiKeyParams.fromJson(core.Map json_)
    : this(apiKey: json_['apiKey'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final apiKey = this.apiKey;
    return {'apiKey': ?apiKey};
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

  AuditConfig({this.auditLogConfigs, this.service});

  AuditConfig.fromJson(core.Map json_)
    : this(
        auditLogConfigs: (json_['auditLogConfigs'] as core.List?)
            ?.map(
              (value) => AuditLogConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditLogConfigs = this.auditLogConfigs;
    final service = this.service;
    return {'auditLogConfigs': ?auditLogConfigs, 'service': ?service};
  }
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

/// Message describing AuthProvider object
class AuthProvider {
  /// List of scopes that are allowed to be requested for this auth_provider.
  ///
  /// If this list is non-empty, only scopes within this list may be requested.
  /// If this list is empty, all scopes may be requested. Scopes appearing in
  /// `blocked_scopes` are disallowed even if they appear in `allowed_scopes`.
  /// The number of allowed scopes is limited to 200.
  ///
  /// Optional.
  core.List<core.String>? allowedScopes;

  /// AuthProvider type specific parameters.
  ///
  /// Required.
  AuthProviderTypeParams? authProviderTypeParams;

  /// List of scopes that are blocked from being requested for this
  /// auth_provider.
  ///
  /// If a scope appears in this list, it will not be requested, even if it also
  /// appears in `allowed_scopes`. `blocked_scopes` takes precedence over
  /// `allowed_scopes`. The number of blocked scopes is limited to 200.
  ///
  /// Optional.
  core.List<core.String>? blockedScopes;

  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// This is set to true if the auth_provider is deleted.
  ///
  /// Output only.
  core.bool? deleted;

  /// Description of the resource.
  ///
  /// Must be less than 256 characters.
  ///
  /// Optional.
  core.String? description;

  /// The time when the auth_provider will expire.
  ///
  /// Output only.
  core.String? expireTime;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The full resource name of the auth_provider. Format:
  /// projects/{project}/locations/{location}/authProviders/{auth_provider}
  core.String? name;

  /// The state of the auth_provider.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ENABLED" : Enabled and can be used.
  /// - "DISABLED" : Disabled and cannot be used.
  core.String? state;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  /// Input only.
  ///
  /// Represents the workload identity in IAM `principal://` format of the
  /// agent(s) that will use this AuthProvider. Example:
  /// `principal://agents.global.org-${ORG_ID}.system.id.goog/resources/aiplatform/projects/{PROJECT_ID}/locations/{LOCATIONS}/reasoningEngines/{ID}`
  ///
  /// Optional.
  core.List<core.String>? workloadIds;

  AuthProvider({
    this.allowedScopes,
    this.authProviderTypeParams,
    this.blockedScopes,
    this.createTime,
    this.deleted,
    this.description,
    this.expireTime,
    this.labels,
    this.name,
    this.state,
    this.updateTime,
    this.workloadIds,
  });

  AuthProvider.fromJson(core.Map json_)
    : this(
        allowedScopes: (json_['allowedScopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        authProviderTypeParams: json_.containsKey('authProviderTypeParams')
            ? AuthProviderTypeParams.fromJson(
                json_['authProviderTypeParams']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        blockedScopes: (json_['blockedScopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        createTime: json_['createTime'] as core.String?,
        deleted: json_['deleted'] as core.bool?,
        description: json_['description'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        workloadIds: (json_['workloadIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowedScopes = this.allowedScopes;
    final authProviderTypeParams = this.authProviderTypeParams;
    final blockedScopes = this.blockedScopes;
    final createTime = this.createTime;
    final deleted = this.deleted;
    final description = this.description;
    final expireTime = this.expireTime;
    final labels = this.labels;
    final name = this.name;
    final state = this.state;
    final updateTime = this.updateTime;
    final workloadIds = this.workloadIds;
    return {
      'allowedScopes': ?allowedScopes,
      'authProviderTypeParams': ?authProviderTypeParams,
      'blockedScopes': ?blockedScopes,
      'createTime': ?createTime,
      'deleted': ?deleted,
      'description': ?description,
      'expireTime': ?expireTime,
      'labels': ?labels,
      'name': ?name,
      'state': ?state,
      'updateTime': ?updateTime,
      'workloadIds': ?workloadIds,
    };
  }
}

/// AuthProvider type specific parameters.
///
/// Required when creating an auth_provider.
class AuthProviderTypeParams {
  /// ApiKey AuthProvider type parameters.
  ApiKeyParams? apiKey;

  /// GeminiEnterprise auth_provider type parameters.
  GeminiEnterpriseAuthProviderParams? geAuthProvider;

  /// ThreeLeggedOAuth AuthProvider type parameters.
  ThreeLeggedOAuth? threeLeggedOauth;

  /// TwoLeggedOAuth AuthProvider type parameters.
  TwoLeggedOAuth? twoLeggedOauth;

  AuthProviderTypeParams({
    this.apiKey,
    this.geAuthProvider,
    this.threeLeggedOauth,
    this.twoLeggedOauth,
  });

  AuthProviderTypeParams.fromJson(core.Map json_)
    : this(
        apiKey: json_.containsKey('apiKey')
            ? ApiKeyParams.fromJson(
                json_['apiKey'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        geAuthProvider: json_.containsKey('geAuthProvider')
            ? GeminiEnterpriseAuthProviderParams.fromJson(
                json_['geAuthProvider'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        threeLeggedOauth: json_.containsKey('threeLeggedOauth')
            ? ThreeLeggedOAuth.fromJson(
                json_['threeLeggedOauth']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        twoLeggedOauth: json_.containsKey('twoLeggedOauth')
            ? TwoLeggedOAuth.fromJson(
                json_['twoLeggedOauth'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiKey = this.apiKey;
    final geAuthProvider = this.geAuthProvider;
    final threeLeggedOauth = this.threeLeggedOauth;
    final twoLeggedOauth = this.twoLeggedOauth;
    return {
      'apiKey': ?apiKey,
      'geAuthProvider': ?geAuthProvider,
      'threeLeggedOauth': ?threeLeggedOauth,
      'twoLeggedOauth': ?twoLeggedOauth,
    };
  }
}

/// Message describing Authorization object
class Authorization {
  /// The client_user_id provided by the client application for their end user.
  ///
  /// Not verified by Google.
  ///
  /// Output only.
  core.String? clientUserId;

  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// Identifier.
  ///
  /// name of resource
  core.String? name;

  /// The scopes actually granted by the end user during the consent flow.
  ///
  /// Output only.
  core.List<core.String>? scopes;

  /// The state of the authorization.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ACTIVE" : Active.
  /// - "SUSPENDED" : Suspended.
  core.String? state;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  Authorization({
    this.clientUserId,
    this.createTime,
    this.name,
    this.scopes,
    this.state,
    this.updateTime,
  });

  Authorization.fromJson(core.Map json_)
    : this(
        clientUserId: json_['clientUserId'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        name: json_['name'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientUserId = this.clientUserId;
    final createTime = this.createTime;
    final name = this.name;
    final scopes = this.scopes;
    final state = this.state;
    final updateTime = this.updateTime;
    return {
      'clientUserId': ?clientUserId,
      'createTime': ?createTime,
      'name': ?name,
      'scopes': ?scopes,
      'state': ?state,
      'updateTime': ?updateTime,
    };
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
        condition: json_.containsKey('condition')
            ? Expr.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        members: (json_['members'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final members = this.members;
    final role = this.role;
    return {'condition': ?condition, 'members': ?members, 'role': ?role};
  }
}

/// Message for disabling an AuthProvider
typedef DisableAuthProviderRequest = $AuthProviderRequest;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Message for enabling an AuthProvider
typedef EnableAuthProviderRequest = $AuthProviderRequest;

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

/// Message describing GeminiEnterpriseAuthProviderParams object.
typedef GeminiEnterpriseAuthProviderParams = $Empty;

/// Message for response to listing AccessSummaries
class ListAccessSummariesResponse {
  /// The list of AccessSummary
  core.List<AccessSummary>? accessSummaries;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAccessSummariesResponse({
    this.accessSummaries,
    this.nextPageToken,
    this.unreachable,
  });

  ListAccessSummariesResponse.fromJson(core.Map json_)
    : this(
        accessSummaries: (json_['accessSummaries'] as core.List?)
            ?.map(
              (value) => AccessSummary.fromJson(
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
    final accessSummaries = this.accessSummaries;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'accessSummaries': ?accessSummaries,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing AuthProviders
class ListAuthProvidersResponse {
  /// The list of AuthProvider
  core.List<AuthProvider>? authProviders;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAuthProvidersResponse({
    this.authProviders,
    this.nextPageToken,
    this.unreachable,
  });

  ListAuthProvidersResponse.fromJson(core.Map json_)
    : this(
        authProviders: (json_['authProviders'] as core.List?)
            ?.map(
              (value) => AuthProvider.fromJson(
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
    final authProviders = this.authProviders;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'authProviders': ?authProviders,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing Authorizations
class ListAuthorizationsResponse {
  /// The list of Authorization
  core.List<Authorization>? authorizations;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAuthorizationsResponse({
    this.authorizations,
    this.nextPageToken,
    this.unreachable,
  });

  ListAuthorizationsResponse.fromJson(core.Map json_)
    : this(
        authorizations: (json_['authorizations'] as core.List?)
            ?.map(
              (value) => Authorization.fromJson(
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
    final authorizations = this.authorizations;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'authorizations': ?authorizations,
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

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

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
        auditConfigs: (json_['auditConfigs'] as core.List?)
            ?.map(
              (value) => AuditConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        bindings: (json_['bindings'] as core.List?)
            ?.map(
              (value) => Binding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditConfigs = this.auditConfigs;
    final bindings = this.bindings;
    final etag = this.etag;
    final version = this.version;
    return {
      'auditConfigs': ?auditConfigs,
      'bindings': ?bindings,
      'etag': ?etag,
      'version': ?version,
    };
  }
}

/// Response message for QueryAuthProviders.
class QueryAuthProvidersResponse {
  /// The unique list of auth_provider resource names used by the workload.
  core.List<core.String>? authProviderNames;

  /// A token identifying a page of results the server should return.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  QueryAuthProvidersResponse({this.authProviderNames, this.nextPageToken});

  QueryAuthProvidersResponse.fromJson(core.Map json_)
    : this(
        authProviderNames: (json_['authProviderNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authProviderNames = this.authProviderNames;
    final nextPageToken = this.nextPageToken;
    return {
      'authProviderNames': ?authProviderNames,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for QueryWorkloads.
class QueryWorkloadsResponse {
  /// A token to retrieve the next page of results.
  core.String? nextPageToken;

  /// The unique list of workload identifiers (agents) that used the
  /// auth_provider.
  core.List<core.String>? workloadIds;

  QueryWorkloadsResponse({this.nextPageToken, this.workloadIds});

  QueryWorkloadsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        workloadIds: (json_['workloadIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final workloadIds = this.workloadIds;
    return {'nextPageToken': ?nextPageToken, 'workloadIds': ?workloadIds};
  }
}

/// Request message for RevokeAuthorization.
class RevokeAuthorizationRequest {
  /// The identity of the user to revoke authorization for.
  ///
  /// Required.
  core.String? userId;

  RevokeAuthorizationRequest({this.userId});

  RevokeAuthorizationRequest.fromJson(core.Map json_)
    : this(userId: json_['userId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final userId = this.userId;
    return {'userId': ?userId};
  }
}

/// Response message for RevokeAuthorization.
typedef RevokeAuthorizationResponse = $Empty;

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
        policy: json_.containsKey('policy')
            ? Policy.fromJson(
                json_['policy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final policy = this.policy;
    final updateMask = this.updateMask;
    return {'policy': ?policy, 'updateMask': ?updateMask};
  }
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Message describing ThreeLeggedOAuth object.
class ThreeLeggedOAuth {
  /// The authorization endpoint to send users to for consenting to delegate to
  /// the agent.
  ///
  /// eg. "https://auth.atlassian.com/authorize"
  ///
  /// Optional.
  core.String? authorizationUrl;

  /// The client ID of the OAuth client.
  ///
  /// Optional.
  core.String? clientId;

  /// Input only.
  ///
  /// The client secret of the OAuth client.
  ///
  /// Optional.
  core.String? clientSecret;

  /// The default continue URI for 3LO flow and it will be used when no continue
  /// URI is provided in the RetrieveCredentials request.
  ///
  /// Optional.
  core.String? defaultContinueUri;

  /// Enables Proof Key for Code Exchange (PKCE) for the OAuth flow to prevent
  /// authorization code interception attacks.
  ///
  /// Optional.
  core.bool? enablePkce;

  /// The redirect URL this auth_provider uses for the OAuth exchange.
  ///
  /// This is deterministic based on the name of the auth_provider.
  ///
  /// Output only.
  core.String? redirectUrl;

  /// The token endpoint for requesting tokens on behalf of an end user.
  ///
  /// eg. "https://auth.atlassian.com/oauth/token"
  ///
  /// Optional.
  core.String? tokenUrl;

  ThreeLeggedOAuth({
    this.authorizationUrl,
    this.clientId,
    this.clientSecret,
    this.defaultContinueUri,
    this.enablePkce,
    this.redirectUrl,
    this.tokenUrl,
  });

  ThreeLeggedOAuth.fromJson(core.Map json_)
    : this(
        authorizationUrl: json_['authorizationUrl'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        defaultContinueUri: json_['defaultContinueUri'] as core.String?,
        enablePkce: json_['enablePkce'] as core.bool?,
        redirectUrl: json_['redirectUrl'] as core.String?,
        tokenUrl: json_['tokenUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorizationUrl = this.authorizationUrl;
    final clientId = this.clientId;
    final clientSecret = this.clientSecret;
    final defaultContinueUri = this.defaultContinueUri;
    final enablePkce = this.enablePkce;
    final redirectUrl = this.redirectUrl;
    final tokenUrl = this.tokenUrl;
    return {
      'authorizationUrl': ?authorizationUrl,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'defaultContinueUri': ?defaultContinueUri,
      'enablePkce': ?enablePkce,
      'redirectUrl': ?redirectUrl,
      'tokenUrl': ?tokenUrl,
    };
  }
}

/// Message describing TwoLeggedOAuth object.
class TwoLeggedOAuth {
  /// The client ID of the OAuth client.
  ///
  /// Optional.
  core.String? clientId;

  /// Input only.
  ///
  /// The client secret of the OAuth client.
  ///
  /// Optional.
  core.String? clientSecret;

  /// The token endpoint of the OAuth client.
  ///
  /// Optional.
  core.String? tokenUrl;

  TwoLeggedOAuth({this.clientId, this.clientSecret, this.tokenUrl});

  TwoLeggedOAuth.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        tokenUrl: json_['tokenUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientId = this.clientId;
    final clientSecret = this.clientSecret;
    final tokenUrl = this.tokenUrl;
    return {
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'tokenUrl': ?tokenUrl,
    };
  }
}

/// Message for undeleting a AuthProvider
typedef UndeleteAuthProviderRequest = $AuthProviderRequest;
