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

/// Looker (Google Cloud core) API - v1
///
/// For more information, see
/// <https://cloud.google.com/looker/docs/reference/rest/>
///
/// Create an instance of [LookerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsInstancesResource]
///       - [ProjectsLocationsInstancesBackupsResource]
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

class LookerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  LookerApi(
    http.Client client, {
    core.String rootUrl = 'https://looker.googleapis.com/',
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

  ProjectsLocationsInstancesResource get instances =>
      ProjectsLocationsInstancesResource(_requester);
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

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesBackupsResource get backups =>
      ProjectsLocationsInstancesBackupsResource(_requester);

  ProjectsLocationsInstancesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Instance in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [instanceId] - Required. The unique instance identifier. Must contain only
  /// lowercase letters, numbers, or hyphens, with the first character a letter
  /// and the last a letter or a number. 63 characters maximum.
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
    core.String? instanceId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (instanceId != null) 'instanceId': [instanceId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [force] - Whether to force cascading delete.
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

  /// Export instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}`.
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
  async.Future<Operation> export(
    ExportInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}`.
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
  async.Future<Instance> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Instance.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Import instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}`.
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
  async.Future<Operation> import(
    ImportInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Instances in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of instances to return. If unspecified at
  /// most 256 will be returned. The maximum possible value is 2048.
  ///
  /// [pageToken] - A page token received from a previous ListInstancesRequest.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInstancesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask used to specify the fields to be
  /// overwritten in the Instance resource by the update. The fields specified
  /// in the mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restart instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}`.
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
  async.Future<Operation> restart(
    RestartInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':restart';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restore Looker instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Instance being restored Format:
  /// projects/{project}/locations/{location}/instances/{instance}
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
  async.Future<Operation> restore(
    RestoreInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstancesBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesBackupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Backup Looker instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// projects/{project}/locations/{location}/instances/{instance}
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
  async.Future<Operation> create(
    InstanceBackup request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// projects/{project}/locations/{location}/instances/{instance}/backups/{backup}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+/backups/\[^/\]+$`.
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

  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}/backups/{backup}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InstanceBackup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InstanceBackup> get(
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
    return InstanceBackup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List backups of Looker instance.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// projects/{project}/locations/{location}/instances/{instance}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [orderBy] - Sort results. Default order is "create_time desc". Other
  /// supported fields are "state" and "expire_time".
  /// https://google.aip.dev/132#ordering
  ///
  /// [pageSize] - The maximum number of instances to return.
  ///
  /// [pageToken] - A page token received from a previous ListInstances request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInstanceBackupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInstanceBackupsResponse> list(
    core.String parent, {
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInstanceBackupsResponse.fromJson(
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

/// Looker instance Admin settings fields.
class AdminSettings {
  /// Email domain allowlist for the instance.
  core.List<core.String>? allowedEmailDomains;

  AdminSettings({this.allowedEmailDomains});

  AdminSettings.fromJson(core.Map json_)
    : this(
        allowedEmailDomains:
            (json_['allowedEmailDomains'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedEmailDomains != null)
      'allowedEmailDomains': allowedEmailDomains!,
  };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Custom domain information.
class CustomDomain {
  /// Domain name.
  core.String? domain;

  /// Domain state.
  /// Possible string values are:
  /// - "CUSTOM_DOMAIN_STATE_UNSPECIFIED" : Unspecified state.
  /// - "UNVERIFIED" : DNS record is not created.
  /// - "VERIFIED" : DNS record is created.
  /// - "MODIFYING" : Calling SLM to update.
  /// - "AVAILABLE" : ManagedCertificate is ready.
  /// - "UNAVAILABLE" : ManagedCertificate is not ready.
  /// - "UNKNOWN" : Status is not known.
  core.String? state;

  CustomDomain({this.domain, this.state});

  CustomDomain.fromJson(core.Map json_)
    : this(
        domain: json_['domain'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (domain != null) 'domain': domain!,
    if (state != null) 'state': state!,
  };
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef Date = $Date;

/// Specifies the maintenance denial period.
class DenyMaintenancePeriod {
  /// End date of the deny maintenance period.
  ///
  /// Required.
  Date? endDate;

  /// Start date of the deny maintenance period.
  ///
  /// Required.
  Date? startDate;

  /// Time in UTC when the period starts and ends.
  ///
  /// Required.
  TimeOfDay? time;

  DenyMaintenancePeriod({this.endDate, this.startDate, this.time});

  DenyMaintenancePeriod.fromJson(core.Map json_)
    : this(
        endDate:
            json_.containsKey('endDate')
                ? Date.fromJson(
                  json_['endDate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startDate:
            json_.containsKey('startDate')
                ? Date.fromJson(
                  json_['startDate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        time:
            json_.containsKey('time')
                ? TimeOfDay.fromJson(
                  json_['time'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endDate != null) 'endDate': endDate!,
    if (startDate != null) 'startDate': startDate!,
    if (time != null) 'time': time!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Encryption configuration (i.e. CMEK).
class EncryptionConfig {
  /// Name of the CMEK key in KMS (input parameter).
  core.String? kmsKeyName;

  /// Full name and version of the CMEK key currently in use to encrypt Looker
  /// data.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/keyRings/{ring}/cryptoKeys/{key}/cryptoKeyVersions/{version}`.
  /// Empty if CMEK is not configured in this instance.
  ///
  /// Output only.
  core.String? kmsKeyNameVersion;

  /// Status of the CMEK key.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "KMS_KEY_STATE_UNSPECIFIED" : CMEK status not specified.
  /// - "VALID" : CMEK key is currently valid.
  /// - "REVOKED" : CMEK key is currently revoked (instance should in restricted
  /// mode).
  core.String? kmsKeyState;

  EncryptionConfig({this.kmsKeyName, this.kmsKeyNameVersion, this.kmsKeyState});

  EncryptionConfig.fromJson(core.Map json_)
    : this(
        kmsKeyName: json_['kmsKeyName'] as core.String?,
        kmsKeyNameVersion: json_['kmsKeyNameVersion'] as core.String?,
        kmsKeyState: json_['kmsKeyState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
    if (kmsKeyNameVersion != null) 'kmsKeyNameVersion': kmsKeyNameVersion!,
    if (kmsKeyState != null) 'kmsKeyState': kmsKeyState!,
  };
}

/// Configuration for Encryption - e.g. CMEK.
class ExportEncryptionConfig {
  /// Name of the CMEK key in KMS.
  ///
  /// Required.
  core.String? kmsKeyName;

  ExportEncryptionConfig({this.kmsKeyName});

  ExportEncryptionConfig.fromJson(core.Map json_)
    : this(kmsKeyName: json_['kmsKeyName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
  };
}

/// Request options for exporting data of an Instance.
class ExportInstanceRequest {
  /// Encryption configuration (CMEK).
  ///
  /// For CMEK enabled instances it should be same as looker CMEK.
  ///
  /// Required.
  ExportEncryptionConfig? encryptionConfig;

  /// The path to the folder in Google Cloud Storage where the export will be
  /// stored.
  ///
  /// The URI is in the form `gs://bucketName/folderName`.
  core.String? gcsUri;

  ExportInstanceRequest({this.encryptionConfig, this.gcsUri});

  ExportInstanceRequest.fromJson(core.Map json_)
    : this(
        encryptionConfig:
            json_.containsKey('encryptionConfig')
                ? ExportEncryptionConfig.fromJson(
                  json_['encryptionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsUri: json_['gcsUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
    if (gcsUri != null) 'gcsUri': gcsUri!,
  };
}

/// Requestion options for importing looker data to an Instance
class ImportInstanceRequest {
  /// Path to the import folder in Google Cloud Storage, in the form
  /// `gs://bucketName/folderName`.
  core.String? gcsUri;

  ImportInstanceRequest({this.gcsUri});

  ImportInstanceRequest.fromJson(core.Map json_)
    : this(gcsUri: json_['gcsUri'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcsUri != null) 'gcsUri': gcsUri!,
  };
}

/// A Looker instance.
class Instance {
  /// Looker Instance Admin settings.
  AdminSettings? adminSettings;

  /// Storage class of the instance.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CLASS_TYPE_UNSPECIFIED" : Unspecified storage class.
  /// - "R1" : Filestore.
  /// - "P1" : PD SSD.
  core.String? classType;

  /// Network name in the consumer project.
  ///
  /// Format: `projects/{project}/global/networks/{network}`. Note that the
  /// consumer network may be in a different GCP project than the consumer
  /// project that is hosting the Looker Instance.
  core.String? consumerNetwork;

  /// The time when the Looker instance provisioning was first requested.
  ///
  /// Output only.
  core.String? createTime;

  /// Custom domain configuration for the instance.
  CustomDomain? customDomain;

  /// Maintenance denial period for this instance.
  DenyMaintenancePeriod? denyMaintenancePeriod;

  /// Public Egress IP (IPv4).
  ///
  /// Output only.
  core.String? egressPublicIp;

  /// Encryption configuration (CMEK).
  ///
  /// Only set if CMEK has been enabled on the instance.
  EncryptionConfig? encryptionConfig;

  /// Whether FIPS is enabled on the Looker instance.
  ///
  /// Optional.
  core.bool? fipsEnabled;

  /// Whether Gemini feature is enabled on the Looker instance or not.
  ///
  /// Optional.
  core.bool? geminiEnabled;

  /// Private Ingress IP (IPv4).
  ///
  /// Output only.
  core.String? ingressPrivateIp;

  /// Public Ingress IP (IPv4).
  ///
  /// Output only.
  core.String? ingressPublicIp;

  /// Last computed maintenance denial period for this instance.
  ///
  /// Output only.
  DenyMaintenancePeriod? lastDenyMaintenancePeriod;

  /// Linked Google Cloud Project Number for Looker Studio Pro.
  ///
  /// Optional.
  core.String? linkedLspProjectNumber;

  /// Looker instance URI which can be used to access the Looker Instance UI.
  ///
  /// Output only.
  core.String? lookerUri;

  /// The Looker version that the instance is using.
  ///
  /// Output only.
  core.String? lookerVersion;

  /// Maintenance schedule for this instance.
  MaintenanceSchedule? maintenanceSchedule;

  /// Maintenance window for this instance.
  MaintenanceWindow? maintenanceWindow;

  /// Format: `projects/{project}/locations/{location}/instances/{instance}`.
  ///
  /// Output only.
  core.String? name;

  /// Looker instance OAuth login settings.
  OAuthConfig? oauthConfig;

  /// Platform edition.
  /// Possible string values are:
  /// - "PLATFORM_EDITION_UNSPECIFIED" : Platform edition is unspecified.
  /// - "LOOKER_CORE_TRIAL" : Trial.
  /// - "LOOKER_CORE_STANDARD" : Standard.
  /// - "LOOKER_CORE_STANDARD_ANNUAL" : Subscription Standard.
  /// - "LOOKER_CORE_ENTERPRISE_ANNUAL" : Subscription Enterprise.
  /// - "LOOKER_CORE_EMBED_ANNUAL" : Subscription Embed.
  /// - "LOOKER_CORE_NONPROD_STANDARD_ANNUAL" : Nonprod Subscription Standard.
  /// - "LOOKER_CORE_NONPROD_ENTERPRISE_ANNUAL" : Nonprod Subscription
  /// Enterprise.
  /// - "LOOKER_CORE_NONPROD_EMBED_ANNUAL" : Nonprod Subscription Embed.
  /// - "LOOKER_CORE_TRIAL_STANDARD" : Trial Standard.
  /// - "LOOKER_CORE_TRIAL_ENTERPRISE" : Trial Enterprise.
  /// - "LOOKER_CORE_TRIAL_EMBED" : Trial Embed.
  core.String? platformEdition;

  /// Whether private IP is enabled on the Looker instance.
  core.bool? privateIpEnabled;

  /// PSC configuration.
  ///
  /// Used when `psc_enabled` is true.
  ///
  /// Optional.
  PscConfig? pscConfig;

  /// Whether to use Private Service Connect (PSC) for private IP connectivity.
  ///
  /// If true, neither `public_ip_enabled` nor `private_ip_enabled` can be true.
  ///
  /// Optional.
  core.bool? pscEnabled;

  /// Whether public IP is enabled on the Looker instance.
  core.bool? publicIpEnabled;

  /// Name of a reserved IP address range within the Instance.consumer_network,
  /// to be used for private services access connection.
  ///
  /// May or may not be specified in a create request.
  core.String? reservedRange;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The state of the instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is unspecified.
  /// - "ACTIVE" : Instance is active and ready for use.
  /// - "CREATING" : Instance provisioning is in progress.
  /// - "FAILED" : Instance is in a failed state.
  /// - "SUSPENDED" : Instance was suspended.
  /// - "UPDATING" : Instance update is in progress.
  /// - "DELETING" : Instance delete is in progress.
  /// - "EXPORTING" : Instance is being exported.
  /// - "IMPORTING" : Instance is importing data.
  core.String? state;

  /// The time when the Looker instance was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// User metadata.
  ///
  /// Optional.
  UserMetadata? userMetadata;

  Instance({
    this.adminSettings,
    this.classType,
    this.consumerNetwork,
    this.createTime,
    this.customDomain,
    this.denyMaintenancePeriod,
    this.egressPublicIp,
    this.encryptionConfig,
    this.fipsEnabled,
    this.geminiEnabled,
    this.ingressPrivateIp,
    this.ingressPublicIp,
    this.lastDenyMaintenancePeriod,
    this.linkedLspProjectNumber,
    this.lookerUri,
    this.lookerVersion,
    this.maintenanceSchedule,
    this.maintenanceWindow,
    this.name,
    this.oauthConfig,
    this.platformEdition,
    this.privateIpEnabled,
    this.pscConfig,
    this.pscEnabled,
    this.publicIpEnabled,
    this.reservedRange,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.state,
    this.updateTime,
    this.userMetadata,
  });

  Instance.fromJson(core.Map json_)
    : this(
        adminSettings:
            json_.containsKey('adminSettings')
                ? AdminSettings.fromJson(
                  json_['adminSettings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        classType: json_['classType'] as core.String?,
        consumerNetwork: json_['consumerNetwork'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        customDomain:
            json_.containsKey('customDomain')
                ? CustomDomain.fromJson(
                  json_['customDomain'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        denyMaintenancePeriod:
            json_.containsKey('denyMaintenancePeriod')
                ? DenyMaintenancePeriod.fromJson(
                  json_['denyMaintenancePeriod']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        egressPublicIp: json_['egressPublicIp'] as core.String?,
        encryptionConfig:
            json_.containsKey('encryptionConfig')
                ? EncryptionConfig.fromJson(
                  json_['encryptionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        fipsEnabled: json_['fipsEnabled'] as core.bool?,
        geminiEnabled: json_['geminiEnabled'] as core.bool?,
        ingressPrivateIp: json_['ingressPrivateIp'] as core.String?,
        ingressPublicIp: json_['ingressPublicIp'] as core.String?,
        lastDenyMaintenancePeriod:
            json_.containsKey('lastDenyMaintenancePeriod')
                ? DenyMaintenancePeriod.fromJson(
                  json_['lastDenyMaintenancePeriod']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        linkedLspProjectNumber: json_['linkedLspProjectNumber'] as core.String?,
        lookerUri: json_['lookerUri'] as core.String?,
        lookerVersion: json_['lookerVersion'] as core.String?,
        maintenanceSchedule:
            json_.containsKey('maintenanceSchedule')
                ? MaintenanceSchedule.fromJson(
                  json_['maintenanceSchedule']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maintenanceWindow:
            json_.containsKey('maintenanceWindow')
                ? MaintenanceWindow.fromJson(
                  json_['maintenanceWindow']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        oauthConfig:
            json_.containsKey('oauthConfig')
                ? OAuthConfig.fromJson(
                  json_['oauthConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        platformEdition: json_['platformEdition'] as core.String?,
        privateIpEnabled: json_['privateIpEnabled'] as core.bool?,
        pscConfig:
            json_.containsKey('pscConfig')
                ? PscConfig.fromJson(
                  json_['pscConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pscEnabled: json_['pscEnabled'] as core.bool?,
        publicIpEnabled: json_['publicIpEnabled'] as core.bool?,
        reservedRange: json_['reservedRange'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        userMetadata:
            json_.containsKey('userMetadata')
                ? UserMetadata.fromJson(
                  json_['userMetadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adminSettings != null) 'adminSettings': adminSettings!,
    if (classType != null) 'classType': classType!,
    if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
    if (createTime != null) 'createTime': createTime!,
    if (customDomain != null) 'customDomain': customDomain!,
    if (denyMaintenancePeriod != null)
      'denyMaintenancePeriod': denyMaintenancePeriod!,
    if (egressPublicIp != null) 'egressPublicIp': egressPublicIp!,
    if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
    if (fipsEnabled != null) 'fipsEnabled': fipsEnabled!,
    if (geminiEnabled != null) 'geminiEnabled': geminiEnabled!,
    if (ingressPrivateIp != null) 'ingressPrivateIp': ingressPrivateIp!,
    if (ingressPublicIp != null) 'ingressPublicIp': ingressPublicIp!,
    if (lastDenyMaintenancePeriod != null)
      'lastDenyMaintenancePeriod': lastDenyMaintenancePeriod!,
    if (linkedLspProjectNumber != null)
      'linkedLspProjectNumber': linkedLspProjectNumber!,
    if (lookerUri != null) 'lookerUri': lookerUri!,
    if (lookerVersion != null) 'lookerVersion': lookerVersion!,
    if (maintenanceSchedule != null)
      'maintenanceSchedule': maintenanceSchedule!,
    if (maintenanceWindow != null) 'maintenanceWindow': maintenanceWindow!,
    if (name != null) 'name': name!,
    if (oauthConfig != null) 'oauthConfig': oauthConfig!,
    if (platformEdition != null) 'platformEdition': platformEdition!,
    if (privateIpEnabled != null) 'privateIpEnabled': privateIpEnabled!,
    if (pscConfig != null) 'pscConfig': pscConfig!,
    if (pscEnabled != null) 'pscEnabled': pscEnabled!,
    if (publicIpEnabled != null) 'publicIpEnabled': publicIpEnabled!,
    if (reservedRange != null) 'reservedRange': reservedRange!,
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (userMetadata != null) 'userMetadata': userMetadata!,
  };
}

/// The details of a backup resource.
class InstanceBackup {
  /// The time when the backup was started.
  ///
  /// Output only.
  core.String? createTime;

  /// Current status of the CMEK encryption
  ///
  /// Output only.
  EncryptionConfig? encryptionConfig;

  /// The time when the backup will be deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// The relative resource name of the backup, in the following form:
  /// `projects/{project_number}/locations/{location_id}/instances/{instance_id}/backups/{backup}`
  ///
  /// Immutable.
  core.String? name;

  /// The current state of the backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the backup is unknown.
  /// - "CREATING" : The backup is being created.
  /// - "DELETING" : The backup is being deleted.
  /// - "ACTIVE" : The backup is active and ready to use.
  /// - "FAILED" : The backup failed.
  core.String? state;

  InstanceBackup({
    this.createTime,
    this.encryptionConfig,
    this.expireTime,
    this.name,
    this.state,
  });

  InstanceBackup.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        encryptionConfig:
            json_.containsKey('encryptionConfig')
                ? EncryptionConfig.fromJson(
                  json_['encryptionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        expireTime: json_['expireTime'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
  };
}

/// Response from listing Looker instance backups.
class ListInstanceBackupsResponse {
  /// The list of instances matching the request filters, up to the requested
  /// `page_size`.
  core.List<InstanceBackup>? instanceBackups;

  /// If provided, a page token that can look up the next `page_size` results.
  ///
  /// If empty, the results list is exhausted.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListInstanceBackupsResponse({
    this.instanceBackups,
    this.nextPageToken,
    this.unreachable,
  });

  ListInstanceBackupsResponse.fromJson(core.Map json_)
    : this(
        instanceBackups:
            (json_['instanceBackups'] as core.List?)
                ?.map(
                  (value) => InstanceBackup.fromJson(
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
    if (instanceBackups != null) 'instanceBackups': instanceBackups!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response from ListInstances.
class ListInstancesResponse {
  /// The list of instances matching the request filters, up to the requested
  /// ListInstancesRequest.pageSize.
  core.List<Instance>? instances;

  /// If provided, a page token that can look up the next
  /// ListInstancesRequest.pageSize results.
  ///
  /// If empty, the results list is exhausted.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListInstancesResponse({this.instances, this.nextPageToken, this.unreachable});

  ListInstancesResponse.fromJson(core.Map json_)
    : this(
        instances:
            (json_['instances'] as core.List?)
                ?.map(
                  (value) => Instance.fromJson(
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

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Published upcoming future maintenance schedule.
class MaintenanceSchedule {
  /// The scheduled end time for the maintenance.
  core.String? endTime;

  /// The scheduled start time for the maintenance.
  core.String? startTime;

  MaintenanceSchedule({this.endTime, this.startTime});

  MaintenanceSchedule.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// Specifies the recurring maintenance window.
class MaintenanceWindow {
  /// Day of the week for this MaintenanceWindow (in UTC).
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

  /// Time in UTC when the period starts.
  ///
  /// Maintenance will be scheduled within 60 minutes.
  ///
  /// Required.
  TimeOfDay? startTime;

  MaintenanceWindow({this.dayOfWeek, this.startTime});

  MaintenanceWindow.fromJson(core.Map json_)
    : this(
        dayOfWeek: json_['dayOfWeek'] as core.String?,
        startTime:
            json_.containsKey('startTime')
                ? TimeOfDay.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// Looker instance OAuth login settings.
class OAuthConfig {
  /// Input only.
  ///
  /// Client ID from an external OAuth application. This is an input-only field,
  /// and thus will not be set in any responses.
  core.String? clientId;

  /// Input only.
  ///
  /// Client secret from an external OAuth application. This is an input-only
  /// field, and thus will not be set in any responses.
  core.String? clientSecret;

  OAuthConfig({this.clientId, this.clientSecret});

  OAuthConfig.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientId != null) 'clientId': clientId!,
    if (clientSecret != null) 'clientSecret': clientSecret!,
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

/// Information for Private Service Connect (PSC) setup for a Looker instance.
class PscConfig {
  /// List of VPCs that are allowed ingress into looker.
  ///
  /// Format: projects/{project}/global/networks/{network}
  ///
  /// Optional.
  core.List<core.String>? allowedVpcs;

  /// URI of the Looker service attachment.
  ///
  /// Output only.
  core.String? lookerServiceAttachmentUri;

  /// List of egress service attachment configurations.
  ///
  /// Optional.
  core.List<ServiceAttachment>? serviceAttachments;

  PscConfig({
    this.allowedVpcs,
    this.lookerServiceAttachmentUri,
    this.serviceAttachments,
  });

  PscConfig.fromJson(core.Map json_)
    : this(
        allowedVpcs:
            (json_['allowedVpcs'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        lookerServiceAttachmentUri:
            json_['lookerServiceAttachmentUri'] as core.String?,
        serviceAttachments:
            (json_['serviceAttachments'] as core.List?)
                ?.map(
                  (value) => ServiceAttachment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedVpcs != null) 'allowedVpcs': allowedVpcs!,
    if (lookerServiceAttachmentUri != null)
      'lookerServiceAttachmentUri': lookerServiceAttachmentUri!,
    if (serviceAttachments != null) 'serviceAttachments': serviceAttachments!,
  };
}

/// Request options for restarting an instance.
typedef RestartInstanceRequest = $Empty;

/// Request options for restoring an instance
class RestoreInstanceRequest {
  /// Backup being used to restore the instance Format:
  /// projects/{project}/locations/{location}/instances/{instance}/backups/{backup}
  ///
  /// Required.
  core.String? backup;

  RestoreInstanceRequest({this.backup});

  RestoreInstanceRequest.fromJson(core.Map json_)
    : this(backup: json_['backup'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (backup != null) 'backup': backup!,
  };
}

/// Service attachment configuration.
class ServiceAttachment {
  /// Connection status.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "UNKNOWN" : Connection status is unspecified.
  /// - "ACCEPTED" : Connection is established and functioning normally.
  /// - "PENDING" : Connection is not established (Looker tenant project hasn't
  /// been allowlisted).
  /// - "REJECTED" : Connection is not established (Looker tenant project is
  /// explicitly in reject list).
  /// - "NEEDS_ATTENTION" : Issue with target service attachment, e.g. NAT
  /// subnet is exhausted.
  /// - "CLOSED" : Target service attachment does not exist. This status is a
  /// terminal state.
  core.String? connectionStatus;

  /// Reason the service attachment creation failed.
  ///
  /// This value will only be populated if the service attachment encounters an
  /// issue during provisioning.
  ///
  /// Output only.
  core.String? failureReason;

  /// Fully qualified domain name that will be used in the private DNS record
  /// created for the service attachment.
  ///
  /// Optional.
  core.String? localFqdn;

  /// List of fully qualified domain names that will be used in the private DNS
  /// record created for the service attachment.
  ///
  /// Optional.
  core.List<core.String>? localFqdns;

  /// URI of the service attachment to connect to.
  ///
  /// Format:
  /// projects/{project}/regions/{region}/serviceAttachments/{service_attachment}
  ///
  /// Required.
  core.String? targetServiceAttachmentUri;

  ServiceAttachment({
    this.connectionStatus,
    this.failureReason,
    this.localFqdn,
    this.localFqdns,
    this.targetServiceAttachmentUri,
  });

  ServiceAttachment.fromJson(core.Map json_)
    : this(
        connectionStatus: json_['connectionStatus'] as core.String?,
        failureReason: json_['failureReason'] as core.String?,
        localFqdn: json_['localFqdn'] as core.String?,
        localFqdns:
            (json_['localFqdns'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        targetServiceAttachmentUri:
            json_['targetServiceAttachmentUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectionStatus != null) 'connectionStatus': connectionStatus!,
    if (failureReason != null) 'failureReason': failureReason!,
    if (localFqdn != null) 'localFqdn': localFqdn!,
    if (localFqdns != null) 'localFqdns': localFqdns!,
    if (targetServiceAttachmentUri != null)
      'targetServiceAttachmentUri': targetServiceAttachmentUri!,
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

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Metadata about users for a Looker instance.
class UserMetadata {
  /// The number of additional developer users the instance owner has purchased.
  ///
  /// Optional.
  core.int? additionalDeveloperUserCount;

  /// The number of additional standard users the instance owner has purchased.
  ///
  /// Optional.
  core.int? additionalStandardUserCount;

  /// The number of additional viewer users the instance owner has purchased.
  ///
  /// Optional.
  core.int? additionalViewerUserCount;

  UserMetadata({
    this.additionalDeveloperUserCount,
    this.additionalStandardUserCount,
    this.additionalViewerUserCount,
  });

  UserMetadata.fromJson(core.Map json_)
    : this(
        additionalDeveloperUserCount:
            json_['additionalDeveloperUserCount'] as core.int?,
        additionalStandardUserCount:
            json_['additionalStandardUserCount'] as core.int?,
        additionalViewerUserCount:
            json_['additionalViewerUserCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalDeveloperUserCount != null)
      'additionalDeveloperUserCount': additionalDeveloperUserCount!,
    if (additionalStandardUserCount != null)
      'additionalStandardUserCount': additionalStandardUserCount!,
    if (additionalViewerUserCount != null)
      'additionalViewerUserCount': additionalViewerUserCount!,
  };
}
