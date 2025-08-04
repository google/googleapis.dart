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

/// Parameter Manager API - v1
///
/// Parameter Manager is a single source of truth to store, access and manage
/// the lifecycle of your workload parameters. Parameter Manager aims to make
/// management of sensitive application parameters effortless for customers
/// without diminishing focus on security.
///
/// For more information, see
/// <https://cloud.google.com/secret-manager/parameter-manager/docs/overview>
///
/// Create an instance of [ParameterManagerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsParametersResource]
///       - [ProjectsLocationsParametersVersionsResource]
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

/// Parameter Manager is a single source of truth to store, access and manage
/// the lifecycle of your workload parameters.
///
/// Parameter Manager aims to make management of sensitive application
/// parameters effortless for customers without diminishing focus on security.
class ParameterManagerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ParameterManagerApi(
    http.Client client, {
    core.String rootUrl = 'https://parametermanager.googleapis.com/',
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

  ProjectsLocationsParametersResource get parameters =>
      ProjectsLocationsParametersResource(_requester);

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

class ProjectsLocationsParametersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsParametersVersionsResource get versions =>
      ProjectsLocationsParametersVersionsResource(_requester);

  ProjectsLocationsParametersResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Parameter in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent in the format `projects / *
  /// /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [parameterId] - Required. Id of the Parameter resource
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
  /// Completes with a [Parameter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Parameter> create(
    Parameter request,
    core.String parent, {
    core.String? parameterId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parameterId != null) 'parameterId': [parameterId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/parameters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Parameter.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Parameter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource in the format `projects / *
  /// /locations / * /parameters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/parameters/\[^/\]+$`.
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
      if (requestId != null) 'requestId': [requestId],
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

  /// Gets details of a single Parameter.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource in the format `projects / *
  /// /locations / * /parameters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/parameters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Parameter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Parameter> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Parameter.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Parameters in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListParametersRequest in the format
  /// `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
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
  /// Completes with a [ListParametersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListParametersResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/parameters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListParametersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a single Parameter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. \[Output only\] The resource name of the Parameter in
  /// the format `projects / * /locations / * /parameters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/parameters/\[^/\]+$`.
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
  /// overwritten in the Parameter resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// mutable field will be overwritten if it is in the mask. If the user does
  /// not provide a mask then all mutable fields present in the request will be
  /// overwritten.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Parameter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Parameter> patch(
    Parameter request,
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
    return Parameter.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsParametersVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsParametersVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new ParameterVersion in a given project, location, and
  /// parameter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent in the format `projects / *
  /// /locations / * /parameters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/parameters/\[^/\]+$`.
  ///
  /// [parameterVersionId] - Required. Id of the ParameterVersion resource
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
  /// Completes with a [ParameterVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ParameterVersion> create(
    ParameterVersion request,
    core.String parent, {
    core.String? parameterVersionId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (parameterVersionId != null)
        'parameterVersionId': [parameterVersionId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ParameterVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a single ParameterVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource in the format `projects / *
  /// /locations / * /parameters / * /versions / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/parameters/\[^/\]+/versions/\[^/\]+$`.
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
      if (requestId != null) 'requestId': [requestId],
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

  /// Gets details of a single ParameterVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource in the format `projects / *
  /// /locations / * /parameters / * /versions / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/parameters/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [view] - Optional. View of the ParameterVersion. In the default FULL view,
  /// all metadata & payload associated with the ParameterVersion will be
  /// returned.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : The default / unset value. The API will default to
  /// the FULL view..
  /// - "BASIC" : Include only the metadata for the resource.
  /// - "FULL" : Include metadata & other relevant payload data as well. This is
  /// the default view.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ParameterVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ParameterVersion> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ParameterVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists ParameterVersions in a given project, location, and parameter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListParameterVersionsRequest in the
  /// format `projects / * /locations / * /parameters / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/parameters/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
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
  /// Completes with a [ListParameterVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListParameterVersionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListParameterVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a single ParameterVersion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. \[Output only\] The resource name of the
  /// ParameterVersion in the format `projects / * /locations / * /parameters /
  /// * /versions / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/parameters/\[^/\]+/versions/\[^/\]+$`.
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
  /// overwritten in the ParameterVersion resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A mutable field will be overwritten if it is in the mask. If the
  /// user does not provide a mask then all mutable fields present in the
  /// request will be overwritten.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ParameterVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ParameterVersion> patch(
    ParameterVersion request,
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
    return ParameterVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets rendered version of a ParameterVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/parameters/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RenderParameterVersionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RenderParameterVersionResponse> render(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':render';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RenderParameterVersionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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

/// Message for response to listing ParameterVersions
class ListParameterVersionsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of ParameterVersions
  core.List<ParameterVersion>? parameterVersions;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListParameterVersionsResponse({
    this.nextPageToken,
    this.parameterVersions,
    this.unreachable,
  });

  ListParameterVersionsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        parameterVersions:
            (json_['parameterVersions'] as core.List?)
                ?.map(
                  (value) => ParameterVersion.fromJson(
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
    if (parameterVersions != null) 'parameterVersions': parameterVersions!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Message for response to listing Parameters
class ListParametersResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of Parameters
  core.List<Parameter>? parameters;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListParametersResponse({
    this.nextPageToken,
    this.parameters,
    this.unreachable,
  });

  ListParametersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        parameters:
            (json_['parameters'] as core.List?)
                ?.map(
                  (value) => Parameter.fromJson(
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
    if (parameters != null) 'parameters': parameters!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Message describing Parameter resource
class Parameter {
  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// Specifies the format of a Parameter.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PARAMETER_FORMAT_UNSPECIFIED" : The default / unset value. The API will
  /// default to the UNFORMATTED format.
  /// - "UNFORMATTED" : Unformatted.
  /// - "YAML" : YAML format.
  /// - "JSON" : JSON format.
  core.String? format;

  /// Customer managed encryption key (CMEK) to use for encrypting the Parameter
  /// Versions.
  ///
  /// If not set, the default Google-managed encryption key will be used. Cloud
  /// KMS CryptoKeys must reside in the same location as the Parameter. The
  /// expected format is `projects / * /locations / * /keyRings / * /cryptoKeys
  /// / * `.
  ///
  /// Optional.
  core.String? kmsKey;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// \[Output only\] The resource name of the Parameter in the format `projects
  /// / * /locations / * /parameters / * `.
  core.String? name;

  /// \[Output-only\] policy member strings of a Google Cloud resource.
  ///
  /// Output only.
  ResourcePolicyMember? policyMember;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  Parameter({
    this.createTime,
    this.format,
    this.kmsKey,
    this.labels,
    this.name,
    this.policyMember,
    this.updateTime,
  });

  Parameter.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        format: json_['format'] as core.String?,
        kmsKey: json_['kmsKey'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        policyMember:
            json_.containsKey('policyMember')
                ? ResourcePolicyMember.fromJson(
                  json_['policyMember'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (format != null) 'format': format!,
    if (kmsKey != null) 'kmsKey': kmsKey!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (policyMember != null) 'policyMember': policyMember!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Message describing ParameterVersion resource
class ParameterVersion {
  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// Disabled boolean to determine if a ParameterVersion acts as a metadata
  /// only resource (payload is never returned if disabled is true).
  ///
  /// If true any calls will always default to BASIC view even if the user
  /// explicitly passes FULL view as part of the request. A render call on a
  /// disabled resource fails with an error. Default value is False.
  ///
  /// Optional.
  core.bool? disabled;

  /// The resource name of the KMS key version used to encrypt the
  /// ParameterVersion payload.
  ///
  /// This field is populated only if the Parameter resource has customer
  /// managed encryption key (CMEK) configured.
  ///
  /// Optional. Output only.
  core.String? kmsKeyVersion;

  /// Identifier.
  ///
  /// \[Output only\] The resource name of the ParameterVersion in the format
  /// `projects / * /locations / * /parameters / * /versions / * `.
  core.String? name;

  /// Payload content of a ParameterVersion resource.
  ///
  /// This is only returned when the request provides the View value of FULL
  /// (default for GET request).
  ///
  /// Required. Immutable.
  ParameterVersionPayload? payload;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  ParameterVersion({
    this.createTime,
    this.disabled,
    this.kmsKeyVersion,
    this.name,
    this.payload,
    this.updateTime,
  });

  ParameterVersion.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        disabled: json_['disabled'] as core.bool?,
        kmsKeyVersion: json_['kmsKeyVersion'] as core.String?,
        name: json_['name'] as core.String?,
        payload:
            json_.containsKey('payload')
                ? ParameterVersionPayload.fromJson(
                  json_['payload'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (disabled != null) 'disabled': disabled!,
    if (kmsKeyVersion != null) 'kmsKeyVersion': kmsKeyVersion!,
    if (name != null) 'name': name!,
    if (payload != null) 'payload': payload!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Message for storing a ParameterVersion resource's payload data
class ParameterVersionPayload {
  /// bytes data for storing payload.
  ///
  /// Required.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  ParameterVersionPayload({this.data});

  ParameterVersionPayload.fromJson(core.Map json_)
    : this(data: json_['data'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (data != null) 'data': data!,
  };
}

/// Message describing RenderParameterVersionResponse resource
class RenderParameterVersionResponse {
  /// Resource identifier of a ParameterVersion in the format `projects / *
  /// /locations / * /parameters / * /versions / * `.
  ///
  /// Output only.
  core.String? parameterVersion;

  /// Payload content of a ParameterVersion resource.
  ParameterVersionPayload? payload;

  /// Server generated rendered version of the user provided payload data
  /// (ParameterVersionPayload) which has substitutions of all (if any)
  /// references to a SecretManager SecretVersion resources.
  ///
  /// This substitution only works for a Parameter which is in JSON or YAML
  /// format.
  ///
  /// Output only.
  core.String? renderedPayload;
  core.List<core.int> get renderedPayloadAsBytes =>
      convert.base64.decode(renderedPayload!);

  set renderedPayloadAsBytes(core.List<core.int> bytes_) {
    renderedPayload = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  RenderParameterVersionResponse({
    this.parameterVersion,
    this.payload,
    this.renderedPayload,
  });

  RenderParameterVersionResponse.fromJson(core.Map json_)
    : this(
        parameterVersion: json_['parameterVersion'] as core.String?,
        payload:
            json_.containsKey('payload')
                ? ParameterVersionPayload.fromJson(
                  json_['payload'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        renderedPayload: json_['renderedPayload'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parameterVersion != null) 'parameterVersion': parameterVersion!,
    if (payload != null) 'payload': payload!,
    if (renderedPayload != null) 'renderedPayload': renderedPayload!,
  };
}

/// Output-only policy member strings of a Google Cloud resource's built-in
/// identity.
class ResourcePolicyMember {
  /// IAM policy binding member referring to a Google Cloud resource by
  /// user-assigned name (https://google.aip.dev/122).
  ///
  /// If a resource is deleted and recreated with the same name, the binding
  /// will be applicable to the new resource. Example:
  /// `principal://parametermanager.googleapis.com/projects/12345/name/locations/us-central1-a/parameters/my-parameter`
  ///
  /// Output only.
  core.String? iamPolicyNamePrincipal;

  /// IAM policy binding member referring to a Google Cloud resource by
  /// system-assigned unique identifier (https://google.aip.dev/148#uid).
  ///
  /// If a resource is deleted and recreated with the same name, the binding
  /// will not be applicable to the new resource Example:
  /// `principal://parametermanager.googleapis.com/projects/12345/uid/locations/us-central1-a/parameters/a918fed5`
  ///
  /// Output only.
  core.String? iamPolicyUidPrincipal;

  ResourcePolicyMember({
    this.iamPolicyNamePrincipal,
    this.iamPolicyUidPrincipal,
  });

  ResourcePolicyMember.fromJson(core.Map json_)
    : this(
        iamPolicyNamePrincipal: json_['iamPolicyNamePrincipal'] as core.String?,
        iamPolicyUidPrincipal: json_['iamPolicyUidPrincipal'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (iamPolicyNamePrincipal != null)
      'iamPolicyNamePrincipal': iamPolicyNamePrincipal!,
    if (iamPolicyUidPrincipal != null)
      'iamPolicyUidPrincipal': iamPolicyUidPrincipal!,
  };
}
