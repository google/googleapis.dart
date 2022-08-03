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

/// Cloud Memorystore for Memcached API - v1
///
/// Google Cloud Memorystore for Memcached API is used for creating and managing
/// Memcached instances in GCP.
///
/// For more information, see <https://cloud.google.com/memorystore/>
///
/// Create an instance of [CloudMemorystoreForMemcachedApi] to access these
/// resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsInstancesResource]
///     - [ProjectsLocationsOperationsResource]
library memcache.v1;

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

/// Google Cloud Memorystore for Memcached API is used for creating and managing
/// Memcached instances in GCP.
class CloudMemorystoreForMemcachedApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudMemorystoreForMemcachedApi(http.Client client,
      {core.String rootUrl = 'https://memcache.googleapis.com/',
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

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResource(commons.ApiRequester client)
      : _requester = client;

  /// `ApplyParameters` restarts the set of specified nodes in order to update
  /// them to the current set of parameters for the Memcached Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Memcached instance for which
  /// parameter group updates should be applied.
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
  async.Future<Operation> applyParameters(
    ApplyParametersRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':applyParameters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new Instance in a given location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the instance location using the
  /// form: `projects/{project_id}/locations/{location_id}` where `location_id`
  /// refers to a GCP region
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [instanceId] - Required. The logical name of the Memcached instance in the
  /// user project with the following restrictions: * Must contain only
  /// lowercase letters, numbers, and hyphens. * Must start with a letter. *
  /// Must be between 1-40 characters. * Must end with a number or a letter. *
  /// Must be unique within the user project / location. If any of the above are
  /// not met, the API raises an invalid argument error.
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

  /// Deletes a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Memcached instance resource name in the format:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region
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

  /// Gets details of a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Memcached instance resource name in the format:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region
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

  /// Lists Instances in a given location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the instance location using the
  /// form: `projects/{project_id}/locations/{location_id}` where `location_id`
  /// refers to a GCP region
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - List filter. For example, exclude all Memcached instances with
  /// name as my-instance by specifying `"name != my-instance"`.
  ///
  /// [orderBy] - Sort results. Supported values are "name", "name desc" or ""
  /// (unsorted).
  ///
  /// [pageSize] - The maximum number of items to return. If not specified, a
  /// default value of 1000 will be used by the service. Regardless of the
  /// `page_size` value, the response may include a partial list and a caller
  /// should only rely on response's `next_page_token` to determine if there are
  /// more instances left to be queried.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous List
  /// request, if any.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInstancesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing Instance in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Unique name of the resource in this scope including
  /// project and location using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// Note: Memcached instances are managed and addressed at the regional level
  /// so `location_id` here refers to a Google Cloud region; however, users may
  /// choose which zones Memcached nodes should be provisioned in within an
  /// instance. Refer to zones field for more details.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update. * `displayName`
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

  /// Reschedules upcoming maintenance event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [instance] - Required. Memcache instance resource name using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// where `location_id` refers to a GCP region.
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
  async.Future<Operation> rescheduleMaintenance(
    RescheduleMaintenanceRequest request,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$instance') + ':rescheduleMaintenance';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the defined Memcached parameters for an existing instance.
  ///
  /// This method only stages the parameters, it must be followed by
  /// `ApplyParameters` to apply the parameters to nodes of the Memcached
  /// instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Memcached instance for which the
  /// parameters should be updated.
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
  async.Future<Operation> updateParameters(
    UpdateParametersRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':updateParameters';

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

/// Request for ApplyParameters.
class ApplyParametersRequest {
  /// Whether to apply instance-level parameter group to all nodes.
  ///
  /// If set to true, users are restricted from specifying individual nodes, and
  /// `ApplyParameters` updates all nodes within the instance.
  core.bool? applyAll;

  /// Nodes to which the instance-level parameter group is applied.
  core.List<core.String>? nodeIds;

  ApplyParametersRequest({
    this.applyAll,
    this.nodeIds,
  });

  ApplyParametersRequest.fromJson(core.Map json_)
      : this(
          applyAll: json_.containsKey('applyAll')
              ? json_['applyAll'] as core.bool
              : null,
          nodeIds: json_.containsKey('nodeIds')
              ? (json_['nodeIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applyAll != null) 'applyAll': applyAll!,
        if (nodeIds != null) 'nodeIds': nodeIds!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Maintenance policy per instance.
class GoogleCloudMemcacheV1MaintenancePolicy {
  /// The time when the policy was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of what this policy is for.
  ///
  /// Create/Update methods return INVALID_ARGUMENT if the length is greater
  /// than 512.
  core.String? description;

  /// The time when the policy was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Maintenance window that is applied to resources covered by this policy.
  ///
  /// Minimum 1. For the current version, the maximum number of
  /// weekly_maintenance_windows is expected to be one.
  ///
  /// Required.
  core.List<WeeklyMaintenanceWindow>? weeklyMaintenanceWindow;

  GoogleCloudMemcacheV1MaintenancePolicy({
    this.createTime,
    this.description,
    this.updateTime,
    this.weeklyMaintenanceWindow,
  });

  GoogleCloudMemcacheV1MaintenancePolicy.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          weeklyMaintenanceWindow: json_.containsKey('weeklyMaintenanceWindow')
              ? (json_['weeklyMaintenanceWindow'] as core.List)
                  .map((value) => WeeklyMaintenanceWindow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (weeklyMaintenanceWindow != null)
          'weeklyMaintenanceWindow': weeklyMaintenanceWindow!,
      };
}

/// A Memorystore for Memcached instance
class Instance {
  /// The full name of the Google Compute Engine
  /// \[network\](/compute/docs/networks-and-firewalls#networks) to which the
  /// instance is connected.
  ///
  /// If left unspecified, the `default` network will be used.
  core.String? authorizedNetwork;

  /// The time the instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Endpoint for the Discovery API.
  ///
  /// Output only.
  core.String? discoveryEndpoint;

  /// User provided name for the instance, which is only used for display
  /// purposes.
  ///
  /// Cannot be more than 80 characters.
  core.String? displayName;

  /// List of messages that describe the current state of the Memcached
  /// instance.
  core.List<InstanceMessage>? instanceMessages;

  /// Resource labels to represent user-provided metadata.
  ///
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  core.Map<core.String, core.String>? labels;

  /// The maintenance policy for the instance.
  ///
  /// If not provided, the maintenance event will be performed based on
  /// Memorystore internal rollout schedule.
  GoogleCloudMemcacheV1MaintenancePolicy? maintenancePolicy;

  /// Published maintenance schedule.
  ///
  /// Output only.
  MaintenanceSchedule? maintenanceSchedule;

  /// The full version of memcached server running on this instance.
  ///
  /// System automatically determines the full memcached version for an instance
  /// based on the input MemcacheVersion. The full version format will be
  /// "memcached-1.5.16".
  ///
  /// Output only.
  core.String? memcacheFullVersion;

  /// List of Memcached nodes.
  ///
  /// Refer to Node message for more details.
  ///
  /// Output only.
  core.List<Node>? memcacheNodes;

  /// The major version of Memcached software.
  ///
  /// If not provided, latest supported version will be used. Currently the
  /// latest supported major version is `MEMCACHE_1_5`. The minor version will
  /// be automatically determined by our system based on the latest supported
  /// minor version.
  /// Possible string values are:
  /// - "MEMCACHE_VERSION_UNSPECIFIED"
  /// - "MEMCACHE_1_5" : Memcached 1.5 version.
  core.String? memcacheVersion;

  /// Unique name of the resource in this scope including project and location
  /// using the form:
  /// `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
  /// Note: Memcached instances are managed and addressed at the regional level
  /// so `location_id` here refers to a Google Cloud region; however, users may
  /// choose which zones Memcached nodes should be provisioned in within an
  /// instance.
  ///
  /// Refer to zones field for more details.
  ///
  /// Required.
  core.String? name;

  /// Configuration for Memcached nodes.
  ///
  /// Required.
  NodeConfig? nodeConfig;

  /// Number of nodes in the Memcached instance.
  ///
  /// Required.
  core.int? nodeCount;

  /// User defined parameters to apply to the memcached process on each node.
  MemcacheParameters? parameters;

  /// The state of this Memcached instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : Memcached instance is being created.
  /// - "READY" : Memcached instance has been created and ready to be used.
  /// - "UPDATING" : Memcached instance is updating configuration such as
  /// maintenance policy and schedule.
  /// - "DELETING" : Memcached instance is being deleted.
  /// - "PERFORMING_MAINTENANCE" : Memcached instance is going through
  /// maintenance, e.g. data plane rollout.
  core.String? state;

  /// The time the instance was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Zones in which Memcached nodes should be provisioned.
  ///
  /// Memcached nodes will be equally distributed across these zones. If not
  /// provided, the service will by default create nodes in all zones in the
  /// region for the instance.
  core.List<core.String>? zones;

  Instance({
    this.authorizedNetwork,
    this.createTime,
    this.discoveryEndpoint,
    this.displayName,
    this.instanceMessages,
    this.labels,
    this.maintenancePolicy,
    this.maintenanceSchedule,
    this.memcacheFullVersion,
    this.memcacheNodes,
    this.memcacheVersion,
    this.name,
    this.nodeConfig,
    this.nodeCount,
    this.parameters,
    this.state,
    this.updateTime,
    this.zones,
  });

  Instance.fromJson(core.Map json_)
      : this(
          authorizedNetwork: json_.containsKey('authorizedNetwork')
              ? json_['authorizedNetwork'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          discoveryEndpoint: json_.containsKey('discoveryEndpoint')
              ? json_['discoveryEndpoint'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          instanceMessages: json_.containsKey('instanceMessages')
              ? (json_['instanceMessages'] as core.List)
                  .map((value) => InstanceMessage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          maintenancePolicy: json_.containsKey('maintenancePolicy')
              ? GoogleCloudMemcacheV1MaintenancePolicy.fromJson(
                  json_['maintenancePolicy']
                      as core.Map<core.String, core.dynamic>)
              : null,
          maintenanceSchedule: json_.containsKey('maintenanceSchedule')
              ? MaintenanceSchedule.fromJson(json_['maintenanceSchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          memcacheFullVersion: json_.containsKey('memcacheFullVersion')
              ? json_['memcacheFullVersion'] as core.String
              : null,
          memcacheNodes: json_.containsKey('memcacheNodes')
              ? (json_['memcacheNodes'] as core.List)
                  .map((value) => Node.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          memcacheVersion: json_.containsKey('memcacheVersion')
              ? json_['memcacheVersion'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nodeConfig: json_.containsKey('nodeConfig')
              ? NodeConfig.fromJson(
                  json_['nodeConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          nodeCount: json_.containsKey('nodeCount')
              ? json_['nodeCount'] as core.int
              : null,
          parameters: json_.containsKey('parameters')
              ? MemcacheParameters.fromJson(
                  json_['parameters'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          zones: json_.containsKey('zones')
              ? (json_['zones'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizedNetwork != null) 'authorizedNetwork': authorizedNetwork!,
        if (createTime != null) 'createTime': createTime!,
        if (discoveryEndpoint != null) 'discoveryEndpoint': discoveryEndpoint!,
        if (displayName != null) 'displayName': displayName!,
        if (instanceMessages != null) 'instanceMessages': instanceMessages!,
        if (labels != null) 'labels': labels!,
        if (maintenancePolicy != null) 'maintenancePolicy': maintenancePolicy!,
        if (maintenanceSchedule != null)
          'maintenanceSchedule': maintenanceSchedule!,
        if (memcacheFullVersion != null)
          'memcacheFullVersion': memcacheFullVersion!,
        if (memcacheNodes != null) 'memcacheNodes': memcacheNodes!,
        if (memcacheVersion != null) 'memcacheVersion': memcacheVersion!,
        if (name != null) 'name': name!,
        if (nodeConfig != null) 'nodeConfig': nodeConfig!,
        if (nodeCount != null) 'nodeCount': nodeCount!,
        if (parameters != null) 'parameters': parameters!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (zones != null) 'zones': zones!,
      };
}

class InstanceMessage {
  /// A code that correspond to one type of user-facing message.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Message Code not set.
  /// - "ZONE_DISTRIBUTION_UNBALANCED" : Memcached nodes are distributed
  /// unevenly.
  core.String? code;

  /// Message on memcached instance which will be exposed to users.
  core.String? message;

  InstanceMessage({
    this.code,
    this.message,
  });

  InstanceMessage.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (message != null) 'message': message!,
      };
}

/// Response for ListInstances.
class ListInstancesResponse {
  /// A list of Memcached instances in the project in the specified location, or
  /// across all locations.
  ///
  /// If the `location_id` in the parent field of the request is "-", all
  /// regions available to the project are queried, and the results aggregated.
  core.List<Instance>? instances;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListInstancesResponse({
    this.instances,
    this.nextPageToken,
    this.unreachable,
  });

  ListInstancesResponse.fromJson(core.Map json_)
      : this(
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => Instance.fromJson(
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

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

/// Upcoming maintenance schedule.
class MaintenanceSchedule {
  /// The end time of any upcoming scheduled maintenance for this instance.
  ///
  /// Output only.
  core.String? endTime;

  /// The deadline that the maintenance schedule start time can not go beyond,
  /// including reschedule.
  ///
  /// Output only.
  core.String? scheduleDeadlineTime;

  /// The start time of any upcoming scheduled maintenance for this instance.
  ///
  /// Output only.
  core.String? startTime;

  MaintenanceSchedule({
    this.endTime,
    this.scheduleDeadlineTime,
    this.startTime,
  });

  MaintenanceSchedule.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          scheduleDeadlineTime: json_.containsKey('scheduleDeadlineTime')
              ? json_['scheduleDeadlineTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (scheduleDeadlineTime != null)
          'scheduleDeadlineTime': scheduleDeadlineTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

class MemcacheParameters {
  /// The unique ID associated with this set of parameters.
  ///
  /// Users can use this id to determine if the parameters associated with the
  /// instance differ from the parameters associated with the nodes. A
  /// discrepancy between parameter ids can inform users that they may need to
  /// take action to apply parameters on nodes.
  ///
  /// Output only.
  core.String? id;

  /// User defined set of parameters to use in the memcached process.
  core.Map<core.String, core.String>? params;

  MemcacheParameters({
    this.id,
    this.params,
  });

  MemcacheParameters.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          params: json_.containsKey('params')
              ? (json_['params'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (params != null) 'params': params!,
      };
}

class Node {
  /// Hostname or IP address of the Memcached node used by the clients to
  /// connect to the Memcached server on this node.
  ///
  /// Output only.
  core.String? host;

  /// Identifier of the Memcached node.
  ///
  /// The node id does not include project or location like the Memcached
  /// instance name.
  ///
  /// Output only.
  core.String? nodeId;

  /// User defined parameters currently applied to the node.
  MemcacheParameters? parameters;

  /// The port number of the Memcached server on this node.
  ///
  /// Output only.
  core.int? port;

  /// Current state of the Memcached node.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Node state is not set.
  /// - "CREATING" : Node is being created.
  /// - "READY" : Node has been created and ready to be used.
  /// - "DELETING" : Node is being deleted.
  /// - "UPDATING" : Node is being updated.
  core.String? state;

  /// Location (GCP Zone) for the Memcached node.
  ///
  /// Output only.
  core.String? zone;

  Node({
    this.host,
    this.nodeId,
    this.parameters,
    this.port,
    this.state,
    this.zone,
  });

  Node.fromJson(core.Map json_)
      : this(
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          nodeId: json_.containsKey('nodeId')
              ? json_['nodeId'] as core.String
              : null,
          parameters: json_.containsKey('parameters')
              ? MemcacheParameters.fromJson(
                  json_['parameters'] as core.Map<core.String, core.dynamic>)
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (host != null) 'host': host!,
        if (nodeId != null) 'nodeId': nodeId!,
        if (parameters != null) 'parameters': parameters!,
        if (port != null) 'port': port!,
        if (state != null) 'state': state!,
        if (zone != null) 'zone': zone!,
      };
}

/// Configuration for a Memcached Node.
class NodeConfig {
  /// Number of cpus per Memcached node.
  ///
  /// Required.
  core.int? cpuCount;

  /// Memory size in MiB for each Memcached node.
  ///
  /// Required.
  core.int? memorySizeMb;

  NodeConfig({
    this.cpuCount,
    this.memorySizeMb,
  });

  NodeConfig.fromJson(core.Map json_)
      : this(
          cpuCount: json_.containsKey('cpuCount')
              ? json_['cpuCount'] as core.int
              : null,
          memorySizeMb: json_.containsKey('memorySizeMb')
              ? json_['memorySizeMb'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuCount != null) 'cpuCount': cpuCount!,
        if (memorySizeMb != null) 'memorySizeMb': memorySizeMb!,
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

/// Request for RescheduleMaintenance.
class RescheduleMaintenanceRequest {
  /// If reschedule type is SPECIFIC_TIME, must set up schedule_time as well.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RESCHEDULE_TYPE_UNSPECIFIED" : Not set.
  /// - "IMMEDIATE" : If the user wants to schedule the maintenance to happen
  /// now.
  /// - "NEXT_AVAILABLE_WINDOW" : If the user wants to use the existing
  /// maintenance policy to find the next available window.
  /// - "SPECIFIC_TIME" : If the user wants to reschedule the maintenance to a
  /// specific time.
  core.String? rescheduleType;

  /// Timestamp when the maintenance shall be rescheduled to if
  /// reschedule_type=SPECIFIC_TIME, in RFC 3339 format, for example
  /// `2012-11-15T16:19:00.094Z`.
  core.String? scheduleTime;

  RescheduleMaintenanceRequest({
    this.rescheduleType,
    this.scheduleTime,
  });

  RescheduleMaintenanceRequest.fromJson(core.Map json_)
      : this(
          rescheduleType: json_.containsKey('rescheduleType')
              ? json_['rescheduleType'] as core.String
              : null,
          scheduleTime: json_.containsKey('scheduleTime')
              ? json_['scheduleTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rescheduleType != null) 'rescheduleType': rescheduleType!,
        if (scheduleTime != null) 'scheduleTime': scheduleTime!,
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

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Request for UpdateParameters.
class UpdateParametersRequest {
  /// The parameters to apply to the instance.
  MemcacheParameters? parameters;

  /// Mask of fields to update.
  ///
  /// Required.
  core.String? updateMask;

  UpdateParametersRequest({
    this.parameters,
    this.updateMask,
  });

  UpdateParametersRequest.fromJson(core.Map json_)
      : this(
          parameters: json_.containsKey('parameters')
              ? MemcacheParameters.fromJson(
                  json_['parameters'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameters != null) 'parameters': parameters!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Time window specified for weekly operations.
class WeeklyMaintenanceWindow {
  /// Allows to define schedule that runs specified day of the week.
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
  core.String? day;

  /// Duration of the time window.
  ///
  /// Required.
  core.String? duration;

  /// Start time of the window in UTC.
  ///
  /// Required.
  TimeOfDay? startTime;

  WeeklyMaintenanceWindow({
    this.day,
    this.duration,
    this.startTime,
  });

  WeeklyMaintenanceWindow.fromJson(core.Map json_)
      : this(
          day: json_.containsKey('day') ? json_['day'] as core.String : null,
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? TimeOfDay.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (duration != null) 'duration': duration!,
        if (startTime != null) 'startTime': startTime!,
      };
}
