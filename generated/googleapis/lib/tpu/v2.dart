// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Cloud TPU API - v2
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
///     - [ProjectsLocationsQueuedResourcesResource]
///     - [ProjectsLocationsRuntimeVersionsResource]
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
  ProjectsLocationsQueuedResourcesResource get queuedResources =>
      ProjectsLocationsQueuedResourcesResource(_requester);
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

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + ':generateServiceIdentity';

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/locations';

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/acceleratorTypes';

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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (nodeId != null) 'nodeId': [nodeId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/nodes';

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':getGuestAttributes';

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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/nodes';

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
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
  async.Future<Operation> start(
    StartNodeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':start';

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
  async.Future<Operation> stop(
    StopNodeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':stop';

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':cancel';

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsQueuedResourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsQueuedResourcesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a QueuedResource TPU instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [queuedResourceId] - Optional. The unqualified resource name. Should
  /// follow the `^[A-Za-z0-9_.~+%-]+$` regex format.
  ///
  /// [requestId] - Optional. Idempotent request UUID.
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
    QueuedResource request,
    core.String parent, {
    core.String? queuedResourceId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (queuedResourceId != null) 'queuedResourceId': [queuedResourceId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/queuedResources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a QueuedResource TPU instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queuedResources/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, all running nodes belonging to this
  /// queued resource will be deleted first and then the queued resource will be
  /// deleted. Otherwise (i.e. force=false), the queued resource will only be
  /// deleted if its nodes have already been deleted or the queued resource is
  /// in the ACCEPTED, FAILED, or SUSPENDED state.
  ///
  /// [requestId] - Optional. Idempotent request UUID.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a queued resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queuedResources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueuedResource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueuedResource> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return QueuedResource.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists queued resources.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from a previous
  /// List request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListQueuedResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListQueuedResourcesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/queuedResources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListQueuedResourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets a QueuedResource TPU instance
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the queued resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/queuedResources/\[^/\]+$`.
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
    ResetQueuedResourceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':reset';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/runtimeVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRuntimeVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A TPU accelerator configuration.
class AcceleratorConfig {
  /// Topology of TPU in chips.
  ///
  /// Required.
  core.String? topology;

  /// Type of TPU.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified version.
  /// - "V2" : TPU v2.
  /// - "V3" : TPU v3.
  /// - "V4" : TPU v4.
  /// - "V5P" : TPU v5p
  core.String? type;

  AcceleratorConfig({
    this.topology,
    this.type,
  });

  AcceleratorConfig.fromJson(core.Map json_)
      : this(
          topology: json_.containsKey('topology')
              ? json_['topology'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topology != null) 'topology': topology!,
        if (type != null) 'type': type!,
      };
}

/// A accelerator type that a Node can be configured with.
class AcceleratorType {
  /// The accelerator config.
  core.List<AcceleratorConfig>? acceleratorConfigs;

  /// The resource name.
  core.String? name;

  /// The accelerator type.
  core.String? type;

  AcceleratorType({
    this.acceleratorConfigs,
    this.name,
    this.type,
  });

  AcceleratorType.fromJson(core.Map json_)
      : this(
          acceleratorConfigs: json_.containsKey('acceleratorConfigs')
              ? (json_['acceleratorConfigs'] as core.List)
                  .map((value) => AcceleratorConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceleratorConfigs != null)
          'acceleratorConfigs': acceleratorConfigs!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// Further data for the accepted state.
typedef AcceptedData = $Empty;

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

/// Further data for the active state.
typedef ActiveData = $Empty;

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

/// Further data for the creating state.
typedef CreatingData = $Empty;

/// Further data for the deleting state.
typedef DeletingData = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Further data for the failed state.
class FailedData {
  /// The error that caused the queued resource to enter the FAILED state.
  ///
  /// Output only.
  Status? error;

  FailedData({
    this.error,
  });

  FailedData.fromJson(core.Map json_)
      : this(
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
      };
}

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

/// Guaranteed tier definition.
class Guaranteed {
  /// Defines the minimum duration of the guarantee.
  ///
  /// If specified, the requested resources will only be provisioned if they can
  /// be allocated for at least the given duration.
  ///
  /// Optional.
  core.String? minDuration;

  Guaranteed({
    this.minDuration,
  });

  Guaranteed.fromJson(core.Map json_)
      : this(
          minDuration: json_.containsKey('minDuration')
              ? json_['minDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (minDuration != null) 'minDuration': minDuration!,
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
typedef GuestAttributesEntry = $GuestAttributesEntry;

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

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).
///
/// The start must be less than or equal to the end. When the start equals the
/// end, the interval is empty (matches no time). When both start and end are
/// unspecified, the interval matches any time.
typedef Interval = $Interval;

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

/// Response for ListQueuedResources.
class ListQueuedResourcesResponse {
  /// The next page token or empty if none.
  core.String? nextPageToken;

  /// The listed queued resources.
  core.List<QueuedResource>? queuedResources;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListQueuedResourcesResponse({
    this.nextPageToken,
    this.queuedResources,
    this.unreachable,
  });

  ListQueuedResourcesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          queuedResources: json_.containsKey('queuedResources')
              ? (json_['queuedResources'] as core.List)
                  .map((value) => QueuedResource.fromJson(
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
        if (queuedResources != null) 'queuedResources': queuedResources!,
        if (unreachable != null) 'unreachable': unreachable!,
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

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Parameters to specify for multislice QueuedResource requests.
///
/// This message must be populated in case of multislice requests instead of
/// node_id.
class MultisliceParams {
  /// Number of nodes with this spec.
  ///
  /// The system will attempt to provison "node_count" nodes as part of the
  /// request. This needs to be \> 1.
  ///
  /// Required.
  core.int? nodeCount;

  /// Prefix of node_ids in case of multislice request.
  ///
  /// Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format. If node_count = 3
  /// and node_id_prefix = "np", node ids of nodes created will be "np-0",
  /// "np-1", "np-2". If this field is not provided we use queued_resource_id as
  /// the node_id_prefix.
  ///
  /// Optional.
  core.String? nodeIdPrefix;

  MultisliceParams({
    this.nodeCount,
    this.nodeIdPrefix,
  });

  MultisliceParams.fromJson(core.Map json_)
      : this(
          nodeCount: json_.containsKey('nodeCount')
              ? json_['nodeCount'] as core.int
              : null,
          nodeIdPrefix: json_.containsKey('nodeIdPrefix')
              ? json_['nodeIdPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodeCount != null) 'nodeCount': nodeCount!,
        if (nodeIdPrefix != null) 'nodeIdPrefix': nodeIdPrefix!,
      };
}

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

  /// Specifies networking queue count for TPU VM instance's network interface.
  ///
  /// Optional.
  core.int? queueCount;

  /// The name of the subnetwork for the TPU node.
  ///
  /// It must be a preexisting Google Compute Engine subnetwork. If none is
  /// provided, "default" will be used.
  core.String? subnetwork;

  NetworkConfig({
    this.canIpForward,
    this.enableExternalIps,
    this.network,
    this.queueCount,
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
          queueCount: json_.containsKey('queueCount')
              ? json_['queueCount'] as core.int
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canIpForward != null) 'canIpForward': canIpForward!,
        if (enableExternalIps != null) 'enableExternalIps': enableExternalIps!,
        if (network != null) 'network': network!,
        if (queueCount != null) 'queueCount': queueCount!,
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
  /// The AccleratorConfig for the TPU Node.
  AcceleratorConfig? acceleratorConfig;

  /// The type of hardware accelerators associated with this node.
  ///
  /// Optional.
  core.String? acceleratorType;

  /// The API version that created this Node.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "API_VERSION_UNSPECIFIED" : API version is unknown.
  /// - "V1_ALPHA1" : TPU API V1Alpha1 version.
  /// - "V1" : TPU API V1 version.
  /// - "V2_ALPHA1" : TPU API V2Alpha1 version.
  /// - "V2" : TPU API V2 version.
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

  /// Whether the Node belongs to a Multislice group.
  ///
  /// Output only.
  core.bool? multisliceNode;

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

  /// The qualified name of the QueuedResource that requested this Node.
  ///
  /// Output only.
  core.String? queuedResource;

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

  /// Shielded Instance options.
  ShieldedInstanceConfig? shieldedInstanceConfig;

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
  /// can be found in the 'help_description' field.
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
    this.acceleratorConfig,
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
    this.multisliceNode,
    this.name,
    this.networkConfig,
    this.networkEndpoints,
    this.queuedResource,
    this.runtimeVersion,
    this.schedulingConfig,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.state,
    this.symptoms,
    this.tags,
  });

  Node.fromJson(core.Map json_)
      : this(
          acceleratorConfig: json_.containsKey('acceleratorConfig')
              ? AcceleratorConfig.fromJson(json_['acceleratorConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
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
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          multisliceNode: json_.containsKey('multisliceNode')
              ? json_['multisliceNode'] as core.bool
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
          queuedResource: json_.containsKey('queuedResource')
              ? json_['queuedResource'] as core.String
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
          shieldedInstanceConfig: json_.containsKey('shieldedInstanceConfig')
              ? ShieldedInstanceConfig.fromJson(json_['shieldedInstanceConfig']
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
        if (acceleratorConfig != null) 'acceleratorConfig': acceleratorConfig!,
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
        if (multisliceNode != null) 'multisliceNode': multisliceNode!,
        if (name != null) 'name': name!,
        if (networkConfig != null) 'networkConfig': networkConfig!,
        if (networkEndpoints != null) 'networkEndpoints': networkEndpoints!,
        if (queuedResource != null) 'queuedResource': queuedResource!,
        if (runtimeVersion != null) 'runtimeVersion': runtimeVersion!,
        if (schedulingConfig != null) 'schedulingConfig': schedulingConfig!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (shieldedInstanceConfig != null)
          'shieldedInstanceConfig': shieldedInstanceConfig!,
        if (state != null) 'state': state!,
        if (symptoms != null) 'symptoms': symptoms!,
        if (tags != null) 'tags': tags!,
      };
}

/// Details of the TPU node(s) being requested.
///
/// Users can request either a single node or multiple nodes. NodeSpec provides
/// the specification for node(s) to be created.
class NodeSpec {
  /// Fields to specify in case of multislice request.
  ///
  /// Optional.
  MultisliceParams? multisliceParams;

  /// The node.
  ///
  /// Required.
  Node? node;

  /// The unqualified resource name.
  ///
  /// Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format. This is only
  /// specified when requesting a single node. In case of multislice requests,
  /// multislice_params must be populated instead.
  ///
  /// Optional.
  core.String? nodeId;

  /// The parent resource name.
  ///
  /// Required.
  core.String? parent;

  NodeSpec({
    this.multisliceParams,
    this.node,
    this.nodeId,
    this.parent,
  });

  NodeSpec.fromJson(core.Map json_)
      : this(
          multisliceParams: json_.containsKey('multisliceParams')
              ? MultisliceParams.fromJson(json_['multisliceParams']
                  as core.Map<core.String, core.dynamic>)
              : null,
          node: json_.containsKey('node')
              ? Node.fromJson(
                  json_['node'] as core.Map<core.String, core.dynamic>)
              : null,
          nodeId: json_.containsKey('nodeId')
              ? json_['nodeId'] as core.String
              : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (multisliceParams != null) 'multisliceParams': multisliceParams!,
        if (node != null) 'node': node!,
        if (nodeId != null) 'nodeId': nodeId!,
        if (parent != null) 'parent': parent!,
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

/// Further data for the provisioning state.
typedef ProvisioningData = $Empty;

/// A QueuedResource represents a request for resources that will be placed in a
/// queue and fulfilled when the necessary resources are available.
class QueuedResource {
  /// The time when the QueuedResource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The Guaranteed tier
  ///
  /// Optional.
  Guaranteed? guaranteed;

  /// The name of the QueuedResource.
  ///
  /// Output only. Immutable.
  core.String? name;

  /// The queueing policy of the QueuedRequest.
  ///
  /// Optional.
  QueueingPolicy? queueingPolicy;

  /// Name of the reservation in which the resource should be provisioned.
  ///
  /// Format: projects/{project}/locations/{zone}/reservations/{reservation}
  ///
  /// Optional.
  core.String? reservationName;

  /// The Spot tier.
  ///
  /// Optional.
  Spot? spot;

  /// State of the QueuedResource request.
  ///
  /// Output only.
  QueuedResourceState? state;

  /// Defines a TPU resource.
  ///
  /// Optional.
  Tpu? tpu;

  QueuedResource({
    this.createTime,
    this.guaranteed,
    this.name,
    this.queueingPolicy,
    this.reservationName,
    this.spot,
    this.state,
    this.tpu,
  });

  QueuedResource.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          guaranteed: json_.containsKey('guaranteed')
              ? Guaranteed.fromJson(
                  json_['guaranteed'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          queueingPolicy: json_.containsKey('queueingPolicy')
              ? QueueingPolicy.fromJson(json_['queueingPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reservationName: json_.containsKey('reservationName')
              ? json_['reservationName'] as core.String
              : null,
          spot: json_.containsKey('spot')
              ? Spot.fromJson(
                  json_['spot'] as core.Map<core.String, core.dynamic>)
              : null,
          state: json_.containsKey('state')
              ? QueuedResourceState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>)
              : null,
          tpu: json_.containsKey('tpu')
              ? Tpu.fromJson(
                  json_['tpu'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (guaranteed != null) 'guaranteed': guaranteed!,
        if (name != null) 'name': name!,
        if (queueingPolicy != null) 'queueingPolicy': queueingPolicy!,
        if (reservationName != null) 'reservationName': reservationName!,
        if (spot != null) 'spot': spot!,
        if (state != null) 'state': state!,
        if (tpu != null) 'tpu': tpu!,
      };
}

/// QueuedResourceState defines the details of the QueuedResource request.
class QueuedResourceState {
  /// Further data for the accepted state.
  ///
  /// Output only.
  AcceptedData? acceptedData;

  /// Further data for the active state.
  ///
  /// Output only.
  ActiveData? activeData;

  /// Further data for the creating state.
  ///
  /// Output only.
  CreatingData? creatingData;

  /// Further data for the deleting state.
  ///
  /// Output only.
  DeletingData? deletingData;

  /// Further data for the failed state.
  ///
  /// Output only.
  FailedData? failedData;

  /// Further data for the provisioning state.
  ///
  /// Output only.
  ProvisioningData? provisioningData;

  /// State of the QueuedResource request.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State of the QueuedResource request is not
  /// known/set.
  /// - "CREATING" : The QueuedResource request has been received. We're still
  /// working on determining if we will be able to honor this request.
  /// - "ACCEPTED" : The QueuedResource request has passed initial
  /// validation/admission control and has been persisted in the queue.
  /// - "PROVISIONING" : The QueuedResource request has been selected. The
  /// associated resources are currently being provisioned (or very soon will
  /// begin provisioning).
  /// - "FAILED" : The request could not be completed. This may be due to some
  /// late-discovered problem with the request itself, or due to unavailability
  /// of resources within the constraints of the request (e.g., the 'valid
  /// until' start timing constraint expired).
  /// - "DELETING" : The QueuedResource is being deleted.
  /// - "ACTIVE" : The resources specified in the QueuedResource request have
  /// been provisioned and are ready for use by the end-user/consumer.
  /// - "SUSPENDING" : The resources specified in the QueuedResource request are
  /// being deleted. This may have been initiated by the user, or the Cloud TPU
  /// service. Inspect the state data for more details.
  /// - "SUSPENDED" : The resources specified in the QueuedResource request have
  /// been deleted.
  /// - "WAITING_FOR_RESOURCES" : The QueuedResource request has passed initial
  /// validation and has been persisted in the queue. It will remain in this
  /// state until there are sufficient free resources to begin provisioning your
  /// request. Wait times will vary significantly depending on demand levels.
  /// When demand is high, not all requests can be immediately provisioned. If
  /// you need more reliable obtainability of TPUs consider purchasing a
  /// reservation. To put a limit on how long you are willing to wait, use
  /// [timing constraints](https://cloud.google.com/tpu/docs/queued-resources#request_a_queued_resource_before_a_specified_time).
  core.String? state;

  /// The initiator of the QueuedResources's current state.
  ///
  /// Used to indicate whether the SUSPENDING/SUSPENDED state was initiated by
  /// the user or the service.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_INITIATOR_UNSPECIFIED" : The state initiator is unspecified.
  /// - "USER" : The current QueuedResource state was initiated by the user.
  /// - "SERVICE" : The current QueuedResource state was initiated by the
  /// service.
  core.String? stateInitiator;

  /// Further data for the suspended state.
  ///
  /// Output only.
  SuspendedData? suspendedData;

  /// Further data for the suspending state.
  ///
  /// Output only.
  SuspendingData? suspendingData;

  QueuedResourceState({
    this.acceptedData,
    this.activeData,
    this.creatingData,
    this.deletingData,
    this.failedData,
    this.provisioningData,
    this.state,
    this.stateInitiator,
    this.suspendedData,
    this.suspendingData,
  });

  QueuedResourceState.fromJson(core.Map json_)
      : this(
          acceptedData: json_.containsKey('acceptedData')
              ? AcceptedData.fromJson(
                  json_['acceptedData'] as core.Map<core.String, core.dynamic>)
              : null,
          activeData: json_.containsKey('activeData')
              ? ActiveData.fromJson(
                  json_['activeData'] as core.Map<core.String, core.dynamic>)
              : null,
          creatingData: json_.containsKey('creatingData')
              ? CreatingData.fromJson(
                  json_['creatingData'] as core.Map<core.String, core.dynamic>)
              : null,
          deletingData: json_.containsKey('deletingData')
              ? DeletingData.fromJson(
                  json_['deletingData'] as core.Map<core.String, core.dynamic>)
              : null,
          failedData: json_.containsKey('failedData')
              ? FailedData.fromJson(
                  json_['failedData'] as core.Map<core.String, core.dynamic>)
              : null,
          provisioningData: json_.containsKey('provisioningData')
              ? ProvisioningData.fromJson(json_['provisioningData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateInitiator: json_.containsKey('stateInitiator')
              ? json_['stateInitiator'] as core.String
              : null,
          suspendedData: json_.containsKey('suspendedData')
              ? SuspendedData.fromJson(
                  json_['suspendedData'] as core.Map<core.String, core.dynamic>)
              : null,
          suspendingData: json_.containsKey('suspendingData')
              ? SuspendingData.fromJson(json_['suspendingData']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceptedData != null) 'acceptedData': acceptedData!,
        if (activeData != null) 'activeData': activeData!,
        if (creatingData != null) 'creatingData': creatingData!,
        if (deletingData != null) 'deletingData': deletingData!,
        if (failedData != null) 'failedData': failedData!,
        if (provisioningData != null) 'provisioningData': provisioningData!,
        if (state != null) 'state': state!,
        if (stateInitiator != null) 'stateInitiator': stateInitiator!,
        if (suspendedData != null) 'suspendedData': suspendedData!,
        if (suspendingData != null) 'suspendingData': suspendingData!,
      };
}

/// Defines the policy of the QueuedRequest.
class QueueingPolicy {
  /// A relative time after which resources may be created.
  ///
  /// Optional.
  core.String? validAfterDuration;

  /// An absolute time after which resources may be created.
  ///
  /// Optional.
  core.String? validAfterTime;

  /// An absolute time interval within which resources may be created.
  ///
  /// Optional.
  Interval? validInterval;

  /// A relative time after which resources should not be created.
  ///
  /// If the request cannot be fulfilled by this time the request will be
  /// failed.
  ///
  /// Optional.
  core.String? validUntilDuration;

  /// An absolute time after which resources should not be created.
  ///
  /// If the request cannot be fulfilled by this time the request will be
  /// failed.
  ///
  /// Optional.
  core.String? validUntilTime;

  QueueingPolicy({
    this.validAfterDuration,
    this.validAfterTime,
    this.validInterval,
    this.validUntilDuration,
    this.validUntilTime,
  });

  QueueingPolicy.fromJson(core.Map json_)
      : this(
          validAfterDuration: json_.containsKey('validAfterDuration')
              ? json_['validAfterDuration'] as core.String
              : null,
          validAfterTime: json_.containsKey('validAfterTime')
              ? json_['validAfterTime'] as core.String
              : null,
          validInterval: json_.containsKey('validInterval')
              ? Interval.fromJson(
                  json_['validInterval'] as core.Map<core.String, core.dynamic>)
              : null,
          validUntilDuration: json_.containsKey('validUntilDuration')
              ? json_['validUntilDuration'] as core.String
              : null,
          validUntilTime: json_.containsKey('validUntilTime')
              ? json_['validUntilTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (validAfterDuration != null)
          'validAfterDuration': validAfterDuration!,
        if (validAfterTime != null) 'validAfterTime': validAfterTime!,
        if (validInterval != null) 'validInterval': validInterval!,
        if (validUntilDuration != null)
          'validUntilDuration': validUntilDuration!,
        if (validUntilTime != null) 'validUntilTime': validUntilTime!,
      };
}

/// Request for ResetQueuedResource.
typedef ResetQueuedResourceRequest = $Empty;

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

  /// Defines whether the node is Spot VM.
  ///
  /// Optional.
  core.bool? spot;

  SchedulingConfig({
    this.preemptible,
    this.reserved,
    this.spot,
  });

  SchedulingConfig.fromJson(core.Map json_)
      : this(
          preemptible: json_.containsKey('preemptible')
              ? json_['preemptible'] as core.bool
              : null,
          reserved: json_.containsKey('reserved')
              ? json_['reserved'] as core.bool
              : null,
          spot: json_.containsKey('spot') ? json_['spot'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (preemptible != null) 'preemptible': preemptible!,
        if (reserved != null) 'reserved': reserved!,
        if (spot != null) 'spot': spot!,
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

/// A set of Shielded Instance options.
class ShieldedInstanceConfig {
  /// Defines whether the instance has Secure Boot enabled.
  core.bool? enableSecureBoot;

  ShieldedInstanceConfig({
    this.enableSecureBoot,
  });

  ShieldedInstanceConfig.fromJson(core.Map json_)
      : this(
          enableSecureBoot: json_.containsKey('enableSecureBoot')
              ? json_['enableSecureBoot'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableSecureBoot != null) 'enableSecureBoot': enableSecureBoot!,
      };
}

/// Spot tier definition.
typedef Spot = $Empty;

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

/// Further data for the suspended state.
typedef SuspendedData = $Empty;

/// Further data for the suspending state.
typedef SuspendingData = $Empty;

/// A Symptom instance.
typedef Symptom = $Symptom;

/// Details of the TPU resource(s) being requested.
class Tpu {
  /// The TPU node(s) being requested.
  ///
  /// Optional.
  core.List<NodeSpec>? nodeSpec;

  Tpu({
    this.nodeSpec,
  });

  Tpu.fromJson(core.Map json_)
      : this(
          nodeSpec: json_.containsKey('nodeSpec')
              ? (json_['nodeSpec'] as core.List)
                  .map((value) => NodeSpec.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodeSpec != null) 'nodeSpec': nodeSpec!,
      };
}
