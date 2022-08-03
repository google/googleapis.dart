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

/// Cloud TPU API - v2alpha1
///
/// TPU API provides customers with access to Google TPU technology.
///
/// For more information, see <https://cloud.google.com/tpu/>
///
/// Create an instance of [TPUApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAcceleratorTypesResource]
///     - [ProjectsLocationsNodesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRuntimeVersionsResource]
library tpu.v2alpha1;

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

/// TPU API provides customers with access to Google TPU technology.
class TPUApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  TPUApi(http.Client client,
      {core.String rootUrl = 'https://tpu.googleapis.com/',
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

  ProjectsLocationsAcceleratorTypesResource get acceleratorTypes =>
      ProjectsLocationsAcceleratorTypesResource(_requester);
  ProjectsLocationsNodesResource get nodes =>
      ProjectsLocationsNodesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsRuntimeVersionsResource get runtimeVersions =>
      ProjectsLocationsRuntimeVersionsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Generates the Cloud TPU service identity for the project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateServiceIdentityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateServiceIdentityResponse> generateServiceIdentity(
    GenerateServiceIdentityRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha1/' +
        core.Uri.encodeFull('$parent') +
        ':generateServiceIdentity';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateServiceIdentityResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

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

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAcceleratorTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAcceleratorTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets AcceleratorType.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/acceleratorTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AcceleratorType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AcceleratorType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AcceleratorType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists accelerator types supported by this API.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [orderBy] - Sort results.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAcceleratorTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAcceleratorTypesResponse> list(
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
        'v2alpha1/' + core.Uri.encodeFull('$parent') + '/acceleratorTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAcceleratorTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsNodesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNodesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [nodeId] - The unqualified resource name.
  ///
  /// [requestId] - Idempotent request UUID.
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
    Node request,
    core.String parent, {
    core.String? nodeId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (nodeId != null) 'nodeId': [nodeId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [requestId] - Idempotent request UUID.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a node.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Node].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Node> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Node.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the guest attributes for the node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetGuestAttributesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetGuestAttributesResponse> getGuestAttributes(
    GetGuestAttributesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2alpha1/' + core.Uri.encodeFull('$name') + ':getGuestAttributes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GetGuestAttributesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists nodes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
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
  /// Completes with a [ListNodesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListNodesResponse> list(
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

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$parent') + '/nodes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListNodesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the configurations of a node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Immutable. The name of the TPU.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/nodes/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields from Node to update. Supported
  /// fields: \[description, tags, labels, metadata,
  /// network_config.enable_external_ips\].
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
    Node request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Simulates a maintenance event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/nodes/\[^/\]+$`.
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
  async.Future<Operation> simulateMaintenanceEvent(
    SimulateMaintenanceEventRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha1/' +
        core.Uri.encodeFull('$name') +
        ':simulateMaintenanceEvent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts a node.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/nodes/\[^/\]+$`.
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
    StartNodeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name') + ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops a node.
  ///
  /// This operation is only available with single TPU nodes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/nodes/\[^/\]+$`.
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
    StopNodeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
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
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
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
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
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

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name');

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRuntimeVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRuntimeVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a runtime version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimeVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RuntimeVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RuntimeVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RuntimeVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists runtime versions supported by this API.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [orderBy] - Sort results.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRuntimeVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRuntimeVersionsResponse> list(
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
        'v2alpha1/' + core.Uri.encodeFull('$parent') + '/runtimeVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRuntimeVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A accelerator type that a Node can be configured with.
class AcceleratorType {
  /// The resource name.
  core.String? name;

  /// the accelerator type.
  core.String? type;

  AcceleratorType({
    this.name,
    this.type,
  });

  AcceleratorType.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// An access config attached to the TPU worker.
class AccessConfig {
  /// An external IP address associated with the TPU worker.
  ///
  /// Output only.
  core.String? externalIp;

  AccessConfig({
    this.externalIp,
  });

  AccessConfig.fromJson(core.Map json_)
      : this(
          externalIp: json_.containsKey('externalIp')
              ? json_['externalIp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (externalIp != null) 'externalIp': externalIp!,
      };
}

/// A node-attached disk resource.
///
/// Next ID: 8;
class AttachedDisk {
  /// The mode in which to attach this disk.
  ///
  /// If not specified, the default is READ_WRITE mode. Only applicable to
  /// data_disks.
  /// Possible string values are:
  /// - "DISK_MODE_UNSPECIFIED" : The disk mode is not known/set.
  /// - "READ_WRITE" : Attaches the disk in read-write mode. Only one TPU node
  /// can attach a disk in read-write mode at a time.
  /// - "READ_ONLY" : Attaches the disk in read-only mode. Multiple TPU nodes
  /// can attach a disk in read-only mode at a time.
  core.String? mode;

  /// Specifies the full path to an existing disk.
  ///
  /// For example: "projects/my-project/zones/us-central1-c/disks/my-disk".
  core.String? sourceDisk;

  AttachedDisk({
    this.mode,
    this.sourceDisk,
  });

  AttachedDisk.fromJson(core.Map json_)
      : this(
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          sourceDisk: json_.containsKey('sourceDisk')
              ? json_['sourceDisk'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mode != null) 'mode': mode!,
        if (sourceDisk != null) 'sourceDisk': sourceDisk!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Request for GenerateServiceIdentity.
typedef GenerateServiceIdentityRequest = $Empty;

/// Response for GenerateServiceIdentity.
class GenerateServiceIdentityResponse {
  /// ServiceIdentity that was created or retrieved.
  ServiceIdentity? identity;

  GenerateServiceIdentityResponse({
    this.identity,
  });

  GenerateServiceIdentityResponse.fromJson(core.Map json_)
      : this(
          identity: json_.containsKey('identity')
              ? ServiceIdentity.fromJson(
                  json_['identity'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (identity != null) 'identity': identity!,
      };
}

/// Request for GetGuestAttributes.
class GetGuestAttributesRequest {
  /// The guest attributes path to be queried.
  core.String? queryPath;

  /// The 0-based worker ID.
  ///
  /// If it is empty, all workers' GuestAttributes will be returned.
  core.List<core.String>? workerIds;

  GetGuestAttributesRequest({
    this.queryPath,
    this.workerIds,
  });

  GetGuestAttributesRequest.fromJson(core.Map json_)
      : this(
          queryPath: json_.containsKey('queryPath')
              ? json_['queryPath'] as core.String
              : null,
          workerIds: json_.containsKey('workerIds')
              ? (json_['workerIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (queryPath != null) 'queryPath': queryPath!,
        if (workerIds != null) 'workerIds': workerIds!,
      };
}

/// Response for GetGuestAttributes.
class GetGuestAttributesResponse {
  /// The guest attributes for the TPU workers.
  core.List<GuestAttributes>? guestAttributes;

  GetGuestAttributesResponse({
    this.guestAttributes,
  });

  GetGuestAttributesResponse.fromJson(core.Map json_)
      : this(
          guestAttributes: json_.containsKey('guestAttributes')
              ? (json_['guestAttributes'] as core.List)
                  .map((value) => GuestAttributes.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (guestAttributes != null) 'guestAttributes': guestAttributes!,
      };
}

/// A guest attributes.
class GuestAttributes {
  /// The path to be queried.
  ///
  /// This can be the default namespace ('/') or a nested namespace ('/\/') or a
  /// specified key ('/\/\')
  core.String? queryPath;

  /// The value of the requested queried path.
  GuestAttributesValue? queryValue;

  GuestAttributes({
    this.queryPath,
    this.queryValue,
  });

  GuestAttributes.fromJson(core.Map json_)
      : this(
          queryPath: json_.containsKey('queryPath')
              ? json_['queryPath'] as core.String
              : null,
          queryValue: json_.containsKey('queryValue')
              ? GuestAttributesValue.fromJson(
                  json_['queryValue'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (queryPath != null) 'queryPath': queryPath!,
        if (queryValue != null) 'queryValue': queryValue!,
      };
}

/// A guest attributes namespace/key/value entry.
class GuestAttributesEntry {
  /// Key for the guest attribute entry.
  core.String? key;

  /// Namespace for the guest attribute entry.
  core.String? namespace;

  /// Value for the guest attribute entry.
  core.String? value;

  GuestAttributesEntry({
    this.key,
    this.namespace,
    this.value,
  });

  GuestAttributesEntry.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          namespace: json_.containsKey('namespace')
              ? json_['namespace'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (namespace != null) 'namespace': namespace!,
        if (value != null) 'value': value!,
      };
}

/// Array of guest attribute namespace/key/value tuples.
class GuestAttributesValue {
  /// The list of guest attributes entries.
  core.List<GuestAttributesEntry>? items;

  GuestAttributesValue({
    this.items,
  });

  GuestAttributesValue.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => GuestAttributesEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
      };
}

/// Response for ListAcceleratorTypes.
class ListAcceleratorTypesResponse {
  /// The listed nodes.
  core.List<AcceleratorType>? acceleratorTypes;

  /// The next page token or empty if none.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAcceleratorTypesResponse({
    this.acceleratorTypes,
    this.nextPageToken,
    this.unreachable,
  });

  ListAcceleratorTypesResponse.fromJson(core.Map json_)
      : this(
          acceleratorTypes: json_.containsKey('acceleratorTypes')
              ? (json_['acceleratorTypes'] as core.List)
                  .map((value) => AcceleratorType.fromJson(
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
        if (acceleratorTypes != null) 'acceleratorTypes': acceleratorTypes!,
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

/// Response for ListNodes.
class ListNodesResponse {
  /// The next page token or empty if none.
  core.String? nextPageToken;

  /// The listed nodes.
  core.List<Node>? nodes;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListNodesResponse({
    this.nextPageToken,
    this.nodes,
    this.unreachable,
  });

  ListNodesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          nodes: json_.containsKey('nodes')
              ? (json_['nodes'] as core.List)
                  .map((value) => Node.fromJson(
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
        if (nodes != null) 'nodes': nodes!,
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

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
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

/// Response for ListRuntimeVersions.
class ListRuntimeVersionsResponse {
  /// The next page token or empty if none.
  core.String? nextPageToken;

  /// The listed nodes.
  core.List<RuntimeVersion>? runtimeVersions;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListRuntimeVersionsResponse({
    this.nextPageToken,
    this.runtimeVersions,
    this.unreachable,
  });

  ListRuntimeVersionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          runtimeVersions: json_.containsKey('runtimeVersions')
              ? (json_['runtimeVersions'] as core.List)
                  .map((value) => RuntimeVersion.fromJson(
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
        if (runtimeVersions != null) 'runtimeVersions': runtimeVersions!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location;

/// Network related configurations.
class NetworkConfig {
  /// Allows the TPU node to send and receive packets with non-matching
  /// destination or source IPs.
  ///
  /// This is required if you plan to use the TPU workers to forward routes.
  core.bool? canIpForward;

  /// Indicates that external IP addresses would be associated with the TPU
  /// workers.
  ///
  /// If set to false, the specified subnetwork or network should have Private
  /// Google Access enabled.
  core.bool? enableExternalIps;

  /// The name of the network for the TPU node.
  ///
  /// It must be a preexisting Google Compute Engine network. If none is
  /// provided, "default" will be used.
  core.String? network;

  /// The name of the subnetwork for the TPU node.
  ///
  /// It must be a preexisting Google Compute Engine subnetwork. If none is
  /// provided, "default" will be used.
  core.String? subnetwork;

  NetworkConfig({
    this.canIpForward,
    this.enableExternalIps,
    this.network,
    this.subnetwork,
  });

  NetworkConfig.fromJson(core.Map json_)
      : this(
          canIpForward: json_.containsKey('canIpForward')
              ? json_['canIpForward'] as core.bool
              : null,
          enableExternalIps: json_.containsKey('enableExternalIps')
              ? json_['enableExternalIps'] as core.bool
              : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canIpForward != null) 'canIpForward': canIpForward!,
        if (enableExternalIps != null) 'enableExternalIps': enableExternalIps!,
        if (network != null) 'network': network!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
      };
}

/// A network endpoint over which a TPU worker can be reached.
class NetworkEndpoint {
  /// The access config for the TPU worker.
  AccessConfig? accessConfig;

  /// The internal IP address of this network endpoint.
  core.String? ipAddress;

  /// The port of this network endpoint.
  core.int? port;

  NetworkEndpoint({
    this.accessConfig,
    this.ipAddress,
    this.port,
  });

  NetworkEndpoint.fromJson(core.Map json_)
      : this(
          accessConfig: json_.containsKey('accessConfig')
              ? AccessConfig.fromJson(
                  json_['accessConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          ipAddress: json_.containsKey('ipAddress')
              ? json_['ipAddress'] as core.String
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessConfig != null) 'accessConfig': accessConfig!,
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (port != null) 'port': port!,
      };
}

/// A TPU instance.
class Node {
  /// The type of hardware accelerators associated with this node.
  core.String? acceleratorType;

  /// The API version that created this Node.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "API_VERSION_UNSPECIFIED" : API version is unknown.
  /// - "V1_ALPHA1" : TPU API V1Alpha1 version.
  /// - "V1" : TPU API V1 version.
  /// - "V2_ALPHA1" : TPU API V2Alpha1 version.
  core.String? apiVersion;

  /// The CIDR block that the TPU node will use when selecting an IP address.
  ///
  /// This CIDR block must be a /29 block; the Compute Engine networks API
  /// forbids a smaller block, and using a larger block would be wasteful (a
  /// node can only consume one IP address). Errors will occur if the CIDR block
  /// has already been used for a currently existing TPU node, the CIDR block
  /// conflicts with any subnetworks in the user's provided network, or the
  /// provided network is peered with another network that is using that CIDR
  /// block.
  core.String? cidrBlock;

  /// The time when the node was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The additional data disks for the Node.
  core.List<AttachedDisk>? dataDisks;

  /// The user-supplied description of the TPU.
  ///
  /// Maximum of 512 characters.
  core.String? description;

  /// The health status of the TPU node.
  /// Possible string values are:
  /// - "HEALTH_UNSPECIFIED" : Health status is unknown: not initialized or
  /// failed to retrieve.
  /// - "HEALTHY" : The resource is healthy.
  /// - "TIMEOUT" : The resource is unresponsive.
  /// - "UNHEALTHY_TENSORFLOW" : The in-guest ML stack is unhealthy.
  /// - "UNHEALTHY_MAINTENANCE" : The node is under maintenance/priority boost
  /// caused rescheduling and will resume running once rescheduled.
  core.String? health;

  /// If this field is populated, it contains a description of why the TPU Node
  /// is unhealthy.
  ///
  /// Output only.
  core.String? healthDescription;

  /// The unique identifier for the TPU Node.
  ///
  /// Output only.
  core.String? id;

  /// Resource labels to represent user-provided metadata.
  core.Map<core.String, core.String>? labels;

  /// Custom metadata to apply to the TPU Node.
  ///
  /// Can set startup-script and shutdown-script
  core.Map<core.String, core.String>? metadata;

  /// The name of the TPU.
  ///
  /// Output only. Immutable.
  core.String? name;

  /// Network configurations for the TPU node.
  NetworkConfig? networkConfig;

  /// The network endpoints where TPU workers can be accessed and sent work.
  ///
  /// It is recommended that runtime clients of the node reach out to the 0th
  /// entry in this map first.
  ///
  /// Output only.
  core.List<NetworkEndpoint>? networkEndpoints;

  /// The runtime version running in the Node.
  ///
  /// Required.
  core.String? runtimeVersion;

  /// The scheduling options for this node.
  SchedulingConfig? schedulingConfig;

  /// The Google Cloud Platform Service Account to be used by the TPU node VMs.
  ///
  /// If None is specified, the default compute service account will be used.
  ServiceAccount? serviceAccount;

  /// The current state for the TPU Node.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : TPU node state is not known/set.
  /// - "CREATING" : TPU node is being created.
  /// - "READY" : TPU node has been created.
  /// - "RESTARTING" : TPU node is restarting.
  /// - "REIMAGING" : TPU node is undergoing reimaging.
  /// - "DELETING" : TPU node is being deleted.
  /// - "REPAIRING" : TPU node is being repaired and may be unusable. Details
  /// can be found in the `help_description` field.
  /// - "STOPPED" : TPU node is stopped.
  /// - "STOPPING" : TPU node is currently stopping.
  /// - "STARTING" : TPU node is currently starting.
  /// - "PREEMPTED" : TPU node has been preempted. Only applies to Preemptible
  /// TPU Nodes.
  /// - "TERMINATED" : TPU node has been terminated due to maintenance or has
  /// reached the end of its life cycle (for preemptible nodes).
  /// - "HIDING" : TPU node is currently hiding.
  /// - "HIDDEN" : TPU node has been hidden.
  /// - "UNHIDING" : TPU node is currently unhiding.
  core.String? state;

  /// The Symptoms that have occurred to the TPU Node.
  ///
  /// Output only.
  core.List<Symptom>? symptoms;

  /// Tags to apply to the TPU Node.
  ///
  /// Tags are used to identify valid sources or targets for network firewalls.
  core.List<core.String>? tags;

  Node({
    this.acceleratorType,
    this.apiVersion,
    this.cidrBlock,
    this.createTime,
    this.dataDisks,
    this.description,
    this.health,
    this.healthDescription,
    this.id,
    this.labels,
    this.metadata,
    this.name,
    this.networkConfig,
    this.networkEndpoints,
    this.runtimeVersion,
    this.schedulingConfig,
    this.serviceAccount,
    this.state,
    this.symptoms,
    this.tags,
  });

  Node.fromJson(core.Map json_)
      : this(
          acceleratorType: json_.containsKey('acceleratorType')
              ? json_['acceleratorType'] as core.String
              : null,
          apiVersion: json_.containsKey('apiVersion')
              ? json_['apiVersion'] as core.String
              : null,
          cidrBlock: json_.containsKey('cidrBlock')
              ? json_['cidrBlock'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          dataDisks: json_.containsKey('dataDisks')
              ? (json_['dataDisks'] as core.List)
                  .map((value) => AttachedDisk.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          health: json_.containsKey('health')
              ? json_['health'] as core.String
              : null,
          healthDescription: json_.containsKey('healthDescription')
              ? json_['healthDescription'] as core.String
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
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          networkConfig: json_.containsKey('networkConfig')
              ? NetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          networkEndpoints: json_.containsKey('networkEndpoints')
              ? (json_['networkEndpoints'] as core.List)
                  .map((value) => NetworkEndpoint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          runtimeVersion: json_.containsKey('runtimeVersion')
              ? json_['runtimeVersion'] as core.String
              : null,
          schedulingConfig: json_.containsKey('schedulingConfig')
              ? SchedulingConfig.fromJson(json_['schedulingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? ServiceAccount.fromJson(json_['serviceAccount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          symptoms: json_.containsKey('symptoms')
              ? (json_['symptoms'] as core.List)
                  .map((value) => Symptom.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceleratorType != null) 'acceleratorType': acceleratorType!,
        if (apiVersion != null) 'apiVersion': apiVersion!,
        if (cidrBlock != null) 'cidrBlock': cidrBlock!,
        if (createTime != null) 'createTime': createTime!,
        if (dataDisks != null) 'dataDisks': dataDisks!,
        if (description != null) 'description': description!,
        if (health != null) 'health': health!,
        if (healthDescription != null) 'healthDescription': healthDescription!,
        if (id != null) 'id': id!,
        if (labels != null) 'labels': labels!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (networkEndpoints != null) 'networkEndpoints': networkEndpoints!,
        if (runtimeVersion != null) 'runtimeVersion': runtimeVersion!,
        if (schedulingConfig != null) 'schedulingConfig': schedulingConfig!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (state != null) 'state': state!,
        if (symptoms != null) 'symptoms': symptoms!,
        if (tags != null) 'tags': tags!,
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

/// A runtime version that a Node can be configured with.
class RuntimeVersion {
  /// The resource name.
  core.String? name;

  /// The runtime version.
  core.String? version;

  RuntimeVersion({
    this.name,
    this.version,
  });

  RuntimeVersion.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
      };
}

/// Sets the scheduling options for this node.
class SchedulingConfig {
  /// Defines whether the node is preemptible.
  core.bool? preemptible;

  /// Whether the node is created under a reservation.
  core.bool? reserved;

  SchedulingConfig({
    this.preemptible,
    this.reserved,
  });

  SchedulingConfig.fromJson(core.Map json_)
      : this(
          preemptible: json_.containsKey('preemptible')
              ? json_['preemptible'] as core.bool
              : null,
          reserved: json_.containsKey('reserved')
              ? json_['reserved'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (preemptible != null) 'preemptible': preemptible!,
        if (reserved != null) 'reserved': reserved!,
      };
}

/// A service account.
class ServiceAccount {
  /// Email address of the service account.
  ///
  /// If empty, default Compute service account will be used.
  core.String? email;

  /// The list of scopes to be made available for this service account.
  ///
  /// If empty, access to all Cloud APIs will be allowed.
  core.List<core.String>? scope;

  ServiceAccount({
    this.email,
    this.scope,
  });

  ServiceAccount.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          scope: json_.containsKey('scope')
              ? (json_['scope'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (scope != null) 'scope': scope!,
      };
}

/// The per-product per-project service identity for Cloud TPU service.
class ServiceIdentity {
  /// The email address of the service identity.
  core.String? email;

  ServiceIdentity({
    this.email,
  });

  ServiceIdentity.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
      };
}

/// Request for SimulateMaintenanceEvent.
class SimulateMaintenanceEventRequest {
  /// The 0-based worker ID.
  ///
  /// If it is empty, worker ID 0 will be selected for maintenance event
  /// simulation. A maintenance event will only be fired on the first specified
  /// worker ID. Future implementations may support firing on multiple workers.
  core.List<core.String>? workerIds;

  SimulateMaintenanceEventRequest({
    this.workerIds,
  });

  SimulateMaintenanceEventRequest.fromJson(core.Map json_)
      : this(
          workerIds: json_.containsKey('workerIds')
              ? (json_['workerIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (workerIds != null) 'workerIds': workerIds!,
      };
}

/// Request for StartNode.
typedef StartNodeRequest = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Request for StopNode.
typedef StopNodeRequest = $Empty;

/// A Symptom instance.
class Symptom {
  /// Timestamp when the Symptom is created.
  core.String? createTime;

  /// Detailed information of the current Symptom.
  core.String? details;

  /// Type of the Symptom.
  /// Possible string values are:
  /// - "SYMPTOM_TYPE_UNSPECIFIED" : Unspecified symptom.
  /// - "LOW_MEMORY" : TPU VM memory is low.
  /// - "OUT_OF_MEMORY" : TPU runtime is out of memory.
  /// - "EXECUTE_TIMED_OUT" : TPU runtime execution has timed out.
  /// - "MESH_BUILD_FAIL" : TPU runtime fails to construct a mesh that
  /// recognizes each TPU device's neighbors.
  /// - "HBM_OUT_OF_MEMORY" : TPU HBM is out of memory.
  /// - "PROJECT_ABUSE" : Abusive behaviors have been identified on the current
  /// project.
  core.String? symptomType;

  /// A string used to uniquely distinguish a worker within a TPU node.
  core.String? workerId;

  Symptom({
    this.createTime,
    this.details,
    this.symptomType,
    this.workerId,
  });

  Symptom.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
          symptomType: json_.containsKey('symptomType')
              ? json_['symptomType'] as core.String
              : null,
          workerId: json_.containsKey('workerId')
              ? json_['workerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (details != null) 'details': details!,
        if (symptomType != null) 'symptomType': symptomType!,
        if (workerId != null) 'workerId': workerId!,
      };
}
