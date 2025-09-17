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

/// SaaS Runtime API - v1beta1
///
/// For more information, see <https://cloud.google.com/saas-runtime/docs>
///
/// Create an instance of [SaaSServiceManagementApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsReleasesResource]
///     - [ProjectsLocationsRolloutKindsResource]
///     - [ProjectsLocationsRolloutsResource]
///     - [ProjectsLocationsSaasResource]
///     - [ProjectsLocationsTenantsResource]
///     - [ProjectsLocationsUnitKindsResource]
///     - [ProjectsLocationsUnitOperationsResource]
///     - [ProjectsLocationsUnitsResource]
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

class SaaSServiceManagementApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  SaaSServiceManagementApi(
    http.Client client, {
    core.String rootUrl = 'https://saasservicemgmt.googleapis.com/',
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

  ProjectsLocationsReleasesResource get releases =>
      ProjectsLocationsReleasesResource(_requester);
  ProjectsLocationsRolloutKindsResource get rolloutKinds =>
      ProjectsLocationsRolloutKindsResource(_requester);
  ProjectsLocationsRolloutsResource get rollouts =>
      ProjectsLocationsRolloutsResource(_requester);
  ProjectsLocationsSaasResource get saas =>
      ProjectsLocationsSaasResource(_requester);
  ProjectsLocationsTenantsResource get tenants =>
      ProjectsLocationsTenantsResource(_requester);
  ProjectsLocationsUnitKindsResource get unitKinds =>
      ProjectsLocationsUnitKindsResource(_requester);
  ProjectsLocationsUnitOperationsResource get unitOperations =>
      ProjectsLocationsUnitOperationsResource(_requester);
  ProjectsLocationsUnitsResource get units =>
      ProjectsLocationsUnitsResource(_requester);

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
  /// Completes with a [GoogleCloudLocationLocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationLocation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationLocation.fromJson(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name') + '/locations';

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

class ProjectsLocationsReleasesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsReleasesResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new release.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the release.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [releaseId] - Required. The ID value for the new release.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String? releaseId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (releaseId != null) 'releaseId': [releaseId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Release.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a single release.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [etag] - The etag known to the client for the expected state of the
  /// release. This is used with state-changing methods to prevent accidental
  /// overwrites when multiple user agents might be acting in parallel on the
  /// same resource. An etag wildcard provide optimistic concurrency based on
  /// the expected existence of the release. The Any wildcard (`*`) requires
  /// that the resource must already exists, and the Not Any wildcard (`!*`)
  /// requires that it must not.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
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
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a single release.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Release> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Release.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a collection of releases.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the release.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter the list as specified in https://google.aip.dev/160.
  ///
  /// [orderBy] - Order results as specified in https://google.aip.dev/132.
  ///
  /// [pageSize] - The maximum number of releases to send per page.
  ///
  /// [pageToken] - The page token: If the next_page_token from a previous
  /// response is provided, this request will send the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReleasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single release.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name (full URI of the resource)
  /// following the standard naming scheme:
  /// "projects/{project}/locations/{location}/releases/{release}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the Release resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields in the Release will be overwritten.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Release> patch(
    Release request,
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Release.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRolloutKindsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRolloutKindsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new rollout kind.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the rollout kind.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [rolloutKindId] - Required. The ID value for the new rollout kind.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RolloutKind].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RolloutKind> create(
    RolloutKind request,
    core.String parent, {
    core.String? requestId,
    core.String? rolloutKindId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (rolloutKindId != null) 'rolloutKindId': [rolloutKindId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/rolloutKinds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RolloutKind.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a single rollout kind.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/rolloutKinds/\[^/\]+$`.
  ///
  /// [etag] - The etag known to the client for the expected state of the
  /// rollout kind. This is used with state-changing methods to prevent
  /// accidental overwrites when multiple user agents might be acting in
  /// parallel on the same resource. An etag wildcard provide optimistic
  /// concurrency based on the expected existence of the rollout kind. The Any
  /// wildcard (`*`) requires that the resource must already exists, and the Not
  /// Any wildcard (`!*`) requires that it must not.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
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
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a single rollout kind.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/rolloutKinds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RolloutKind].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RolloutKind> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RolloutKind.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieve a collection of rollout kinds.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the rollout kind.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter the list as specified in https://google.aip.dev/160.
  ///
  /// [orderBy] - Order results as specified in https://google.aip.dev/132.
  ///
  /// [pageSize] - The maximum number of rollout kinds to send per page.
  ///
  /// [pageToken] - The page token: If the next_page_token from a previous
  /// response is provided, this request will send the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRolloutKindsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRolloutKindsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/rolloutKinds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRolloutKindsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single rollout kind.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name (full URI of the resource)
  /// following the standard naming scheme:
  /// "projects/{project}/locations/{location}/rolloutKinds/{rollout_kind_id}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/rolloutKinds/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the RolloutKind resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields in the RolloutKind will be overwritten.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RolloutKind].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RolloutKind> patch(
    RolloutKind request,
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return RolloutKind.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsRolloutsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRolloutsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new rollout.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the rollout.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [rolloutId] - Required. The ID value for the new rollout.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Rollout].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Rollout> create(
    Rollout request,
    core.String parent, {
    core.String? requestId,
    core.String? rolloutId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (rolloutId != null) 'rolloutId': [rolloutId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/rollouts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Rollout.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a single rollout.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/rollouts/\[^/\]+$`.
  ///
  /// [etag] - The etag known to the client for the expected state of the
  /// rollout. This is used with state-changing methods to prevent accidental
  /// overwrites when multiple user agents might be acting in parallel on the
  /// same resource. An etag wildcard provide optimistic concurrency based on
  /// the expected existence of the rollout. The Any wildcard (`*`) requires
  /// that the resource must already exists, and the Not Any wildcard (`!*`)
  /// requires that it must not.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
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
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a single rollout.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/rollouts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Rollout].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Rollout> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Rollout.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a collection of rollouts.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the rollout.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter the list as specified in https://google.aip.dev/160.
  ///
  /// [orderBy] - Order results as specified in https://google.aip.dev/132.
  ///
  /// [pageSize] - The maximum number of rollouts to send per page.
  ///
  /// [pageToken] - The page token: If the next_page_token from a previous
  /// response is provided, this request will send the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRolloutsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRolloutsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/rollouts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRolloutsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single rollout.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name (full URI of the resource)
  /// following the standard naming scheme:
  /// "projects/{project}/locations/{location}/rollout/{rollout_id}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/rollouts/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the Rollout resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields in the Rollout will be overwritten.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Rollout].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Rollout> patch(
    Rollout request,
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Rollout.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSaasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSaasResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new saas.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the saas.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [saasId] - Required. The ID value for the new saas.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Saas].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Saas> create(
    Saas request,
    core.String parent, {
    core.String? requestId,
    core.String? saasId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (saasId != null) 'saasId': [saasId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/saas';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Saas.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a single saas.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/saas/\[^/\]+$`.
  ///
  /// [etag] - The etag known to the client for the expected state of the saas.
  /// This is used with state-changing methods to prevent accidental overwrites
  /// when multiple user agents might be acting in parallel on the same
  /// resource. An etag wildcard provide optimistic concurrency based on the
  /// expected existence of the saas. The Any wildcard (`*`) requires that the
  /// resource must already exists, and the Not Any wildcard (`!*`) requires
  /// that it must not.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
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
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a single saas.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/saas/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Saas].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Saas> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Saas.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a collection of saas.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the saas.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter the list as specified in https://google.aip.dev/160.
  ///
  /// [orderBy] - Order results as specified in https://google.aip.dev/132.
  ///
  /// [pageSize] - The maximum number of saas to send per page.
  ///
  /// [pageToken] - The page token: If the next_page_token from a previous
  /// response is provided, this request will send the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSaasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSaasResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/saas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSaasResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single saas.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name (full URI of the resource)
  /// following the standard naming scheme:
  /// "projects/{project}/locations/{location}/saas/{saas}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/saas/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the Saas resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields in the Saas will be overwritten.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Saas].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Saas> patch(
    Saas request,
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Saas.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTenantsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTenantsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new tenant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the tenant.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [tenantId] - Required. The ID value for the new tenant.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tenant> create(
    Tenant request,
    core.String parent, {
    core.String? requestId,
    core.String? tenantId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (tenantId != null) 'tenantId': [tenantId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/tenants';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Tenant.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a single tenant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [etag] - The etag known to the client for the expected state of the
  /// tenant. This is used with state-changing methods to prevent accidental
  /// overwrites when multiple user agents might be acting in parallel on the
  /// same resource. An etag wildcard provide optimistic concurrency based on
  /// the expected existence of the tenant. The Any wildcard (`*`) requires that
  /// the resource must already exists, and the Not Any wildcard (`!*`) requires
  /// that it must not.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
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
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a single tenant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tenant> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Tenant.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a collection of tenants.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the tenant.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter the list as specified in https://google.aip.dev/160.
  ///
  /// [orderBy] - Order results as specified in https://google.aip.dev/132.
  ///
  /// [pageSize] - The maximum number of tenants to send per page.
  ///
  /// [pageToken] - The page token: If the next_page_token from a previous
  /// response is provided, this request will send the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTenantsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTenantsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/tenants';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTenantsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single tenant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name (full URI of the resource)
  /// following the standard naming scheme:
  /// "projects/{project}/locations/{location}/tenants/{tenant}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the Tenant resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields in the Tenant will be overwritten.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tenant> patch(
    Tenant request,
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Tenant.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsUnitKindsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsUnitKindsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new unit kind.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the unit kind.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [unitKindId] - Required. The ID value for the new unit kind.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UnitKind].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UnitKind> create(
    UnitKind request,
    core.String parent, {
    core.String? requestId,
    core.String? unitKindId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (unitKindId != null) 'unitKindId': [unitKindId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/unitKinds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UnitKind.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a single unit kind.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/unitKinds/\[^/\]+$`.
  ///
  /// [etag] - The etag known to the client for the expected state of the unit
  /// kind. This is used with state-changing methods to prevent accidental
  /// overwrites when multiple user agents might be acting in parallel on the
  /// same resource. An etag wildcard provide optimistic concurrency based on
  /// the expected existence of the unit kind. The Any wildcard (`*`) requires
  /// that the resource must already exists, and the Not Any wildcard (`!*`)
  /// requires that it must not.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
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
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a single unit kind.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/unitKinds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UnitKind].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UnitKind> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UnitKind.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a collection of unit kinds.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the unit kind.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter the list as specified in https://google.aip.dev/160.
  ///
  /// [orderBy] - Order results as specified in https://google.aip.dev/132.
  ///
  /// [pageSize] - The maximum number of unit kinds to send per page.
  ///
  /// [pageToken] - The page token: If the next_page_token from a previous
  /// response is provided, this request will send the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUnitKindsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUnitKindsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/unitKinds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUnitKindsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single unit kind.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name (full URI of the resource)
  /// following the standard naming scheme:
  /// "projects/{project}/locations/{location}/unitKinds/{unitKind}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/unitKinds/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the UnitKind resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields in the UnitKind will be overwritten.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UnitKind].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UnitKind> patch(
    UnitKind request,
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UnitKind.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsUnitOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsUnitOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new unit operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the unit operation.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [unitOperationId] - Required. The ID value for the new unit operation.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UnitOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UnitOperation> create(
    UnitOperation request,
    core.String parent, {
    core.String? requestId,
    core.String? unitOperationId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (unitOperationId != null) 'unitOperationId': [unitOperationId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/unitOperations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UnitOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a single unit operation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/unitOperations/\[^/\]+$`.
  ///
  /// [etag] - The etag known to the client for the expected state of the unit
  /// operation. This is used with state-changing methods to prevent accidental
  /// overwrites when multiple user agents might be acting in parallel on the
  /// same resource. An etag wildcard provide optimistic concurrency based on
  /// the expected existence of the unit operation. The Any wildcard (`*`)
  /// requires that the resource must already exists, and the Not Any wildcard
  /// (`!*`) requires that it must not.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
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
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a single unit operation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/unitOperations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UnitOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UnitOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UnitOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieve a collection of unit operations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the unit operation.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter the list as specified in https://google.aip.dev/160.
  ///
  /// [orderBy] - Order results as specified in https://google.aip.dev/132.
  ///
  /// [pageSize] - The maximum number of unit operations to send per page.
  ///
  /// [pageToken] - The page token: If the next_page_token from a previous
  /// response is provided, this request will send the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUnitOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUnitOperationsResponse> list(
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
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/unitOperations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUnitOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single unit operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name (full URI of the resource)
  /// following the standard naming scheme:
  /// "projects/{project}/locations/{location}/unitOperations/{unitOperation}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/unitOperations/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the UnitOperation resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields in the UnitOperation will be overwritten.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UnitOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UnitOperation> patch(
    UnitOperation request,
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UnitOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsUnitsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsUnitsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new unit.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the unit.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [unitId] - Required. The ID value for the new unit.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Unit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Unit> create(
    Unit request,
    core.String parent, {
    core.String? requestId,
    core.String? unitId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (unitId != null) 'unitId': [unitId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/units';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Unit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a single unit.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/units/\[^/\]+$`.
  ///
  /// [etag] - The etag known to the client for the expected state of the unit.
  /// This is used with state-changing methods to prevent accidental overwrites
  /// when multiple user agents might be acting in parallel on the same
  /// resource. An etag wildcard provide optimistic concurrency based on the
  /// expected existence of the unit. The Any wildcard (`*`) requires that the
  /// resource must already exists, and the Not Any wildcard (`!*`) requires
  /// that it must not.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
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
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a single unit.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the resource within a service.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/units/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Unit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Unit> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Unit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a collection of units.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent of the unit.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter the list as specified in https://google.aip.dev/160.
  ///
  /// [orderBy] - Order results as specified in https://google.aip.dev/132.
  ///
  /// [pageSize] - The maximum number of units to send per page.
  ///
  /// [pageToken] - The page token: If the next_page_token from a previous
  /// response is provided, this request will send the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUnitsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUnitsResponse> list(
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/units';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUnitsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a single unit.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name (full URI of the resource)
  /// following the standard naming scheme:
  /// "projects/{project}/locations/{location}/units/{unit}"
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/units/\[^/\]+$`.
  ///
  /// [requestId] - An optional request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the Unit resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields in the Unit will be overwritten.
  ///
  /// [validateOnly] - If "validate_only" is set to true, the service will try
  /// to validate that this request would succeed, but will not actually make
  /// changes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Unit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Unit> patch(
    Unit request,
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

    final url_ = 'v1beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Unit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Represents the aggregation of a set of population of like records by a
/// certain group.
///
/// For example, a collection of unit counts can be aggregated and grouped by
/// their state.
class Aggregate {
  /// Number of records in the group.
  ///
  /// Required.
  core.int? count;

  /// Group by which to aggregate.
  ///
  /// Required.
  core.String? group;

  Aggregate({this.count, this.group});

  Aggregate.fromJson(core.Map json_)
    : this(
        count: json_['count'] as core.int?,
        group: json_['group'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (count != null) 'count': count!,
    if (group != null) 'group': group!,
  };
}

/// Blueprints are OCI Images that contain all of the artifacts needed to
/// provision a unit.
///
/// Metadata such as, type of the engine used to actuate the blueprint (e.g.
/// terraform, helm etc) and version will come from the image manifest. If the
/// hostname is omitted, it will be assumed to be the regional path to Artifact
/// Registry (eg. us-east1-docker.pkg.dev).
class Blueprint {
  /// Type of the engine used to actuate the blueprint.
  ///
  /// e.g. terraform, helm etc.
  ///
  /// Output only.
  core.String? engine;

  /// URI to a blueprint used by the Unit (required unless unitKind or release
  /// is set).
  ///
  /// Optional. Immutable.
  core.String? package;

  /// Version metadata if present on the blueprint.
  ///
  /// Output only.
  core.String? version;

  Blueprint({this.engine, this.package, this.version});

  Blueprint.fromJson(core.Map json_)
    : this(
        engine: json_['engine'] as core.String?,
        package: json_['package'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (engine != null) 'engine': engine!,
    if (package != null) 'package': package!,
    if (version != null) 'version': version!,
  };
}

/// Dependency represent a single dependency with another unit kind by alias.
class Dependency {
  /// An alias for the dependency.
  ///
  /// Used for input variable mapping.
  ///
  /// Required.
  core.String? alias;

  /// The unit kind of the dependency.
  ///
  /// Required. Immutable.
  core.String? unitKind;

  Dependency({this.alias, this.unitKind});

  Dependency.fromJson(core.Map json_)
    : this(
        alias: json_['alias'] as core.String?,
        unitKind: json_['unitKind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alias != null) 'alias': alias!,
    if (unitKind != null) 'unitKind': unitKind!,
  };
}

/// Deprovision is the unit operation that deprovision the underlying resources
/// represented by a Unit.
///
/// Can only execute if the Unit is currently provisioned.
typedef Deprovision = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The configuration for error budget.
///
/// If the number of failed units exceeds max(allowed_count, allowed_ratio *
/// total_units), the rollout will be paused.
class ErrorBudget {
  /// The maximum number of failed units allowed in a location without pausing
  /// the rollout.
  ///
  /// Optional.
  core.int? allowedCount;

  /// The maximum percentage of units allowed to fail (0, 100\] within a
  /// location without pausing the rollout.
  ///
  /// Optional.
  core.int? allowedPercentage;

  ErrorBudget({this.allowedCount, this.allowedPercentage});

  ErrorBudget.fromJson(core.Map json_)
    : this(
        allowedCount: json_['allowedCount'] as core.int?,
        allowedPercentage: json_['allowedPercentage'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedCount != null) 'allowedCount': allowedCount!,
    if (allowedPercentage != null) 'allowedPercentage': allowedPercentage!,
  };
}

/// Output variables whose values will be passed on to dependencies
class FromMapping {
  /// Alias of the dependency that the outputVariable will pass its value to
  ///
  /// Required.
  core.String? dependency;

  /// Name of the outputVariable on the dependency
  ///
  /// Required.
  core.String? outputVariable;

  FromMapping({this.dependency, this.outputVariable});

  FromMapping.fromJson(core.Map json_)
    : this(
        dependency: json_['dependency'] as core.String?,
        outputVariable: json_['outputVariable'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dependency != null) 'dependency': dependency!,
    if (outputVariable != null) 'outputVariable': outputVariable!,
  };
}

/// A resource that represents a Google Cloud location.
typedef GoogleCloudLocationLocation = $Location00;

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<GoogleCloudLocationLocation>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudLocationLocation.fromJson(
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

/// The response structure for the ListReleases method.
class ListReleasesResponse {
  /// If present, the next page token can be provided to a subsequent
  /// ListReleases call to list the next page.
  ///
  /// If empty, there are no more pages.
  core.String? nextPageToken;

  /// The resulting releases.
  core.List<Release>? releases;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListReleasesResponse({this.nextPageToken, this.releases, this.unreachable});

  ListReleasesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        releases:
            (json_['releases'] as core.List?)
                ?.map(
                  (value) => Release.fromJson(
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
    if (releases != null) 'releases': releases!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response structure for the ListRolloutKinds method.
class ListRolloutKindsResponse {
  /// If present, the next page token can be provided to a subsequent
  /// ListRolloutKinds call to list the next page.
  ///
  /// If empty, there are no more pages.
  core.String? nextPageToken;

  /// The resulting rollout kinds.
  core.List<RolloutKind>? rolloutKinds;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListRolloutKindsResponse({
    this.nextPageToken,
    this.rolloutKinds,
    this.unreachable,
  });

  ListRolloutKindsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        rolloutKinds:
            (json_['rolloutKinds'] as core.List?)
                ?.map(
                  (value) => RolloutKind.fromJson(
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
    if (rolloutKinds != null) 'rolloutKinds': rolloutKinds!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response structure for the ListRollouts method.
class ListRolloutsResponse {
  /// If present, the next page token can be provided to a subsequent
  /// ListRollouts call to list the next page.
  ///
  /// If empty, there are no more pages.
  core.String? nextPageToken;

  /// The resulting rollouts.
  core.List<Rollout>? rollouts;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListRolloutsResponse({this.nextPageToken, this.rollouts, this.unreachable});

  ListRolloutsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        rollouts:
            (json_['rollouts'] as core.List?)
                ?.map(
                  (value) => Rollout.fromJson(
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
    if (rollouts != null) 'rollouts': rollouts!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response structure for the ListSaas method.
class ListSaasResponse {
  /// If present, the next page token can be provided to a subsequent ListSaas
  /// call to list the next page.
  ///
  /// If empty, there are no more pages.
  core.String? nextPageToken;

  /// The resulting saas.
  core.List<Saas>? saas;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListSaasResponse({this.nextPageToken, this.saas, this.unreachable});

  ListSaasResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        saas:
            (json_['saas'] as core.List?)
                ?.map(
                  (value) => Saas.fromJson(
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
    if (saas != null) 'saas': saas!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response structure for the ListTenants method.
class ListTenantsResponse {
  /// If present, the next page token can be provided to a subsequent
  /// ListTenants call to list the next page.
  ///
  /// If empty, there are no more pages.
  core.String? nextPageToken;

  /// The resulting tenants.
  core.List<Tenant>? tenants;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListTenantsResponse({this.nextPageToken, this.tenants, this.unreachable});

  ListTenantsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        tenants:
            (json_['tenants'] as core.List?)
                ?.map(
                  (value) => Tenant.fromJson(
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
    if (tenants != null) 'tenants': tenants!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response structure for the ListUnitKinds method.
class ListUnitKindsResponse {
  /// If present, the next page token can be provided to a subsequent
  /// ListUnitKinds call to list the next page.
  ///
  /// If empty, there are no more pages.
  core.String? nextPageToken;

  /// The resulting unit kinds.
  core.List<UnitKind>? unitKinds;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListUnitKindsResponse({this.nextPageToken, this.unitKinds, this.unreachable});

  ListUnitKindsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unitKinds:
            (json_['unitKinds'] as core.List?)
                ?.map(
                  (value) => UnitKind.fromJson(
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
    if (unitKinds != null) 'unitKinds': unitKinds!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response structure for the ListUnitOperations method.
class ListUnitOperationsResponse {
  /// If present, the next page token can be provided to a subsequent
  /// ListUnitOperations call to list the next page.
  ///
  /// If empty, there are no more pages.
  core.String? nextPageToken;

  /// The resulting unit operations.
  core.List<UnitOperation>? unitOperations;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListUnitOperationsResponse({
    this.nextPageToken,
    this.unitOperations,
    this.unreachable,
  });

  ListUnitOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unitOperations:
            (json_['unitOperations'] as core.List?)
                ?.map(
                  (value) => UnitOperation.fromJson(
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
    if (unitOperations != null) 'unitOperations': unitOperations!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response structure for the ListUnits method.
class ListUnitsResponse {
  /// If present, the next page token can be provided to a subsequent ListUnits
  /// call to list the next page.
  ///
  /// If empty, there are no more pages.
  core.String? nextPageToken;

  /// The resulting units.
  core.List<Unit>? units;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListUnitsResponse({this.nextPageToken, this.units, this.unreachable});

  ListUnitsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        units:
            (json_['units'] as core.List?)
                ?.map(
                  (value) => Unit.fromJson(
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
    if (units != null) 'units': units!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Location information that the service is available in.
class Location {
  /// Name of location.
  ///
  /// Optional.
  core.String? name;

  Location({this.name});

  Location.fromJson(core.Map json_) : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// Captures requested directives for performing future maintenance on the unit.
///
/// This includes a request for the unit to skip maintenance for a period of
/// time and remain pinned to its current release as well as controls for
/// postponing maintenance scheduled in future.
class MaintenanceSettings {
  /// If present, it fixes the release on the unit until the given time; i.e.
  /// changes to the release field will be rejected.
  ///
  /// Rollouts should and will also respect this by not requesting an upgrade in
  /// the first place.
  ///
  /// Optional.
  core.String? pinnedUntilTime;

  MaintenanceSettings({this.pinnedUntilTime});

  MaintenanceSettings.fromJson(core.Map json_)
    : this(pinnedUntilTime: json_['pinnedUntilTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (pinnedUntilTime != null) 'pinnedUntilTime': pinnedUntilTime!,
  };
}

/// Provision is the unit operation that provision the underlying resources
/// represented by a Unit.
///
/// Can only execute if the Unit is not currently provisioned.
class Provision {
  /// Set of input variables.
  ///
  /// Maximum 100. (optional)
  ///
  /// Optional.
  core.List<UnitVariable>? inputVariables;

  /// Reference to the Release object to use for the Unit.
  ///
  /// (optional).
  ///
  /// Optional.
  core.String? release;

  Provision({this.inputVariables, this.release});

  Provision.fromJson(core.Map json_)
    : this(
        inputVariables:
            (json_['inputVariables'] as core.List?)
                ?.map(
                  (value) => UnitVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        release: json_['release'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (inputVariables != null) 'inputVariables': inputVariables!,
    if (release != null) 'release': release!,
  };
}

/// A new version to be propagated and deployed to units.
///
/// This includes pointers to packaged blueprints for actuation (e.g Helm or
/// Terraform configuration packages) via artifact registry.
class Release {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Blueprints are OCI Images that contain all of the artifacts needed to
  /// provision a unit.
  ///
  /// Optional.
  Blueprint? blueprint;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An opaque value that uniquely identifies a version or generation of a
  /// resource.
  ///
  /// It can be used to confirm that the client and server agree on the ordering
  /// of a resource being written.
  ///
  /// Output only.
  core.String? etag;

  /// Mapping of input variables to default values.
  ///
  /// Maximum 100
  ///
  /// Optional.
  core.List<UnitVariable>? inputVariableDefaults;

  /// List of input variables declared on the blueprint and can be present with
  /// their values on the unit spec
  ///
  /// Optional. Output only.
  core.List<UnitVariable>? inputVariables;

  /// The labels on the resource, which can be used for categorization.
  ///
  /// similar to Kubernetes resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name (full URI of the resource) following the standard naming
  /// scheme: "projects/{project}/locations/{location}/releases/{release}"
  core.String? name;

  /// List of output variables declared on the blueprint and can be present with
  /// their values on the unit status
  ///
  /// Optional. Output only.
  core.List<UnitVariable>? outputVariables;

  /// Set of requirements to be fulfilled on the Unit when using this Release.
  ///
  /// Optional.
  ReleaseRequirements? releaseRequirements;

  /// The unique identifier of the resource.
  ///
  /// UID is unique in the time and space for this resource within the scope of
  /// the service. It is typically generated by the server on successful
  /// creation of a resource and must not be changed. UID is used to uniquely
  /// identify resources with resource name reuses. This should be a UUID4.
  ///
  /// Output only.
  core.String? uid;

  /// Reference to the UnitKind this Release corresponds to (required and
  /// immutable once created).
  ///
  /// Required. Immutable.
  core.String? unitKind;

  /// The timestamp when the resource was last updated.
  ///
  /// Any change to the resource made by users must refresh this value. Changes
  /// to a resource made by the service should refresh this value.
  ///
  /// Output only.
  core.String? updateTime;

  Release({
    this.annotations,
    this.blueprint,
    this.createTime,
    this.etag,
    this.inputVariableDefaults,
    this.inputVariables,
    this.labels,
    this.name,
    this.outputVariables,
    this.releaseRequirements,
    this.uid,
    this.unitKind,
    this.updateTime,
  });

  Release.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        blueprint:
            json_.containsKey('blueprint')
                ? Blueprint.fromJson(
                  json_['blueprint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        etag: json_['etag'] as core.String?,
        inputVariableDefaults:
            (json_['inputVariableDefaults'] as core.List?)
                ?.map(
                  (value) => UnitVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        inputVariables:
            (json_['inputVariables'] as core.List?)
                ?.map(
                  (value) => UnitVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        outputVariables:
            (json_['outputVariables'] as core.List?)
                ?.map(
                  (value) => UnitVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        releaseRequirements:
            json_.containsKey('releaseRequirements')
                ? ReleaseRequirements.fromJson(
                  json_['releaseRequirements']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        uid: json_['uid'] as core.String?,
        unitKind: json_['unitKind'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (blueprint != null) 'blueprint': blueprint!,
    if (createTime != null) 'createTime': createTime!,
    if (etag != null) 'etag': etag!,
    if (inputVariableDefaults != null)
      'inputVariableDefaults': inputVariableDefaults!,
    if (inputVariables != null) 'inputVariables': inputVariables!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (outputVariables != null) 'outputVariables': outputVariables!,
    if (releaseRequirements != null)
      'releaseRequirements': releaseRequirements!,
    if (uid != null) 'uid': uid!,
    if (unitKind != null) 'unitKind': unitKind!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Set of requirements to be fulfilled on the Unit when using this Release.
class ReleaseRequirements {
  /// A list of releases from which a unit can be upgraded to this one
  /// (optional).
  ///
  /// If left empty no constraints will be applied. When provided, unit upgrade
  /// requests to this release will check and enforce this constraint.
  ///
  /// Optional.
  core.List<core.String>? upgradeableFromReleases;

  ReleaseRequirements({this.upgradeableFromReleases});

  ReleaseRequirements.fromJson(core.Map json_)
    : this(
        upgradeableFromReleases:
            (json_['upgradeableFromReleases'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (upgradeableFromReleases != null)
      'upgradeableFromReleases': upgradeableFromReleases!,
  };
}

/// Represents a single rollout execution and its results
class Rollout {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Requested change to the execution of this rollout.
  ///
  /// Default RolloutControl.action is ROLLOUT_ACTION_RUN meaning the rollout
  /// will be executed to completion while progressing through all natural
  /// Rollout States (such as RUNNING -\> SUCCEEDED or RUNNING -\> FAILED).
  /// Requests can only be made when the Rollout is in a non-terminal state.
  ///
  /// Optional.
  RolloutControl? control;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time when the rollout finished execution (regardless of success,
  /// failure, or cancellation).
  ///
  /// Will be empty if the rollout hasn't finished yet. Once set, the rollout is
  /// in terminal state and all the results are final.
  ///
  /// Optional. Output only.
  core.String? endTime;

  /// An opaque value that uniquely identifies a version or generation of a
  /// resource.
  ///
  /// It can be used to confirm that the client and server agree on the ordering
  /// of a resource being written.
  ///
  /// Output only.
  core.String? etag;

  /// The labels on the resource, which can be used for categorization.
  ///
  /// similar to Kubernetes resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name (full URI of the resource) following the standard naming
  /// scheme: "projects/{project}/locations/{location}/rollout/{rollout_id}"
  core.String? name;

  /// The direct parent rollout that this rollout is stemming from.
  ///
  /// The resource name (full URI of the resource) following the standard naming
  /// scheme: "projects/{project}/locations/{location}/rollouts/{rollout_id}"
  ///
  /// Optional. Output only.
  core.String? parentRollout;

  /// Name of the Release that gets rolled out to target Units.
  ///
  /// Required if no other type of release is specified.
  ///
  /// Optional. Immutable.
  core.String? release;

  /// Name of the RolloutKind this rollout is stemming from and adhering to.
  ///
  /// Optional. Immutable.
  core.String? rolloutKind;

  /// The strategy used for executing this Rollout.
  ///
  /// This strategy will override whatever strategy is specified in the
  /// RolloutType. If not specified on creation, the strategy from RolloutType
  /// will be used. There are two supported values strategies which are used to
  /// control - "Google.Cloud.Simple.AllAtOnce" -
  /// "Google.Cloud.Simple.OneLocationAtATime" A rollout with one of these
  /// simple strategies will rollout across all locations defined in the
  /// targeted UnitKind's Saas Locations.
  ///
  /// Optional.
  core.String? rolloutOrchestrationStrategy;

  /// The root rollout that this rollout is stemming from.
  ///
  /// The resource name (full URI of the resource) following the standard naming
  /// scheme: "projects/{project}/locations/{location}/rollouts/{rollout_id}"
  ///
  /// Optional. Output only.
  core.String? rootRollout;

  /// The time when the rollout started executing.
  ///
  /// Will be empty if the rollout hasn't started yet.
  ///
  /// Optional. Output only.
  core.String? startTime;

  /// Current state of the rollout.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ROLLOUT_STATE_UNSPECIFIED" : Unspecified state.
  /// - "ROLLOUT_STATE_RUNNING" : Rollout is in progress.
  /// - "ROLLOUT_STATE_PAUSED" : Rollout has been paused.
  /// - "ROLLOUT_STATE_SUCCEEDED" : Rollout completed successfully.
  /// - "ROLLOUT_STATE_FAILED" : Rollout has failed.
  /// - "ROLLOUT_STATE_CANCELLED" : Rollout has been canceled.
  /// - "ROLLOUT_STATE_WAITING" : Rollout is waiting for some condition to be
  /// met before starting.
  /// - "ROLLOUT_STATE_CANCELLING" : Rollout is being canceled.
  /// - "ROLLOUT_STATE_RESUMING" : Rollout is being resumed.
  /// - "ROLLOUT_STATE_PAUSING" : Rollout is being paused.
  core.String? state;

  /// Human readable message indicating details about the last state transition.
  ///
  /// Output only.
  core.String? stateMessage;

  /// The time when the rollout transitioned into its current state.
  ///
  /// Optional. Output only.
  core.String? stateTransitionTime;

  /// Details about the progress of the rollout.
  ///
  /// Optional. Output only.
  RolloutStats? stats;

  /// The unique identifier of the resource.
  ///
  /// UID is unique in the time and space for this resource within the scope of
  /// the service. It is typically generated by the server on successful
  /// creation of a resource and must not be changed. UID is used to uniquely
  /// identify resources with resource name reuses. This should be a UUID4.
  ///
  /// Output only.
  core.String? uid;

  /// CEL(https://github.com/google/cel-spec) formatted filter string against
  /// Unit.
  ///
  /// The filter will be applied to determine the eligible unit population. This
  /// filter can only reduce, but not expand the scope of the rollout. If not
  /// provided, the unit_filter from the RolloutType will be used.
  ///
  /// Optional.
  core.String? unitFilter;

  /// The timestamp when the resource was last updated.
  ///
  /// Any change to the resource made by users must refresh this value. Changes
  /// to a resource made by the service should refresh this value.
  ///
  /// Output only.
  core.String? updateTime;

  Rollout({
    this.annotations,
    this.control,
    this.createTime,
    this.endTime,
    this.etag,
    this.labels,
    this.name,
    this.parentRollout,
    this.release,
    this.rolloutKind,
    this.rolloutOrchestrationStrategy,
    this.rootRollout,
    this.startTime,
    this.state,
    this.stateMessage,
    this.stateTransitionTime,
    this.stats,
    this.uid,
    this.unitFilter,
    this.updateTime,
  });

  Rollout.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        control:
            json_.containsKey('control')
                ? RolloutControl.fromJson(
                  json_['control'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        parentRollout: json_['parentRollout'] as core.String?,
        release: json_['release'] as core.String?,
        rolloutKind: json_['rolloutKind'] as core.String?,
        rolloutOrchestrationStrategy:
            json_['rolloutOrchestrationStrategy'] as core.String?,
        rootRollout: json_['rootRollout'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
        stateMessage: json_['stateMessage'] as core.String?,
        stateTransitionTime: json_['stateTransitionTime'] as core.String?,
        stats:
            json_.containsKey('stats')
                ? RolloutStats.fromJson(
                  json_['stats'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        uid: json_['uid'] as core.String?,
        unitFilter: json_['unitFilter'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (control != null) 'control': control!,
    if (createTime != null) 'createTime': createTime!,
    if (endTime != null) 'endTime': endTime!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (parentRollout != null) 'parentRollout': parentRollout!,
    if (release != null) 'release': release!,
    if (rolloutKind != null) 'rolloutKind': rolloutKind!,
    if (rolloutOrchestrationStrategy != null)
      'rolloutOrchestrationStrategy': rolloutOrchestrationStrategy!,
    if (rootRollout != null) 'rootRollout': rootRollout!,
    if (startTime != null) 'startTime': startTime!,
    if (state != null) 'state': state!,
    if (stateMessage != null) 'stateMessage': stateMessage!,
    if (stateTransitionTime != null)
      'stateTransitionTime': stateTransitionTime!,
    if (stats != null) 'stats': stats!,
    if (uid != null) 'uid': uid!,
    if (unitFilter != null) 'unitFilter': unitFilter!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// RolloutControl provides a way to request a change to the execution of a
/// Rollout by pausing or canceling it.
class RolloutControl {
  /// Action to be performed on the Rollout.
  ///
  /// The default behavior is to run the rollout until it naturally reaches a
  /// terminal state.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ROLLOUT_ACTION_UNSPECIFIED" : Unspecified action, will be treated as
  /// RUN by default.
  /// - "ROLLOUT_ACTION_RUN" : Run the Rollout until it naturally reaches a
  /// terminal state. A rollout requested to run will progress through all
  /// natural Rollout States (such as RUNNING -\> SUCCEEDED or RUNNING -\>
  /// FAILED). If retriable errors are encountered during the rollout, the
  /// rollout will paused by default and can be resumed by re-requesting this
  /// RUN action.
  /// - "ROLLOUT_ACTION_PAUSE" : Pause the Rollout until it is resumed (i.e. RUN
  /// is requested).
  /// - "ROLLOUT_ACTION_CANCEL" : Cancel the Rollout permanently.
  core.String? action;

  /// Parameters for the RUN action.
  ///
  /// It is an error to specify this if the RolloutAction is not set to RUN. By
  /// default, the rollout will retry failed operations when resumed.
  ///
  /// Optional.
  RunRolloutActionParams? runParams;

  RolloutControl({this.action, this.runParams});

  RolloutControl.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        runParams:
            json_.containsKey('runParams')
                ? RunRolloutActionParams.fromJson(
                  json_['runParams'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (runParams != null) 'runParams': runParams!,
  };
}

/// An object that describes various settings of Rollout execution.
///
/// Includes built-in policies across GCP and GDC, and customizable policies.
class RolloutKind {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The configuration for error budget.
  ///
  /// If the number of failed units exceeds max(allowed_count, allowed_ratio *
  /// total_units), the rollout will be paused. If not set, all units will be
  /// attempted to be updated regardless of the number of failures encountered.
  ///
  /// Optional.
  ErrorBudget? errorBudget;

  /// An opaque value that uniquely identifies a version or generation of a
  /// resource.
  ///
  /// It can be used to confirm that the client and server agree on the ordering
  /// of a resource being written.
  ///
  /// Output only.
  core.String? etag;

  /// The labels on the resource, which can be used for categorization.
  ///
  /// similar to Kubernetes resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/rolloutKinds/{rollout_kind_id}"
  core.String? name;

  /// The strategy used for executing a Rollout.
  ///
  /// This is a required field. There are two supported values strategies which
  /// are used to control - "Google.Cloud.Simple.AllAtOnce" -
  /// "Google.Cloud.Simple.OneLocationAtATime" A rollout with one of these
  /// simple strategies will rollout across all locations defined in the
  /// associated UnitKind's Saas Locations.
  ///
  /// Optional.
  core.String? rolloutOrchestrationStrategy;

  /// The unique identifier of the resource.
  ///
  /// UID is unique in the time and space for this resource within the scope of
  /// the service. It is typically generated by the server on successful
  /// creation of a resource and must not be changed. UID is used to uniquely
  /// identify resources with resource name reuses. This should be a UUID4.
  ///
  /// Output only.
  core.String? uid;

  /// CEL(https://github.com/google/cel-spec) formatted filter string against
  /// Unit.
  ///
  /// The filter will be applied to determine the eligible unit population. This
  /// filter can only reduce, but not expand the scope of the rollout.
  ///
  /// Optional.
  core.String? unitFilter;

  /// UnitKind that this rollout kind corresponds to.
  ///
  /// Rollouts stemming from this rollout kind will target the units of this
  /// unit kind. In other words, this defines the population of target units to
  /// be upgraded by rollouts.
  ///
  /// Required. Immutable.
  core.String? unitKind;

  /// The timestamp when the resource was last updated.
  ///
  /// Any change to the resource made by users must refresh this value. Changes
  /// to a resource made by the service should refresh this value.
  ///
  /// Output only.
  core.String? updateTime;

  /// The config for updating the unit kind.
  ///
  /// By default, the unit kind will be updated on the rollout start.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "UPDATE_UNIT_KIND_STRATEGY_UNSPECIFIED" : Strategy unspecified.
  /// - "UPDATE_UNIT_KIND_STRATEGY_ON_START" : Update the unit kind strategy on
  /// the rollout start.
  /// - "UPDATE_UNIT_KIND_STRATEGY_NEVER" : Never update the unit kind.
  core.String? updateUnitKindStrategy;

  RolloutKind({
    this.annotations,
    this.createTime,
    this.errorBudget,
    this.etag,
    this.labels,
    this.name,
    this.rolloutOrchestrationStrategy,
    this.uid,
    this.unitFilter,
    this.unitKind,
    this.updateTime,
    this.updateUnitKindStrategy,
  });

  RolloutKind.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        createTime: json_['createTime'] as core.String?,
        errorBudget:
            json_.containsKey('errorBudget')
                ? ErrorBudget.fromJson(
                  json_['errorBudget'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        rolloutOrchestrationStrategy:
            json_['rolloutOrchestrationStrategy'] as core.String?,
        uid: json_['uid'] as core.String?,
        unitFilter: json_['unitFilter'] as core.String?,
        unitKind: json_['unitKind'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        updateUnitKindStrategy: json_['updateUnitKindStrategy'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (createTime != null) 'createTime': createTime!,
    if (errorBudget != null) 'errorBudget': errorBudget!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (rolloutOrchestrationStrategy != null)
      'rolloutOrchestrationStrategy': rolloutOrchestrationStrategy!,
    if (uid != null) 'uid': uid!,
    if (unitFilter != null) 'unitFilter': unitFilter!,
    if (unitKind != null) 'unitKind': unitKind!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (updateUnitKindStrategy != null)
      'updateUnitKindStrategy': updateUnitKindStrategy!,
  };
}

/// RolloutStats contains information about the progress of a rollout.
class RolloutStats {
  /// A breakdown of the progress of operations triggered by the rollout.
  ///
  /// Provides a count of Operations by their state. This can be used to
  /// determine the number of units which have been updated, or are scheduled to
  /// be updated. There will be at most one entry per group. Possible values for
  /// operation groups are: - "SCHEDULED" - "PENDING" - "RUNNING" - "SUCCEEDED"
  /// - "FAILED" - "CANCELLED"
  ///
  /// Output only.
  core.List<Aggregate>? operationsByState;

  RolloutStats({this.operationsByState});

  RolloutStats.fromJson(core.Map json_)
    : this(
        operationsByState:
            (json_['operationsByState'] as core.List?)
                ?.map(
                  (value) => Aggregate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (operationsByState != null) 'operationsByState': operationsByState!,
  };
}

/// Parameters for the RUN action controlling the behavior of the rollout when
/// it is resumed from a PAUSED state.
class RunRolloutActionParams {
  /// If true, the rollout will retry failed operations when resumed.
  ///
  /// This is applicable only the current state of the Rollout is PAUSED and the
  /// requested action is RUN.
  ///
  /// Required.
  core.bool? retryFailedOperations;

  RunRolloutActionParams({this.retryFailedOperations});

  RunRolloutActionParams.fromJson(core.Map json_)
    : this(retryFailedOperations: json_['retryFailedOperations'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (retryFailedOperations != null)
      'retryFailedOperations': retryFailedOperations!,
  };
}

/// Saas is a representation of a SaaS service managed by the Producer.
class Saas {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An opaque value that uniquely identifies a version or generation of a
  /// resource.
  ///
  /// It can be used to confirm that the client and server agree on the ordering
  /// of a resource being written.
  ///
  /// Output only.
  core.String? etag;

  /// The labels on the resource, which can be used for categorization.
  ///
  /// similar to Kubernetes resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// List of locations that the service is available in.
  ///
  /// Rollout refers to the list to generate a rollout plan.
  ///
  /// Optional. Immutable.
  core.List<Location>? locations;

  /// Identifier.
  ///
  /// The resource name (full URI of the resource) following the standard naming
  /// scheme: "projects/{project}/locations/{location}/saas/{saas}"
  core.String? name;

  /// The unique identifier of the resource.
  ///
  /// UID is unique in the time and space for this resource within the scope of
  /// the service. It is typically generated by the server on successful
  /// creation of a resource and must not be changed. UID is used to uniquely
  /// identify resources with resource name reuses. This should be a UUID4.
  ///
  /// Output only.
  core.String? uid;

  /// The timestamp when the resource was last updated.
  ///
  /// Any change to the resource made by users must refresh this value. Changes
  /// to a resource made by the service should refresh this value.
  ///
  /// Output only.
  core.String? updateTime;

  Saas({
    this.annotations,
    this.createTime,
    this.etag,
    this.labels,
    this.locations,
    this.name,
    this.uid,
    this.updateTime,
  });

  Saas.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        createTime: json_['createTime'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (createTime != null) 'createTime': createTime!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (locations != null) 'locations': locations!,
    if (name != null) 'name': name!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// A time specification to schedule the maintenance.
class Schedule {
  /// Start of operation.
  ///
  /// If not set, will be set to the start of the next window. (optional)
  ///
  /// Optional.
  core.String? startTime;

  Schedule({this.startTime});

  Schedule.fromJson(core.Map json_)
    : this(startTime: json_['startTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (startTime != null) 'startTime': startTime!,
  };
}

/// Tenant represents the service producer side of an instance of the service
/// created based on a request from a consumer.
///
/// In a typical scenario a Tenant has a one-to-one mapping with a resource
/// given out to a service consumer. Example: tenant: name:
/// "projects/svc1/locations/loc/tenants/inst-068afff8" consumer_resource:
/// "projects/gshoe/locations/loc/shoes/black-shoe"
class Tenant {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// A reference to the consumer resource this SaaS Tenant is representing.
  ///
  /// The relationship with a consumer resource can be used by EasySaaS for
  /// retrieving consumer-defined settings and policies such as maintenance
  /// policies (using Unified Maintenance Policy API).
  ///
  /// Optional. Immutable.
  core.String? consumerResource;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// An opaque value that uniquely identifies a version or generation of a
  /// resource.
  ///
  /// It can be used to confirm that the client and server agree on the ordering
  /// of a resource being written.
  ///
  /// Output only.
  core.String? etag;

  /// The labels on the resource, which can be used for categorization.
  ///
  /// similar to Kubernetes resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name (full URI of the resource) following the standard naming
  /// scheme: "projects/{project}/locations/{location}/tenants/{tenant}"
  core.String? name;

  /// A reference to the Saas that defines the product (managed service) that
  /// the producer wants to manage with EasySaaS.
  ///
  /// Part of the EasySaaS common data model.
  ///
  /// Required. Immutable.
  core.String? saas;

  /// The unique identifier of the resource.
  ///
  /// UID is unique in the time and space for this resource within the scope of
  /// the service. It is typically generated by the server on successful
  /// creation of a resource and must not be changed. UID is used to uniquely
  /// identify resources with resource name reuses. This should be a UUID4.
  ///
  /// Output only.
  core.String? uid;

  /// The timestamp when the resource was last updated.
  ///
  /// Any change to the resource made by users must refresh this value. Changes
  /// to a resource made by the service should refresh this value.
  ///
  /// Output only.
  core.String? updateTime;

  Tenant({
    this.annotations,
    this.consumerResource,
    this.createTime,
    this.etag,
    this.labels,
    this.name,
    this.saas,
    this.uid,
    this.updateTime,
  });

  Tenant.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        consumerResource: json_['consumerResource'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        saas: json_['saas'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (consumerResource != null) 'consumerResource': consumerResource!,
    if (createTime != null) 'createTime': createTime!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (saas != null) 'saas': saas!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Input variables whose values will be passed on to dependencies
class ToMapping {
  /// Alias of the dependency that the inputVariable will pass its value to
  ///
  /// Required.
  core.String? dependency;

  /// Tells EasySaaS if this mapping should be used during lookup or not
  ///
  /// Optional.
  core.bool? ignoreForLookup;

  /// Name of the inputVariable on the dependency
  ///
  /// Required.
  core.String? inputVariable;

  ToMapping({this.dependency, this.ignoreForLookup, this.inputVariable});

  ToMapping.fromJson(core.Map json_)
    : this(
        dependency: json_['dependency'] as core.String?,
        ignoreForLookup: json_['ignoreForLookup'] as core.bool?,
        inputVariable: json_['inputVariable'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dependency != null) 'dependency': dependency!,
    if (ignoreForLookup != null) 'ignoreForLookup': ignoreForLookup!,
    if (inputVariable != null) 'inputVariable': inputVariable!,
  };
}

/// A unit of deployment that has its lifecycle via a CRUD API using an
/// actuation engine under the hood (e.g. based on Terraform, Helm or a custom
/// implementation provided by a service producer).
///
/// A building block of a SaaS Tenant.
class Unit {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// A set of conditions which indicate the various conditions this resource
  /// can have.
  ///
  /// Optional. Output only.
  core.List<UnitCondition>? conditions;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Set of dependencies for this unit.
  ///
  /// Maximum 10.
  ///
  /// Optional. Output only.
  core.List<UnitDependency>? dependencies;

  /// List of Units that depend on this unit.
  ///
  /// Unit can only be deprovisioned if this list is empty. Maximum 1000.
  ///
  /// Optional. Output only.
  core.List<UnitDependency>? dependents;

  /// An opaque value that uniquely identifies a version or generation of a
  /// resource.
  ///
  /// It can be used to confirm that the client and server agree on the ordering
  /// of a resource being written.
  ///
  /// Output only.
  core.String? etag;

  /// Indicates the current input variables deployed by the unit
  ///
  /// Optional. Output only.
  core.List<UnitVariable>? inputVariables;

  /// The labels on the resource, which can be used for categorization.
  ///
  /// similar to Kubernetes resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Captures requested directives for performing future maintenance on the
  /// unit.
  ///
  /// This includes a request for the unit to skip maintenance for a period of
  /// time and remain pinned to its current release as well as controls for
  /// postponing maintenance scheduled in future.
  ///
  /// Optional.
  MaintenanceSettings? maintenance;

  /// Indicates whether the Unit life cycle is controlled by the user or by the
  /// system.
  ///
  /// Immutable once created.
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "MANAGEMENT_MODE_UNSPECIFIED"
  /// - "MANAGEMENT_MODE_USER" : Unit's lifecycle is managed by the user.
  /// - "MANAGEMENT_MODE_SYSTEM" : The system will decide when to deprovision
  /// and delete the unit. User still can deprovision or delete the unit
  /// manually.
  core.String? managementMode;

  /// Identifier.
  ///
  /// The resource name (full URI of the resource) following the standard naming
  /// scheme: "projects/{project}/locations/{location}/units/{unit}"
  core.String? name;

  /// List of concurrent UnitOperations that are operating on this Unit.
  ///
  /// Optional. Output only.
  core.List<core.String>? ongoingOperations;

  /// Set of key/value pairs corresponding to output variables from execution of
  /// actuation templates.
  ///
  /// The variables are declared in actuation configs (e.g in helm chart or
  /// terraform) and the values are fetched and returned by the actuation engine
  /// upon completion of execution.
  ///
  /// Optional. Output only.
  core.List<UnitVariable>? outputVariables;

  /// List of pending (wait to be executed) UnitOperations for this unit.
  ///
  /// Optional. Output only.
  core.List<core.String>? pendingOperations;

  /// The current Release object for this Unit.
  ///
  /// Optional. Output only.
  core.String? release;

  /// List of scheduled UnitOperations for this unit.
  ///
  /// Optional. Output only.
  core.List<core.String>? scheduledOperations;

  /// Current lifecycle state of the resource (e.g. if it's being created or
  /// ready to use).
  ///
  /// Optional. Output only.
  /// Possible string values are:
  /// - "UNIT_STATE_UNSPECIFIED" : Unspecified state.
  /// - "UNIT_STATE_NOT_PROVISIONED" : Unit is not provisioned.
  /// - "UNIT_STATE_PROVISIONING" : Unit is being provisioned.
  /// - "UNIT_STATE_UPDATING" : Unit is being updated. This is typically when a
  /// unit is being upgraded to a new release or some of the input variables on
  /// the Unit is being changed. Certain kinds of updates may cause the Unit to
  /// become unusable while the update is in progress.
  /// - "UNIT_STATE_DEPROVISIONING" : Unit is being deleted.
  /// - "UNIT_STATE_READY" : Unit has been provisioned and is ready for use
  /// - "UNIT_STATE_ERROR" : Unit has error, when it is not ready and some error
  /// operation
  core.String? state;

  /// If set, indicates the time when the system will start removing the unit.
  ///
  /// Optional. Output only.
  core.String? systemCleanupAt;

  /// Indicates the system managed state of the unit.
  ///
  /// Optional. Output only.
  /// Possible string values are:
  /// - "SYSTEM_MANAGED_STATE_UNSPECIFIED"
  /// - "SYSTEM_MANAGED_STATE_ACTIVE" : Unit has dependents attached.
  /// - "SYSTEM_MANAGED_STATE_INACTIVE" : Unit has no dependencies attached, but
  /// attachment is allowed.
  /// - "SYSTEM_MANAGED_STATE_DECOMMISSIONED" : Unit has no dependencies
  /// attached, and attachment is not allowed.
  core.String? systemManagedState;

  /// Reference to the Saas Tenant resource this unit belongs to.
  ///
  /// This for example informs the maintenance policies to use for scheduling
  /// future updates on a unit. (optional and immutable once created)
  ///
  /// Optional.
  core.String? tenant;

  /// The unique identifier of the resource.
  ///
  /// UID is unique in the time and space for this resource within the scope of
  /// the service. It is typically generated by the server on successful
  /// creation of a resource and must not be changed. UID is used to uniquely
  /// identify resources with resource name reuses. This should be a UUID4.
  ///
  /// Output only.
  core.String? uid;

  /// Reference to the UnitKind this Unit belongs to.
  ///
  /// Immutable once set.
  ///
  /// Optional.
  core.String? unitKind;

  /// The timestamp when the resource was last updated.
  ///
  /// Any change to the resource made by users must refresh this value. Changes
  /// to a resource made by the service should refresh this value.
  ///
  /// Output only.
  core.String? updateTime;

  Unit({
    this.annotations,
    this.conditions,
    this.createTime,
    this.dependencies,
    this.dependents,
    this.etag,
    this.inputVariables,
    this.labels,
    this.maintenance,
    this.managementMode,
    this.name,
    this.ongoingOperations,
    this.outputVariables,
    this.pendingOperations,
    this.release,
    this.scheduledOperations,
    this.state,
    this.systemCleanupAt,
    this.systemManagedState,
    this.tenant,
    this.uid,
    this.unitKind,
    this.updateTime,
  });

  Unit.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        conditions:
            (json_['conditions'] as core.List?)
                ?.map(
                  (value) => UnitCondition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        dependencies:
            (json_['dependencies'] as core.List?)
                ?.map(
                  (value) => UnitDependency.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dependents:
            (json_['dependents'] as core.List?)
                ?.map(
                  (value) => UnitDependency.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        inputVariables:
            (json_['inputVariables'] as core.List?)
                ?.map(
                  (value) => UnitVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        maintenance:
            json_.containsKey('maintenance')
                ? MaintenanceSettings.fromJson(
                  json_['maintenance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        managementMode: json_['managementMode'] as core.String?,
        name: json_['name'] as core.String?,
        ongoingOperations:
            (json_['ongoingOperations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        outputVariables:
            (json_['outputVariables'] as core.List?)
                ?.map(
                  (value) => UnitVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        pendingOperations:
            (json_['pendingOperations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        release: json_['release'] as core.String?,
        scheduledOperations:
            (json_['scheduledOperations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        state: json_['state'] as core.String?,
        systemCleanupAt: json_['systemCleanupAt'] as core.String?,
        systemManagedState: json_['systemManagedState'] as core.String?,
        tenant: json_['tenant'] as core.String?,
        uid: json_['uid'] as core.String?,
        unitKind: json_['unitKind'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (conditions != null) 'conditions': conditions!,
    if (createTime != null) 'createTime': createTime!,
    if (dependencies != null) 'dependencies': dependencies!,
    if (dependents != null) 'dependents': dependents!,
    if (etag != null) 'etag': etag!,
    if (inputVariables != null) 'inputVariables': inputVariables!,
    if (labels != null) 'labels': labels!,
    if (maintenance != null) 'maintenance': maintenance!,
    if (managementMode != null) 'managementMode': managementMode!,
    if (name != null) 'name': name!,
    if (ongoingOperations != null) 'ongoingOperations': ongoingOperations!,
    if (outputVariables != null) 'outputVariables': outputVariables!,
    if (pendingOperations != null) 'pendingOperations': pendingOperations!,
    if (release != null) 'release': release!,
    if (scheduledOperations != null)
      'scheduledOperations': scheduledOperations!,
    if (state != null) 'state': state!,
    if (systemCleanupAt != null) 'systemCleanupAt': systemCleanupAt!,
    if (systemManagedState != null) 'systemManagedState': systemManagedState!,
    if (tenant != null) 'tenant': tenant!,
    if (uid != null) 'uid': uid!,
    if (unitKind != null) 'unitKind': unitKind!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// UnitCondition describes the status of an Unit.
///
/// UnitCondition is individual components that contribute to an overall state.
class UnitCondition {
  /// Last time the condition transited from one status to another.
  ///
  /// Required.
  core.String? lastTransitionTime;

  /// Human readable message indicating details about the last transition.
  ///
  /// Required.
  core.String? message;

  /// Brief reason for the condition's last transition.
  ///
  /// Required.
  core.String? reason;

  /// Status of the condition.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Condition status is unspecified.
  /// - "STATUS_UNKNOWN" : Condition is unknown.
  /// - "STATUS_TRUE" : Condition is true.
  /// - "STATUS_FALSE" : Condition is false.
  core.String? status;

  /// Type of the condition.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Condition type is unspecified.
  /// - "TYPE_READY" : Condition type is ready.
  /// - "TYPE_UPDATING" : Condition type is updating.
  /// - "TYPE_PROVISIONED" : Condition type is provisioned.
  /// - "TYPE_OPERATION_ERROR" : Condition type is operationError. True when the
  /// last unit operation fails with a non-ignorable error.
  core.String? type;

  UnitCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  UnitCondition.fromJson(core.Map json_)
    : this(
        lastTransitionTime: json_['lastTransitionTime'] as core.String?,
        message: json_['message'] as core.String?,
        reason: json_['reason'] as core.String?,
        status: json_['status'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lastTransitionTime != null) 'lastTransitionTime': lastTransitionTime!,
    if (message != null) 'message': message!,
    if (reason != null) 'reason': reason!,
    if (status != null) 'status': status!,
    if (type != null) 'type': type!,
  };
}

/// Set of dependencies for this unit.
///
/// Maximum 10.
class UnitDependency {
  /// Alias for the name of the dependency.
  ///
  /// Output only.
  core.String? alias;

  /// A reference to the Unit object.
  ///
  /// Output only.
  core.String? unit;

  UnitDependency({this.alias, this.unit});

  UnitDependency.fromJson(core.Map json_)
    : this(
        alias: json_['alias'] as core.String?,
        unit: json_['unit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alias != null) 'alias': alias!,
    if (unit != null) 'unit': unit!,
  };
}

/// Definition of a Unit.
///
/// Units belonging to the same UnitKind are managed together; for example they
/// follow the same release model (blueprints, versions etc.) and are typically
/// rolled out together.
class UnitKind {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A reference to the Release object to use as default for creating new units
  /// of this UnitKind (optional).
  ///
  /// If not specified, a new unit must explicitly reference which release to
  /// use for its creation.
  ///
  /// Optional.
  core.String? defaultRelease;

  /// List of other unit kinds that this release will depend on.
  ///
  /// Dependencies will be automatically provisioned if not found. Maximum 10.
  ///
  /// Optional. Immutable.
  core.List<Dependency>? dependencies;

  /// An opaque value that uniquely identifies a version or generation of a
  /// resource.
  ///
  /// It can be used to confirm that the client and server agree on the ordering
  /// of a resource being written.
  ///
  /// Output only.
  core.String? etag;

  /// List of inputVariables for this release that will either be retrieved from
  /// a dependency’s outputVariables, or will be passed on to a dependency’s
  /// inputVariables.
  ///
  /// Maximum 100.
  ///
  /// Optional.
  core.List<VariableMapping>? inputVariableMappings;

  /// The labels on the resource, which can be used for categorization.
  ///
  /// similar to Kubernetes resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name (full URI of the resource) following the standard naming
  /// scheme: "projects/{project}/locations/{location}/unitKinds/{unitKind}"
  core.String? name;

  /// List of outputVariables for this unit kind will be passed to this unit's
  /// outputVariables.
  ///
  /// Maximum 100.
  ///
  /// Optional.
  core.List<VariableMapping>? outputVariableMappings;

  /// A reference to the Saas that defines the product (managed service) that
  /// the producer wants to manage with EasySaaS.
  ///
  /// Part of the EasySaaS common data model. Immutable once set.
  ///
  /// Required. Immutable.
  core.String? saas;

  /// The unique identifier of the resource.
  ///
  /// UID is unique in the time and space for this resource within the scope of
  /// the service. It is typically generated by the server on successful
  /// creation of a resource and must not be changed. UID is used to uniquely
  /// identify resources with resource name reuses. This should be a UUID4.
  ///
  /// Output only.
  core.String? uid;

  /// The timestamp when the resource was last updated.
  ///
  /// Any change to the resource made by users must refresh this value. Changes
  /// to a resource made by the service should refresh this value.
  ///
  /// Output only.
  core.String? updateTime;

  UnitKind({
    this.annotations,
    this.createTime,
    this.defaultRelease,
    this.dependencies,
    this.etag,
    this.inputVariableMappings,
    this.labels,
    this.name,
    this.outputVariableMappings,
    this.saas,
    this.uid,
    this.updateTime,
  });

  UnitKind.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        createTime: json_['createTime'] as core.String?,
        defaultRelease: json_['defaultRelease'] as core.String?,
        dependencies:
            (json_['dependencies'] as core.List?)
                ?.map(
                  (value) => Dependency.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        inputVariableMappings:
            (json_['inputVariableMappings'] as core.List?)
                ?.map(
                  (value) => VariableMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        outputVariableMappings:
            (json_['outputVariableMappings'] as core.List?)
                ?.map(
                  (value) => VariableMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        saas: json_['saas'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (createTime != null) 'createTime': createTime!,
    if (defaultRelease != null) 'defaultRelease': defaultRelease!,
    if (dependencies != null) 'dependencies': dependencies!,
    if (etag != null) 'etag': etag!,
    if (inputVariableMappings != null)
      'inputVariableMappings': inputVariableMappings!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (outputVariableMappings != null)
      'outputVariableMappings': outputVariableMappings!,
    if (saas != null) 'saas': saas!,
    if (uid != null) 'uid': uid!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// UnitOperation encapsulates the intent of changing/interacting with the
/// service component represented by the specific Unit.
///
/// Multiple UnitOperations can be created (requested) and scheduled in the
/// future, however only one will be allowed to execute at a time (that can
/// change in the future for non-mutating operations). UnitOperations allow
/// different actors interacting with the same unit to focus only on the change
/// they have requested. This is a base object that contains the common fields
/// in all unit operations.
class UnitOperation {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// When true, attempt to cancel the operation.
  ///
  /// Cancellation may fail if the operation is already executing. (Optional)
  ///
  /// Optional.
  core.bool? cancel;

  /// A set of conditions which indicate the various conditions this resource
  /// can have.
  ///
  /// Optional. Output only.
  core.List<UnitOperationCondition>? conditions;

  /// The timestamp when the resource was created.
  ///
  /// Output only.
  core.String? createTime;
  Deprovision? deprovision;

  /// The engine state for on-going deployment engine operation(s).
  ///
  /// This field is opaque for external usage.
  ///
  /// Optional. Output only.
  core.String? engineState;

  /// UnitOperationErrorCategory describe the error category.
  ///
  /// Optional. Output only.
  /// Possible string values are:
  /// - "UNIT_OPERATION_ERROR_CATEGORY_UNSPECIFIED" : Unit operation error
  /// category is unspecified
  /// - "NOT_APPLICABLE" : Unit operation error category is not applicable, or
  /// it is not an error
  /// - "FATAL" : Unit operation error category is fatal
  /// - "RETRIABLE" : Unit operation error category is retriable
  /// - "IGNORABLE" : Unit operation error category is ignorable
  /// - "STANDARD" : Unit operation error category is standard, counts towards
  /// Rollout error budget
  core.String? errorCategory;

  /// An opaque value that uniquely identifies a version or generation of a
  /// resource.
  ///
  /// It can be used to confirm that the client and server agree on the ordering
  /// of a resource being written.
  ///
  /// Output only.
  core.String? etag;

  /// The labels on the resource, which can be used for categorization.
  ///
  /// similar to Kubernetes resource labels.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name (full URI of the resource) following the standard naming
  /// scheme:
  /// "projects/{project}/locations/{location}/unitOperations/{unitOperation}"
  core.String? name;

  /// Reference to parent resource: UnitOperation.
  ///
  /// If an operation needs to create other operations as part of its workflow,
  /// each of the child operations should have this field set to the parent.
  /// This can be used for tracing. (Optional)
  ///
  /// Optional.
  core.String? parentUnitOperation;
  Provision? provision;

  /// Specifies which rollout created this Unit Operation.
  ///
  /// This cannot be modified and is used for filtering purposes only. If a
  /// dependent unit and unit operation are created as part of another unit
  /// operation, they will use the same rolloutId.
  ///
  /// Optional.
  core.String? rollout;

  /// When to schedule this operation.
  ///
  /// Optional.
  Schedule? schedule;

  /// UnitOperationState describes the current state of the unit operation.
  ///
  /// Optional. Output only.
  /// Possible string values are:
  /// - "UNIT_OPERATION_STATE_UNKNOWN"
  /// - "UNIT_OPERATION_STATE_PENDING" : Unit operation is accepted but not
  /// ready to run.
  /// - "UNIT_OPERATION_STATE_SCHEDULED" : Unit operation is accepted and
  /// scheduled.
  /// - "UNIT_OPERATION_STATE_RUNNING" : Unit operation is running.
  /// - "UNIT_OPERATION_STATE_SUCCEEDED" : Unit operation has completed
  /// successfully.
  /// - "UNIT_OPERATION_STATE_FAILED" : Unit operation has failed.
  /// - "UNIT_OPERATION_STATE_CANCELLED" : Unit operation was cancelled.
  core.String? state;

  /// The unique identifier of the resource.
  ///
  /// UID is unique in the time and space for this resource within the scope of
  /// the service. It is typically generated by the server on successful
  /// creation of a resource and must not be changed. UID is used to uniquely
  /// identify resources with resource name reuses. This should be a UUID4.
  ///
  /// Output only.
  core.String? uid;

  /// The Unit a given UnitOperation will act upon.
  ///
  /// Required. Immutable.
  core.String? unit;

  /// The timestamp when the resource was last updated.
  ///
  /// Any change to the resource made by users must refresh this value. Changes
  /// to a resource made by the service should refresh this value.
  ///
  /// Output only.
  core.String? updateTime;
  Upgrade? upgrade;

  UnitOperation({
    this.annotations,
    this.cancel,
    this.conditions,
    this.createTime,
    this.deprovision,
    this.engineState,
    this.errorCategory,
    this.etag,
    this.labels,
    this.name,
    this.parentUnitOperation,
    this.provision,
    this.rollout,
    this.schedule,
    this.state,
    this.uid,
    this.unit,
    this.updateTime,
    this.upgrade,
  });

  UnitOperation.fromJson(core.Map json_)
    : this(
        annotations: (json_['annotations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        cancel: json_['cancel'] as core.bool?,
        conditions:
            (json_['conditions'] as core.List?)
                ?.map(
                  (value) => UnitOperationCondition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        deprovision:
            json_.containsKey('deprovision')
                ? Deprovision.fromJson(
                  json_['deprovision'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        engineState: json_['engineState'] as core.String?,
        errorCategory: json_['errorCategory'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        parentUnitOperation: json_['parentUnitOperation'] as core.String?,
        provision:
            json_.containsKey('provision')
                ? Provision.fromJson(
                  json_['provision'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rollout: json_['rollout'] as core.String?,
        schedule:
            json_.containsKey('schedule')
                ? Schedule.fromJson(
                  json_['schedule'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        uid: json_['uid'] as core.String?,
        unit: json_['unit'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        upgrade:
            json_.containsKey('upgrade')
                ? Upgrade.fromJson(
                  json_['upgrade'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (cancel != null) 'cancel': cancel!,
    if (conditions != null) 'conditions': conditions!,
    if (createTime != null) 'createTime': createTime!,
    if (deprovision != null) 'deprovision': deprovision!,
    if (engineState != null) 'engineState': engineState!,
    if (errorCategory != null) 'errorCategory': errorCategory!,
    if (etag != null) 'etag': etag!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (parentUnitOperation != null)
      'parentUnitOperation': parentUnitOperation!,
    if (provision != null) 'provision': provision!,
    if (rollout != null) 'rollout': rollout!,
    if (schedule != null) 'schedule': schedule!,
    if (state != null) 'state': state!,
    if (uid != null) 'uid': uid!,
    if (unit != null) 'unit': unit!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (upgrade != null) 'upgrade': upgrade!,
  };
}

/// UnitOperationCondition describes the status of an Unit Operation.
///
/// UnitOperationCondition is individual components that contribute to an
/// overall state.
class UnitOperationCondition {
  /// Last time the condition transited from one status to another.
  ///
  /// Required.
  core.String? lastTransitionTime;

  /// Human readable message indicating details about the last transition.
  ///
  /// Required.
  core.String? message;

  /// Brief reason for the condition's last transition.
  ///
  /// Required.
  core.String? reason;

  /// Status of the condition.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Condition status is unspecified.
  /// - "STATUS_UNKNOWN" : Condition is unknown.
  /// - "STATUS_TRUE" : Condition is true.
  /// - "STATUS_FALSE" : Condition is false.
  core.String? status;

  /// Type of the condition.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Condition type is unspecified.
  /// - "TYPE_SCHEDULED" : Condition type is scheduled.
  /// - "TYPE_RUNNING" : Condition type is running.
  /// - "TYPE_SUCCEEDED" : Condition type is succeeded.
  /// - "TYPE_CANCELLED" : Condition type is cancelled.
  core.String? type;

  UnitOperationCondition({
    this.lastTransitionTime,
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  UnitOperationCondition.fromJson(core.Map json_)
    : this(
        lastTransitionTime: json_['lastTransitionTime'] as core.String?,
        message: json_['message'] as core.String?,
        reason: json_['reason'] as core.String?,
        status: json_['status'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lastTransitionTime != null) 'lastTransitionTime': lastTransitionTime!,
    if (message != null) 'message': message!,
    if (reason != null) 'reason': reason!,
    if (status != null) 'status': status!,
    if (type != null) 'type': type!,
  };
}

/// UnitVariable describes a parameter for a Unit.
class UnitVariable {
  /// Name of a supported variable type.
  ///
  /// Supported types are string, int, bool.
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Variable type is unspecified.
  /// - "STRING" : Variable type is string.
  /// - "INT" : Variable type is int.
  /// - "BOOL" : Variable type is bool.
  core.String? type;

  /// String encoded value for the variable.
  ///
  /// Optional.
  core.String? value;

  /// Name of the variable from actuation configs.
  ///
  /// Required. Immutable.
  core.String? variable;

  UnitVariable({this.type, this.value, this.variable});

  UnitVariable.fromJson(core.Map json_)
    : this(
        type: json_['type'] as core.String?,
        value: json_['value'] as core.String?,
        variable: json_['variable'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (type != null) 'type': type!,
    if (value != null) 'value': value!,
    if (variable != null) 'variable': variable!,
  };
}

/// Upgrade is the unit operation that upgrades a provisioned unit, which may
/// also include the underlying resources represented by a Unit.
///
/// Can only execute if the Unit is currently provisioned.
class Upgrade {
  /// Set of input variables.
  ///
  /// Maximum 100. (optional)
  ///
  /// Optional.
  core.List<UnitVariable>? inputVariables;

  /// Reference to the Release object to use for the Unit.
  ///
  /// (optional).
  ///
  /// Optional.
  core.String? release;

  Upgrade({this.inputVariables, this.release});

  Upgrade.fromJson(core.Map json_)
    : this(
        inputVariables:
            (json_['inputVariables'] as core.List?)
                ?.map(
                  (value) => UnitVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        release: json_['release'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (inputVariables != null) 'inputVariables': inputVariables!,
    if (release != null) 'release': release!,
  };
}

/// Mapping of input variables to their respective output variable for
/// depedenencies
class VariableMapping {
  /// Output variables which will get their values from dependencies
  ///
  /// Optional.
  FromMapping? from;

  /// Input variables whose values will be passed on to dependencies.
  ///
  /// Optional.
  ToMapping? to;

  /// name of the variable
  ///
  /// Required.
  core.String? variable;

  VariableMapping({this.from, this.to, this.variable});

  VariableMapping.fromJson(core.Map json_)
    : this(
        from:
            json_.containsKey('from')
                ? FromMapping.fromJson(
                  json_['from'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        to:
            json_.containsKey('to')
                ? ToMapping.fromJson(
                  json_['to'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        variable: json_['variable'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (from != null) 'from': from!,
    if (to != null) 'to': to!,
    if (variable != null) 'variable': variable!,
  };
}
