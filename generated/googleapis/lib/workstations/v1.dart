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

/// Cloud Workstations API - v1
///
/// Allows administrators to create managed developer environments in the cloud.
///
/// For more information, see <https://cloud.google.com/workstations>
///
/// Create an instance of [CloudWorkstationsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsWorkstationClustersResource]
///       - [ProjectsLocationsWorkstationClustersWorkstationConfigsResource]
/// -
/// [ProjectsLocationsWorkstationClustersWorkstationConfigsWorkstationsResource]
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

/// Allows administrators to create managed developer environments in the cloud.
class CloudWorkstationsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudWorkstationsApi(http.Client client,
      {core.String rootUrl = 'https://workstations.googleapis.com/',
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

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsWorkstationClustersResource get workstationClusters =>
      ProjectsLocationsWorkstationClustersResource(_requester);

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
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> cancel(
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

class ProjectsLocationsWorkstationClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkstationClustersWorkstationConfigsResource
      get workstationConfigs =>
          ProjectsLocationsWorkstationClustersWorkstationConfigsResource(
              _requester);

  ProjectsLocationsWorkstationClustersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new workstation cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not actually apply it.
  ///
  /// [workstationClusterId] - Required. ID to use for the workstation cluster.
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
    WorkstationCluster request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? workstationClusterId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if (workstationClusterId != null)
        'workstationClusterId': [workstationClusterId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/workstationClusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified workstation cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the workstation cluster to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+$`.
  ///
  /// [etag] - Optional. If set, the request will be rejected if the latest
  /// version of the workstation cluster on the server does not have this ETag.
  ///
  /// [force] - Optional. If set, any workstation configurations and
  /// workstations in the workstation cluster are also deleted. Otherwise, the
  /// request only works if the workstation cluster has no configurations or
  /// workstations.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not apply it.
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
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
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

  /// Returns the requested workstation cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the requested resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkstationCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkstationCluster> get(
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
    return WorkstationCluster.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all workstation clusters in the specified location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return.
  ///
  /// [pageToken] - Optional. next_page_token value returned from a previous
  /// List request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkstationClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkstationClustersResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/workstationClusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkstationClustersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing workstation cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Full name of this workstation cluster.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set, and the workstation cluster is not
  /// found, a new workstation cluster will be created. In this situation,
  /// update_mask is ignored.
  ///
  /// [updateMask] - Required. Mask that specifies which fields in the
  /// workstation cluster should be updated.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not actually apply it.
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
    WorkstationCluster request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
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

class ProjectsLocationsWorkstationClustersWorkstationConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkstationClustersWorkstationConfigsWorkstationsResource
      get workstations =>
          ProjectsLocationsWorkstationClustersWorkstationConfigsWorkstationsResource(
              _requester);

  ProjectsLocationsWorkstationClustersWorkstationConfigsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new workstation configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not actually apply it.
  ///
  /// [workstationConfigId] - Required. ID to use for the workstation
  /// configuration.
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
    WorkstationConfig request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? workstationConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if (workstationConfigId != null)
        'workstationConfigId': [workstationConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workstationConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified workstation configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the workstation configuration to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+$`.
  ///
  /// [etag] - Optional. If set, the request is rejected if the latest version
  /// of the workstation configuration on the server does not have this ETag.
  ///
  /// [force] - Optional. If set, any workstations in the workstation
  /// configuration are also deleted. Otherwise, the request works only if the
  /// workstation configuration has no workstations.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not actually apply it.
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
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
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

  /// Returns the requested workstation configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the requested resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkstationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkstationConfig> get(
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
    return WorkstationConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all workstation configurations in the specified cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return.
  ///
  /// [pageToken] - Optional. next_page_token value returned from a previous
  /// List request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkstationConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkstationConfigsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workstationConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkstationConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all workstation configurations in the specified cluster on which
  /// the caller has the "workstations.workstation.create" permission.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return.
  ///
  /// [pageToken] - Optional. next_page_token value returned from a previous
  /// List request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUsableWorkstationConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUsableWorkstationConfigsResponse> listUsable(
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

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/workstationConfigs:listUsable';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUsableWorkstationConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing workstation configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Full name of this workstation configuration.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set and the workstation configuration is not
  /// found, a new workstation configuration will be created. In this situation,
  /// update_mask is ignored.
  ///
  /// [updateMask] - Required. Mask specifying which fields in the workstation
  /// configuration should be updated.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not actually apply it.
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
    WorkstationConfig request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
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

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWorkstationClustersWorkstationConfigsWorkstationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkstationClustersWorkstationConfigsWorkstationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new workstation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not actually apply it.
  ///
  /// [workstationId] - Required. ID to use for the workstation.
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
    Workstation request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? workstationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if (workstationId != null) 'workstationId': [workstationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workstations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified workstation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the workstation to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+/workstations/\[^/\]+$`.
  ///
  /// [etag] - Optional. If set, the request will be rejected if the latest
  /// version of the workstation on the server does not have this ETag.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not actually apply it.
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
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
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

  /// Returns a short-lived credential that can be used to send authenticated
  /// and authorized traffic to a workstation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [workstation] - Required. Name of the workstation for which the access
  /// token should be generated.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+/workstations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateAccessTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateAccessTokenResponse> generateAccessToken(
    GenerateAccessTokenRequest request,
    core.String workstation, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$workstation') + ':generateAccessToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateAccessTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the requested workstation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the requested resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+/workstations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Workstation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Workstation> get(
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
    return Workstation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+/workstations/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all Workstations using the specified workstation configuration.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return.
  ///
  /// [pageToken] - Optional. next_page_token value returned from a previous
  /// List request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkstationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkstationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/workstations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkstationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all workstations using the specified workstation configuration on
  /// which the caller has the "workstations.workstations.use" permission.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of items to return.
  ///
  /// [pageToken] - Optional. next_page_token value returned from a previous
  /// List request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUsableWorkstationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUsableWorkstationsResponse> listUsable(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/workstations:listUsable';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUsableWorkstationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing workstation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Full name of this workstation.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+/workstations/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set and the workstation configuration is not
  /// found, a new workstation configuration is created. In this situation,
  /// update_mask is ignored.
  ///
  /// [updateMask] - Required. Mask specifying which fields in the workstation
  /// configuration should be updated.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not actually apply it.
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
    Workstation request,
    core.String name, {
    core.bool? allowMissing,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
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

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+/workstations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts running a workstation so that users can connect to it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the workstation to start.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+/workstations/\[^/\]+$`.
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
    StartWorkstationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
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

  /// Stops running a workstation, reducing costs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the workstation to stop.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+/workstations/\[^/\]+$`.
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
    StopWorkstationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
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

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workstationClusters/\[^/\]+/workstationConfigs/\[^/\]+/workstations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An accelerator card attached to the instance.
class Accelerator {
  /// Number of accelerator cards exposed to the instance.
  ///
  /// Optional.
  core.int? count;

  /// Type of accelerator resource to attach to the instance, for example,
  /// `"nvidia-tesla-p100"`.
  ///
  /// Optional.
  core.String? type;

  Accelerator({
    this.count,
    this.type,
  });

  Accelerator.fromJson(core.Map json_)
      : this(
          count: json_.containsKey('count') ? json_['count'] as core.int : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (type != null) 'type': type!,
      };
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// A Docker container.
class Container {
  /// Arguments passed to the entrypoint.
  ///
  /// Optional.
  core.List<core.String>? args;

  /// If set, overrides the default ENTRYPOINT specified by the image.
  ///
  /// Optional.
  core.List<core.String>? command;

  /// Environment variables passed to the container's entrypoint.
  ///
  /// Optional.
  core.Map<core.String, core.String>? env;

  /// A Docker container image that defines a custom environment.
  ///
  /// Cloud Workstations provides a number of
  /// [preconfigured images](https://cloud.google.com/workstations/docs/preconfigured-base-images),
  /// but you can create your own
  /// [custom container images](https://cloud.google.com/workstations/docs/custom-container-images).
  /// If using a private image, the `host.gceInstance.serviceAccount` field must
  /// be specified in the workstation configuration. If using a custom container
  /// image, the service account must have
  /// [Artifact Registry Reader](https://cloud.google.com/artifact-registry/docs/access-control#roles)
  /// permission to pull the specified image. Otherwise, the image must be
  /// publicly accessible.
  ///
  /// Optional.
  core.String? image;

  /// If set, overrides the USER specified in the image with the given uid.
  ///
  /// Optional.
  core.int? runAsUser;

  /// If set, overrides the default DIR specified by the image.
  ///
  /// Optional.
  core.String? workingDir;

  Container({
    this.args,
    this.command,
    this.env,
    this.image,
    this.runAsUser,
    this.workingDir,
  });

  Container.fromJson(core.Map json_)
      : this(
          args: json_.containsKey('args')
              ? (json_['args'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          command: json_.containsKey('command')
              ? (json_['command'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          env: json_.containsKey('env')
              ? (json_['env'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          image:
              json_.containsKey('image') ? json_['image'] as core.String : null,
          runAsUser: json_.containsKey('runAsUser')
              ? json_['runAsUser'] as core.int
              : null,
          workingDir: json_.containsKey('workingDir')
              ? json_['workingDir'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (command != null) 'command': command!,
        if (env != null) 'env': env!,
        if (image != null) 'image': image!,
        if (runAsUser != null) 'runAsUser': runAsUser!,
        if (workingDir != null) 'workingDir': workingDir!,
      };
}

/// A customer-managed encryption key (CMEK) for the Compute Engine resources of
/// the associated workstation configuration.
///
/// Specify the name of your Cloud KMS encryption key and the default service
/// account. We recommend that you use a separate service account and follow
/// [Cloud KMS best practices](https://cloud.google.com/kms/docs/separation-of-duties).
class CustomerEncryptionKey {
  /// The name of the Google Cloud KMS encryption key.
  ///
  /// For example,
  /// `"projects/PROJECT_ID/locations/REGION/keyRings/KEY_RING/cryptoKeys/KEY_NAME"`.
  /// The key must be in the same region as the workstation configuration.
  ///
  /// Immutable.
  core.String? kmsKey;

  /// The service account to use with the specified KMS key.
  ///
  /// We recommend that you use a separate service account and follow KMS best
  /// practices. For more information, see
  /// [Separation of duties](https://cloud.google.com/kms/docs/separation-of-duties)
  /// and `gcloud kms keys add-iam-policy-binding`
  /// \[`--member`\](https://cloud.google.com/sdk/gcloud/reference/kms/keys/add-iam-policy-binding#--member).
  ///
  /// Immutable.
  core.String? kmsKeyServiceAccount;

  CustomerEncryptionKey({
    this.kmsKey,
    this.kmsKeyServiceAccount,
  });

  CustomerEncryptionKey.fromJson(core.Map json_)
      : this(
          kmsKey: json_.containsKey('kmsKey')
              ? json_['kmsKey'] as core.String
              : null,
          kmsKeyServiceAccount: json_.containsKey('kmsKeyServiceAccount')
              ? json_['kmsKeyServiceAccount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKey != null) 'kmsKey': kmsKey!,
        if (kmsKeyServiceAccount != null)
          'kmsKeyServiceAccount': kmsKeyServiceAccount!,
      };
}

/// Configuration options for a custom domain.
class DomainConfig {
  /// Domain used by Workstations for HTTP ingress.
  ///
  /// Immutable.
  core.String? domain;

  DomainConfig({
    this.domain,
  });

  DomainConfig.fromJson(core.Map json_)
      : this(
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
      };
}

/// An ephemeral directory which won't persist across workstation sessions.
///
/// It is freshly created on every workstation start operation.
class EphemeralDirectory {
  /// An EphemeralDirectory backed by a Compute Engine persistent disk.
  GcePersistentDisk? gcePd;

  /// Location of this directory in the running workstation.
  ///
  /// Required.
  core.String? mountPath;

  EphemeralDirectory({
    this.gcePd,
    this.mountPath,
  });

  EphemeralDirectory.fromJson(core.Map json_)
      : this(
          gcePd: json_.containsKey('gcePd')
              ? GcePersistentDisk.fromJson(
                  json_['gcePd'] as core.Map<core.String, core.dynamic>)
              : null,
          mountPath: json_.containsKey('mountPath')
              ? json_['mountPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcePd != null) 'gcePd': gcePd!,
        if (mountPath != null) 'mountPath': mountPath!,
      };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef Expr = $Expr;

/// A set of Compute Engine Confidential VM instance options.
class GceConfidentialInstanceConfig {
  /// Whether the instance has confidential compute enabled.
  ///
  /// Optional.
  core.bool? enableConfidentialCompute;

  GceConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  GceConfidentialInstanceConfig.fromJson(core.Map json_)
      : this(
          enableConfidentialCompute:
              json_.containsKey('enableConfidentialCompute')
                  ? json_['enableConfidentialCompute'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableConfidentialCompute != null)
          'enableConfidentialCompute': enableConfidentialCompute!,
      };
}

/// A runtime using a Compute Engine instance.
class GceInstance {
  /// A list of the type and count of accelerator cards attached to the
  /// instance.
  ///
  /// Optional.
  core.List<Accelerator>? accelerators;

  /// The size of the boot disk for the VM in gigabytes (GB).
  ///
  /// The minimum boot disk size is `30` GB. Defaults to `50` GB.
  ///
  /// Optional.
  core.int? bootDiskSizeGb;

  /// A set of Compute Engine Confidential VM instance options.
  ///
  /// Optional.
  GceConfidentialInstanceConfig? confidentialInstanceConfig;

  /// When set to true, disables public IP addresses for VMs.
  ///
  /// If you disable public IP addresses, you must set up Private Google Access
  /// or Cloud NAT on your network. If you use Private Google Access and you use
  /// `private.googleapis.com` or `restricted.googleapis.com` for Container
  /// Registry and Artifact Registry, make sure that you set up DNS records for
  /// domains `*.gcr.io` and `*.pkg.dev`. Defaults to false (VMs have public IP
  /// addresses).
  ///
  /// Optional.
  core.bool? disablePublicIpAddresses;

  /// Whether to disable SSH access to the VM.
  ///
  /// Optional.
  core.bool? disableSsh;

  /// Whether to enable nested virtualization on Cloud Workstations VMs created
  /// using this workstation configuration.
  ///
  /// Nested virtualization lets you run virtual machine (VM) instances inside
  /// your workstation. Before enabling nested virtualization, consider the
  /// following important considerations. Cloud Workstations instances are
  /// subject to the
  /// [same restrictions as Compute Engine instances](https://cloud.google.com/compute/docs/instances/nested-virtualization/overview#restrictions):
  /// * **Organization policy**: projects, folders, or organizations may be
  /// restricted from creating nested VMs if the **Disable VM nested
  /// virtualization** constraint is enforced in the organization policy. For
  /// more information, see the Compute Engine section,
  /// [Checking whether nested virtualization is allowed](https://cloud.google.com/compute/docs/instances/nested-virtualization/managing-constraint#checking_whether_nested_virtualization_is_allowed).
  /// * **Performance**: nested VMs might experience a 10% or greater decrease
  /// in performance for workloads that are CPU-bound and possibly greater than
  /// a 10% decrease for workloads that are input/output bound. * **Machine
  /// Type**: nested virtualization can only be enabled on workstation
  /// configurations that specify a machine_type in the N1 or N2 machine series.
  /// * **GPUs**: nested virtualization may not be enabled on workstation
  /// configurations with accelerators. * **Operating System**: Because
  /// \[Container-Optimized
  /// OS\](https://cloud.google.com/compute/docs/images/os-details#container-optimized_os_cos)
  /// does not support nested virtualization, when nested virtualization is
  /// enabled, the underlying Compute Engine VM instances boot from an
  /// [Ubuntu LTS](https://cloud.google.com/compute/docs/images/os-details#ubuntu_lts)
  /// image.
  ///
  /// Optional.
  core.bool? enableNestedVirtualization;

  /// The type of machine to use for VM instances—for example,
  /// `"e2-standard-4"`.
  ///
  /// For more information about machine types that Cloud Workstations supports,
  /// see the list of
  /// [available machine types](https://cloud.google.com/workstations/docs/available-machine-types).
  ///
  /// Optional.
  core.String? machineType;

  /// The number of VMs that the system should keep idle so that new
  /// workstations can be started quickly for new users.
  ///
  /// Defaults to `0` in the API.
  ///
  /// Optional.
  core.int? poolSize;

  /// Number of instances currently available in the pool for faster workstation
  /// startup.
  ///
  /// Output only.
  core.int? pooledInstances;

  /// The email address of the service account for Cloud Workstations VMs
  /// created with this configuration.
  ///
  /// When specified, be sure that the service account has
  /// `logginglogEntries.create` permission on the project so it can write logs
  /// out to Cloud Logging. If using a custom container image, the service
  /// account must have
  /// [Artifact Registry Reader](https://cloud.google.com/artifact-registry/docs/access-control#roles)
  /// permission to pull the specified image. If you as the administrator want
  /// to be able to `ssh` into the underlying VM, you need to set this value to
  /// a service account for which you have the `iam.serviceAccounts.actAs`
  /// permission. Conversely, if you don't want anyone to be able to `ssh` into
  /// the underlying VM, use a service account where no one has that permission.
  /// If not set, VMs run with a service account provided by the Cloud
  /// Workstations service, and the image must be publicly accessible.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// Scopes to grant to the service_account.
  ///
  /// Various scopes are automatically added based on feature usage. When
  /// specified, users of workstations under this configuration must have
  /// `iam.serviceAccounts.actAs` on the service account.
  ///
  /// Optional.
  core.List<core.String>? serviceAccountScopes;

  /// A set of Compute Engine Shielded instance options.
  ///
  /// Optional.
  GceShieldedInstanceConfig? shieldedInstanceConfig;

  /// Network tags to add to the Compute Engine VMs backing the workstations.
  ///
  /// This option applies
  /// [network tags](https://cloud.google.com/vpc/docs/add-remove-network-tags)
  /// to VMs created with this configuration. These network tags enable the
  /// creation of
  /// [firewall rules](https://cloud.google.com/workstations/docs/configure-firewall-rules).
  ///
  /// Optional.
  core.List<core.String>? tags;

  GceInstance({
    this.accelerators,
    this.bootDiskSizeGb,
    this.confidentialInstanceConfig,
    this.disablePublicIpAddresses,
    this.disableSsh,
    this.enableNestedVirtualization,
    this.machineType,
    this.poolSize,
    this.pooledInstances,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.tags,
  });

  GceInstance.fromJson(core.Map json_)
      : this(
          accelerators: json_.containsKey('accelerators')
              ? (json_['accelerators'] as core.List)
                  .map((value) => Accelerator.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bootDiskSizeGb: json_.containsKey('bootDiskSizeGb')
              ? json_['bootDiskSizeGb'] as core.int
              : null,
          confidentialInstanceConfig:
              json_.containsKey('confidentialInstanceConfig')
                  ? GceConfidentialInstanceConfig.fromJson(
                      json_['confidentialInstanceConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          disablePublicIpAddresses:
              json_.containsKey('disablePublicIpAddresses')
                  ? json_['disablePublicIpAddresses'] as core.bool
                  : null,
          disableSsh: json_.containsKey('disableSsh')
              ? json_['disableSsh'] as core.bool
              : null,
          enableNestedVirtualization:
              json_.containsKey('enableNestedVirtualization')
                  ? json_['enableNestedVirtualization'] as core.bool
                  : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          poolSize: json_.containsKey('poolSize')
              ? json_['poolSize'] as core.int
              : null,
          pooledInstances: json_.containsKey('pooledInstances')
              ? json_['pooledInstances'] as core.int
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          serviceAccountScopes: json_.containsKey('serviceAccountScopes')
              ? (json_['serviceAccountScopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          shieldedInstanceConfig: json_.containsKey('shieldedInstanceConfig')
              ? GceShieldedInstanceConfig.fromJson(
                  json_['shieldedInstanceConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accelerators != null) 'accelerators': accelerators!,
        if (bootDiskSizeGb != null) 'bootDiskSizeGb': bootDiskSizeGb!,
        if (confidentialInstanceConfig != null)
          'confidentialInstanceConfig': confidentialInstanceConfig!,
        if (disablePublicIpAddresses != null)
          'disablePublicIpAddresses': disablePublicIpAddresses!,
        if (disableSsh != null) 'disableSsh': disableSsh!,
        if (enableNestedVirtualization != null)
          'enableNestedVirtualization': enableNestedVirtualization!,
        if (machineType != null) 'machineType': machineType!,
        if (poolSize != null) 'poolSize': poolSize!,
        if (pooledInstances != null) 'pooledInstances': pooledInstances!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (serviceAccountScopes != null)
          'serviceAccountScopes': serviceAccountScopes!,
        if (shieldedInstanceConfig != null)
          'shieldedInstanceConfig': shieldedInstanceConfig!,
        if (tags != null) 'tags': tags!,
      };
}

/// An EphemeralDirectory is backed by a Compute Engine persistent disk.
class GcePersistentDisk {
  /// Type of the disk to use.
  ///
  /// Defaults to `"pd-standard"`.
  ///
  /// Optional.
  core.String? diskType;

  /// Whether the disk is read only.
  ///
  /// If true, the disk may be shared by multiple VMs and source_snapshot must
  /// be set.
  ///
  /// Optional.
  core.bool? readOnly;

  /// Name of the disk image to use as the source for the disk.
  ///
  /// Must be empty if source_snapshot is set. Updating source_image will update
  /// content in the ephemeral directory after the workstation is restarted.
  /// This field is mutable.
  ///
  /// Optional.
  core.String? sourceImage;

  /// Name of the snapshot to use as the source for the disk.
  ///
  /// Must be empty if source_image is set. Must be empty if read_only is false.
  /// Updating source_snapshot will update content in the ephemeral directory
  /// after the workstation is restarted. This field is mutable.
  ///
  /// Optional.
  core.String? sourceSnapshot;

  GcePersistentDisk({
    this.diskType,
    this.readOnly,
    this.sourceImage,
    this.sourceSnapshot,
  });

  GcePersistentDisk.fromJson(core.Map json_)
      : this(
          diskType: json_.containsKey('diskType')
              ? json_['diskType'] as core.String
              : null,
          readOnly: json_.containsKey('readOnly')
              ? json_['readOnly'] as core.bool
              : null,
          sourceImage: json_.containsKey('sourceImage')
              ? json_['sourceImage'] as core.String
              : null,
          sourceSnapshot: json_.containsKey('sourceSnapshot')
              ? json_['sourceSnapshot'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskType != null) 'diskType': diskType!,
        if (readOnly != null) 'readOnly': readOnly!,
        if (sourceImage != null) 'sourceImage': sourceImage!,
        if (sourceSnapshot != null) 'sourceSnapshot': sourceSnapshot!,
      };
}

/// A Persistent Directory backed by a Compute Engine regional persistent disk.
///
/// The persistent_directories field is repeated, but it may contain only one
/// entry. It creates a
/// [persistent disk](https://cloud.google.com/compute/docs/disks/persistent-disks)
/// that mounts to the workstation VM at `/home` when the session starts and
/// detaches when the session ends. If this field is empty, workstations created
/// with this configuration do not have a persistent home directory.
class GceRegionalPersistentDisk {
  /// The
  /// [type of the persistent disk](https://cloud.google.com/compute/docs/disks#disk-types)
  /// for the home directory.
  ///
  /// Defaults to `"pd-standard"`.
  ///
  /// Optional.
  core.String? diskType;

  /// Type of file system that the disk should be formatted with.
  ///
  /// The workstation image must support this file system type. Must be empty if
  /// source_snapshot is set. Defaults to `"ext4"`.
  ///
  /// Optional.
  core.String? fsType;

  /// Whether the persistent disk should be deleted when the workstation is
  /// deleted.
  ///
  /// Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RECLAIM_POLICY_UNSPECIFIED" : Do not use.
  /// - "DELETE" : Delete the persistent disk when deleting the workstation.
  /// - "RETAIN" : Keep the persistent disk when deleting the workstation. An
  /// administrator must manually delete the disk.
  core.String? reclaimPolicy;

  /// The GB capacity of a persistent home directory for each workstation
  /// created with this configuration.
  ///
  /// Must be empty if source_snapshot is set. Valid values are `10`, `50`,
  /// `100`, `200`, `500`, or `1000`. Defaults to `200`. If less than `200` GB,
  /// the disk_type must be `"pd-balanced"` or `"pd-ssd"`.
  ///
  /// Optional.
  core.int? sizeGb;

  /// Name of the snapshot to use as the source for the disk.
  ///
  /// If set, size_gb and fs_type must be empty.
  ///
  /// Optional.
  core.String? sourceSnapshot;

  GceRegionalPersistentDisk({
    this.diskType,
    this.fsType,
    this.reclaimPolicy,
    this.sizeGb,
    this.sourceSnapshot,
  });

  GceRegionalPersistentDisk.fromJson(core.Map json_)
      : this(
          diskType: json_.containsKey('diskType')
              ? json_['diskType'] as core.String
              : null,
          fsType: json_.containsKey('fsType')
              ? json_['fsType'] as core.String
              : null,
          reclaimPolicy: json_.containsKey('reclaimPolicy')
              ? json_['reclaimPolicy'] as core.String
              : null,
          sizeGb:
              json_.containsKey('sizeGb') ? json_['sizeGb'] as core.int : null,
          sourceSnapshot: json_.containsKey('sourceSnapshot')
              ? json_['sourceSnapshot'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskType != null) 'diskType': diskType!,
        if (fsType != null) 'fsType': fsType!,
        if (reclaimPolicy != null) 'reclaimPolicy': reclaimPolicy!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
        if (sourceSnapshot != null) 'sourceSnapshot': sourceSnapshot!,
      };
}

/// A set of Compute Engine Shielded instance options.
class GceShieldedInstanceConfig {
  /// Whether the instance has integrity monitoring enabled.
  ///
  /// Optional.
  core.bool? enableIntegrityMonitoring;

  /// Whether the instance has Secure Boot enabled.
  ///
  /// Optional.
  core.bool? enableSecureBoot;

  /// Whether the instance has the vTPM enabled.
  ///
  /// Optional.
  core.bool? enableVtpm;

  GceShieldedInstanceConfig({
    this.enableIntegrityMonitoring,
    this.enableSecureBoot,
    this.enableVtpm,
  });

  GceShieldedInstanceConfig.fromJson(core.Map json_)
      : this(
          enableIntegrityMonitoring:
              json_.containsKey('enableIntegrityMonitoring')
                  ? json_['enableIntegrityMonitoring'] as core.bool
                  : null,
          enableSecureBoot: json_.containsKey('enableSecureBoot')
              ? json_['enableSecureBoot'] as core.bool
              : null,
          enableVtpm: json_.containsKey('enableVtpm')
              ? json_['enableVtpm'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableIntegrityMonitoring != null)
          'enableIntegrityMonitoring': enableIntegrityMonitoring!,
        if (enableSecureBoot != null) 'enableSecureBoot': enableSecureBoot!,
        if (enableVtpm != null) 'enableVtpm': enableVtpm!,
      };
}

/// Request message for GenerateAccessToken.
class GenerateAccessTokenRequest {
  /// Desired expiration time of the access token.
  ///
  /// This value must be at most 24 hours in the future. If a value is not
  /// specified, the token's expiration time will be set to a default value of 1
  /// hour in the future.
  core.String? expireTime;

  /// Desired lifetime duration of the access token.
  ///
  /// This value must be at most 24 hours. If a value is not specified, the
  /// token's lifetime will be set to a default value of 1 hour.
  core.String? ttl;

  GenerateAccessTokenRequest({
    this.expireTime,
    this.ttl,
  });

  GenerateAccessTokenRequest.fromJson(core.Map json_)
      : this(
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          ttl: json_.containsKey('ttl') ? json_['ttl'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// Response message for GenerateAccessToken.
class GenerateAccessTokenResponse {
  /// The generated bearer access token.
  ///
  /// To use this token, include it in an Authorization header of an HTTP
  /// request sent to the associated workstation's hostname—for example,
  /// `Authorization: Bearer `.
  core.String? accessToken;

  /// Time at which the generated token will expire.
  core.String? expireTime;

  GenerateAccessTokenResponse({
    this.accessToken,
    this.expireTime,
  });

  GenerateAccessTokenResponse.fromJson(core.Map json_)
      : this(
          accessToken: json_.containsKey('accessToken')
              ? json_['accessToken'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'accessToken': accessToken!,
        if (expireTime != null) 'expireTime': expireTime!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// Runtime host for a workstation.
class Host {
  /// Specifies a Compute Engine instance as the host.
  GceInstance? gceInstance;

  Host({
    this.gceInstance,
  });

  Host.fromJson(core.Map json_)
      : this(
          gceInstance: json_.containsKey('gceInstance')
              ? GceInstance.fromJson(
                  json_['gceInstance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gceInstance != null) 'gceInstance': gceInstance!,
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

/// Response message for ListUsableWorkstationConfigs.
class ListUsableWorkstationConfigsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Unreachable resources.
  core.List<core.String>? unreachable;

  /// The requested configs.
  core.List<WorkstationConfig>? workstationConfigs;

  ListUsableWorkstationConfigsResponse({
    this.nextPageToken,
    this.unreachable,
    this.workstationConfigs,
  });

  ListUsableWorkstationConfigsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          workstationConfigs: json_.containsKey('workstationConfigs')
              ? (json_['workstationConfigs'] as core.List)
                  .map((value) => WorkstationConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (workstationConfigs != null)
          'workstationConfigs': workstationConfigs!,
      };
}

/// Response message for ListUsableWorkstations.
class ListUsableWorkstationsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Unreachable resources.
  core.List<core.String>? unreachable;

  /// The requested workstations.
  core.List<Workstation>? workstations;

  ListUsableWorkstationsResponse({
    this.nextPageToken,
    this.unreachable,
    this.workstations,
  });

  ListUsableWorkstationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          workstations: json_.containsKey('workstations')
              ? (json_['workstations'] as core.List)
                  .map((value) => Workstation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (workstations != null) 'workstations': workstations!,
      };
}

/// Response message for ListWorkstationClusters.
class ListWorkstationClustersResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Unreachable resources.
  core.List<core.String>? unreachable;

  /// The requested workstation clusters.
  core.List<WorkstationCluster>? workstationClusters;

  ListWorkstationClustersResponse({
    this.nextPageToken,
    this.unreachable,
    this.workstationClusters,
  });

  ListWorkstationClustersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          workstationClusters: json_.containsKey('workstationClusters')
              ? (json_['workstationClusters'] as core.List)
                  .map((value) => WorkstationCluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (workstationClusters != null)
          'workstationClusters': workstationClusters!,
      };
}

/// Response message for ListWorkstationConfigs.
class ListWorkstationConfigsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Unreachable resources.
  core.List<core.String>? unreachable;

  /// The requested configs.
  core.List<WorkstationConfig>? workstationConfigs;

  ListWorkstationConfigsResponse({
    this.nextPageToken,
    this.unreachable,
    this.workstationConfigs,
  });

  ListWorkstationConfigsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          workstationConfigs: json_.containsKey('workstationConfigs')
              ? (json_['workstationConfigs'] as core.List)
                  .map((value) => WorkstationConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (workstationConfigs != null)
          'workstationConfigs': workstationConfigs!,
      };
}

/// Response message for ListWorkstations.
class ListWorkstationsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// Unreachable resources.
  ///
  /// Optional.
  core.List<core.String>? unreachable;

  /// The requested workstations.
  core.List<Workstation>? workstations;

  ListWorkstationsResponse({
    this.nextPageToken,
    this.unreachable,
    this.workstations,
  });

  ListWorkstationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          workstations: json_.containsKey('workstations')
              ? (json_['workstations'] as core.List)
                  .map((value) => Workstation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (workstations != null) 'workstations': workstations!,
      };
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

/// A directory to persist across workstation sessions.
class PersistentDirectory {
  /// A PersistentDirectory backed by a Compute Engine persistent disk.
  GceRegionalPersistentDisk? gcePd;

  /// Location of this directory in the running workstation.
  ///
  /// Optional.
  core.String? mountPath;

  PersistentDirectory({
    this.gcePd,
    this.mountPath,
  });

  PersistentDirectory.fromJson(core.Map json_)
      : this(
          gcePd: json_.containsKey('gcePd')
              ? GceRegionalPersistentDisk.fromJson(
                  json_['gcePd'] as core.Map<core.String, core.dynamic>)
              : null,
          mountPath: json_.containsKey('mountPath')
              ? json_['mountPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcePd != null) 'gcePd': gcePd!,
        if (mountPath != null) 'mountPath': mountPath!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Configuration options for private workstation clusters.
class PrivateClusterConfig {
  /// Additional projects that are allowed to attach to the workstation
  /// cluster's service attachment.
  ///
  /// By default, the workstation cluster's project and the VPC host project (if
  /// different) are allowed.
  ///
  /// Optional.
  core.List<core.String>? allowedProjects;

  /// Hostname for the workstation cluster.
  ///
  /// This field will be populated only when private endpoint is enabled. To
  /// access workstations in the workstation cluster, create a new DNS zone
  /// mapping this domain name to an internal IP address and a forwarding rule
  /// mapping that address to the service attachment.
  ///
  /// Output only.
  core.String? clusterHostname;

  /// Whether Workstations endpoint is private.
  ///
  /// Immutable.
  core.bool? enablePrivateEndpoint;

  /// Service attachment URI for the workstation cluster.
  ///
  /// The service attachemnt is created when private endpoint is enabled. To
  /// access workstations in the workstation cluster, configure access to the
  /// managed service using
  /// [Private Service Connect](https://cloud.google.com/vpc/docs/configure-private-service-connect-services).
  ///
  /// Output only.
  core.String? serviceAttachmentUri;

  PrivateClusterConfig({
    this.allowedProjects,
    this.clusterHostname,
    this.enablePrivateEndpoint,
    this.serviceAttachmentUri,
  });

  PrivateClusterConfig.fromJson(core.Map json_)
      : this(
          allowedProjects: json_.containsKey('allowedProjects')
              ? (json_['allowedProjects'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          clusterHostname: json_.containsKey('clusterHostname')
              ? json_['clusterHostname'] as core.String
              : null,
          enablePrivateEndpoint: json_.containsKey('enablePrivateEndpoint')
              ? json_['enablePrivateEndpoint'] as core.bool
              : null,
          serviceAttachmentUri: json_.containsKey('serviceAttachmentUri')
              ? json_['serviceAttachmentUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedProjects != null) 'allowedProjects': allowedProjects!,
        if (clusterHostname != null) 'clusterHostname': clusterHostname!,
        if (enablePrivateEndpoint != null)
          'enablePrivateEndpoint': enablePrivateEndpoint!,
        if (serviceAttachmentUri != null)
          'serviceAttachmentUri': serviceAttachmentUri!,
      };
}

/// A readiness check to be performed on a workstation.
class ReadinessCheck {
  /// Path to which the request should be sent.
  ///
  /// Optional.
  core.String? path;

  /// Port to which the request should be sent.
  ///
  /// Optional.
  core.int? port;

  ReadinessCheck({
    this.path,
    this.port,
  });

  ReadinessCheck.fromJson(core.Map json_)
      : this(
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
        if (port != null) 'port': port!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for StartWorkstation.
typedef StartWorkstationRequest = $WorkstationRequest;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Request message for StopWorkstation.
typedef StopWorkstationRequest = $WorkstationRequest;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// A single instance of a developer workstation with its own persistent
/// storage.
class Workstation {
  /// Client-specified annotations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Time when this workstation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Time when this workstation was soft-deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Human-readable name for this workstation.
  ///
  /// Optional.
  core.String? displayName;

  /// Environment variables passed to the workstation container's entrypoint.
  ///
  /// Optional.
  core.Map<core.String, core.String>? env;

  /// Checksum computed by the server.
  ///
  /// May be sent on update and delete requests to make sure that the client has
  /// an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// Host to which clients can send HTTPS traffic that will be received by the
  /// workstation.
  ///
  /// Authorized traffic will be received to the workstation as HTTP on port 80.
  /// To send traffic to a different port, clients may prefix the host with the
  /// destination port in the format `{port}-{host}`.
  ///
  /// Output only.
  core.String? host;

  /// The name of the Google Cloud KMS encryption key used to encrypt this
  /// workstation.
  ///
  /// The KMS key can only be configured in the WorkstationConfig. The expected
  /// format is `projects / * /locations / * /keyRings / * /cryptoKeys / * `.
  ///
  /// Output only.
  core.String? kmsKey;

  /// [Labels](https://cloud.google.com/workstations/docs/label-resources) that
  /// are applied to the workstation and that are also propagated to the
  /// underlying Compute Engine resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Full name of this workstation.
  core.String? name;

  /// Indicates whether this workstation is currently being updated to match its
  /// intended state.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Time when this workstation was most recently successfully started,
  /// regardless of the workstation's initial state.
  ///
  /// Output only.
  core.String? startTime;

  /// Current state of the workstation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Do not use.
  /// - "STATE_STARTING" : The workstation is not yet ready to accept requests
  /// from users but will be soon.
  /// - "STATE_RUNNING" : The workstation is ready to accept requests from
  /// users.
  /// - "STATE_STOPPING" : The workstation is being stopped.
  /// - "STATE_STOPPED" : The workstation is stopped and will not be able to
  /// receive requests until it is started.
  core.String? state;

  /// A system-assigned unique identifier for this workstation.
  ///
  /// Output only.
  core.String? uid;

  /// Time when this workstation was most recently updated.
  ///
  /// Output only.
  core.String? updateTime;

  Workstation({
    this.annotations,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.env,
    this.etag,
    this.host,
    this.kmsKey,
    this.labels,
    this.name,
    this.reconciling,
    this.startTime,
    this.state,
    this.uid,
    this.updateTime,
  });

  Workstation.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          env: json_.containsKey('env')
              ? (json_['env'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          kmsKey: json_.containsKey('kmsKey')
              ? json_['kmsKey'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (env != null) 'env': env!,
        if (etag != null) 'etag': etag!,
        if (host != null) 'host': host!,
        if (kmsKey != null) 'kmsKey': kmsKey!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A workstation cluster resource in the Cloud Workstations API.
///
/// Defines a group of workstations in a particular region and the VPC network
/// they're attached to.
class WorkstationCluster {
  /// Client-specified annotations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Status conditions describing the workstation cluster's current state.
  ///
  /// Output only.
  core.List<Status>? conditions;

  /// The private IP address of the control plane for this workstation cluster.
  ///
  /// Workstation VMs need access to this IP address to work with the service,
  /// so make sure that your firewall rules allow egress from the workstation
  /// VMs to this address.
  ///
  /// Output only.
  core.String? controlPlaneIp;

  /// Time when this workstation cluster was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Whether this workstation cluster is in degraded mode, in which case it may
  /// require user action to restore full functionality.
  ///
  /// Details can be found in conditions.
  ///
  /// Output only.
  core.bool? degraded;

  /// Time when this workstation cluster was soft-deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Human-readable name for this workstation cluster.
  ///
  /// Optional.
  core.String? displayName;

  /// Configuration options for a custom domain.
  ///
  /// Optional.
  DomainConfig? domainConfig;

  /// Checksum computed by the server.
  ///
  /// May be sent on update and delete requests to make sure that the client has
  /// an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// [Labels](https://cloud.google.com/workstations/docs/label-resources) that
  /// are applied to the workstation cluster and that are also propagated to the
  /// underlying Compute Engine resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Full name of this workstation cluster.
  core.String? name;

  /// Name of the Compute Engine network in which instances associated with this
  /// workstation cluster will be created.
  ///
  /// Immutable.
  core.String? network;

  /// Configuration for private workstation cluster.
  ///
  /// Optional.
  PrivateClusterConfig? privateClusterConfig;

  /// Indicates whether this workstation cluster is currently being updated to
  /// match its intended state.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Name of the Compute Engine subnetwork in which instances associated with
  /// this workstation cluster will be created.
  ///
  /// Must be part of the subnetwork specified for this workstation cluster.
  ///
  /// Immutable.
  core.String? subnetwork;

  /// A system-assigned unique identifier for this workstation cluster.
  ///
  /// Output only.
  core.String? uid;

  /// Time when this workstation cluster was most recently updated.
  ///
  /// Output only.
  core.String? updateTime;

  WorkstationCluster({
    this.annotations,
    this.conditions,
    this.controlPlaneIp,
    this.createTime,
    this.degraded,
    this.deleteTime,
    this.displayName,
    this.domainConfig,
    this.etag,
    this.labels,
    this.name,
    this.network,
    this.privateClusterConfig,
    this.reconciling,
    this.subnetwork,
    this.uid,
    this.updateTime,
  });

  WorkstationCluster.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => Status.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          controlPlaneIp: json_.containsKey('controlPlaneIp')
              ? json_['controlPlaneIp'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          degraded: json_.containsKey('degraded')
              ? json_['degraded'] as core.bool
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          domainConfig: json_.containsKey('domainConfig')
              ? DomainConfig.fromJson(
                  json_['domainConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          privateClusterConfig: json_.containsKey('privateClusterConfig')
              ? PrivateClusterConfig.fromJson(json_['privateClusterConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (conditions != null) 'conditions': conditions!,
        if (controlPlaneIp != null) 'controlPlaneIp': controlPlaneIp!,
        if (createTime != null) 'createTime': createTime!,
        if (degraded != null) 'degraded': degraded!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (domainConfig != null) 'domainConfig': domainConfig!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (privateClusterConfig != null)
          'privateClusterConfig': privateClusterConfig!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A workstation configuration resource in the Cloud Workstations API.
///
/// Workstation configurations act as templates for workstations. The
/// workstation configuration defines details such as the workstation virtual
/// machine (VM) instance type, persistent storage, container image defining
/// environment, which IDE or Code Editor to use, and more. Administrators and
/// platform teams can also use \[Identity and Access Management
/// (IAM)\](https://cloud.google.com/iam/docs/overview) rules to grant access to
/// teams or to individual developers.
class WorkstationConfig {
  /// Client-specified annotations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Status conditions describing the current resource state.
  ///
  /// Output only.
  core.List<Status>? conditions;

  /// Container that runs upon startup for each workstation using this
  /// workstation configuration.
  ///
  /// Optional.
  Container? container;

  /// Time when this workstation configuration was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Whether this resource is degraded, in which case it may require user
  /// action to restore full functionality.
  ///
  /// See also the conditions field.
  ///
  /// Output only.
  core.bool? degraded;

  /// Time when this workstation configuration was soft-deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Disables support for plain TCP connections in the workstation.
  ///
  /// By default the service supports TCP connections through a websocket relay.
  /// Setting this option to true disables that relay, which prevents the usage
  /// of services that require plain TCP connections, such as SSH. When enabled,
  /// all communication must occur over HTTPS or WSS.
  ///
  /// Optional.
  core.bool? disableTcpConnections;

  /// Human-readable name for this workstation configuration.
  ///
  /// Optional.
  core.String? displayName;

  /// Whether to enable Linux `auditd` logging on the workstation.
  ///
  /// When enabled, a service account must also be specified that has
  /// `logging.buckets.write` permission on the project. Operating system audit
  /// logging is distinct from
  /// [Cloud Audit Logs](https://cloud.google.com/workstations/docs/audit-logging).
  ///
  /// Optional.
  core.bool? enableAuditAgent;

  /// Encrypts resources of this workstation configuration using a
  /// customer-managed encryption key (CMEK).
  ///
  /// If specified, the boot disk of the Compute Engine instance and the
  /// persistent disk are encrypted using this encryption key. If this field is
  /// not set, the disks are encrypted using a generated key. Customer-managed
  /// encryption keys do not protect disk metadata. If the customer-managed
  /// encryption key is rotated, when the workstation instance is stopped, the
  /// system attempts to recreate the persistent disk with the new version of
  /// the key. Be sure to keep older versions of the key until the persistent
  /// disk is recreated. Otherwise, data on the persistent disk might be lost.
  /// If the encryption key is revoked, the workstation session automatically
  /// stops within 7 hours. Immutable after the workstation configuration is
  /// created.
  ///
  /// Immutable.
  CustomerEncryptionKey? encryptionKey;

  /// Ephemeral directories which won't persist across workstation sessions.
  ///
  /// Optional.
  core.List<EphemeralDirectory>? ephemeralDirectories;

  /// Checksum computed by the server.
  ///
  /// May be sent on update and delete requests to make sure that the client has
  /// an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// Runtime host for the workstation.
  ///
  /// Optional.
  Host? host;

  /// Number of seconds to wait before automatically stopping a workstation
  /// after it last received user traffic.
  ///
  /// A value of `"0s"` indicates that Cloud Workstations VMs created with this
  /// configuration should never time out due to idleness. Provide
  /// [duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#duration)
  /// terminated by `s` for seconds—for example, `"7200s"` (2 hours). The
  /// default is `"1200s"` (20 minutes).
  ///
  /// Optional.
  core.String? idleTimeout;

  /// [Labels](https://cloud.google.com/workstations/docs/label-resources) that
  /// are applied to the workstation configuration and that are also propagated
  /// to the underlying Compute Engine resources.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Full name of this workstation configuration.
  core.String? name;

  /// Directories to persist across workstation sessions.
  ///
  /// Optional.
  core.List<PersistentDirectory>? persistentDirectories;

  /// Readiness checks to perform when starting a workstation using this
  /// workstation configuration.
  ///
  /// Mark a workstation as running only after all specified readiness checks
  /// return 200 status codes.
  ///
  /// Optional.
  core.List<ReadinessCheck>? readinessChecks;

  /// Indicates whether this workstation configuration is currently being
  /// updated to match its intended state.
  ///
  /// Output only.
  core.bool? reconciling;

  /// Specifies the zones used to replicate the VM and disk resources within the
  /// region.
  ///
  /// If set, exactly two zones within the workstation cluster's region must be
  /// specified—for example, `['us-central1-a', 'us-central1-f']`. If this field
  /// is empty, two default zones within the region are used. Immutable after
  /// the workstation configuration is created.
  ///
  /// Optional. Immutable.
  core.List<core.String>? replicaZones;

  /// Number of seconds that a workstation can run until it is automatically
  /// shut down.
  ///
  /// We recommend that workstations be shut down daily to reduce costs and so
  /// that security updates can be applied upon restart. The idle_timeout and
  /// running_timeout fields are independent of each other. Note that the
  /// running_timeout field shuts down VMs after the specified time, regardless
  /// of whether or not the VMs are idle. Provide duration terminated by `s` for
  /// seconds—for example, `"54000s"` (15 hours). Defaults to `"43200s"` (12
  /// hours). A value of `"0s"` indicates that workstations using this
  /// configuration should never time out. If encryption_key is set, it must be
  /// greater than `"0s"` and less than `"86400s"` (24 hours). Warning: A value
  /// of `"0s"` indicates that Cloud Workstations VMs created with this
  /// configuration have no maximum running time. This is strongly discouraged
  /// because you incur costs and will not pick up security updates.
  ///
  /// Optional.
  core.String? runningTimeout;

  /// A system-assigned unique identifier for this workstation configuration.
  ///
  /// Output only.
  core.String? uid;

  /// Time when this workstation configuration was most recently updated.
  ///
  /// Output only.
  core.String? updateTime;

  WorkstationConfig({
    this.annotations,
    this.conditions,
    this.container,
    this.createTime,
    this.degraded,
    this.deleteTime,
    this.disableTcpConnections,
    this.displayName,
    this.enableAuditAgent,
    this.encryptionKey,
    this.ephemeralDirectories,
    this.etag,
    this.host,
    this.idleTimeout,
    this.labels,
    this.name,
    this.persistentDirectories,
    this.readinessChecks,
    this.reconciling,
    this.replicaZones,
    this.runningTimeout,
    this.uid,
    this.updateTime,
  });

  WorkstationConfig.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.List)
                  .map((value) => Status.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          container: json_.containsKey('container')
              ? Container.fromJson(
                  json_['container'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          degraded: json_.containsKey('degraded')
              ? json_['degraded'] as core.bool
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          disableTcpConnections: json_.containsKey('disableTcpConnections')
              ? json_['disableTcpConnections'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          enableAuditAgent: json_.containsKey('enableAuditAgent')
              ? json_['enableAuditAgent'] as core.bool
              : null,
          encryptionKey: json_.containsKey('encryptionKey')
              ? CustomerEncryptionKey.fromJson(
                  json_['encryptionKey'] as core.Map<core.String, core.dynamic>)
              : null,
          ephemeralDirectories: json_.containsKey('ephemeralDirectories')
              ? (json_['ephemeralDirectories'] as core.List)
                  .map((value) => EphemeralDirectory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          host: json_.containsKey('host')
              ? Host.fromJson(
                  json_['host'] as core.Map<core.String, core.dynamic>)
              : null,
          idleTimeout: json_.containsKey('idleTimeout')
              ? json_['idleTimeout'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          persistentDirectories: json_.containsKey('persistentDirectories')
              ? (json_['persistentDirectories'] as core.List)
                  .map((value) => PersistentDirectory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          readinessChecks: json_.containsKey('readinessChecks')
              ? (json_['readinessChecks'] as core.List)
                  .map((value) => ReadinessCheck.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reconciling: json_.containsKey('reconciling')
              ? json_['reconciling'] as core.bool
              : null,
          replicaZones: json_.containsKey('replicaZones')
              ? (json_['replicaZones'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          runningTimeout: json_.containsKey('runningTimeout')
              ? json_['runningTimeout'] as core.String
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (conditions != null) 'conditions': conditions!,
        if (container != null) 'container': container!,
        if (createTime != null) 'createTime': createTime!,
        if (degraded != null) 'degraded': degraded!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (disableTcpConnections != null)
          'disableTcpConnections': disableTcpConnections!,
        if (displayName != null) 'displayName': displayName!,
        if (enableAuditAgent != null) 'enableAuditAgent': enableAuditAgent!,
        if (encryptionKey != null) 'encryptionKey': encryptionKey!,
        if (ephemeralDirectories != null)
          'ephemeralDirectories': ephemeralDirectories!,
        if (etag != null) 'etag': etag!,
        if (host != null) 'host': host!,
        if (idleTimeout != null) 'idleTimeout': idleTimeout!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (persistentDirectories != null)
          'persistentDirectories': persistentDirectories!,
        if (readinessChecks != null) 'readinessChecks': readinessChecks!,
        if (reconciling != null) 'reconciling': reconciling!,
        if (replicaZones != null) 'replicaZones': replicaZones!,
        if (runningTimeout != null) 'runningTimeout': runningTimeout!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}
