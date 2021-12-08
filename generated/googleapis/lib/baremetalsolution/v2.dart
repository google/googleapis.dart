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
///     - [ProjectsLocationsInstancesResource]
///     - [ProjectsLocationsNetworksResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsSnapshotSchedulePoliciesResource]
///     - [ProjectsLocationsVolumesResource]
///       - [ProjectsLocationsVolumesLunsResource]
///       - [ProjectsLocationsVolumesSnapshotsResource]
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

  ProjectsLocationsInstancesResource get instances =>
      ProjectsLocationsInstancesResource(_requester);
  ProjectsLocationsNetworksResource get networks =>
      ProjectsLocationsNetworksResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsSnapshotSchedulePoliciesResource
      get snapshotSchedulePolicies =>
          ProjectsLocationsSnapshotSchedulePoliciesResource(_requester);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResource(commons.ApiRequester client)
      : _requester = client;

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Instance.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List servers in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListInstancesRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/instances';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListInstancesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':reset';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Network.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List network in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListNetworksRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/networks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListNetworksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSnapshotSchedulePoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSnapshotSchedulePoliciesResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a snapshot schedule policy in the specified project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project and location containing the
  /// SnapshotSchedulePolicy.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [snapshotSchedulePolicyId] - Required. Snapshot policy ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SnapshotSchedulePolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SnapshotSchedulePolicy> create(
    SnapshotSchedulePolicy request,
    core.String parent, {
    core.String? snapshotSchedulePolicyId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (snapshotSchedulePolicyId != null)
        'snapshotSchedulePolicyId': [snapshotSchedulePolicyId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/snapshotSchedulePolicies';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SnapshotSchedulePolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a named snapshot schedule policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the snapshot schedule policy to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/snapshotSchedulePolicies/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get details of a single snapshot schedule policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/snapshotSchedulePolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SnapshotSchedulePolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SnapshotSchedulePolicy> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SnapshotSchedulePolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List snapshot schedule policies in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project containing the Snapshot Schedule
  /// Policies.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSnapshotSchedulePoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSnapshotSchedulePoliciesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + '/snapshotSchedulePolicies';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSnapshotSchedulePoliciesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update a snapshot schedule policy in the specified project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The name of the snapshot schedule policy.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/snapshotSchedulePolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SnapshotSchedulePolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SnapshotSchedulePolicy> patch(
    SnapshotSchedulePolicy request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SnapshotSchedulePolicy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVolumesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVolumesLunsResource get luns =>
      ProjectsLocationsVolumesLunsResource(_requester);
  ProjectsLocationsVolumesSnapshotsResource get snapshots =>
      ProjectsLocationsVolumesSnapshotsResource(_requester);

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Volume.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List storage volumes in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListVolumesRequest.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/volumes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVolumesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `snapshot_schedule_policy_name`
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVolumesLunsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVolumesLunsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get details of a single storage lun.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Lun.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/luns';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLunsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVolumesSnapshotsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVolumesSnapshotsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a storage volume snapshot in a containing volume.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The volume to snapshot.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VolumeSnapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VolumeSnapshot> create(
    VolumeSnapshot request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/snapshots';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return VolumeSnapshot.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a storage volume snapshot for a given volume.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the snapshot to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/snapshots/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get details of a single storage volume snapshot.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/snapshots/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VolumeSnapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VolumeSnapshot> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return VolumeSnapshot.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List storage volume snapshots for given storage volume.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListVolumesRequest.
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
  /// Completes with a [ListVolumeSnapshotsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVolumeSnapshotsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/snapshots';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVolumeSnapshotsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Restore a storage volume snapshot to its containing volume.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [volumeSnapshot] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/snapshots/\[^/\]+$`.
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
  async.Future<Operation> restoreVolumeSnapshot(
    RestoreVolumeSnapshotRequest request,
    core.String volumeSnapshot, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' +
        core.Uri.encodeFull('$volumeSnapshot') +
        ':restoreVolumeSnapshot';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

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

  /// True if the interactive serial console feature is enabled for the
  /// instance, false otherwise.
  ///
  /// The default value is false.
  core.bool? interactiveSerialConsoleEnabled;

  /// Labels as key value pairs.
  core.Map<core.String, core.String>? labels;

  /// List of LUNs associated with this server.
  core.List<Lun>? luns;

  /// The server type.
  ///
  /// [Available server types](https://cloud.google.com/bare-metal/docs/bms-planning#server_configurations)
  core.String? machineType;

  /// The resource name of this `Instance`.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. Format:
  /// `projects/{project}/locations/{location}/instances/{instance}`
  ///
  /// Output only.
  core.String? name;

  /// List of networks associated with this server.
  core.List<Network>? networks;

  /// The state of the server.
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

  Instance({
    this.createTime,
    this.hyperthreadingEnabled,
    this.interactiveSerialConsoleEnabled,
    this.labels,
    this.luns,
    this.machineType,
    this.name,
    this.networks,
    this.state,
    this.updateTime,
  });

  Instance.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          hyperthreadingEnabled: _json.containsKey('hyperthreadingEnabled')
              ? _json['hyperthreadingEnabled'] as core.bool
              : null,
          interactiveSerialConsoleEnabled:
              _json.containsKey('interactiveSerialConsoleEnabled')
                  ? _json['interactiveSerialConsoleEnabled'] as core.bool
                  : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          luns: _json.containsKey('luns')
              ? (_json['luns'] as core.List)
                  .map((value) => Lun.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          machineType: _json.containsKey('machineType')
              ? _json['machineType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          networks: _json.containsKey('networks')
              ? (_json['networks'] as core.List)
                  .map((value) => Network.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (hyperthreadingEnabled != null)
          'hyperthreadingEnabled': hyperthreadingEnabled!,
        if (interactiveSerialConsoleEnabled != null)
          'interactiveSerialConsoleEnabled': interactiveSerialConsoleEnabled!,
        if (labels != null) 'labels': labels!,
        if (luns != null) 'luns': luns!,
        if (machineType != null) 'machineType': machineType!,
        if (name != null) 'name': name!,
        if (networks != null) 'networks': networks!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
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

  ListInstancesResponse.fromJson(core.Map _json)
      : this(
          instances: _json.containsKey('instances')
              ? (_json['instances'] as core.List)
                  .map((value) => Instance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
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

  ListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListLunsResponse.fromJson(core.Map _json)
      : this(
          luns: _json.containsKey('luns')
              ? (_json['luns'] as core.List)
                  .map((value) => Lun.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
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

  ListNetworksResponse.fromJson(core.Map _json)
      : this(
          networks: _json.containsKey('networks')
              ? (_json['networks'] as core.List)
                  .map((value) => Network.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
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

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Response message containing the list of snapshot schedule policies.
class ListSnapshotSchedulePoliciesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The snapshot schedule policies registered in this project.
  core.List<SnapshotSchedulePolicy>? snapshotSchedulePolicies;

  ListSnapshotSchedulePoliciesResponse({
    this.nextPageToken,
    this.snapshotSchedulePolicies,
  });

  ListSnapshotSchedulePoliciesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          snapshotSchedulePolicies:
              _json.containsKey('snapshotSchedulePolicies')
                  ? (_json['snapshotSchedulePolicies'] as core.List)
                      .map((value) => SnapshotSchedulePolicy.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (snapshotSchedulePolicies != null)
          'snapshotSchedulePolicies': snapshotSchedulePolicies!,
      };
}

/// Response message containing the list of storage volume snapshots.
class ListVolumeSnapshotsResponse {
  /// A token identifying a page of results from the server.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// The list of storage volumes.
  core.List<VolumeSnapshot>? volumeSnapshots;

  ListVolumeSnapshotsResponse({
    this.nextPageToken,
    this.unreachable,
    this.volumeSnapshots,
  });

  ListVolumeSnapshotsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          volumeSnapshots: _json.containsKey('volumeSnapshots')
              ? (_json['volumeSnapshots'] as core.List)
                  .map((value) => VolumeSnapshot.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (volumeSnapshots != null) 'volumeSnapshots': volumeSnapshots!,
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

  ListVolumesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          volumes: _json.containsKey('volumes')
              ? (_json['volumes'] as core.List)
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

/// A storage volume logical unit number (LUN).
class Lun {
  /// Display if this LUN is a boot LUN.
  core.bool? bootLun;

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
    this.multiprotocolType,
    this.name,
    this.shareable,
    this.sizeGb,
    this.state,
    this.storageType,
    this.storageVolume,
    this.wwid,
  });

  Lun.fromJson(core.Map _json)
      : this(
          bootLun: _json.containsKey('bootLun')
              ? _json['bootLun'] as core.bool
              : null,
          multiprotocolType: _json.containsKey('multiprotocolType')
              ? _json['multiprotocolType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          shareable: _json.containsKey('shareable')
              ? _json['shareable'] as core.bool
              : null,
          sizeGb: _json.containsKey('sizeGb')
              ? _json['sizeGb'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          storageType: _json.containsKey('storageType')
              ? _json['storageType'] as core.String
              : null,
          storageVolume: _json.containsKey('storageVolume')
              ? _json['storageVolume'] as core.String
              : null,
          wwid: _json.containsKey('wwid') ? _json['wwid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bootLun != null) 'bootLun': bootLun!,
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

/// A Network.
class Network {
  /// The cidr of the Network.
  core.String? cidr;

  /// IP address configured.
  core.String? ipAddress;

  /// List of physical interfaces.
  core.List<core.String>? macAddress;

  /// The resource name of this `Network`.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. Format:
  /// `projects/{project}/locations/{location}/networks/{network}` This field
  /// will contain the same value as field "network", which will soon be
  /// deprecated. Please use this field to reference the name of the network
  /// resource.
  ///
  /// Output only.
  core.String? name;

  /// Name of the network.
  core.String? network;

  /// The Network state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The Network is in an unknown state.
  /// - "PROVISIONING" : The Network is being provisioning.
  /// - "PROVISIONED" : The Network has been provisioned.
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
    this.ipAddress,
    this.macAddress,
    this.name,
    this.network,
    this.state,
    this.type,
    this.vlanId,
    this.vrf,
  });

  Network.fromJson(core.Map _json)
      : this(
          cidr: _json.containsKey('cidr') ? _json['cidr'] as core.String : null,
          ipAddress: _json.containsKey('ipAddress')
              ? _json['ipAddress'] as core.String
              : null,
          macAddress: _json.containsKey('macAddress')
              ? (_json['macAddress'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          vlanId: _json.containsKey('vlanId')
              ? _json['vlanId'] as core.String
              : null,
          vrf: _json.containsKey('vrf')
              ? VRF
                  .fromJson(_json['vrf'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cidr != null) 'cidr': cidr!,
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (macAddress != null) 'macAddress': macAddress!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (vlanId != null) 'vlanId': vlanId!,
        if (vrf != null) 'vrf': vrf!,
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

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
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

/// Message requesting to reset a server.
typedef ResetInstanceRequest = $Empty;

/// Message for restoring a volume snapshot.
typedef RestoreVolumeSnapshotRequest = $Empty;

/// A snapshot schedule.
class Schedule {
  /// A crontab-like specification that the schedule uses to take snapshots.
  core.String? crontabSpec;

  /// A list of snapshot names created in this schedule.
  core.String? prefix;

  /// The maximum number of snapshots to retain in this schedule.
  core.int? retentionCount;

  Schedule({
    this.crontabSpec,
    this.prefix,
    this.retentionCount,
  });

  Schedule.fromJson(core.Map _json)
      : this(
          crontabSpec: _json.containsKey('crontabSpec')
              ? _json['crontabSpec'] as core.String
              : null,
          prefix: _json.containsKey('prefix')
              ? _json['prefix'] as core.String
              : null,
          retentionCount: _json.containsKey('retentionCount')
              ? _json['retentionCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (crontabSpec != null) 'crontabSpec': crontabSpec!,
        if (prefix != null) 'prefix': prefix!,
        if (retentionCount != null) 'retentionCount': retentionCount!,
      };
}

/// Details about snapshot space reservation and usage on the storage volume.
class SnapshotReservationDetail {
  /// The space on this storage volume reserved for snapshots, shown in GiB.
  core.String? reservedSpaceGib;

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
    this.reservedSpaceRemainingGib,
    this.reservedSpaceUsedPercent,
  });

  SnapshotReservationDetail.fromJson(core.Map _json)
      : this(
          reservedSpaceGib: _json.containsKey('reservedSpaceGib')
              ? _json['reservedSpaceGib'] as core.String
              : null,
          reservedSpaceRemainingGib:
              _json.containsKey('reservedSpaceRemainingGib')
                  ? _json['reservedSpaceRemainingGib'] as core.String
                  : null,
          reservedSpaceUsedPercent:
              _json.containsKey('reservedSpaceUsedPercent')
                  ? _json['reservedSpaceUsedPercent'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reservedSpaceGib != null) 'reservedSpaceGib': reservedSpaceGib!,
        if (reservedSpaceRemainingGib != null)
          'reservedSpaceRemainingGib': reservedSpaceRemainingGib!,
        if (reservedSpaceUsedPercent != null)
          'reservedSpaceUsedPercent': reservedSpaceUsedPercent!,
      };
}

/// A snapshot schedule policy.
class SnapshotSchedulePolicy {
  /// The description of the snapshot schedule policy.
  core.String? description;

  /// The name of the snapshot schedule policy.
  ///
  /// Output only.
  core.String? name;

  /// The snapshot schedules contained in this policy.
  ///
  /// You can specify a maxiumum of 5 schedules.
  core.List<Schedule>? schedules;

  /// The names of the volumes associated with this policy.
  core.List<core.String>? volumes;

  SnapshotSchedulePolicy({
    this.description,
    this.name,
    this.schedules,
    this.volumes,
  });

  SnapshotSchedulePolicy.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          schedules: _json.containsKey('schedules')
              ? (_json['schedules'] as core.List)
                  .map((value) => Schedule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          volumes: _json.containsKey('volumes')
              ? (_json['volumes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (schedules != null) 'schedules': schedules!,
        if (volumes != null) 'volumes': volumes!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// A network VRF.
class VRF {
  /// The autonomous system number of the VRF.
  core.String? autonomousSystemNumber;

  /// The Juniper alias of the VRF.
  core.String? juniperAlias;

  /// The name of the VRF.
  core.String? name;

  /// The route target of the VRF.
  core.String? routeTarget;

  /// The possible state of VRF.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The unspecified state.
  /// - "PROVISIONING" : The vrf is being provisioning.
  /// - "PROVISIONED" : The vrf is being provisioning.
  core.String? state;

  VRF({
    this.autonomousSystemNumber,
    this.juniperAlias,
    this.name,
    this.routeTarget,
    this.state,
  });

  VRF.fromJson(core.Map _json)
      : this(
          autonomousSystemNumber: _json.containsKey('autonomousSystemNumber')
              ? _json['autonomousSystemNumber'] as core.String
              : null,
          juniperAlias: _json.containsKey('juniperAlias')
              ? _json['juniperAlias'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          routeTarget: _json.containsKey('routeTarget')
              ? _json['routeTarget'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autonomousSystemNumber != null)
          'autonomousSystemNumber': autonomousSystemNumber!,
        if (juniperAlias != null) 'juniperAlias': juniperAlias!,
        if (name != null) 'name': name!,
        if (routeTarget != null) 'routeTarget': routeTarget!,
        if (state != null) 'state': state!,
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

  /// The resource name of this `Volume`.
  ///
  /// Resource names are schemeless URIs that follow the conventions in
  /// https://cloud.google.com/apis/design/resource_names. Format:
  /// `projects/{project}/locations/{location}/volumes/{volume}`
  ///
  /// Output only.
  core.String? name;

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
    this.name,
    this.remainingSpaceGib,
    this.requestedSizeGib,
    this.snapshotAutoDeleteBehavior,
    this.snapshotReservationDetail,
    this.snapshotSchedulePolicy,
    this.state,
    this.storageType,
  });

  Volume.fromJson(core.Map _json)
      : this(
          autoGrownSizeGib: _json.containsKey('autoGrownSizeGib')
              ? _json['autoGrownSizeGib'] as core.String
              : null,
          currentSizeGib: _json.containsKey('currentSizeGib')
              ? _json['currentSizeGib'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          remainingSpaceGib: _json.containsKey('remainingSpaceGib')
              ? _json['remainingSpaceGib'] as core.String
              : null,
          requestedSizeGib: _json.containsKey('requestedSizeGib')
              ? _json['requestedSizeGib'] as core.String
              : null,
          snapshotAutoDeleteBehavior:
              _json.containsKey('snapshotAutoDeleteBehavior')
                  ? _json['snapshotAutoDeleteBehavior'] as core.String
                  : null,
          snapshotReservationDetail:
              _json.containsKey('snapshotReservationDetail')
                  ? SnapshotReservationDetail.fromJson(
                      _json['snapshotReservationDetail']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          snapshotSchedulePolicy: _json.containsKey('snapshotSchedulePolicy')
              ? _json['snapshotSchedulePolicy'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          storageType: _json.containsKey('storageType')
              ? _json['storageType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoGrownSizeGib != null) 'autoGrownSizeGib': autoGrownSizeGib!,
        if (currentSizeGib != null) 'currentSizeGib': currentSizeGib!,
        if (name != null) 'name': name!,
        if (remainingSpaceGib != null) 'remainingSpaceGib': remainingSpaceGib!,
        if (requestedSizeGib != null) 'requestedSizeGib': requestedSizeGib!,
        if (snapshotAutoDeleteBehavior != null)
          'snapshotAutoDeleteBehavior': snapshotAutoDeleteBehavior!,
        if (snapshotReservationDetail != null)
          'snapshotReservationDetail': snapshotReservationDetail!,
        if (snapshotSchedulePolicy != null)
          'snapshotSchedulePolicy': snapshotSchedulePolicy!,
        if (state != null) 'state': state!,
        if (storageType != null) 'storageType': storageType!,
      };
}

/// Snapshot registered for a given storage volume.
class VolumeSnapshot {
  /// The creation time of the storage volume snapshot.
  ///
  /// Optional.
  core.String? createTime;

  /// The description of the storage volume snapshot.
  core.String? description;

  /// The name of the storage volume snapshot.
  ///
  /// Output only.
  core.String? name;

  /// The size of the storage volume snapshot, in bytes.
  core.String? sizeBytes;

  /// The storage volume this snapshot belongs to.
  core.String? storageVolume;

  VolumeSnapshot({
    this.createTime,
    this.description,
    this.name,
    this.sizeBytes,
    this.storageVolume,
  });

  VolumeSnapshot.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sizeBytes: _json.containsKey('sizeBytes')
              ? _json['sizeBytes'] as core.String
              : null,
          storageVolume: _json.containsKey('storageVolume')
              ? _json['storageVolume'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
        if (storageVolume != null) 'storageVolume': storageVolume!,
      };
}
