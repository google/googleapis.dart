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

/// Observability API - v1
///
/// Provides functionality for configuring the observability scope, which
/// controls the log, metric, and trace data that you can view.
///
/// For more information, see <https://cloud.google.com/stackdriver/docs/>
///
/// Create an instance of [CloudObservabilityApi] to access these resources:
///
/// - [FoldersResource]
///   - [FoldersLocationsResource]
///     - [FoldersLocationsOperationsResource]
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsOperationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsBucketsResource]
///       - [ProjectsLocationsBucketsDatasetsResource]
///         - [ProjectsLocationsBucketsDatasetsLinksResource]
///         - [ProjectsLocationsBucketsDatasetsViewsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsScopesResource]
///     - [ProjectsLocationsTraceScopesResource]
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

/// Provides functionality for configuring the observability scope, which
/// controls the log, metric, and trace data that you can view.
class CloudObservabilityApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  FoldersResource get folders => FoldersResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  CloudObservabilityApi(
    http.Client client, {
    core.String rootUrl = 'https://observability.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class FoldersResource {
  final commons.ApiRequester _requester;

  FoldersLocationsResource get locations =>
      FoldersLocationsResource(_requester);

  FoldersResource(commons.ApiRequester client) : _requester = client;
}

class FoldersLocationsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsOperationsResource get operations =>
      FoldersLocationsOperationsResource(_requester);

  FoldersLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^folders/\[^/\]+/locations/\[^/\]+$`.
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
  /// This method can be called in two ways: * **List all public locations:**
  /// Use the path `GET /v1/locations`. * **List project-visible locations:**
  /// Use the path `GET /v1/projects/{project_id}/locations`. This may include
  /// public locations as well as private or other locations specifically
  /// visible to the project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. Do not use this field. It is unsupported
  /// and is ignored unless explicitly documented otherwise. This is primarily
  /// for internal usage.
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

class FoldersLocationsOperationsResource {
  final commons.ApiRequester _requester;

  FoldersLocationsOperationsResource(commons.ApiRequester client)
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
  /// `^folders/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^folders/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  /// `^folders/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  /// Value must have pattern `^folders/\[^/\]+/locations/\[^/\]+$`.
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

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsOperationsResource get operations =>
      OrganizationsLocationsOperationsResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
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
  /// This method can be called in two ways: * **List all public locations:**
  /// Use the path `GET /v1/locations`. * **List project-visible locations:**
  /// Use the path `GET /v1/projects/{project_id}/locations`. This may include
  /// public locations as well as private or other locations specifically
  /// visible to the project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. Do not use this field. It is unsupported
  /// and is ignored unless explicitly documented otherwise. This is primarily
  /// for internal usage.
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
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
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

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBucketsResource get buckets =>
      ProjectsLocationsBucketsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsScopesResource get scopes =>
      ProjectsLocationsScopesResource(_requester);
  ProjectsLocationsTraceScopesResource get traceScopes =>
      ProjectsLocationsTraceScopesResource(_requester);

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
  /// This method can be called in two ways: * **List all public locations:**
  /// Use the path `GET /v1/locations`. * **List project-visible locations:**
  /// Use the path `GET /v1/projects/{project_id}/locations`. This may include
  /// public locations as well as private or other locations specifically
  /// visible to the project.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. Do not use this field. It is unsupported
  /// and is ignored unless explicitly documented otherwise. This is primarily
  /// for internal usage.
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

class ProjectsLocationsBucketsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBucketsDatasetsResource get datasets =>
      ProjectsLocationsBucketsDatasetsResource(_requester);

  ProjectsLocationsBucketsResource(commons.ApiRequester client)
    : _requester = client;

  /// Get bucket resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the bucket to retrieve. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/buckets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Bucket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Bucket> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Bucket.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List buckets of a project in a particular location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of buckets.
  /// The format is: projects/\[PROJECT_ID\]/locations/\[LOCATION\]
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of buckets to return. If
  /// unspecified, then at most 100 buckets are returned. The maximum value is
  /// 1000; values above 1000 are coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListBuckets` call. Provide this to retrieve the subsequent page.
  ///
  /// [showDeleted] - Optional. If true, then the response will include deleted
  /// buckets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBucketsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBucketsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'showDeleted': ?showDeleted == null ? null : ['${showDeleted}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/buckets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBucketsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsBucketsDatasetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBucketsDatasetsLinksResource get links =>
      ProjectsLocationsBucketsDatasetsLinksResource(_requester);
  ProjectsLocationsBucketsDatasetsViewsResource get views =>
      ProjectsLocationsBucketsDatasetsViewsResource(_requester);

  ProjectsLocationsBucketsDatasetsResource(commons.ApiRequester client)
    : _requester = client;

  /// Get a dataset.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the dataset to retrieve. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]/datasets/\[DATASET_ID\]
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/buckets/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dataset> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Dataset.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List datasets of a bucket.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent bucket that owns this collection of
  /// datasets. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/buckets/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of datasets to return. If
  /// unspecified, then at most 100 datasets are returned. The maximum value is
  /// 1000; values above 1000 are coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDatasets` call. Provide this to retrieve the subsequent page.
  ///
  /// [showDeleted] - Optional. If true, then the response will include deleted
  /// datasets.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDatasetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDatasetsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'showDeleted': ?showDeleted == null ? null : ['${showDeleted}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/datasets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDatasetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsBucketsDatasetsLinksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBucketsDatasetsLinksResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new link.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the containing dataset for this link. The
  /// format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]/datasets/\[DATASET_ID\]
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/buckets/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [linkId] - Required. Id of the link to create.
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
    Link request,
    core.String parent, {
    core.String? linkId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'linkId': ?linkId == null ? null : [linkId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/links';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a link.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the link to delete. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]/datasets/\[DATASET_ID\]/links/\[LINK_ID\]
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/buckets/\[^/\]+/datasets/\[^/\]+/links/\[^/\]+$`.
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

  /// Get a link.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the link to retrieve. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]/datasets/\[DATASET_ID\]/links/\[LINK_ID\]
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/buckets/\[^/\]+/datasets/\[^/\]+/links/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Link].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Link> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Link.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List links of a dataset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent dataset that owns this collection of
  /// links. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]/datasets/\[DATASET_ID\]
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/buckets/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of links to return. If
  /// unspecified, then at most 100 links are returned. The maximum value is
  /// 1000; values above 1000 are coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous `ListLinks`
  /// call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLinksResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/links';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a link.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the link. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]/datasets/\[DATASET_ID\]/links/\[LINK_ID\]
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/buckets/\[^/\]+/datasets/\[^/\]+/links/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update.
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
    Link request,
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

class ProjectsLocationsBucketsDatasetsViewsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBucketsDatasetsViewsResource(commons.ApiRequester client)
    : _requester = client;

  /// Get a view.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the view to retrieve. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]/datasets/\[DATASET_ID\]/views/\[VIEW_ID\]
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/buckets/\[^/\]+/datasets/\[^/\]+/views/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [View].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<View> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return View.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List views of a dataset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Dataset whose views are to be listed. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]/datasets/\[DATASET_ID\]
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/buckets/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of views to return. If
  /// unspecified, then at most 100 views are returned. The maximum value is
  /// 1000; values above 1000 are coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous `ListViews`
  /// call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListViewsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListViewsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/views';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListViewsResponse.fromJson(
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

class ProjectsLocationsScopesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsScopesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single Scope.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource. The format is:
  /// projects/{project}/locations/{location}/scopes/{scope} The `{location}`
  /// field must be set to `global`. The `{scope}` field must be set to
  /// `_Default`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Scope].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Scope> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Scope.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single Scope.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the resource. The format is:
  /// projects/{project}/locations/{location}/scopes/{scope} The `{location}`
  /// field must be set to `global`. The `{scope}` field must be set to
  /// `_Default`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/scopes/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Scope resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field is overwritten when it is in the mask. If the user does not provide
  /// a mask, then all fields present in the request are overwritten.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Scope].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Scope> patch(
    Scope request,
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
    return Scope.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTraceScopesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTraceScopesResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a new TraceScope.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The full resource name of the location where the
  /// trace scope should be created
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION_ID\] For example:
  /// projects/my-project/locations/global
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [traceScopeId] - Required. A client-assigned identifier for the trace
  /// scope.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TraceScope].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TraceScope> create(
    TraceScope request,
    core.String parent, {
    core.String? traceScopeId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'traceScopeId': ?traceScopeId == null ? null : [traceScopeId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/traceScopes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TraceScope.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a TraceScope.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the trace scope to delete:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION_ID\]/traceScopes/\[TRACE_SCOPE_ID\]
  /// For example:
  /// projects/my-project/locations/global/traceScopes/my-trace-scope
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/traceScopes/\[^/\]+$`.
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

  /// Get TraceScope resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the trace scope:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION_ID\]/traceScopes/\[TRACE_SCOPE_ID\]
  /// For example:
  /// projects/my-project/locations/global/traceScopes/my-trace-scope
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/traceScopes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TraceScope].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TraceScope> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TraceScope.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List TraceScopes of a project in a particular location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The full resource name of the location to look for
  /// trace scopes: projects/\[PROJECT_ID\]/locations/\[LOCATION_ID\] For
  /// example: projects/my-project/locations/global
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of
  /// `next_page_token` in the response indicates that more results might be
  /// available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. `page_token` must be the
  /// value of `next_page_token` from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTraceScopesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTraceScopesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/traceScopes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTraceScopesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a TraceScope.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the trace scope. For example:
  /// projects/my-project/locations/global/traceScopes/my-trace-scope
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/traceScopes/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TraceScope].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TraceScope> patch(
    TraceScope request,
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
    return TraceScope.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Bucket configuration for storing observability data.
class Bucket {
  /// Settings for configuring CMEK on a bucket.
  ///
  /// Optional.
  CmekSettings? cmekSettings;

  /// Create timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Delete timestamp.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Description of the bucket.
  ///
  /// Optional.
  core.String? description;

  /// User friendly display name.
  ///
  /// Optional.
  core.String? displayName;

  /// Identifier.
  ///
  /// Name of the bucket. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]
  core.String? name;

  /// Timestamp when the bucket in soft-deleted state is purged.
  ///
  /// Output only.
  core.String? purgeTime;

  /// Update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  Bucket({
    this.cmekSettings,
    this.createTime,
    this.deleteTime,
    this.description,
    this.displayName,
    this.name,
    this.purgeTime,
    this.updateTime,
  });

  Bucket.fromJson(core.Map json_)
    : this(
        cmekSettings: json_.containsKey('cmekSettings')
            ? CmekSettings.fromJson(
                json_['cmekSettings'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        purgeTime: json_['purgeTime'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cmekSettings = this.cmekSettings;
    final createTime = this.createTime;
    final deleteTime = this.deleteTime;
    final description = this.description;
    final displayName = this.displayName;
    final name = this.name;
    final purgeTime = this.purgeTime;
    final updateTime = this.updateTime;
    return {
      'cmekSettings': ?cmekSettings,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'purgeTime': ?purgeTime,
      'updateTime': ?updateTime,
    };
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Settings for configuring CMEK for a bucket.
class CmekSettings {
  /// The resource name for the configured Cloud KMS key.
  ///
  /// The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/keyRings/\[KEYRING\]/cryptoKeys/\[KEY\]
  /// For example:
  /// projects/my-project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key
  ///
  /// Optional.
  core.String? kmsKey;

  /// The CryptoKeyVersion resource name for the configured Cloud KMS key.
  ///
  /// The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/keyRings/\[KEYRING\]/cryptoKeys/\[KEY\]/cryptoKeyVersions/\[VERSION\]
  /// For example:
  /// projects/my-project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key/cryptoKeyVersions/1
  /// This read-only field is used to convey the specific configured
  /// CryptoKeyVersion of the `kms_key` that has been configured. It is
  /// populated when the CMEK settings are bound to a single key version.
  ///
  /// Output only.
  core.String? kmsKeyVersion;

  /// The service account used to access the key.
  ///
  /// Output only.
  core.String? serviceAccountId;

  CmekSettings({this.kmsKey, this.kmsKeyVersion, this.serviceAccountId});

  CmekSettings.fromJson(core.Map json_)
    : this(
        kmsKey: json_['kmsKey'] as core.String?,
        kmsKeyVersion: json_['kmsKeyVersion'] as core.String?,
        serviceAccountId: json_['serviceAccountId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kmsKey = this.kmsKey;
    final kmsKeyVersion = this.kmsKeyVersion;
    final serviceAccountId = this.serviceAccountId;
    return {
      'kmsKey': ?kmsKey,
      'kmsKeyVersion': ?kmsKeyVersion,
      'serviceAccountId': ?serviceAccountId,
    };
  }
}

/// A dataset is a collection of data that has a specific configuration.
///
/// A dataset can be backed by multiple tables. One bucket can have multiple
/// datasets.
class Dataset {
  /// Create timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Delete timestamp.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Description of the dataset.
  ///
  /// Optional.
  core.String? description;

  /// User friendly display name.
  ///
  /// Optional.
  core.String? displayName;

  /// Identifier.
  ///
  /// Name of the dataset. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]/datasets/\[DATASET_ID\]
  core.String? name;

  /// Timestamp when the dataset in soft-deleted state is purged.
  ///
  /// Output only.
  core.String? purgeTime;

  Dataset({
    this.createTime,
    this.deleteTime,
    this.description,
    this.displayName,
    this.name,
    this.purgeTime,
  });

  Dataset.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        purgeTime: json_['purgeTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final deleteTime = this.deleteTime;
    final description = this.description;
    final displayName = this.displayName;
    final name = this.name;
    final purgeTime = this.purgeTime;
    return {
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'purgeTime': ?purgeTime,
    };
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A link lets a dataset be accessible to BigQuery via usage of linked
/// datasets.
class Link {
  /// Create timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the link.
  ///
  /// Optional.
  core.String? description;

  /// A user friendly display name.
  ///
  /// Optional.
  core.String? displayName;

  /// Identifier.
  ///
  /// Name of the link. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]/datasets/\[DATASET_ID\]/links/\[LINK_ID\]
  core.String? name;

  Link({this.createTime, this.description, this.displayName, this.name});

  Link.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final name = this.name;
    return {
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
    };
  }
}

/// Response for listing buckets.
class ListBucketsResponse {
  /// The list of buckets.
  ///
  /// Optional.
  core.List<Bucket>? buckets;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// When this field is omitted, there are no subsequent pages.
  ///
  /// Optional.
  core.String? nextPageToken;

  ListBucketsResponse({this.buckets, this.nextPageToken});

  ListBucketsResponse.fromJson(core.Map json_)
    : this(
        buckets: (json_['buckets'] as core.List?)
            ?.map(
              (value) =>
                  Bucket.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final buckets = this.buckets;
    final nextPageToken = this.nextPageToken;
    return {'buckets': ?buckets, 'nextPageToken': ?nextPageToken};
  }
}

/// Response for listing datasets.
class ListDatasetsResponse {
  /// The list of datasets.
  core.List<Dataset>? datasets;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// When this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListDatasetsResponse({this.datasets, this.nextPageToken});

  ListDatasetsResponse.fromJson(core.Map json_)
    : this(
        datasets: (json_['datasets'] as core.List?)
            ?.map(
              (value) => Dataset.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final datasets = this.datasets;
    final nextPageToken = this.nextPageToken;
    return {'datasets': ?datasets, 'nextPageToken': ?nextPageToken};
  }
}

/// Response for listing links.
class ListLinksResponse {
  /// The list of links.
  core.List<Link>? links;

  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// When this field is omitted, there are no subsequent pages.
  ///
  /// Optional.
  core.String? nextPageToken;

  ListLinksResponse({this.links, this.nextPageToken});

  ListLinksResponse.fromJson(core.Map json_)
    : this(
        links: (json_['links'] as core.List?)
            ?.map(
              (value) =>
                  Link.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final links = this.links;
    final nextPageToken = this.nextPageToken;
    return {'links': ?links, 'nextPageToken': ?nextPageToken};
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

/// Response for listing TraceScopes.
class ListTraceScopesResponse {
  /// If there might be more results than appear in this response, then
  /// `next_page_token` is included.
  ///
  /// To get the next set of results, call the same method again using the value
  /// of `next_page_token` as `page_token`.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// A list of trace scopes.
  ///
  /// Optional.
  core.List<TraceScope>? traceScopes;

  ListTraceScopesResponse({this.nextPageToken, this.traceScopes});

  ListTraceScopesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        traceScopes: (json_['traceScopes'] as core.List?)
            ?.map(
              (value) => TraceScope.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final traceScopes = this.traceScopes;
    return {'nextPageToken': ?nextPageToken, 'traceScopes': ?traceScopes};
  }
}

/// Response for listing views.
class ListViewsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// When this field is omitted, there are no subsequent pages.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// The list of views.
  core.List<View>? views;

  ListViewsResponse({this.nextPageToken, this.views});

  ListViewsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        views: (json_['views'] as core.List?)
            ?.map(
              (value) =>
                  View.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final views = this.views;
    return {'nextPageToken': ?nextPageToken, 'views': ?views};
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

/// Message describing Scope object
class Scope {
  /// The full resource name of the `LogScope`.
  ///
  /// For example:
  /// //logging.googleapis.com/projects/myproject/locations/global/logScopes/my-log-scope
  ///
  /// Required.
  core.String? logScope;

  /// Identifier.
  ///
  /// Name of the resource. The format is:
  /// projects/{project}/locations/{location}/scopes/{scope} The `{location}`
  /// field must be set to `global`. The `{scope}` field must be set to
  /// `_Default`.
  core.String? name;

  /// The resource name of the `TraceScope`.
  ///
  /// For example:
  /// projects/myproject/locations/global/traceScopes/my-trace-scope
  ///
  /// Required.
  core.String? traceScope;

  /// Update timestamp.
  ///
  /// Note: The Update timestamp for the default scope is initially unset.
  ///
  /// Output only.
  core.String? updateTime;

  Scope({this.logScope, this.name, this.traceScope, this.updateTime});

  Scope.fromJson(core.Map json_)
    : this(
        logScope: json_['logScope'] as core.String?,
        name: json_['name'] as core.String?,
        traceScope: json_['traceScope'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final logScope = this.logScope;
    final name = this.name;
    final traceScope = this.traceScope;
    final updateTime = this.updateTime;
    return {
      'logScope': ?logScope,
      'name': ?name,
      'traceScope': ?traceScope,
      'updateTime': ?updateTime,
    };
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// A trace scope is a collection of resources whose traces are queried
/// together.
class TraceScope {
  /// The creation timestamp of the trace scope.
  ///
  /// Output only.
  core.String? createTime;

  /// Describes this trace scope.
  ///
  /// The maximum length of the description is 8000 characters.
  ///
  /// Optional.
  core.String? description;

  /// Identifier.
  ///
  /// The resource name of the trace scope. For example:
  /// projects/my-project/locations/global/traceScopes/my-trace-scope
  core.String? name;

  /// Names of the projects that are included in this trace scope.
  ///
  /// * `projects/[PROJECT_ID]` A trace scope can include a maximum of 20
  /// projects.
  ///
  /// Required.
  core.List<core.String>? resourceNames;

  /// The last update timestamp of the trace scope.
  ///
  /// Output only.
  core.String? updateTime;

  TraceScope({
    this.createTime,
    this.description,
    this.name,
    this.resourceNames,
    this.updateTime,
  });

  TraceScope.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        resourceNames: (json_['resourceNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final description = this.description;
    final name = this.name;
    final resourceNames = this.resourceNames;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'resourceNames': ?resourceNames,
      'updateTime': ?updateTime,
    };
  }
}

/// A view corresponds to a read-only representation of a subset of the data in
/// a dataset.
class View {
  /// Create timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the view.
  ///
  /// Optional.
  core.String? description;

  /// User friendly display name.
  ///
  /// Optional.
  core.String? displayName;

  /// Identifier.
  ///
  /// Name of the view. The format is:
  /// projects/\[PROJECT_ID\]/locations/\[LOCATION\]/buckets/\[BUCKET_ID\]/datasets/\[DATASET_ID\]/views/\[VIEW_ID\]
  core.String? name;

  /// Update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  View({
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.updateTime,
  });

  View.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final description = this.description;
    final displayName = this.displayName;
    final name = this.name;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }
}
