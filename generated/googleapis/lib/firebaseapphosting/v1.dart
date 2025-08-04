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

/// Firebase App Hosting API - v1
///
/// Firebase App Hosting streamlines the development and deployment of dynamic
/// Next.js and Angular applications, offering built-in framework support,
/// GitHub integration, and integration with other Firebase products. You can
/// use this API to intervene in the Firebase App Hosting build process and add
/// custom functionality not supported in our default Console & CLI flows,
/// including triggering builds from external CI/CD workflows or deploying from
/// pre-built container images.
///
/// For more information, see <https://firebase.google.com/docs/app-hosting>
///
/// Create an instance of [FirebaseAppHostingApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsBackendsResource]
///       - [ProjectsLocationsBackendsBuildsResource]
///       - [ProjectsLocationsBackendsDomainsResource]
///       - [ProjectsLocationsBackendsRolloutsResource]
///       - [ProjectsLocationsBackendsTrafficResource]
///     - [ProjectsLocationsOperationsResource]
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

/// Firebase App Hosting streamlines the development and deployment of dynamic
/// Next.js and Angular applications, offering built-in framework support,
/// GitHub integration, and integration with other Firebase products.
///
/// You can use this API to intervene in the Firebase App Hosting build process
/// and add custom functionality not supported in our default Console & CLI
/// flows, including triggering builds from external CI/CD workflows or
/// deploying from pre-built container images.
class FirebaseAppHostingApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirebaseAppHostingApi(http.Client client,
      {core.String rootUrl = 'https://firebaseapphosting.googleapis.com/',
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

  ProjectsLocationsBackendsResource get backends =>
      ProjectsLocationsBackendsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBackendsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackendsBuildsResource get builds =>
      ProjectsLocationsBackendsBuildsResource(_requester);
  ProjectsLocationsBackendsDomainsResource get domains =>
      ProjectsLocationsBackendsDomainsResource(_requester);
  ProjectsLocationsBackendsRolloutsResource get rollouts =>
      ProjectsLocationsBackendsRolloutsResource(_requester);
  ProjectsLocationsBackendsTrafficResource get traffic =>
      ProjectsLocationsBackendsTrafficResource(_requester);

  ProjectsLocationsBackendsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new backend in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. A parent name of the form
  /// `projects/{project}/locations/{locationId}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [backendId] - Required. Id of the backend. Also used as the service ID for
  /// Cloud Run, and as part of the default domain name.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. Indicates that the request should be validated
  /// and default values populated, without persisting the request or creating
  /// any resources.
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
    Backend request,
    core.String parent, {
    core.String? backendId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backendId != null) 'backendId': [backendId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backends';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single backend.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+$`.
  ///
  /// [etag] - Optional. If the client provided etag is out of date, delete will
  /// be returned FAILED_PRECONDITION error.
  ///
  /// [force] - Optional. If set to true, any resources for this backend will
  /// also be deleted. Otherwise, any children resources will block deletion.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. Indicates that the request should be validated,
  /// without persisting the request or updating any resources.
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
    core.bool? force,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Gets information about a backend.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Backend].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Backend> get(
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
    return Backend.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists backends in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. A parent name of the form
  /// `projects/{project}/locations/{locationId}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to narrow down results to a preferred
  /// subset. Learn more about filtering in Google's
  /// [AIP 160 standard](https://google.aip.dev/160).
  ///
  /// [orderBy] - Optional. Hint for how to order the results. Supported fields
  /// are `name` and `createTime`. To specify descending order, append a `desc`
  /// suffix.
  ///
  /// [pageSize] - Optional. The maximum number of results to return. If not
  /// set, the service selects a default.
  ///
  /// [pageToken] - Optional. A page token received from the nextPageToken field
  /// in the response. Send that page token to receive the subsequent page.
  ///
  /// [showDeleted] - Optional. If true, the request returns soft-deleted
  /// resources that haven't been fully-deleted yet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackendsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackendsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backends';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackendsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the information for a single backend.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the backend. Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the backend is not found, a
  /// new backend will be created.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the backend resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. Indicates that the request should be validated,
  /// without persisting the request or updating any resources.
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
    Backend request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
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
}

class ProjectsLocationsBackendsBuildsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackendsBuildsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new build for a backend.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent backend in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+$`.
  ///
  /// [buildId] - Required. Desired ID of the build being created.
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
  /// [validateOnly] - Optional. Indicates that the request should be validated
  /// and default values populated, without persisting the request or creating
  /// any resources.
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
    Build request,
    core.String parent, {
    core.String? buildId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (buildId != null) 'buildId': [buildId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/builds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single build.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/builds/{buildId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+/builds/\[^/\]+$`.
  ///
  /// [etag] - Optional. If the client provided etag is out of date, delete will
  /// be returned FAILED_PRECONDITION error.
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
  /// [validateOnly] - Optional. Indicates that the request should be validated
  /// and default values populated, without persisting the request or deleting
  /// any resources.
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
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Gets information about a build.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/builds/{buildId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+/builds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Build].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Build> get(
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
    return Build.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists builds in a given project, location, and backend.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent backend in the form
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to narrow down results to a preferred
  /// subset. Learn more about filtering in Google's
  /// [AIP 160 standard](https://google.aip.dev/160).
  ///
  /// [orderBy] - Optional. Hint for how to order the results. Supported fields
  /// are `name` and `createTime`. To specify descending order, append a `desc`
  /// suffix.
  ///
  /// [pageSize] - Optional. The maximum number of results to return. If not
  /// set, the service selects a default.
  ///
  /// [pageToken] - Optional. A page token received from the nextPageToken field
  /// in the response. Send that page token to receive the subsequent page.
  ///
  /// [showDeleted] - Optional. If true, the request returns soft-deleted
  /// resources that haven't been fully-deleted yet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBuildsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBuildsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/builds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBuildsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBackendsDomainsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackendsDomainsResource(commons.ApiRequester client)
      : _requester = client;

  /// Links a new domain to a backend.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent backend in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+$`.
  ///
  /// [domainId] - Required. Id of the domain to create. Must be a valid domain
  /// name.
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
  /// [validateOnly] - Optional. Indicates that the request should be validated
  /// and default values populated, without persisting the request or creating
  /// any resources.
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
    Domain request,
    core.String parent, {
    core.String? domainId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (domainId != null) 'domainId': [domainId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/domains';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single domain.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/domains/{domainId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [etag] - Optional. If the client provided etag is out of date, delete will
  /// be returned FAILED_PRECONDITION error.
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
  /// [validateOnly] - Optional. Indicates that the request should be validated
  /// and default values populated, without persisting the request or deleting
  /// any resources.
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
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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

  /// Gets information about a domain.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/domains/{domainId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> get(
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
    return Domain.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists domains of a backend.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent backend in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to narrow down results to a preferred
  /// subset. Learn more about filtering in Google's
  /// [AIP 160 standard](https://google.aip.dev/160).
  ///
  /// [orderBy] - Optional. Hint for how to order the results. Supported fields
  /// are `name` and `createTime`. To specify descending order, append a `desc`
  /// suffix.
  ///
  /// [pageSize] - Optional. The maximum number of results to return. If not
  /// set, the service selects a default.
  ///
  /// [pageToken] - Optional. A page token received from the nextPageToken field
  /// in the response. Send that page token to receive the subsequent page.
  ///
  /// [showDeleted] - Optional. If true, the request returns soft-deleted
  /// resources that haven't been fully-deleted yet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDomainsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/domains';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDomainsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the information for a single domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the domain, e.g.
  /// `/projects/p/locations/l/backends/b/domains/foo.com`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, and the domain is not found, a
  /// new domain will be created.
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
  /// overwritten in the Domain resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. Indicates that the request should be validated
  /// and default values populated, without persisting the request or modifying
  /// any resources.
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
    Domain request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
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
}

class ProjectsLocationsBackendsRolloutsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackendsRolloutsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new rollout for a backend.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent backend in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+$`.
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
  /// [rolloutId] - Optional. Desired ID of the rollout being created.
  ///
  /// [validateOnly] - Optional. Indicates that the request should be validated
  /// and default values populated, without persisting the request or creating
  /// any resources.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/rollouts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a rollout.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/rollouts/{rolloutId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+/rollouts/\[^/\]+$`.
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
  async.Future<Rollout> get(
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
    return Rollout.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists rollouts for a backend.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent backend in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter to narrow down results to a preferred
  /// subset. Learn more about filtering in Google's
  /// [AIP 160 standard](https://google.aip.dev/160).
  ///
  /// [orderBy] - Optional. Hint for how to order the results. Supported fields
  /// are `name` and `createTime`. To specify descending order, append a `desc`
  /// suffix.
  ///
  /// [pageSize] - Optional. The maximum number of results to return. If not
  /// set, the service selects a default.
  ///
  /// [pageToken] - Optional. A page token received from the nextPageToken field
  /// in the response. Send that page token to receive the subsequent page.
  ///
  /// [showDeleted] - Optional. If true, the request returns soft-deleted
  /// resources that haven't been fully-deleted yet.
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
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/rollouts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRolloutsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBackendsTrafficResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackendsTrafficResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a backend's traffic.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource in the format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/traffic`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+/traffic$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Traffic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Traffic> get(
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
    return Traffic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a backend's traffic.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the backend's traffic. Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/traffic`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backends/\[^/\]+/traffic$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the traffic resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. Indicates that the request should be validated,
  /// without persisting the request or updating any resources.
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
    Traffic request,
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A backend is the primary resource of App Hosting.
class Backend {
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The
  /// [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the backend.
  ///
  /// Optional.
  core.String? appId;

  /// If specified, the connection to an external source repository to watch for
  /// event-driven updates to the backend.
  ///
  /// Optional.
  Codebase? codebase;

  /// Time at which the backend was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Time at which the backend was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Human-readable name.
  ///
  /// 63 character limit.
  ///
  /// Optional.
  core.String? displayName;

  /// The environment name of the backend, used to load environment variables
  /// from environment specific configuration.
  ///
  /// Optional.
  core.String? environment;

  /// Server-computed checksum based on other values; may be sent on update or
  /// delete to ensure operation is done on expected resource.
  ///
  /// Output only.
  core.String? etag;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// A list of the resources managed by this backend.
  ///
  /// Output only.
  core.List<ManagedResource>? managedResources;

  /// Deprecated: Use `environment` instead.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? mode;

  /// Identifier.
  ///
  /// The resource name of the backend. Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  core.String? name;

  /// A field that, if true, indicates that the system is working to make
  /// adjustments to the backend during a LRO.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The name of the service account used for Cloud Build and Cloud Run.
  ///
  /// Should have the role roles/firebaseapphosting.computeRunner or equivalent
  /// permissions.
  ///
  /// Required.
  core.String? serviceAccount;

  /// Specifies how App Hosting will serve the content for this backend.
  ///
  /// It will either be contained to a single region (REGIONAL_STRICT) or
  /// allowed to use App Hosting's global-replicated serving infrastructure
  /// (GLOBAL_ACCESS).
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "SERVING_LOCALITY_UNSPECIFIED" : Unspecified. Will return an error if
  /// used.
  /// - "REGIONAL_STRICT" : In this mode, App Hosting serves your backend's
  /// content from your chosen parent region. App Hosting only maintains data
  /// and serving infrastructure in that chosen region and does not replicate
  /// your data to other regions.
  /// - "GLOBAL_ACCESS" : In this mode, App Hosting serves your backend's
  /// content from multiple points-of-presence (POP) across the globe. App
  /// Hosting replicates your backend's configuration and cached data to these
  /// POPs and uses a global CDN to further decrease response latency. App
  /// Hosting-maintained Cloud Resources on your project, such as Cloud Run
  /// services, Cloud Build build, and Artifact Registry Images are still
  /// confined to your backend's parent region. Responses cached by the CDN may
  /// be stored in the POPs for the duration of the cache's TTL.
  core.String? servingLocality;

  /// System-assigned, unique identifier.
  ///
  /// Output only.
  core.String? uid;

  /// Time at which the backend was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The primary URI to communicate with the backend.
  ///
  /// Output only.
  core.String? uri;

  Backend({
    this.annotations,
    this.appId,
    this.codebase,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.environment,
    this.etag,
    this.labels,
    this.managedResources,
    this.mode,
    this.name,
    this.reconciling,
    this.serviceAccount,
    this.servingLocality,
    this.uid,
    this.updateTime,
    this.uri,
  });

  Backend.fromJson(core.Map json_)
      : this(
          annotations:
              (json_['annotations'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          appId: json_['appId'] as core.String?,
          codebase: json_.containsKey('codebase')
              ? Codebase.fromJson(
                  json_['codebase'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_['createTime'] as core.String?,
          deleteTime: json_['deleteTime'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          environment: json_['environment'] as core.String?,
          etag: json_['etag'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          managedResources: (json_['managedResources'] as core.List?)
              ?.map((value) => ManagedResource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          mode: json_['mode'] as core.String?,
          name: json_['name'] as core.String?,
          reconciling: json_['reconciling'] as core.bool?,
          serviceAccount: json_['serviceAccount'] as core.String?,
          servingLocality: json_['servingLocality'] as core.String?,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (appId != null) 'appId': appId!,
        if (codebase != null) 'codebase': codebase!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (environment != null) 'environment': environment!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (managedResources != null) 'managedResources': managedResources!,
        if (mode != null) 'mode': mode!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (servingLocality != null) 'servingLocality': servingLocality!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (uri != null) 'uri': uri!,
      };
}

/// A single build for a backend, at a specific point codebase reference tag and
/// point in time.
///
/// Encapsulates several resources, including an Artifact Registry container
/// image, a Cloud Build invocation that built the image, and the Cloud Run
/// revision that uses that image.
class Build {
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The location of the
  /// [Cloud Build logs](https://cloud.google.com/build/docs/view-build-results)
  /// for the build process.
  ///
  /// Output only.
  core.String? buildLogsUri;

  /// Additional configuration of the service.
  ///
  /// Optional.
  Config? config;

  /// Time at which the build was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Time at which the build was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Human-readable name.
  ///
  /// 63 character limit.
  ///
  /// Optional.
  core.String? displayName;

  /// The environment name of the backend when this build was created.
  ///
  /// Output only.
  core.String? environment;

  /// A list of all errors that occurred during an App Hosting build.
  ///
  /// Output only.
  core.List<Error>? errors;

  /// Server-computed checksum based on other values; may be sent on update or
  /// delete to ensure operation is done on expected resource.
  ///
  /// Output only.
  core.String? etag;

  /// The Artifact Registry
  /// [container image](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.dockerImages)
  /// URI, used by the Cloud Run
  /// \[`revision`\](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services.revisions)
  /// for this build.
  ///
  /// Output only.
  core.String? image;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of the build. Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/builds/{buildId}`.
  core.String? name;

  /// A field that, if true, indicates that the build has an ongoing LRO.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The source for the build.
  ///
  /// Required. Immutable.
  BuildSource? source;

  /// The state of the build.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The build is in an unknown state.
  /// - "BUILDING" : The build is building.
  /// - "BUILT" : The build has completed and is awaiting the next step. This
  /// may move to DEPLOYING once App Hosting starts to set up infrastructure.
  /// - "DEPLOYING" : The infrastructure for this build is being set up.
  /// - "READY" : The infrastructure for this build is ready. The build may or
  /// may not be serving traffic - see `Backend.traffic` for the current state,
  /// or `Backend.traffic_statuses` for the desired state.
  /// - "FAILED" : The build has failed.
  core.String? state;

  /// System-assigned, unique identifier.
  ///
  /// Output only.
  core.String? uid;

  /// Time at which the build was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Build({
    this.annotations,
    this.buildLogsUri,
    this.config,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.environment,
    this.errors,
    this.etag,
    this.image,
    this.labels,
    this.name,
    this.reconciling,
    this.source,
    this.state,
    this.uid,
    this.updateTime,
  });

  Build.fromJson(core.Map json_)
      : this(
          annotations:
              (json_['annotations'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          buildLogsUri: json_['buildLogsUri'] as core.String?,
          config: json_.containsKey('config')
              ? Config.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_['createTime'] as core.String?,
          deleteTime: json_['deleteTime'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          environment: json_['environment'] as core.String?,
          errors: (json_['errors'] as core.List?)
              ?.map((value) =>
                  Error.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          etag: json_['etag'] as core.String?,
          image: json_['image'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          reconciling: json_['reconciling'] as core.bool?,
          source: json_.containsKey('source')
              ? BuildSource.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          state: json_['state'] as core.String?,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (buildLogsUri != null) 'buildLogsUri': buildLogsUri!,
        if (config != null) 'config': config!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (environment != null) 'environment': environment!,
        if (errors != null) 'errors': errors!,
        if (etag != null) 'etag': etag!,
        if (image != null) 'image': image!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (source != null) 'source': source!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The source for the build.
class BuildSource {
  /// A codebase source.
  CodebaseSource? codebase;

  /// An Artifact Registry container image source.
  ContainerSource? container;

  BuildSource({
    this.codebase,
    this.container,
  });

  BuildSource.fromJson(core.Map json_)
      : this(
          codebase: json_.containsKey('codebase')
              ? CodebaseSource.fromJson(
                  json_['codebase'] as core.Map<core.String, core.dynamic>)
              : null,
          container: json_.containsKey('container')
              ? ContainerSource.fromJson(
                  json_['container'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (codebase != null) 'codebase': codebase!,
        if (container != null) 'container': container!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// The connection to an external source repository to watch for event-driven
/// updates to the backend.
class Codebase {
  /// The resource name for the Developer Connect
  /// \[`gitRepositoryLink`\](https://cloud.google.com/developer-connect/docs/api/reference/rest/v1/projects.locations.connections.gitRepositoryLinks)
  /// connected to this backend, in the format:
  /// `projects/{project}/locations/{location}/connections/{connection}/gitRepositoryLinks/{repositoryLink}`
  /// The connection for the `gitRepositoryLink` must made be using the Firebase
  /// App Hosting GitHub App via the Firebase Console.
  ///
  /// Required.
  core.String? repository;

  /// If `repository` is provided, the directory relative to the root of the
  /// repository to use as the root for the deployed web app.
  ///
  /// Optional.
  core.String? rootDirectory;

  Codebase({
    this.repository,
    this.rootDirectory,
  });

  Codebase.fromJson(core.Map json_)
      : this(
          repository: json_['repository'] as core.String?,
          rootDirectory: json_['rootDirectory'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (repository != null) 'repository': repository!,
        if (rootDirectory != null) 'rootDirectory': rootDirectory!,
      };
}

/// A codebase source, representing the state of the codebase that the build
/// will be created at.
class CodebaseSource {
  /// The author contained in the metadata of a version control change.
  ///
  /// Output only.
  UserMetadata? author;

  /// The branch in the codebase to build from, using the latest commit.
  core.String? branch;

  /// The commit in the codebase to build from.
  core.String? commit;

  /// The message of a codebase change.
  ///
  /// Output only.
  core.String? commitMessage;

  /// The time the change was made.
  ///
  /// Output only.
  core.String? commitTime;

  /// The human-friendly name to use for this Codebase when displaying a build.
  ///
  /// We use the first eight characters of the SHA-1 hash for GitHub.com.
  ///
  /// Output only.
  core.String? displayName;

  /// The full SHA-1 hash of a Git commit, if available.
  ///
  /// Output only.
  core.String? hash;

  /// A URI linking to the codebase on an hosting provider's website.
  ///
  /// May not be valid if the commit has been rebased or force-pushed out of
  /// existence in the linked repository.
  ///
  /// Output only.
  core.String? uri;

  CodebaseSource({
    this.author,
    this.branch,
    this.commit,
    this.commitMessage,
    this.commitTime,
    this.displayName,
    this.hash,
    this.uri,
  });

  CodebaseSource.fromJson(core.Map json_)
      : this(
          author: json_.containsKey('author')
              ? UserMetadata.fromJson(
                  json_['author'] as core.Map<core.String, core.dynamic>)
              : null,
          branch: json_['branch'] as core.String?,
          commit: json_['commit'] as core.String?,
          commitMessage: json_['commitMessage'] as core.String?,
          commitTime: json_['commitTime'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          hash: json_['hash'] as core.String?,
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (author != null) 'author': author!,
        if (branch != null) 'branch': branch!,
        if (commit != null) 'commit': commit!,
        if (commitMessage != null) 'commitMessage': commitMessage!,
        if (commitTime != null) 'commitTime': commitTime!,
        if (displayName != null) 'displayName': displayName!,
        if (hash != null) 'hash': hash!,
        if (uri != null) 'uri': uri!,
      };
}

/// Additional configuration of the backend for this build.
class Config {
  /// Environment variables for this build.
  ///
  /// Optional.
  core.List<EnvironmentVariable>? env;

  /// Additional configuration of the Cloud Run
  /// \[`service`\](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-service).
  ///
  /// Optional.
  RunConfig? runConfig;

  Config({
    this.env,
    this.runConfig,
  });

  Config.fromJson(core.Map json_)
      : this(
          env: (json_['env'] as core.List?)
              ?.map((value) => EnvironmentVariable.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          runConfig: json_.containsKey('runConfig')
              ? RunConfig.fromJson(
                  json_['runConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (env != null) 'env': env!,
        if (runConfig != null) 'runConfig': runConfig!,
      };
}

/// The URI of an Artifact Registry
/// [container image](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.dockerImages)
/// to use as the build source.
class ContainerSource {
  /// A URI representing a container for the backend to use.
  ///
  /// Required.
  core.String? image;

  ContainerSource({
    this.image,
  });

  ContainerSource.fromJson(core.Map json_)
      : this(
          image: json_['image'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (image != null) 'image': image!,
      };
}

/// The status of a custom domain's linkage to a backend.
class CustomDomainStatus {
  /// Tracks SSL certificate status for the domain.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CERT_STATE_UNSPECIFIED" : The certificate's state is unspecified. The
  /// message is invalid if this is unspecified.
  /// - "CERT_PREPARING" : The initial state of every certificate, represents
  /// App Hosting's intent to create a certificate before requests to a
  /// Certificate Authority are made.
  /// - "CERT_VALIDATING" : App Hosting is validating whether a domain name's
  /// DNS records are in a state that allow certificate creation on its behalf.
  /// - "CERT_PROPAGATING" : The certificate was recently created, and needs
  /// time to propagate in App Hosting's load balancers.
  /// - "CERT_ACTIVE" : The certificate is active, providing secure connections
  /// for the domain names it represents.
  /// - "CERT_EXPIRING_SOON" : The certificate is expiring, all domain names on
  /// it will be given new certificates.
  /// - "CERT_EXPIRED" : The certificate has expired. App Hosting can no longer
  /// serve secure content on your domain name.
  core.String? certState;

  /// Tracks whether a custom domain is detected as appropriately directing
  /// traffic to App Hosting.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HOST_STATE_UNSPECIFIED" : Your custom domain's host state is
  /// unspecified. The message is invalid if this is unspecified.
  /// - "HOST_UNHOSTED" : Your custom domain isn't associated with any IP
  /// addresses.
  /// - "HOST_UNREACHABLE" : Your custom domain can't be reached. App Hosting
  /// services' DNS queries to find your domain's IP addresses resulted in
  /// errors. See your `CustomDomainStatus`'s `issues` field for more details.
  /// - "HOST_NON_FAH" : Your domain has only IP addresses that don't ultimately
  /// resolve to App Hosting.
  /// - "HOST_CONFLICT" : Your domain has IP addresses that resolve to both App
  /// Hosting and to other services. To ensure consistent results, remove `A`
  /// and `AAAA` records related to non-App-Hosting services.
  /// - "HOST_WRONG_SHARD" : Your domain has IP addresses that resolve to an
  /// incorrect instance of the App Hosting Data Plane. App Hosting has multiple
  /// data plane instances to ensure high availability. The SSL certificate that
  /// App Hosting creates for your domain is only available on its assigned
  /// instance. If your domain's IP addresses resolve to an incorrect instance,
  /// App Hosting won't be able to serve secure content on it.
  /// - "HOST_ACTIVE" : All requests against your domain are served by App
  /// Hosting, via your domain's assigned shard. If the custom domain's
  /// `OwnershipState` is also `OWNERSHIP_ACTIVE`, App Hosting serves its
  /// backend's content on requests for the domain.
  core.String? hostState;

  /// A list of issues with domain configuration.
  ///
  /// Allows users to self-correct problems with DNS records.
  ///
  /// Output only.
  core.List<Status>? issues;

  /// Tracks whether the backend is permitted to serve content on the domain,
  /// based off the domain's DNS records.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OWNERSHIP_STATE_UNSPECIFIED" : Your custom domain's ownership state is
  /// unspecified. This should never happen.
  /// - "OWNERSHIP_MISSING" : Your custom domain's domain has no
  /// App-Hosting-related ownership records; no backend is authorized to serve
  /// on the domain in this Origin shard.
  /// - "OWNERSHIP_UNREACHABLE" : Your custom domain can't be reached. App
  /// Hosting services' DNS queries to find your domain's ownership records
  /// resulted in errors. See your `CustomDomainStatus`'s `issues` field for
  /// more details.
  /// - "OWNERSHIP_MISMATCH" : Your custom domain is owned by another App
  /// Hosting custom domain. Remove the conflicting records and replace them
  /// with records for your current custom domain.
  /// - "OWNERSHIP_CONFLICT" : Your custom domain has conflicting `TXT` records
  /// that indicate ownership by both your current custom domain one or more
  /// others. Remove the extraneous ownership records to grant the current
  /// custom domain ownership.
  /// - "OWNERSHIP_PENDING" : Your custom domain's DNS records are configured
  /// correctly. App Hosting will transfer ownership of your domain to this
  /// custom domain within 24 hours.
  /// - "OWNERSHIP_ACTIVE" : Your custom domain owns its domain.
  core.String? ownershipState;

  /// Lists the records that must added or removed to a custom domain's DNS in
  /// order to finish setup and start serving content.
  ///
  /// Field is present during onboarding. Also present after onboarding if one
  /// or more of the above states is not *_ACTIVE, indicating the domain's DNS
  /// records are in a bad state.
  ///
  /// Output only.
  core.List<DnsUpdates>? requiredDnsUpdates;

  CustomDomainStatus({
    this.certState,
    this.hostState,
    this.issues,
    this.ownershipState,
    this.requiredDnsUpdates,
  });

  CustomDomainStatus.fromJson(core.Map json_)
      : this(
          certState: json_['certState'] as core.String?,
          hostState: json_['hostState'] as core.String?,
          issues: (json_['issues'] as core.List?)
              ?.map((value) =>
                  Status.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          ownershipState: json_['ownershipState'] as core.String?,
          requiredDnsUpdates: (json_['requiredDnsUpdates'] as core.List?)
              ?.map((value) => DnsUpdates.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certState != null) 'certState': certState!,
        if (hostState != null) 'hostState': hostState!,
        if (issues != null) 'issues': issues!,
        if (ownershipState != null) 'ownershipState': ownershipState!,
        if (requiredDnsUpdates != null)
          'requiredDnsUpdates': requiredDnsUpdates!,
      };
}

/// A representation of a DNS records for a domain.
///
/// DNS records are resource records that define how systems and services should
/// behave when handling requests for a domain. For example, when you add `A`
/// records to your domain's DNS records, you're informing other systems (such
/// as your users' web browsers) to contact those IPv4 addresses to retrieve
/// resources relevant to your domain (such as your App Hosting files).
class DnsRecord {
  /// The domain the record pertains to, e.g. `foo.bar.com.`.
  ///
  /// Output only.
  core.String? domainName;

  /// The data of the record.
  ///
  /// The meaning of the value depends on record type: - A and AAAA: IP
  /// addresses for the domain. - CNAME: Another domain to check for records. -
  /// TXT: Arbitrary text strings associated with the domain. App Hosting uses
  /// TXT records to determine which Firebase projects have permission to act on
  /// the domain's behalf. - CAA: The record's flags, tag, and value, e.g. `0
  /// issue "pki.goog"`.
  ///
  /// Output only.
  core.String? rdata;

  /// An enum that indicates which state(s) this DNS record applies to.
  ///
  /// Populated for all records with an `ADD` or `REMOVE` required action.
  ///
  /// Output only.
  core.List<core.String>? relevantState;

  /// An enum that indicates the a required action for this record.
  ///
  /// Populated when the record is part of a required change in a `DnsUpdates`
  /// `discovered` or `desired` record set.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NONE" : No action necessary.
  /// - "ADD" : Add this record to your DNS records.
  /// - "REMOVE" : Remove this record from your DNS records.
  core.String? requiredAction;

  /// The record's type, which determines what data the record contains.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The record's type is unspecified. The message is
  /// invalid if this is unspecified.
  /// - "A" : An `A` record, as defined in
  /// [RFC 1035](https://tools.ietf.org/html/rfc1035). A records determine which
  /// IPv4 addresses a domain directs traffic towards.
  /// - "CNAME" : A `CNAME` record, as defined in
  /// [RFC 1035](https://tools.ietf.org/html/rfc1035). `CNAME` or Canonical Name
  /// records map a domain to a different, canonical domain. If a `CNAME` record
  /// is present, it should be the only record on the domain.
  /// - "TXT" : A `TXT` record, as defined in
  /// [RFC 1035](https://tools.ietf.org/html/rfc1035). `TXT` records hold
  /// arbitrary text data on a domain. Hosting uses `TXT` records to establish
  /// which Firebase Project has permission to act on a domain.
  /// - "AAAA" : An AAAA record, as defined in
  /// [RFC 3596](https://tools.ietf.org/html/rfc3596) AAAA records determine
  /// which IPv6 addresses a domain directs traffic towards.
  /// - "CAA" : A CAA record, as defined in
  /// [RFC 6844](https://tools.ietf.org/html/rfc6844). CAA, or Certificate
  /// Authority Authorization, records determine which Certificate Authorities
  /// (SSL certificate minting organizations) are authorized to mint a
  /// certificate for the domain. App Hosting uses `pki.goog` as its primary CA.
  /// CAA records cascade. A CAA record on `foo.com` also applies to
  /// `bar.foo.com` unless `bar.foo.com` has its own set of CAA records. CAA
  /// records are optional. If a domain and its parents have no CAA records, all
  /// CAs are authorized to mint certificates on its behalf. In general, App
  /// Hosting only asks you to modify CAA records when doing so is required to
  /// unblock SSL cert creation.
  core.String? type;

  DnsRecord({
    this.domainName,
    this.rdata,
    this.relevantState,
    this.requiredAction,
    this.type,
  });

  DnsRecord.fromJson(core.Map json_)
      : this(
          domainName: json_['domainName'] as core.String?,
          rdata: json_['rdata'] as core.String?,
          relevantState: (json_['relevantState'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          requiredAction: json_['requiredAction'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainName != null) 'domainName': domainName!,
        if (rdata != null) 'rdata': rdata!,
        if (relevantState != null) 'relevantState': relevantState!,
        if (requiredAction != null) 'requiredAction': requiredAction!,
        if (type != null) 'type': type!,
      };
}

/// A set of DNS records relevant to the setup and maintenance of a custom
/// domain in App Hosting.
class DnsRecordSet {
  /// An error App Hosting services encountered when querying your domain's DNS
  /// records.
  ///
  /// Note: App Hosting ignores `NXDOMAIN` errors, as those generally just mean
  /// that a domain name hasn't been set up yet.
  ///
  /// Output only.
  Status? checkError;

  /// The domain name the record set pertains to.
  ///
  /// Output only.
  core.String? domainName;

  /// Records on the domain.
  ///
  /// Output only.
  core.List<DnsRecord>? records;

  DnsRecordSet({
    this.checkError,
    this.domainName,
    this.records,
  });

  DnsRecordSet.fromJson(core.Map json_)
      : this(
          checkError: json_.containsKey('checkError')
              ? Status.fromJson(
                  json_['checkError'] as core.Map<core.String, core.dynamic>)
              : null,
          domainName: json_['domainName'] as core.String?,
          records: (json_['records'] as core.List?)
              ?.map((value) => DnsRecord.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checkError != null) 'checkError': checkError!,
        if (domainName != null) 'domainName': domainName!,
        if (records != null) 'records': records!,
      };
}

/// A set of DNS record updates that you should make to allow App Hosting to
/// serve secure content in response to requests against your domain.
///
/// These updates present the current state of your domain's and related
/// subdomains' DNS records when App Hosting last queried them, and the desired
/// set of records that App Hosting needs to see before your custom domain can
/// be fully active.
class DnsUpdates {
  /// The last time App Hosting checked your custom domain's DNS records.
  ///
  /// Output only.
  core.String? checkTime;

  /// The set of DNS records App Hosting needs in order to be able to serve
  /// secure content on the domain.
  ///
  /// Output only.
  core.List<DnsRecordSet>? desired;

  /// The set of DNS records App Hosting discovered when inspecting a domain.
  ///
  /// Output only.
  core.List<DnsRecordSet>? discovered;

  /// The domain name the DNS updates pertain to.
  ///
  /// Output only.
  core.String? domainName;

  DnsUpdates({
    this.checkTime,
    this.desired,
    this.discovered,
    this.domainName,
  });

  DnsUpdates.fromJson(core.Map json_)
      : this(
          checkTime: json_['checkTime'] as core.String?,
          desired: (json_['desired'] as core.List?)
              ?.map((value) => DnsRecordSet.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          discovered: (json_['discovered'] as core.List?)
              ?.map((value) => DnsRecordSet.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          domainName: json_['domainName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checkTime != null) 'checkTime': checkTime!,
        if (desired != null) 'desired': desired!,
        if (discovered != null) 'discovered': discovered!,
        if (domainName != null) 'domainName': domainName!,
      };
}

/// A domain name that is associated with a backend.
class Domain {
  /// Annotations as key value pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Time at which the domain was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Represents the state and configuration of a `CUSTOM` type domain.
  ///
  /// It is only present on Domains of that type.
  ///
  /// Output only.
  CustomDomainStatus? customDomainStatus;

  /// Time at which the domain was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Whether the domain is disabled.
  ///
  /// Defaults to false.
  ///
  /// Optional.
  core.bool? disabled;

  /// Mutable human-readable name for the domain.
  ///
  /// 63 character limit. e.g. `prod domain`.
  ///
  /// Optional.
  core.String? displayName;

  /// Server-computed checksum based on other values; may be sent on update or
  /// delete to ensure operation is done on expected resource.
  ///
  /// Output only.
  core.String? etag;

  /// Labels as key value pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of the domain, e.g.
  /// `/projects/p/locations/l/backends/b/domains/foo.com`
  core.String? name;

  /// A field that, if true, indicates that the build has an ongoing LRO.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The serving behavior of the domain.
  ///
  /// If specified, the domain will serve content other than its backend's live
  /// content.
  ///
  /// Optional.
  ServingBehavior? serve;

  /// The type of the domain.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type is unspecified (this should not happen).
  /// - "DEFAULT" : Default, App Hosting-provided and managed domains. These
  /// domains are created automatically with their parent backend and cannot be
  /// deleted except by deleting that parent, and cannot be moved to another
  /// backend. Default domains can be disabled via the `disabled` field.
  /// - "CUSTOM" : Custom, developer-owned domains. Custom Domains allow you to
  /// associate a domain you own with your App Hosting backend, and configure
  /// that domain to serve your backend's content.
  core.String? type;

  /// System-assigned, unique identifier.
  ///
  /// Output only.
  core.String? uid;

  /// Time at which the domain was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Domain({
    this.annotations,
    this.createTime,
    this.customDomainStatus,
    this.deleteTime,
    this.disabled,
    this.displayName,
    this.etag,
    this.labels,
    this.name,
    this.reconciling,
    this.serve,
    this.type,
    this.uid,
    this.updateTime,
  });

  Domain.fromJson(core.Map json_)
      : this(
          annotations:
              (json_['annotations'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          createTime: json_['createTime'] as core.String?,
          customDomainStatus: json_.containsKey('customDomainStatus')
              ? CustomDomainStatus.fromJson(json_['customDomainStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deleteTime: json_['deleteTime'] as core.String?,
          disabled: json_['disabled'] as core.bool?,
          displayName: json_['displayName'] as core.String?,
          etag: json_['etag'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          reconciling: json_['reconciling'] as core.bool?,
          serve: json_.containsKey('serve')
              ? ServingBehavior.fromJson(
                  json_['serve'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_['type'] as core.String?,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (customDomainStatus != null)
          'customDomainStatus': customDomainStatus!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (serve != null) 'serve': serve!,
        if (type != null) 'type': type!,
        if (uid != null) 'uid': uid!,
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

/// Environment variables for this build.
class EnvironmentVariable {
  /// Where this variable should be made available.
  ///
  /// If left unspecified, will be available in both BUILD and BACKEND.
  ///
  /// Optional.
  core.List<core.String>? availability;

  /// A fully qualified secret version.
  ///
  /// The value of the secret will be accessed once while building the
  /// application and once per cold start of the container at runtime. The
  /// service account used by Cloud Build and by Cloud Run must each have the
  /// `secretmanager.versions.access` permission on the secret.
  core.String? secret;

  /// A plaintext value.
  ///
  /// This value is encrypted at rest, but all project readers can view the
  /// value when reading your backend configuration.
  core.String? value;

  /// The name of the environment variable.
  ///
  /// - Must be a valid environment variable name (e.g. A-Z or underscores). -
  /// May not start with "FIREBASE" or "GOOGLE". - May not be a reserved
  /// environment variable for KNative/Cloud Run
  ///
  /// Required.
  core.String? variable;

  EnvironmentVariable({
    this.availability,
    this.secret,
    this.value,
    this.variable,
  });

  EnvironmentVariable.fromJson(core.Map json_)
      : this(
          availability: (json_['availability'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          secret: json_['secret'] as core.String?,
          value: json_['value'] as core.String?,
          variable: json_['variable'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availability != null) 'availability': availability!,
        if (secret != null) 'secret': secret!,
        if (value != null) 'value': value!,
        if (variable != null) 'variable': variable!,
      };
}

/// The container for the rpc status and source for any errors found during the
/// build process.
class Error {
  /// Resource link
  ///
  /// Output only.
  core.String? cloudResource;

  /// A status and (human readable) error message for the build, if in a
  /// `FAILED` state.
  ///
  /// Output only.
  Status? error;

  /// The source of the error for the build, if in a `FAILED` state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ERROR_SOURCE_UNSPECIFIED" : Indicates that generic error occurred
  /// outside of the Cloud Build or Cloud Run processes, such as a pre-empted or
  /// user-canceled App Hosting Build.
  /// - "CLOUD_BUILD" : Indicates that the build failed during the Cloud Build
  /// process, such as a build timeout.
  /// - "CLOUD_RUN" : Indicates that the build failed during the Cloud Run
  /// process, such as a service creation failure.
  core.String? errorSource;

  Error({
    this.cloudResource,
    this.error,
    this.errorSource,
  });

  Error.fromJson(core.Map json_)
      : this(
          cloudResource: json_['cloudResource'] as core.String?,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          errorSource: json_['errorSource'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudResource != null) 'cloudResource': cloudResource!,
        if (error != null) 'error': error!,
        if (errorSource != null) 'errorSource': errorSource!,
      };
}

/// Message for response to list backends
class ListBackendsResponse {
  /// The list of backends
  core.List<Backend>? backends;

  /// A token identifying the next page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackendsResponse({
    this.backends,
    this.nextPageToken,
    this.unreachable,
  });

  ListBackendsResponse.fromJson(core.Map json_)
      : this(
          backends: (json_['backends'] as core.List?)
              ?.map((value) => Backend.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backends != null) 'backends': backends!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Message for response to list builds.
class ListBuildsResponse {
  /// The list of builds.
  core.List<Build>? builds;

  /// A token identifying the next page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBuildsResponse({
    this.builds,
    this.nextPageToken,
    this.unreachable,
  });

  ListBuildsResponse.fromJson(core.Map json_)
      : this(
          builds: (json_['builds'] as core.List?)
              ?.map((value) =>
                  Build.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (builds != null) 'builds': builds!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Message for response to list domains.
class ListDomainsResponse {
  /// The list of domains.
  ///
  /// Output only.
  core.List<Domain>? domains;

  /// A token identifying the next page of results the server should return.
  ///
  /// Output only.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// Output only.
  core.List<core.String>? unreachable;

  ListDomainsResponse({
    this.domains,
    this.nextPageToken,
    this.unreachable,
  });

  ListDomainsResponse.fromJson(core.Map json_)
      : this(
          domains: (json_['domains'] as core.List?)
              ?.map((value) =>
                  Domain.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domains != null) 'domains': domains!,
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
          locations: (json_['locations'] as core.List?)
              ?.map((value) => Location.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          operations: (json_['operations'] as core.List?)
              ?.map((value) => Operation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Message for response to list rollouts.
class ListRolloutsResponse {
  /// A token identifying the next page of results the server should return.
  core.String? nextPageToken;

  /// The list of rollouts.
  core.List<Rollout>? rollouts;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListRolloutsResponse({
    this.nextPageToken,
    this.rollouts,
    this.unreachable,
  });

  ListRolloutsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          rollouts: (json_['rollouts'] as core.List?)
              ?.map((value) => Rollout.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (rollouts != null) 'rollouts': rollouts!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// An external resource managed by App Hosting on the project.
class ManagedResource {
  /// A Cloud Run
  /// \[`service`\](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-service),
  /// managed by App Hosting.
  RunService? runService;

  ManagedResource({
    this.runService,
  });

  ManagedResource.fromJson(core.Map json_)
      : this(
          runService: json_.containsKey('runService')
              ? RunService.fromJson(
                  json_['runService'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (runService != null) 'runService': runService!,
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_['done'] as core.bool?,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
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

/// Specifies redirect behavior for a domain.
class Redirect {
  /// The status code to use in a redirect response.
  ///
  /// Must be a valid HTTP 3XX status code. Defaults to 302 if not present.
  ///
  /// Optional.
  core.String? status;

  /// The URI of the redirect's intended destination.
  ///
  /// This URI will be prepended to the original request path. URI without a
  /// scheme are assumed to be HTTPS.
  ///
  /// Required.
  core.String? uri;

  Redirect({
    this.status,
    this.uri,
  });

  Redirect.fromJson(core.Map json_)
      : this(
          status: json_['status'] as core.String?,
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
        if (uri != null) 'uri': uri!,
      };
}

/// A single rollout of a build for a backend.
class Rollout {
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The name of a build that already exists.
  ///
  /// It doesn't have to be built; a rollout will wait for a build to be ready
  /// before updating traffic.
  ///
  /// Immutable.
  core.String? build;

  /// Time at which the rollout was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Time at which the rollout was deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Human-readable name.
  ///
  /// 63 character limit.
  ///
  /// Optional.
  core.String? displayName;

  /// A status and (human readable) error message for the rollout, if in a
  /// `FAILED` state.
  ///
  /// Output only.
  Status? error;

  /// Server-computed checksum based on other values; may be sent on update or
  /// delete to ensure operation is done on expected resource.
  ///
  /// Output only.
  core.String? etag;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of the rollout. Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/rollouts/{rolloutId}`.
  core.String? name;

  /// A field that, if true, indicates that the Rollout currently has an LRO.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The state of the rollout.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The rollout is in an unknown state.
  /// - "QUEUED" : The rollout is waiting for actuation to begin. This may be
  /// because it is waiting on another rollout to complete.
  /// - "PENDING_BUILD" : The rollout is waiting for the build process to
  /// complete, which builds the code and sets up the underlying infrastructure.
  /// - "PROGRESSING" : The rollout has started and is actively modifying
  /// traffic.
  /// - "PAUSED" : The rollout has been paused due to either being manually
  /// paused or a PAUSED stage. This should be set while `paused = true`.
  /// - "SUCCEEDED" : The rollout has completed.
  /// - "FAILED" : The rollout has failed. See error for more information.
  /// - "CANCELLED" : The rollout has been cancelled.
  core.String? state;

  /// System-assigned, unique identifier.
  ///
  /// Output only.
  core.String? uid;

  /// Time at which the rollout was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Rollout({
    this.annotations,
    this.build,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.error,
    this.etag,
    this.labels,
    this.name,
    this.reconciling,
    this.state,
    this.uid,
    this.updateTime,
  });

  Rollout.fromJson(core.Map json_)
      : this(
          annotations:
              (json_['annotations'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          build: json_['build'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          deleteTime: json_['deleteTime'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_['etag'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          reconciling: json_['reconciling'] as core.bool?,
          state: json_['state'] as core.String?,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (build != null) 'build': build!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (error != null) 'error': error!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The policy for how automatic builds and rollouts are triggered and rolled
/// out.
class RolloutPolicy {
  /// If set, specifies a branch that triggers a new build to be started with
  /// this policy.
  ///
  /// Otherwise, no automatic rollouts will happen.
  core.String? codebaseBranch;

  /// A flag that, if true, prevents automatic rollouts from being created via
  /// this RolloutPolicy.
  ///
  /// Optional.
  core.bool? disabled;

  /// If `disabled` is set, the time at which the automatic rollouts were
  /// disabled.
  ///
  /// Output only.
  core.String? disabledTime;

  RolloutPolicy({
    this.codebaseBranch,
    this.disabled,
    this.disabledTime,
  });

  RolloutPolicy.fromJson(core.Map json_)
      : this(
          codebaseBranch: json_['codebaseBranch'] as core.String?,
          disabled: json_['disabled'] as core.bool?,
          disabledTime: json_['disabledTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (codebaseBranch != null) 'codebaseBranch': codebaseBranch!,
        if (disabled != null) 'disabled': disabled!,
        if (disabledTime != null) 'disabledTime': disabledTime!,
      };
}

/// Additional configuration to apply to the Cloud Run
/// \[`service`\](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-service).
class RunConfig {
  /// Maximum number of requests that each Cloud Run instance can receive.
  ///
  /// By default, each instance can receive Cloud Run's default of up to 80
  /// requests at the same time. Concurrency can be set to any integer value up
  /// to 1000.
  ///
  /// Optional.
  core.int? concurrency;

  /// Number of CPUs used for each serving instance.
  ///
  /// By default, cpu defaults to the Cloud Run's default of 1.0. CPU can be set
  /// to value 1, 2, 4, 6, or 8 CPUs, and for less than 1 CPU, a value from 0.08
  /// to less than 1.00, in increments of 0.01. If you set a value of less than
  /// 1 CPU, you must set concurrency to 1, and CPU will only be allocated
  /// during request processing. Increasing CPUs limit may require increase in
  /// memory limits: - 4 CPUs: at least 2 GiB - 6 CPUs: at least 4 GiB - 8 CPUs:
  /// at least 4 GiB
  ///
  /// Optional.
  core.double? cpu;

  /// Number of Cloud Run instances to maintain at maximum for each revision.
  ///
  /// By default, each Cloud Run
  /// \[`service`\](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-service)
  /// scales out to Cloud Run's default of a maximum of 100 instances. The
  /// maximum max_instances limit is based on your quota. See
  /// https://cloud.google.com/run/docs/configuring/max-instances#limits.
  ///
  /// Optional.
  core.int? maxInstances;

  /// Amount of memory allocated for each serving instance in MiB.
  ///
  /// By default, memory defaults to the Cloud Run's default where each instance
  /// is allocated 512 MiB of memory. Memory can be set to any integer value
  /// between 128 to 32768. Increasing memory limit may require increase in CPUs
  /// limits: - Over 4 GiB: at least 2 CPUs - Over 8 GiB: at least 4 CPUs - Over
  /// 16 GiB: at least 6 CPUs - Over 24 GiB: at least 8 CPUs
  ///
  /// Optional.
  core.int? memoryMib;

  /// Number of Cloud Run instances to maintain at minimum for each Cloud Run
  /// Service.
  ///
  /// By default, there are no minimum. Even if the service splits traffic
  /// across multiple revisions, the total number of instances for a service
  /// will be capped at this value.
  ///
  /// Optional.
  core.int? minInstances;

  RunConfig({
    this.concurrency,
    this.cpu,
    this.maxInstances,
    this.memoryMib,
    this.minInstances,
  });

  RunConfig.fromJson(core.Map json_)
      : this(
          concurrency: json_['concurrency'] as core.int?,
          cpu: (json_['cpu'] as core.num?)?.toDouble(),
          maxInstances: json_['maxInstances'] as core.int?,
          memoryMib: json_['memoryMib'] as core.int?,
          minInstances: json_['minInstances'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (concurrency != null) 'concurrency': concurrency!,
        if (cpu != null) 'cpu': cpu!,
        if (maxInstances != null) 'maxInstances': maxInstances!,
        if (memoryMib != null) 'memoryMib': memoryMib!,
        if (minInstances != null) 'minInstances': minInstances!,
      };
}

/// A managed Cloud Run
/// \[`service`\](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-service).
class RunService {
  /// The name of the Cloud Run
  /// \[`service`\](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-service),
  /// in the format:
  /// `projects/{project}/locations/{location}/services/{serviceId}`
  ///
  /// Optional.
  core.String? service;

  RunService({
    this.service,
  });

  RunService.fromJson(core.Map json_)
      : this(
          service: json_['service'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (service != null) 'service': service!,
      };
}

/// Indicates whether App Hosting will serve content on the domain.
class ServingBehavior {
  /// Redirect behavior for a domain, if provided.
  ///
  /// Optional.
  Redirect? redirect;

  ServingBehavior({
    this.redirect,
  });

  ServingBehavior.fromJson(core.Map json_)
      : this(
          redirect: json_.containsKey('redirect')
              ? Redirect.fromJson(
                  json_['redirect'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (redirect != null) 'redirect': redirect!,
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

/// Controls traffic configuration for the backend.
class Traffic {
  /// Unstructured key value map that may be set by external tools to store and
  /// arbitrary metadata.
  ///
  /// They are not queryable and should be preserved when modifying objects.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Time at which the backend was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Current state of traffic allocation for the backend.
  ///
  /// When setting `target`, this field may differ for some time until the
  /// desired state is reached.
  ///
  /// Output only.
  TrafficSet? current;

  /// Server-computed checksum based on other values; may be sent on update or
  /// delete to ensure operation is done on expected resource.
  ///
  /// Output only.
  core.String? etag;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of the backend's traffic. Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/traffic`.
  core.String? name;

  /// A field that, if true, indicates that the system is working to make the
  /// backend's `current` match the requested `target` list.
  ///
  /// Output only.
  core.bool? reconciling;

  /// A rollout policy specifies how new builds and automatic deployments are
  /// created.
  RolloutPolicy? rolloutPolicy;

  /// Set to manually control the desired traffic for the backend.
  ///
  /// This will cause `current` to eventually match this value. The percentages
  /// must add up to 100%.
  TrafficSet? target;

  /// System-assigned, unique identifier.
  ///
  /// Output only.
  core.String? uid;

  /// Time at which the backend was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Traffic({
    this.annotations,
    this.createTime,
    this.current,
    this.etag,
    this.labels,
    this.name,
    this.reconciling,
    this.rolloutPolicy,
    this.target,
    this.uid,
    this.updateTime,
  });

  Traffic.fromJson(core.Map json_)
      : this(
          annotations:
              (json_['annotations'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          createTime: json_['createTime'] as core.String?,
          current: json_.containsKey('current')
              ? TrafficSet.fromJson(
                  json_['current'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_['etag'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          reconciling: json_['reconciling'] as core.bool?,
          rolloutPolicy: json_.containsKey('rolloutPolicy')
              ? RolloutPolicy.fromJson(
                  json_['rolloutPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          target: json_.containsKey('target')
              ? TrafficSet.fromJson(
                  json_['target'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (current != null) 'current': current!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (rolloutPolicy != null) 'rolloutPolicy': rolloutPolicy!,
        if (target != null) 'target': target!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A list of traffic splits that together represent where traffic is being
/// routed.
class TrafficSet {
  /// The list of traffic splits.
  ///
  /// Required.
  core.List<TrafficSplit>? splits;

  TrafficSet({
    this.splits,
  });

  TrafficSet.fromJson(core.Map json_)
      : this(
          splits: (json_['splits'] as core.List?)
              ?.map((value) => TrafficSplit.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (splits != null) 'splits': splits!,
      };
}

/// The traffic allocation for the backend.
class TrafficSplit {
  /// The build that traffic is being routed to.
  ///
  /// Required.
  core.String? build;

  /// The percentage of traffic to send to the build.
  ///
  /// Currently must be 100% or 0%.
  ///
  /// Required.
  core.int? percent;

  TrafficSplit({
    this.build,
    this.percent,
  });

  TrafficSplit.fromJson(core.Map json_)
      : this(
          build: json_['build'] as core.String?,
          percent: json_['percent'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (build != null) 'build': build!,
        if (percent != null) 'percent': percent!,
      };
}

/// Version control metadata for a user associated with a resolved codebase.
///
/// Currently assumes a Git user.
class UserMetadata {
  /// The 'name' field in a Git user's git.config.
  ///
  /// Required by Git.
  ///
  /// Output only.
  core.String? displayName;

  /// The 'email' field in a Git user's git.config, if available.
  ///
  /// Output only.
  core.String? email;

  /// The URI of an image file associated with the user's account in an external
  /// source control provider, if available.
  ///
  /// Output only.
  core.String? imageUri;

  UserMetadata({
    this.displayName,
    this.email,
    this.imageUri,
  });

  UserMetadata.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          email: json_['email'] as core.String?,
          imageUri: json_['imageUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (imageUri != null) 'imageUri': imageUri!,
      };
}
