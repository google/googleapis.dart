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

/// Cloud FTP API - v1
///
/// A managed, cloud-native solution to move data in and out of Google Cloud by
/// using SSH File Transfer Protocol (SFTP).
///
/// For more information, see <https://docs.cloud.google.com/cloud-ftp>
///
/// Create an instance of [CloudFTPApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServersResource]
///       - [ProjectsLocationsServersUsersResource]
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

/// A managed, cloud-native solution to move data in and out of Google Cloud by
/// using SSH File Transfer Protocol (SFTP).
class CloudFTPApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudFTPApi(
    http.Client client, {
    core.String rootUrl = 'https://ftp.googleapis.com/',
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

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsServersResource get servers =>
      ProjectsLocationsServersResource(_requester);

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
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
  /// [returnPartialSuccess] - When set to `true`, operations that are reachable
  /// are returned as normal, and those that are unreachable are returned in the
  /// ListOperationsResponse.unreachable field. This can only be `true` when
  /// reading across collections. For example, when `parent` is set to
  /// `"projects/example/locations/-"`. This field is not supported by default
  /// and will result in an `UNIMPLEMENTED` error if set unless explicitly
  /// documented otherwise in service or product specific documentation.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsLocationsServersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServersUsersResource get users =>
      ProjectsLocationsServersUsersResource(_requester);

  ProjectsLocationsServersResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Server in a given project and location.
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
  /// [serverId] - Required. A unique ID for the server. Must start with a
  /// lowercase letter, and end with a lowercase letter or number. Can contain
  /// lowercase letters, numbers, and hyphens. Maximum length is 30 characters.
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
    Server request,
    core.String parent, {
    core.String? requestId,
    core.String? serverId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'serverId': ?serverId == null ? null : [serverId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/servers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Server.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/servers/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Server.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/servers/\[^/\]+$`.
  ///
  /// [view] - Optional. The view of the Server resource to return.
  /// Possible string values are:
  /// - "SERVER_VIEW_UNSPECIFIED" : Default value. Equivalent to
  /// SERVER_VIEW_BASIC.
  /// - "SERVER_VIEW_BASIC" : Basic view. Excludes heavy configurations
  /// (internal_config, external_config, google_managed_server_credential).
  /// - "SERVER_VIEW_FULL" : Full view. Includes all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Server].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Server> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Server.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Servers in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListServersRequest
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
  /// [view] - Optional. The view of the Server resource to return.
  /// Possible string values are:
  /// - "SERVER_VIEW_UNSPECIFIED" : Default value. Equivalent to
  /// SERVER_VIEW_BASIC.
  /// - "SERVER_VIEW_BASIC" : Basic view. Excludes heavy configurations
  /// (internal_config, external_config, google_managed_server_credential).
  /// - "SERVER_VIEW_FULL" : Full view. Includes all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServersResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/servers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. name of resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/servers/\[^/\]+$`.
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
  /// overwritten in the Server resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields present in the request will be overwritten.
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
    Server request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts a stopping/stopped Server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource Format:
  /// `projects/{project}/locations/{location}/servers/{server}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/servers/\[^/\]+$`.
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
    StartServerRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops an active Server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. Format:
  /// `projects/{project}/locations/{location}/servers/{server}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/servers/\[^/\]+$`.
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
    StopServerRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsServersUsersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServersUsersResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new User in a given project and location and Server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/servers/\[^/\]+$`.
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
  /// [userId] - Required. A unique user ID for the SFTP user. The user ID must
  /// start with a lowercase letter and can include lowercase letters, numbers,
  /// or hyphens.
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
    User request,
    core.String parent, {
    core.String? requestId,
    core.String? userId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'userId': ?userId == null ? null : [userId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/users';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single User.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/servers/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, the request will force the deletion of
  /// the User.
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
      'force': ?force == null ? null : ['${force}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single User.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/servers/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [view] - Optional. The view of the User resource to return.
  /// Possible string values are:
  /// - "USER_VIEW_UNSPECIFIED" : Default value. Equivalent to USER_VIEW_BASIC.
  /// - "USER_VIEW_BASIC" : Basic view. Excludes heavy configurations
  /// (user_credentials, storage_directory_mappings).
  /// - "USER_VIEW_FULL" : Full view. Includes all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Users in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListUsersRequest
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/servers/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [orderBy] - Optional. Hint for how to order the results
  ///
  /// [pageSize] - Optional. Requested page size. User may return fewer items
  /// than requested. The maximum value is 1000; The default value is 50 if the
  /// field is omitted (or set to 0).
  ///
  /// [pageToken] - Optional. A token identifying a page of results the user
  /// should return.
  ///
  /// [view] - Optional. The view of the User resource to return.
  /// Possible string values are:
  /// - "USER_VIEW_UNSPECIFIED" : Default value. Equivalent to USER_VIEW_BASIC.
  /// - "USER_VIEW_BASIC" : Basic view. Excludes heavy configurations
  /// (user_credentials, storage_directory_mappings).
  /// - "USER_VIEW_FULL" : Full view. Includes all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUsersResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUsersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single User.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. User-friendly name via which User will be identified.
  /// projects/{project}/locations/{location}/servers/{server}/users/{user}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/servers/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the User resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields present in the request will be overwritten.
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
    User request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A consumer project or network that is permitted to connect to the server via
/// PSC.
class AllowedConsumer {
  /// The connection limit for the consumer.
  ///
  /// Value must be greater than 0.
  ///
  /// Required.
  core.String? connectionLimit;

  /// The project ID or number of the consumer project.
  ///
  /// Must be in the format: `projects/{project}`.
  core.String? project;

  AllowedConsumer({this.connectionLimit, this.project});

  AllowedConsumer.fromJson(core.Map json_)
    : this(
        connectionLimit: json_['connectionLimit'] as core.String?,
        project: json_['project'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectionLimit = this.connectionLimit;
    final project = this.project;
    return {'connectionLimit': ?connectionLimit, 'project': ?project};
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A consumer project or network that is denied to connect to the server via
/// PSC.
class DeniedConsumer {
  /// The project ID or number of the consumer project.
  ///
  /// Must be in the format: `projects/{project}`.
  core.String? project;

  DeniedConsumer({this.project});

  DeniedConsumer.fromJson(core.Map json_)
    : this(project: json_['project'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final project = this.project;
    return {'project': ?project};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Configuration for external server.
class ExternalServerConfig {
  /// List of CIDR blocks that are allowed to access the Server.
  ///
  /// A CIDR range consists of an IP Address and a prefix length to construct
  /// the subnet mask. By default, the prefix length is 32 (i.e. matches a
  /// single IP address). For now, only IPV4 addresses are supported. Examples:
  /// "203.0.113.0/24" - matches with the IP addresses in the range 203.0.113.0
  /// - 203.0.113.255. "0.0.0.0/0" - matches against any IP address. This field
  /// must contain at least one entry if the access type is EXTERNAL. The number
  /// of allowed CIDR blocks cannot exceed 500. Example: 192.168.0.0/16
  ///
  /// Optional.
  core.List<core.String>? allowedCidrBlocks;

  /// IP address of the LB via which clients will connect.
  ///
  /// Output only.
  core.String? ipAddress;

  ExternalServerConfig({this.allowedCidrBlocks, this.ipAddress});

  ExternalServerConfig.fromJson(core.Map json_)
    : this(
        allowedCidrBlocks: (json_['allowedCidrBlocks'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        ipAddress: json_['ipAddress'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allowedCidrBlocks = this.allowedCidrBlocks;
    final ipAddress = this.ipAddress;
    return {'allowedCidrBlocks': ?allowedCidrBlocks, 'ipAddress': ?ipAddress};
  }
}

/// Configuration for private server accessible via PSC.
class InternalServerConfig {
  /// A list of projects that are permitted to connect.
  ///
  /// At least one project is required in the allow list.
  ///
  /// Required.
  core.List<AllowedConsumer>? consumerAcceptList;

  /// A list of projects that are denied connection.
  ///
  /// Format: "projects/sample_project_id" or "projects/1234567890" Projects in
  /// this list will be denied access, even if they are included in the
  /// `allow_list`. If this list is empty, no projects are explicitly rejected.
  ///
  /// Optional.
  core.List<DeniedConsumer>? consumerRejectList;

  /// Details of endpoints created by the customer.
  ///
  /// Output only.
  core.List<PscEndpoint>? pscEndpoints;

  /// The resource name of the service attachment.
  ///
  /// Format:
  /// `projects/{project}/regions/{region}/serviceAttachments/{service_attachment}`
  ///
  /// Output only.
  core.String? serviceAttachment;

  InternalServerConfig({
    this.consumerAcceptList,
    this.consumerRejectList,
    this.pscEndpoints,
    this.serviceAttachment,
  });

  InternalServerConfig.fromJson(core.Map json_)
    : this(
        consumerAcceptList: (json_['consumerAcceptList'] as core.List?)
            ?.map(
              (value) => AllowedConsumer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        consumerRejectList: (json_['consumerRejectList'] as core.List?)
            ?.map(
              (value) => DeniedConsumer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        pscEndpoints: (json_['pscEndpoints'] as core.List?)
            ?.map(
              (value) => PscEndpoint.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        serviceAttachment: json_['serviceAttachment'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final consumerAcceptList = this.consumerAcceptList;
    final consumerRejectList = this.consumerRejectList;
    final pscEndpoints = this.pscEndpoints;
    final serviceAttachment = this.serviceAttachment;
    return {
      'consumerAcceptList': ?consumerAcceptList,
      'consumerRejectList': ?consumerRejectList,
      'pscEndpoints': ?pscEndpoints,
      'serviceAttachment': ?serviceAttachment,
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

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  /// Unordered list.
  ///
  /// Unreachable resources. Populated when the request sets
  /// `ListOperationsRequest.return_partial_success` and reads across
  /// collections. For example, when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => Operation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final operations = this.operations;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'operations': ?operations,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing Servers
class ListServersResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of Server
  core.List<Server>? servers;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListServersResponse({this.nextPageToken, this.servers, this.unreachable});

  ListServersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        servers: (json_['servers'] as core.List?)
            ?.map(
              (value) =>
                  Server.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final servers = this.servers;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'servers': ?servers,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing Users
class ListUsersResponse {
  /// A token identifying a page of results the user should return.
  core.String? nextPageToken;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// The list of User
  core.List<User>? users;

  ListUsersResponse({this.nextPageToken, this.unreachable, this.users});

  ListUsersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        users: (json_['users'] as core.List?)
            ?.map(
              (value) =>
                  User.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    final users = this.users;
    return {
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
      'users': ?users,
    };
  }
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

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
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

/// Details of PSC endpoint created by customer.
class PscEndpoint {
  /// This is a Resource name for Private Service Connect endpoint.
  ///
  /// Format:
  /// `projects/{project}/regions/{region}/forwardingRules/{forwarding_rule}`
  ///
  /// Output only.
  core.String? endpoint;

  /// The consumer network.
  ///
  /// Format: `projects/{project}/locations/{location}/networks/{network}`
  ///
  /// Output only.
  core.String? network;

  /// The status of the connected endpoint.
  ///
  /// Output only.
  core.String? status;

  PscEndpoint({this.endpoint, this.network, this.status});

  PscEndpoint.fromJson(core.Map json_)
    : this(
        endpoint: json_['endpoint'] as core.String?,
        network: json_['network'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endpoint = this.endpoint;
    final network = this.network;
    final status = this.status;
    return {'endpoint': ?endpoint, 'network': ?network, 'status': ?status};
  }
}

/// Message describing Server object
class Server {
  /// The access type of the Server.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACCESS_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "EXTERNAL" : Server is assigned a public IP.
  /// - "INTERNAL" : Server is assigned an internal IP.
  core.String? accessType;

  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// Display name of the Server
  ///
  /// Optional.
  core.String? displayName;

  /// Configuration for external access.
  ExternalServerConfig? externalConfig;

  /// Credentials of the FTP Server.
  ///
  /// Output only.
  ServerCredential? googleManagedServerCredential;

  /// Configuration for internal access.
  InternalServerConfig? internalConfig;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// name of resource
  core.String? name;

  /// Service agent used to access the customer bucket.
  ///
  /// Output only.
  core.String? serviceAgent;

  /// The state of the server.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "CREATING" : Server is being created.
  /// - "STARTING" : Server is starting.
  /// - "ACTIVE" : Server is ready to be used.
  /// - "STOPPING" : Server is stopping.
  /// - "STOPPED" : Server is stopped.
  /// - "DELETING" : Server is being deleted.
  /// - "ERROR" : Server is in error state.
  /// - "UPDATING" : Server is being updated.
  core.String? state;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  Server({
    this.accessType,
    this.createTime,
    this.displayName,
    this.externalConfig,
    this.googleManagedServerCredential,
    this.internalConfig,
    this.labels,
    this.name,
    this.serviceAgent,
    this.state,
    this.updateTime,
  });

  Server.fromJson(core.Map json_)
    : this(
        accessType: json_['accessType'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        externalConfig: json_.containsKey('externalConfig')
            ? ExternalServerConfig.fromJson(
                json_['externalConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleManagedServerCredential:
            json_.containsKey('googleManagedServerCredential')
            ? ServerCredential.fromJson(
                json_['googleManagedServerCredential']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        internalConfig: json_.containsKey('internalConfig')
            ? InternalServerConfig.fromJson(
                json_['internalConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        serviceAgent: json_['serviceAgent'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessType = this.accessType;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final externalConfig = this.externalConfig;
    final googleManagedServerCredential = this.googleManagedServerCredential;
    final internalConfig = this.internalConfig;
    final labels = this.labels;
    final name = this.name;
    final serviceAgent = this.serviceAgent;
    final state = this.state;
    final updateTime = this.updateTime;
    return {
      'accessType': ?accessType,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'externalConfig': ?externalConfig,
      'googleManagedServerCredential': ?googleManagedServerCredential,
      'internalConfig': ?internalConfig,
      'labels': ?labels,
      'name': ?name,
      'serviceAgent': ?serviceAgent,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }
}

/// Represents credentials of an FTP Server.
class ServerCredential {
  /// Asymmetric algorithm used by the public key.
  ///
  /// Possible values (can be expanded in future): - ssh-ed25519
  ///
  /// Output only.
  core.String? asymmetricAlgorithm;

  /// The fingerprint is a hash of the public key, and is displayed when clients
  /// access the server for the first time to verify the server's identity.
  ///
  /// Output only.
  core.String? fingerprint;

  ServerCredential({this.asymmetricAlgorithm, this.fingerprint});

  ServerCredential.fromJson(core.Map json_)
    : this(
        asymmetricAlgorithm: json_['asymmetricAlgorithm'] as core.String?,
        fingerprint: json_['fingerprint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final asymmetricAlgorithm = this.asymmetricAlgorithm;
    final fingerprint = this.fingerprint;
    return {
      'asymmetricAlgorithm': ?asymmetricAlgorithm,
      'fingerprint': ?fingerprint,
    };
  }
}

/// Request message for starting a Server.
typedef StartServerRequest = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Request message for stopping a Server.
typedef StopServerRequest = $Empty;

/// Mapping of backing Cloud Storage path to the directory where the user lands
/// in the SFTP server.
///
/// If directory is not specified, it'll default to '/'. Eg 1 - (bucket_name:
/// bucket, bucket_prefix: path1/path2, directory: /abc/def/username) The user
/// will land at /abcd/def/username, and the view there will match that of
/// /bucket/path1/path2. The user will not be aware of Cloud Storage prefix
/// '/bucket/path1' and there will be no such directory in the view. Eg 2 -
/// (bucket_name: bucket, bucket_prefix: path1/path2, directory: '') The user
/// will land at '/', and the view there will match that of /bucket/path1/path2.
/// The user will not be aware of Cloud Storage prefix '/bucket/path1/path2' and
/// there will be no such directory in the view.
class StorageDirectoryMapping {
  /// Name of the bucket.
  ///
  /// Required.
  core.String? bucket;

  /// Prefix inside the bucket.
  ///
  /// Optional.
  core.String? bucketPrefix;

  /// Directory where the user lands in the SFTP server.
  ///
  /// Required.
  core.String? directory;

  /// Permission to the bucket.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PERMISSION_UNSPECIFIED" : Permission unspecified.
  /// - "READ_ONLY" : Read only permission.
  /// - "READ_WRITE" : Read write permission.
  core.String? permission;

  StorageDirectoryMapping({
    this.bucket,
    this.bucketPrefix,
    this.directory,
    this.permission,
  });

  StorageDirectoryMapping.fromJson(core.Map json_)
    : this(
        bucket: json_['bucket'] as core.String?,
        bucketPrefix: json_['bucketPrefix'] as core.String?,
        directory: json_['directory'] as core.String?,
        permission: json_['permission'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bucket = this.bucket;
    final bucketPrefix = this.bucketPrefix;
    final directory = this.directory;
    final permission = this.permission;
    return {
      'bucket': ?bucket,
      'bucketPrefix': ?bucketPrefix,
      'directory': ?directory,
      'permission': ?permission,
    };
  }
}

/// Message describing User object
class User {
  /// Create time stamp
  ///
  /// Output only.
  core.String? createTime;

  /// Service account in customer project attached to this SFTP User.
  ///
  /// Required.
  core.String? customerServiceAccount;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// User-friendly name via which User will be identified.
  /// projects/{project}/locations/{location}/servers/{server}/users/{user}
  core.String? name;

  /// Tracks user creation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "CREATING" : User is being created.
  /// - "ACTIVE" : User is ready to be used.
  /// - "ERROR" : User creation failed.
  /// - "UPDATING" : The resource is being updated.
  /// - "DELETING" : The resource is being deleted.
  core.String? state;

  /// Mapping of Cloud Storage buckets to directories where the user will land
  /// in the SFTP server.
  ///
  /// Required.
  core.List<StorageDirectoryMapping>? storageDirectoryMappings;

  /// Update time stamp
  ///
  /// Output only.
  core.String? updateTime;

  /// User credential for the user.
  ///
  /// The maximum number of user credentials is 10.
  ///
  /// Required.
  core.List<UserCredential>? userCredentials;

  /// The username of the user.
  ///
  /// Output only.
  core.String? username;

  User({
    this.createTime,
    this.customerServiceAccount,
    this.labels,
    this.name,
    this.state,
    this.storageDirectoryMappings,
    this.updateTime,
    this.userCredentials,
    this.username,
  });

  User.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        customerServiceAccount: json_['customerServiceAccount'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        storageDirectoryMappings:
            (json_['storageDirectoryMappings'] as core.List?)
                ?.map(
                  (value) => StorageDirectoryMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
        userCredentials: (json_['userCredentials'] as core.List?)
            ?.map(
              (value) => UserCredential.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final customerServiceAccount = this.customerServiceAccount;
    final labels = this.labels;
    final name = this.name;
    final state = this.state;
    final storageDirectoryMappings = this.storageDirectoryMappings;
    final updateTime = this.updateTime;
    final userCredentials = this.userCredentials;
    final username = this.username;
    return {
      'createTime': ?createTime,
      'customerServiceAccount': ?customerServiceAccount,
      'labels': ?labels,
      'name': ?name,
      'state': ?state,
      'storageDirectoryMappings': ?storageDirectoryMappings,
      'updateTime': ?updateTime,
      'userCredentials': ?userCredentials,
      'username': ?username,
    };
  }
}

/// Message describing UserCredential object
class UserCredential {
  /// Name of the user credential.
  ///
  /// Required.
  core.String? credentialName;

  /// Type of credential.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Type unspecified.
  /// - "PUBLIC_KEY" : Public key credential.
  core.String? credentialType;

  /// SSH public key body in OpenSSH format.
  ///
  /// Example: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQ..."
  ///
  /// Optional.
  core.String? sshPublicKeyBody;

  UserCredential({
    this.credentialName,
    this.credentialType,
    this.sshPublicKeyBody,
  });

  UserCredential.fromJson(core.Map json_)
    : this(
        credentialName: json_['credentialName'] as core.String?,
        credentialType: json_['credentialType'] as core.String?,
        sshPublicKeyBody: json_['sshPublicKeyBody'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final credentialName = this.credentialName;
    final credentialType = this.credentialType;
    final sshPublicKeyBody = this.sshPublicKeyBody;
    return {
      'credentialName': ?credentialName,
      'credentialType': ?credentialType,
      'sshPublicKeyBody': ?sshPublicKeyBody,
    };
  }
}
