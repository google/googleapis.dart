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

/// Cloud Deploy API - v1
///
/// For more information, see <https://cloud.google.com/deploy/>
///
/// Create an instance of [CloudDeployApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCustomTargetTypesResource]
///     - [ProjectsLocationsDeliveryPipelinesResource]
///       - [ProjectsLocationsDeliveryPipelinesAutomationRunsResource]
///       - [ProjectsLocationsDeliveryPipelinesAutomationsResource]
///       - [ProjectsLocationsDeliveryPipelinesReleasesResource]
///         - [ProjectsLocationsDeliveryPipelinesReleasesRolloutsResource]
/// - [ProjectsLocationsDeliveryPipelinesReleasesRolloutsJobRunsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsTargetsResource]
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

class CloudDeployApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudDeployApi(http.Client client,
      {core.String rootUrl = 'https://clouddeploy.googleapis.com/',
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

  ProjectsLocationsCustomTargetTypesResource get customTargetTypes =>
      ProjectsLocationsCustomTargetTypesResource(_requester);
  ProjectsLocationsDeliveryPipelinesResource get deliveryPipelines =>
      ProjectsLocationsDeliveryPipelinesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsTargetsResource get targets =>
      ProjectsLocationsTargetsResource(_requester);

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

  /// Gets the configuration for a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of requested configuration.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Config].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Config> getConfig(
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
    return Config.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

class ProjectsLocationsCustomTargetTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCustomTargetTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new CustomTargetType in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which the `CustomTargetType`
  /// should be created. Format should be
  /// `projects/{project_id}/locations/{location_name}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [customTargetTypeId] - Required. ID of the `CustomTargetType`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set to true, the request is validated and
  /// the user is provided with an expected result, but no actual change is
  /// made.
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
    CustomTargetType request,
    core.String parent, {
    core.String? customTargetTypeId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customTargetTypeId != null)
        'customTargetTypeId': [customTargetTypeId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customTargetTypes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single CustomTargetType.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `CustomTargetType` to delete. Format
  /// must be
  /// `projects/{project_id}/locations/{location_name}/customTargetTypes/{custom_target_type}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/customTargetTypes/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, then deleting an already
  /// deleted or non-existing `CustomTargetType` will succeed.
  ///
  /// [etag] - Optional. This checksum is computed by the server based on the
  /// value of other fields, and may be sent on update and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set to true, the request is validated but no
  /// actual change is made.
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
    core.bool? allowMissing,
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
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

  /// Gets details of a single CustomTargetType.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `CustomTargetType`. Format must be
  /// `projects/{project_id}/locations/{location_name}/customTargetTypes/{custom_target_type}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/customTargetTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomTargetType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomTargetType> get(
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
    return CustomTargetType.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/customTargetTypes/\[^/\]+$`.
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

  /// Lists CustomTargetTypes in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns this collection of custom target
  /// types. Format must be `projects/{project_id}/locations/{location_name}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter custom target types to be returned. See
  /// https://google.aip.dev/160 for more details.
  ///
  /// [orderBy] - Optional. Field to sort by. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. The maximum number of `CustomTargetType` objects to
  /// return. The service may return fewer than this value. If unspecified, at
  /// most 50 `CustomTargetType` objects will be returned. The maximum value is
  /// 1000; values above 1000 will be set to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListCustomTargetTypes` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other provided parameters match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCustomTargetTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCustomTargetTypesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customTargetTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCustomTargetTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a single CustomTargetType.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. Name of the `CustomTargetType`. Format is
  /// `projects/{project}/locations/{location}/customTargetTypes/a-z{0,62}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/customTargetTypes/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, updating a `CustomTargetType`
  /// that does not exist will result in the creation of a new
  /// `CustomTargetType`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `CustomTargetType` resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it's in the mask. If the user
  /// doesn't provide a mask then all fields are overwritten.
  ///
  /// [validateOnly] - Optional. If set to true, the request is validated and
  /// the user is provided with an expected result, but no actual change is
  /// made.
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
    CustomTargetType request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/customTargetTypes/\[^/\]+$`.
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
}

class ProjectsLocationsDeliveryPipelinesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeliveryPipelinesAutomationRunsResource get automationRuns =>
      ProjectsLocationsDeliveryPipelinesAutomationRunsResource(_requester);
  ProjectsLocationsDeliveryPipelinesAutomationsResource get automations =>
      ProjectsLocationsDeliveryPipelinesAutomationsResource(_requester);
  ProjectsLocationsDeliveryPipelinesReleasesResource get releases =>
      ProjectsLocationsDeliveryPipelinesReleasesResource(_requester);

  ProjectsLocationsDeliveryPipelinesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new DeliveryPipeline in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which the `DeliveryPipeline`
  /// should be created. Format should be
  /// `projects/{project_id}/locations/{location_name}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [deliveryPipelineId] - Required. ID of the `DeliveryPipeline`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set to true, the request is validated and
  /// the user is provided with an expected result, but no actual change is
  /// made.
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
    DeliveryPipeline request,
    core.String parent, {
    core.String? deliveryPipelineId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (deliveryPipelineId != null)
        'deliveryPipelineId': [deliveryPipelineId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/deliveryPipelines';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single DeliveryPipeline.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `DeliveryPipeline` to delete. Format
  /// should be
  /// `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, then deleting an already
  /// deleted or non-existing `DeliveryPipeline` will succeed.
  ///
  /// [etag] - Optional. This checksum is computed by the server based on the
  /// value of other fields, and may be sent on update and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  ///
  /// [force] - Optional. If set to true, all child resources under this
  /// pipeline will also be deleted. Otherwise, the request will only work if
  /// the pipeline has no child resources.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not actually post it.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? force,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
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

  /// Gets details of a single DeliveryPipeline.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `DeliveryPipeline`. Format must be
  /// `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeliveryPipeline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeliveryPipeline> get(
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
    return DeliveryPipeline.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
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

  /// Lists DeliveryPipelines in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of pipelines.
  /// Format must be `projects/{project_id}/locations/{location_name}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter pipelines to be returned. See https://google.aip.dev/160
  /// for more details.
  ///
  /// [orderBy] - Field to sort by. See https://google.aip.dev/132#ordering for
  /// more details.
  ///
  /// [pageSize] - The maximum number of pipelines to return. The service may
  /// return fewer than this value. If unspecified, at most 50 pipelines will be
  /// returned. The maximum value is 1000; values above 1000 will be set to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListDeliveryPipelines` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other provided parameters match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDeliveryPipelinesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDeliveryPipelinesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/deliveryPipelines';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDeliveryPipelinesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single DeliveryPipeline.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. Name of the `DeliveryPipeline`. Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/a-z{0,62}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, updating a `DeliveryPipeline`
  /// that does not exist will result in the creation of a new
  /// `DeliveryPipeline`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `DeliveryPipeline` resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it's in the mask. If the user
  /// doesn't provide a mask then all fields are overwritten.
  ///
  /// [validateOnly] - Optional. If set to true, the request is validated and
  /// the user is provided with an expected result, but no actual change is
  /// made.
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
    DeliveryPipeline request,
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

  /// Creates a `Rollout` to roll back the specified target.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The `DeliveryPipeline` for which the rollback `Rollout`
  /// should be created. Format should be
  /// `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RollbackTargetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RollbackTargetResponse> rollbackTarget(
    RollbackTargetRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':rollbackTarget';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RollbackTargetResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
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

class ProjectsLocationsDeliveryPipelinesAutomationRunsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeliveryPipelinesAutomationRunsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Cancels an AutomationRun.
  ///
  /// The `state` of the `AutomationRun` after cancelling is `CANCELLED`.
  /// `CancelAutomationRun` can be called on AutomationRun in the state
  /// `IN_PROGRESS` and `PENDING`; AutomationRun in a different state returns an
  /// `FAILED_PRECONDITION` error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `AutomationRun`. Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{delivery_pipeline}/automationRuns/{automation_run}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/automationRuns/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CancelAutomationRunResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CancelAutomationRunResponse> cancel(
    CancelAutomationRunRequest request,
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
    return CancelAutomationRunResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single AutomationRun.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `AutomationRun`. Format must be
  /// `projects/{project}/locations/{location}/deliveryPipelines/{delivery_pipeline}/automationRuns/{automation_run}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/automationRuns/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutomationRun].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutomationRun> get(
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
    return AutomationRun.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists AutomationRuns in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent `Delivery Pipeline`, which owns this
  /// collection of automationRuns. Format must be
  /// `projects/{project}/locations/{location}/deliveryPipelines/{delivery_pipeline}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
  ///
  /// [filter] - Filter automationRuns to be returned. All fields can be used in
  /// the filter.
  ///
  /// [orderBy] - Field to sort by.
  ///
  /// [pageSize] - The maximum number of automationRuns to return. The service
  /// may return fewer than this value. If unspecified, at most 50
  /// automationRuns will be returned. The maximum value is 1000; values above
  /// 1000 will be set to 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListAutomationRuns`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other provided parameters match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAutomationRunsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAutomationRunsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/automationRuns';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAutomationRunsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDeliveryPipelinesAutomationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeliveryPipelinesAutomationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Automation in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which the `Automation`
  /// should be created. Format should be
  /// `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
  ///
  /// [automationId] - Required. ID of the `Automation`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set to true, the request is validated and
  /// the user is provided with an expected result, but no actual change is
  /// made.
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
    Automation request,
    core.String parent, {
    core.String? automationId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (automationId != null) 'automationId': [automationId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/automations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Automation resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `Automation` to delete. Format should
  /// be
  /// `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/automations/{automation_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/automations/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, then deleting an already
  /// deleted or non-existing `Automation` will succeed.
  ///
  /// [etag] - Optional. The weak etag of the request. This checksum is computed
  /// by the server based on the value of other fields, and may be sent on
  /// update and delete requests to ensure the client has an up-to-date value
  /// before proceeding.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request and verify whether
  /// the resource exists, but do not actually post it.
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
    core.bool? allowMissing,
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
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

  /// Gets details of a single Automation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `Automation`. Format must be
  /// `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/automations/{automation_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/automations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Automation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Automation> get(
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
    return Automation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Automations in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent `Delivery Pipeline`, which owns this
  /// collection of automations. Format must be
  /// `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
  ///
  /// [filter] - Filter automations to be returned. All fields can be used in
  /// the filter.
  ///
  /// [orderBy] - Field to sort by.
  ///
  /// [pageSize] - The maximum number of automations to return. The service may
  /// return fewer than this value. If unspecified, at most 50 automations will
  /// be returned. The maximum value is 1000; values above 1000 will be set to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListAutomations`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other provided parameters match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAutomationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAutomationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/automations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAutomationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single Automation resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Name of the `Automation`. Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{delivery_pipeline}/automations/{automation}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/automations/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, updating a `Automation` that
  /// does not exist will result in the creation of a new `Automation`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the `Automation` resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it's in the mask. If the user
  /// doesn't provide a mask then all fields are overwritten.
  ///
  /// [validateOnly] - Optional. If set to true, the request is validated and
  /// the user is provided with an expected result, but no actual change is
  /// made.
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
    Automation request,
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

class ProjectsLocationsDeliveryPipelinesReleasesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeliveryPipelinesReleasesRolloutsResource get rollouts =>
      ProjectsLocationsDeliveryPipelinesReleasesRolloutsResource(_requester);

  ProjectsLocationsDeliveryPipelinesReleasesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Abandons a Release in the Delivery Pipeline.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Release. Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AbandonReleaseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AbandonReleaseResponse> abandon(
    AbandonReleaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':abandon';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AbandonReleaseResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new Release in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which the `Release` should
  /// be created. Format should be
  /// `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
  ///
  /// [releaseId] - Required. ID of the `Release`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set to true, the request is validated and
  /// the user is provided with an expected result, but no actual change is
  /// made.
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
    Release request,
    core.String parent, {
    core.String? releaseId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (releaseId != null) 'releaseId': [releaseId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Release.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `Release`. Format must be
  /// `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/releases/{release_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Release> get(
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
    return Release.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Releases in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The `DeliveryPipeline` which owns this collection of
  /// `Release` objects.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter releases to be returned. See
  /// https://google.aip.dev/160 for more details.
  ///
  /// [orderBy] - Optional. Field to sort by. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. The maximum number of `Release` objects to return.
  /// The service may return fewer than this value. If unspecified, at most 50
  /// `Release` objects will be returned. The maximum value is 1000; values
  /// above 1000 will be set to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListReleases` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other provided parameters match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/releases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReleasesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDeliveryPipelinesReleasesRolloutsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeliveryPipelinesReleasesRolloutsJobRunsResource
      get jobRuns =>
          ProjectsLocationsDeliveryPipelinesReleasesRolloutsJobRunsResource(
              _requester);

  ProjectsLocationsDeliveryPipelinesReleasesRolloutsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Advances a Rollout in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Rollout. Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/{rollout}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+/rollouts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdvanceRolloutResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdvanceRolloutResponse> advance(
    AdvanceRolloutRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':advance';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AdvanceRolloutResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Approves a Rollout.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Rollout. Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/{rollout}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+/rollouts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ApproveRolloutResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ApproveRolloutResponse> approve(
    ApproveRolloutRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':approve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ApproveRolloutResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Cancels a Rollout in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Rollout. Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/{rollout}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+/rollouts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CancelRolloutResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CancelRolloutResponse> cancel(
    CancelRolloutRequest request,
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
    return CancelRolloutResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new Rollout in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which the `Rollout` should
  /// be created. Format should be
  /// `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/releases/{release_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [rolloutId] - Required. ID of the `Rollout`.
  ///
  /// [startingPhaseId] - Optional. The starting phase ID for the `Rollout`. If
  /// empty the `Rollout` will start at the first phase.
  ///
  /// [validateOnly] - Optional. If set to true, the request is validated and
  /// the user is provided with an expected result, but no actual change is
  /// made.
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
    core.String? startingPhaseId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (rolloutId != null) 'rolloutId': [rolloutId],
      if (startingPhaseId != null) 'startingPhaseId': [startingPhaseId],
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

  /// Gets details of a single Rollout.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `Rollout`. Format must be
  /// `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/releases/{release_name}/rollouts/{rollout_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+/rollouts/\[^/\]+$`.
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

  /// Ignores the specified Job in a Rollout.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [rollout] - Required. Name of the Rollout. Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/{rollout}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+/rollouts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IgnoreJobResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IgnoreJobResponse> ignoreJob(
    IgnoreJobRequest request,
    core.String rollout, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$rollout') + ':ignoreJob';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IgnoreJobResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Rollouts in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The `Release` which owns this collection of `Rollout`
  /// objects.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter rollouts to be returned. See
  /// https://google.aip.dev/160 for more details.
  ///
  /// [orderBy] - Optional. Field to sort by. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. The maximum number of `Rollout` objects to return.
  /// The service may return fewer than this value. If unspecified, at most 50
  /// `Rollout` objects will be returned. The maximum value is 1000; values
  /// above 1000 will be set to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListRollouts` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other provided parameters match the call that provided the
  /// page token.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
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

  /// Retries the specified Job in a Rollout.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [rollout] - Required. Name of the Rollout. Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/{rollout}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+/rollouts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RetryJobResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RetryJobResponse> retryJob(
    RetryJobRequest request,
    core.String rollout, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$rollout') + ':retryJob';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RetryJobResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDeliveryPipelinesReleasesRolloutsJobRunsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDeliveryPipelinesReleasesRolloutsJobRunsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a single JobRun.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `JobRun`. Format must be
  /// `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/releases/{release_name}/rollouts/{rollout_name}/jobRuns/{job_run_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+/rollouts/\[^/\]+/jobRuns/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JobRun].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JobRun> get(
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
    return JobRun.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists JobRuns in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The `Rollout` which owns this collection of `JobRun`
  /// objects.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+/rollouts/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter results to be returned. See
  /// https://google.aip.dev/160 for more details.
  ///
  /// [orderBy] - Optional. Field to sort by. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. The maximum number of `JobRun` objects to return.
  /// The service may return fewer than this value. If unspecified, at most 50
  /// `JobRun` objects will be returned. The maximum value is 1000; values above
  /// 1000 will be set to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListJobRuns` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other provided parameters match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobRunsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobRunsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobRuns';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobRunsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Terminates a Job Run in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `JobRun`. Format must be
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/{rollout}/jobRuns/{jobRun}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+/rollouts/\[^/\]+/jobRuns/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TerminateJobRunResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TerminateJobRunResponse> terminate(
    TerminateJobRunRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':terminate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TerminateJobRunResponse.fromJson(
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

class ProjectsLocationsTargetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTargetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Target in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which the `Target` should be
  /// created. Format should be
  /// `projects/{project_id}/locations/{location_name}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [targetId] - Required. ID of the `Target`.
  ///
  /// [validateOnly] - Optional. If set to true, the request is validated and
  /// the user is provided with an expected result, but no actual change is
  /// made.
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
    Target request,
    core.String parent, {
    core.String? requestId,
    core.String? targetId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (targetId != null) 'targetId': [targetId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/targets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Target.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the `Target` to delete. Format should be
  /// `projects/{project_id}/locations/{location_name}/targets/{target_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/targets/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, then deleting an already
  /// deleted or non-existing `Target` will succeed.
  ///
  /// [etag] - Optional. This checksum is computed by the server based on the
  /// value of other fields, and may be sent on update and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// review, but do not actually post it.
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
    core.bool? allowMissing,
    core.String? etag,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
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

  /// Gets details of a single Target.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the `Target`. Format must be
  /// `projects/{project_id}/locations/{location_name}/targets/{target_name}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/targets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Target].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Target> get(
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
    return Target.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/targets/\[^/\]+$`.
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

  /// Lists Targets in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of targets.
  /// Format must be `projects/{project_id}/locations/{location_name}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter targets to be returned. See
  /// https://google.aip.dev/160 for more details.
  ///
  /// [orderBy] - Optional. Field to sort by. See
  /// https://google.aip.dev/132#ordering for more details.
  ///
  /// [pageSize] - Optional. The maximum number of `Target` objects to return.
  /// The service may return fewer than this value. If unspecified, at most 50
  /// `Target` objects will be returned. The maximum value is 1000; values above
  /// 1000 will be set to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListTargets` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other provided parameters match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTargetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTargetsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/targets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTargetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single Target.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. Name of the `Target`. Format is
  /// `projects/{project}/locations/{location}/targets/a-z{0,62}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/targets/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, updating a `Target` that does
  /// not exist will result in the creation of a new `Target`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server knows
  /// to ignore the request if it has already been completed. The server
  /// guarantees that for at least 60 minutes after the first request. For
  /// example, consider a situation where you make an initial request and the
  /// request times out. If you make the request again with the same request ID,
  /// the server can check if original operation with the same request ID was
  /// received, and if so, will ignore the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Target resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it's in the mask. If the user doesn't provide
  /// a mask then all fields are overwritten.
  ///
  /// [validateOnly] - Optional. If set to true, the request is validated and
  /// the user is provided with an expected result, but no actual change is
  /// made.
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
    Target request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/targets/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/targets/\[^/\]+$`.
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

/// The request object used by `AbandonRelease`.
typedef AbandonReleaseRequest = $Empty;

/// The response object for `AbandonRelease`.
typedef AbandonReleaseResponse = $Empty;

/// An advanceChildRollout Job.
typedef AdvanceChildRolloutJob = $Empty;

/// AdvanceChildRolloutJobRun contains information specific to a
/// advanceChildRollout `JobRun`.
class AdvanceChildRolloutJobRun {
  /// Name of the `ChildRollout`.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  ///
  /// Output only.
  core.String? rollout;

  /// the ID of the ChildRollout's Phase.
  ///
  /// Output only.
  core.String? rolloutPhaseId;

  AdvanceChildRolloutJobRun({
    this.rollout,
    this.rolloutPhaseId,
  });

  AdvanceChildRolloutJobRun.fromJson(core.Map json_)
      : this(
          rollout: json_.containsKey('rollout')
              ? json_['rollout'] as core.String
              : null,
          rolloutPhaseId: json_.containsKey('rolloutPhaseId')
              ? json_['rolloutPhaseId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rollout != null) 'rollout': rollout!,
        if (rolloutPhaseId != null) 'rolloutPhaseId': rolloutPhaseId!,
      };
}

/// Contains the information of an automated advance-rollout operation.
class AdvanceRolloutOperation {
  /// The phase the rollout will be advanced to.
  ///
  /// Output only.
  core.String? destinationPhase;

  /// The name of the rollout that initiates the `AutomationRun`.
  ///
  /// Output only.
  core.String? rollout;

  /// The phase of a deployment that initiated the operation.
  ///
  /// Output only.
  core.String? sourcePhase;

  /// How long the operation will be paused.
  ///
  /// Output only.
  core.String? wait;

  AdvanceRolloutOperation({
    this.destinationPhase,
    this.rollout,
    this.sourcePhase,
    this.wait,
  });

  AdvanceRolloutOperation.fromJson(core.Map json_)
      : this(
          destinationPhase: json_.containsKey('destinationPhase')
              ? json_['destinationPhase'] as core.String
              : null,
          rollout: json_.containsKey('rollout')
              ? json_['rollout'] as core.String
              : null,
          sourcePhase: json_.containsKey('sourcePhase')
              ? json_['sourcePhase'] as core.String
              : null,
          wait: json_.containsKey('wait') ? json_['wait'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationPhase != null) 'destinationPhase': destinationPhase!,
        if (rollout != null) 'rollout': rollout!,
        if (sourcePhase != null) 'sourcePhase': sourcePhase!,
        if (wait != null) 'wait': wait!,
      };
}

/// The request object used by `AdvanceRollout`.
class AdvanceRolloutRequest {
  /// The phase ID to advance the `Rollout` to.
  ///
  /// Required.
  core.String? phaseId;

  AdvanceRolloutRequest({
    this.phaseId,
  });

  AdvanceRolloutRequest.fromJson(core.Map json_)
      : this(
          phaseId: json_.containsKey('phaseId')
              ? json_['phaseId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phaseId != null) 'phaseId': phaseId!,
      };
}

/// The response object from `AdvanceRollout`.
typedef AdvanceRolloutResponse = $Empty;

/// The `AdvanceRollout` automation rule will automatically advance a successful
/// Rollout to the next phase.
class AdvanceRolloutRule {
  /// Information around the state of the Automation rule.
  ///
  /// Output only.
  AutomationRuleCondition? condition;

  /// ID of the rule.
  ///
  /// This id must be unique in the `Automation` resource to which this rule
  /// belongs. The format is `a-z{0,62}`.
  ///
  /// Required.
  core.String? id;

  /// Proceeds only after phase name matched any one in the list.
  ///
  /// This value must consist of lower-case letters, numbers, and hyphens, start
  /// with a letter and end with a letter or a number, and have a max length of
  /// 63 characters. In other words, it must match the following regex:
  /// `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  ///
  /// Optional.
  core.List<core.String>? sourcePhases;

  /// How long to wait after a rollout is finished.
  ///
  /// Optional.
  core.String? wait;

  AdvanceRolloutRule({
    this.condition,
    this.id,
    this.sourcePhases,
    this.wait,
  });

  AdvanceRolloutRule.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? AutomationRuleCondition.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          sourcePhases: json_.containsKey('sourcePhases')
              ? (json_['sourcePhases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          wait: json_.containsKey('wait') ? json_['wait'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (id != null) 'id': id!,
        if (sourcePhases != null) 'sourcePhases': sourcePhases!,
        if (wait != null) 'wait': wait!,
      };
}

/// Information specifying an Anthos Cluster.
class AnthosCluster {
  /// Membership of the GKE Hub-registered cluster to which to apply the
  /// Skaffold configuration.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/memberships/{membership_name}`.
  core.String? membership;

  AnthosCluster({
    this.membership,
  });

  AnthosCluster.fromJson(core.Map json_)
      : this(
          membership: json_.containsKey('membership')
              ? json_['membership'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (membership != null) 'membership': membership!,
      };
}

/// The request object used by `ApproveRollout`.
class ApproveRolloutRequest {
  /// True = approve; false = reject
  ///
  /// Required.
  core.bool? approved;

  ApproveRolloutRequest({
    this.approved,
  });

  ApproveRolloutRequest.fromJson(core.Map json_)
      : this(
          approved: json_.containsKey('approved')
              ? json_['approved'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approved != null) 'approved': approved!,
      };
}

/// The response object from `ApproveRollout`.
typedef ApproveRolloutResponse = $Empty;

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

/// An `Automation` resource in the Cloud Deploy API.
///
/// An `Automation` enables the automation of manually driven actions for a
/// Delivery Pipeline, which includes Release promotion among Targets, Rollout
/// repair and Rollout deployment strategy advancement. The intention of
/// Automation is to reduce manual intervention in the continuous delivery
/// process.
class Automation {
  /// User annotations.
  ///
  /// These attributes can only be set and used by the user, and not by Cloud
  /// Deploy. Annotations must meet the following constraints: * Annotations are
  /// key/value pairs. * Valid annotation keys have two segments: an optional
  /// prefix and name, separated by a slash (`/`). * The name segment is
  /// required and must be 63 characters or less, beginning and ending with an
  /// alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores
  /// (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If
  /// specified, the prefix must be a DNS subdomain: a series of DNS labels
  /// separated by dots(`.`), not longer than 253 characters in total, followed
  /// by a slash (`/`). See
  /// https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set
  /// for more details.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Time at which the automation was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the `Automation`.
  ///
  /// Max length is 255 characters.
  ///
  /// Optional.
  core.String? description;

  /// The weak etag of the `Automation` resource.
  ///
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// Labels are attributes that can be set and used by both the user and by
  /// Cloud Deploy.
  ///
  /// Labels must meet the following constraints: * Keys and values can contain
  /// only lowercase letters, numeric characters, underscores, and dashes. * All
  /// characters must use UTF-8 encoding, and international characters are
  /// allowed. * Keys must start with a lowercase letter or international
  /// character. * Each resource is limited to a maximum of 64 labels. Both keys
  /// and values are additionally constrained to be \<= 63 characters.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Name of the `Automation`.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{delivery_pipeline}/automations/{automation}`.
  ///
  /// Output only.
  core.String? name;

  /// List of Automation rules associated with the Automation resource.
  ///
  /// Must have at least one rule and limited to 250 rules per Delivery
  /// Pipeline. Note: the order of the rules here is not the same as the order
  /// of execution.
  ///
  /// Required.
  core.List<AutomationRule>? rules;

  /// Selected resources to which the automation will be applied.
  ///
  /// Required.
  AutomationResourceSelector? selector;

  /// Email address of the user-managed IAM service account that creates Cloud
  /// Deploy release and rollout resources.
  ///
  /// Required.
  core.String? serviceAccount;

  /// When Suspended, automation is deactivated from execution.
  ///
  /// Optional.
  core.bool? suspended;

  /// Unique identifier of the `Automation`.
  ///
  /// Output only.
  core.String? uid;

  /// Time at which the automation was updated.
  ///
  /// Output only.
  core.String? updateTime;

  Automation({
    this.annotations,
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.rules,
    this.selector,
    this.serviceAccount,
    this.suspended,
    this.uid,
    this.updateTime,
  });

  Automation.fromJson(core.Map json_)
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
          description: json_.containsKey('description')
              ? json_['description'] as core.String
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
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => AutomationRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          selector: json_.containsKey('selector')
              ? AutomationResourceSelector.fromJson(
                  json_['selector'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          suspended: json_.containsKey('suspended')
              ? json_['suspended'] as core.bool
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (rules != null) 'rules': rules!,
        if (selector != null) 'selector': selector!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (suspended != null) 'suspended': suspended!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// AutomationResourceSelector contains the information to select the resources
/// to which an Automation is going to be applied.
class AutomationResourceSelector {
  /// Contains attributes about a target.
  core.List<TargetAttribute>? targets;

  AutomationResourceSelector({
    this.targets,
  });

  AutomationResourceSelector.fromJson(core.Map json_)
      : this(
          targets: json_.containsKey('targets')
              ? (json_['targets'] as core.List)
                  .map((value) => TargetAttribute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targets != null) 'targets': targets!,
      };
}

/// AutomationRolloutMetadata contains Automation-related actions that were
/// performed on a rollout.
class AutomationRolloutMetadata {
  /// The IDs of the AutomationRuns initiated by an advance rollout rule.
  ///
  /// Output only.
  core.List<core.String>? advanceAutomationRuns;

  /// The current AutomationRun repairing the rollout.
  ///
  /// Output only.
  core.String? currentRepairAutomationRun;

  /// The ID of the AutomationRun initiated by a promote release rule.
  ///
  /// Output only.
  core.String? promoteAutomationRun;

  /// The IDs of the AutomationRuns initiated by a repair rollout rule.
  ///
  /// Output only.
  core.List<core.String>? repairAutomationRuns;

  AutomationRolloutMetadata({
    this.advanceAutomationRuns,
    this.currentRepairAutomationRun,
    this.promoteAutomationRun,
    this.repairAutomationRuns,
  });

  AutomationRolloutMetadata.fromJson(core.Map json_)
      : this(
          advanceAutomationRuns: json_.containsKey('advanceAutomationRuns')
              ? (json_['advanceAutomationRuns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          currentRepairAutomationRun:
              json_.containsKey('currentRepairAutomationRun')
                  ? json_['currentRepairAutomationRun'] as core.String
                  : null,
          promoteAutomationRun: json_.containsKey('promoteAutomationRun')
              ? json_['promoteAutomationRun'] as core.String
              : null,
          repairAutomationRuns: json_.containsKey('repairAutomationRuns')
              ? (json_['repairAutomationRuns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advanceAutomationRuns != null)
          'advanceAutomationRuns': advanceAutomationRuns!,
        if (currentRepairAutomationRun != null)
          'currentRepairAutomationRun': currentRepairAutomationRun!,
        if (promoteAutomationRun != null)
          'promoteAutomationRun': promoteAutomationRun!,
        if (repairAutomationRuns != null)
          'repairAutomationRuns': repairAutomationRuns!,
      };
}

/// `AutomationRule` defines the automation activities.
class AutomationRule {
  /// The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  ///
  /// Optional.
  AdvanceRolloutRule? advanceRolloutRule;

  /// `PromoteReleaseRule` will automatically promote a release from the current
  /// target to a specified target.
  ///
  /// Optional.
  PromoteReleaseRule? promoteReleaseRule;

  /// The `RepairRolloutRule` will automatically repair a failed rollout.
  ///
  /// Optional.
  RepairRolloutRule? repairRolloutRule;

  AutomationRule({
    this.advanceRolloutRule,
    this.promoteReleaseRule,
    this.repairRolloutRule,
  });

  AutomationRule.fromJson(core.Map json_)
      : this(
          advanceRolloutRule: json_.containsKey('advanceRolloutRule')
              ? AdvanceRolloutRule.fromJson(json_['advanceRolloutRule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          promoteReleaseRule: json_.containsKey('promoteReleaseRule')
              ? PromoteReleaseRule.fromJson(json_['promoteReleaseRule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          repairRolloutRule: json_.containsKey('repairRolloutRule')
              ? RepairRolloutRule.fromJson(json_['repairRolloutRule']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advanceRolloutRule != null)
          'advanceRolloutRule': advanceRolloutRule!,
        if (promoteReleaseRule != null)
          'promoteReleaseRule': promoteReleaseRule!,
        if (repairRolloutRule != null) 'repairRolloutRule': repairRolloutRule!,
      };
}

/// `AutomationRuleCondition` contains conditions relevant to an `Automation`
/// rule.
class AutomationRuleCondition {
  /// Details around targets enumerated in the rule.
  ///
  /// Optional.
  TargetsPresentCondition? targetsPresentCondition;

  AutomationRuleCondition({
    this.targetsPresentCondition,
  });

  AutomationRuleCondition.fromJson(core.Map json_)
      : this(
          targetsPresentCondition: json_.containsKey('targetsPresentCondition')
              ? TargetsPresentCondition.fromJson(
                  json_['targetsPresentCondition']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetsPresentCondition != null)
          'targetsPresentCondition': targetsPresentCondition!,
      };
}

/// An `AutomationRun` resource in the Cloud Deploy API.
///
/// An `AutomationRun` represents an execution instance of an automation rule.
class AutomationRun {
  /// Advances a rollout to the next phase.
  ///
  /// Output only.
  AdvanceRolloutOperation? advanceRolloutOperation;

  /// The ID of the automation that initiated the operation.
  ///
  /// Output only.
  core.String? automationId;

  /// Snapshot of the Automation taken at AutomationRun creation time.
  ///
  /// Output only.
  Automation? automationSnapshot;

  /// Time at which the `AutomationRun` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The weak etag of the `AutomationRun` resource.
  ///
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// Time the `AutomationRun` expires.
  ///
  /// An `AutomationRun` expires after 14 days from its creation date.
  ///
  /// Output only.
  core.String? expireTime;

  /// Name of the `AutomationRun`.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{delivery_pipeline}/automationRuns/{automation_run}`.
  ///
  /// Output only.
  core.String? name;

  /// Promotes a release to a specified 'Target'.
  ///
  /// Output only.
  PromoteReleaseOperation? promoteReleaseOperation;

  /// Repairs a failed 'Rollout'.
  ///
  /// Output only.
  RepairRolloutOperation? repairRolloutOperation;

  /// The ID of the automation rule that initiated the operation.
  ///
  /// Output only.
  core.String? ruleId;

  /// Email address of the user-managed IAM service account that performs the
  /// operations against Cloud Deploy resources.
  ///
  /// Output only.
  core.String? serviceAccount;

  /// Current state of the `AutomationRun`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The `AutomationRun` has an unspecified state.
  /// - "SUCCEEDED" : The `AutomationRun` has succeeded.
  /// - "CANCELLED" : The `AutomationRun` was cancelled.
  /// - "FAILED" : The `AutomationRun` has failed.
  /// - "IN_PROGRESS" : The `AutomationRun` is in progress.
  /// - "PENDING" : The `AutomationRun` is pending.
  /// - "ABORTED" : The `AutomationRun` was aborted.
  core.String? state;

  /// Explains the current state of the `AutomationRun`.
  ///
  /// Present only when an explanation is needed.
  ///
  /// Output only.
  core.String? stateDescription;

  /// The ID of the target that represents the promotion stage that initiates
  /// the `AutomationRun`.
  ///
  /// The value of this field is the last segment of a target name.
  ///
  /// Output only.
  core.String? targetId;

  /// Time at which the automationRun was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Earliest time the `AutomationRun` will attempt to resume.
  ///
  /// Wait-time is configured by `wait` in automation rule.
  ///
  /// Output only.
  core.String? waitUntilTime;

  AutomationRun({
    this.advanceRolloutOperation,
    this.automationId,
    this.automationSnapshot,
    this.createTime,
    this.etag,
    this.expireTime,
    this.name,
    this.promoteReleaseOperation,
    this.repairRolloutOperation,
    this.ruleId,
    this.serviceAccount,
    this.state,
    this.stateDescription,
    this.targetId,
    this.updateTime,
    this.waitUntilTime,
  });

  AutomationRun.fromJson(core.Map json_)
      : this(
          advanceRolloutOperation: json_.containsKey('advanceRolloutOperation')
              ? AdvanceRolloutOperation.fromJson(
                  json_['advanceRolloutOperation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          automationId: json_.containsKey('automationId')
              ? json_['automationId'] as core.String
              : null,
          automationSnapshot: json_.containsKey('automationSnapshot')
              ? Automation.fromJson(json_['automationSnapshot']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          promoteReleaseOperation: json_.containsKey('promoteReleaseOperation')
              ? PromoteReleaseOperation.fromJson(
                  json_['promoteReleaseOperation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          repairRolloutOperation: json_.containsKey('repairRolloutOperation')
              ? RepairRolloutOperation.fromJson(json_['repairRolloutOperation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ruleId: json_.containsKey('ruleId')
              ? json_['ruleId'] as core.String
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateDescription: json_.containsKey('stateDescription')
              ? json_['stateDescription'] as core.String
              : null,
          targetId: json_.containsKey('targetId')
              ? json_['targetId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          waitUntilTime: json_.containsKey('waitUntilTime')
              ? json_['waitUntilTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advanceRolloutOperation != null)
          'advanceRolloutOperation': advanceRolloutOperation!,
        if (automationId != null) 'automationId': automationId!,
        if (automationSnapshot != null)
          'automationSnapshot': automationSnapshot!,
        if (createTime != null) 'createTime': createTime!,
        if (etag != null) 'etag': etag!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (name != null) 'name': name!,
        if (promoteReleaseOperation != null)
          'promoteReleaseOperation': promoteReleaseOperation!,
        if (repairRolloutOperation != null)
          'repairRolloutOperation': repairRolloutOperation!,
        if (ruleId != null) 'ruleId': ruleId!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (state != null) 'state': state!,
        if (stateDescription != null) 'stateDescription': stateDescription!,
        if (targetId != null) 'targetId': targetId!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (waitUntilTime != null) 'waitUntilTime': waitUntilTime!,
      };
}

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

/// Description of an a image to use during Skaffold rendering.
class BuildArtifact {
  /// Image name in Skaffold configuration.
  core.String? image;

  /// Image tag to use.
  ///
  /// This will generally be the full path to an image, such as
  /// "gcr.io/my-project/busybox:1.2.3" or
  /// "gcr.io/my-project/busybox@sha256:abc123".
  core.String? tag;

  BuildArtifact({
    this.image,
    this.tag,
  });

  BuildArtifact.fromJson(core.Map json_)
      : this(
          image:
              json_.containsKey('image') ? json_['image'] as core.String : null,
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (image != null) 'image': image!,
        if (tag != null) 'tag': tag!,
      };
}

/// Canary represents the canary deployment strategy.
class Canary {
  /// Configures the progressive based deployment for a Target.
  CanaryDeployment? canaryDeployment;

  /// Configures the progressive based deployment for a Target, but allows
  /// customizing at the phase level where a phase represents each of the
  /// percentage deployments.
  CustomCanaryDeployment? customCanaryDeployment;

  /// Runtime specific configurations for the deployment strategy.
  ///
  /// The runtime configuration is used to determine how Cloud Deploy will split
  /// traffic to enable a progressive deployment.
  ///
  /// Optional.
  RuntimeConfig? runtimeConfig;

  Canary({
    this.canaryDeployment,
    this.customCanaryDeployment,
    this.runtimeConfig,
  });

  Canary.fromJson(core.Map json_)
      : this(
          canaryDeployment: json_.containsKey('canaryDeployment')
              ? CanaryDeployment.fromJson(json_['canaryDeployment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customCanaryDeployment: json_.containsKey('customCanaryDeployment')
              ? CustomCanaryDeployment.fromJson(json_['customCanaryDeployment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          runtimeConfig: json_.containsKey('runtimeConfig')
              ? RuntimeConfig.fromJson(
                  json_['runtimeConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canaryDeployment != null) 'canaryDeployment': canaryDeployment!,
        if (customCanaryDeployment != null)
          'customCanaryDeployment': customCanaryDeployment!,
        if (runtimeConfig != null) 'runtimeConfig': runtimeConfig!,
      };
}

/// CanaryDeployment represents the canary deployment configuration
class CanaryDeployment {
  /// The percentage based deployments that will occur as a part of a `Rollout`.
  ///
  /// List is expected in ascending order and each integer n is 0 \<= n \< 100.
  ///
  /// Required.
  core.List<core.int>? percentages;

  /// Configuration for the postdeploy job of the last phase.
  ///
  /// If this is not configured, there will be no postdeploy job for this phase.
  ///
  /// Optional.
  Postdeploy? postdeploy;

  /// Configuration for the predeploy job of the first phase.
  ///
  /// If this is not configured, there will be no predeploy job for this phase.
  ///
  /// Optional.
  Predeploy? predeploy;

  /// Whether to run verify tests after each percentage deployment.
  core.bool? verify;

  CanaryDeployment({
    this.percentages,
    this.postdeploy,
    this.predeploy,
    this.verify,
  });

  CanaryDeployment.fromJson(core.Map json_)
      : this(
          percentages: json_.containsKey('percentages')
              ? (json_['percentages'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          postdeploy: json_.containsKey('postdeploy')
              ? Postdeploy.fromJson(
                  json_['postdeploy'] as core.Map<core.String, core.dynamic>)
              : null,
          predeploy: json_.containsKey('predeploy')
              ? Predeploy.fromJson(
                  json_['predeploy'] as core.Map<core.String, core.dynamic>)
              : null,
          verify:
              json_.containsKey('verify') ? json_['verify'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (percentages != null) 'percentages': percentages!,
        if (postdeploy != null) 'postdeploy': postdeploy!,
        if (predeploy != null) 'predeploy': predeploy!,
        if (verify != null) 'verify': verify!,
      };
}

/// The request object used by `CancelAutomationRun`.
typedef CancelAutomationRunRequest = $Empty;

/// The response object from `CancelAutomationRun`.
typedef CancelAutomationRunResponse = $Empty;

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// The request object used by `CancelRollout`.
typedef CancelRolloutRequest = $Empty;

/// The response object from `CancelRollout`.
typedef CancelRolloutResponse = $Empty;

/// ChildRollouts job composition
class ChildRolloutJobs {
  /// List of AdvanceChildRolloutJobs
  ///
  /// Output only.
  core.List<Job>? advanceRolloutJobs;

  /// List of CreateChildRolloutJobs
  ///
  /// Output only.
  core.List<Job>? createRolloutJobs;

  ChildRolloutJobs({
    this.advanceRolloutJobs,
    this.createRolloutJobs,
  });

  ChildRolloutJobs.fromJson(core.Map json_)
      : this(
          advanceRolloutJobs: json_.containsKey('advanceRolloutJobs')
              ? (json_['advanceRolloutJobs'] as core.List)
                  .map((value) => Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createRolloutJobs: json_.containsKey('createRolloutJobs')
              ? (json_['createRolloutJobs'] as core.List)
                  .map((value) => Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advanceRolloutJobs != null)
          'advanceRolloutJobs': advanceRolloutJobs!,
        if (createRolloutJobs != null) 'createRolloutJobs': createRolloutJobs!,
      };
}

/// CloudRunConfig contains the Cloud Run runtime configuration.
class CloudRunConfig {
  /// Whether Cloud Deploy should update the traffic stanza in a Cloud Run
  /// Service on the user's behalf to facilitate traffic splitting.
  ///
  /// This is required to be true for CanaryDeployments, but optional for
  /// CustomCanaryDeployments.
  core.bool? automaticTrafficControl;

  /// A list of tags that are added to the canary revision while the canary
  /// phase is in progress.
  ///
  /// Optional.
  core.List<core.String>? canaryRevisionTags;

  /// A list of tags that are added to the prior revision while the canary phase
  /// is in progress.
  ///
  /// Optional.
  core.List<core.String>? priorRevisionTags;

  /// A list of tags that are added to the final stable revision when the stable
  /// phase is applied.
  ///
  /// Optional.
  core.List<core.String>? stableRevisionTags;

  CloudRunConfig({
    this.automaticTrafficControl,
    this.canaryRevisionTags,
    this.priorRevisionTags,
    this.stableRevisionTags,
  });

  CloudRunConfig.fromJson(core.Map json_)
      : this(
          automaticTrafficControl: json_.containsKey('automaticTrafficControl')
              ? json_['automaticTrafficControl'] as core.bool
              : null,
          canaryRevisionTags: json_.containsKey('canaryRevisionTags')
              ? (json_['canaryRevisionTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          priorRevisionTags: json_.containsKey('priorRevisionTags')
              ? (json_['priorRevisionTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          stableRevisionTags: json_.containsKey('stableRevisionTags')
              ? (json_['stableRevisionTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (automaticTrafficControl != null)
          'automaticTrafficControl': automaticTrafficControl!,
        if (canaryRevisionTags != null)
          'canaryRevisionTags': canaryRevisionTags!,
        if (priorRevisionTags != null) 'priorRevisionTags': priorRevisionTags!,
        if (stableRevisionTags != null)
          'stableRevisionTags': stableRevisionTags!,
      };
}

/// Information specifying where to deploy a Cloud Run Service.
class CloudRunLocation {
  /// The location for the Cloud Run Service.
  ///
  /// Format must be `projects/{project}/locations/{location}`.
  ///
  /// Required.
  core.String? location;

  CloudRunLocation({
    this.location,
  });

  CloudRunLocation.fromJson(core.Map json_)
      : this(
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
      };
}

/// CloudRunMetadata contains information from a Cloud Run deployment.
class CloudRunMetadata {
  /// The name of the Cloud Run job that is associated with a `Rollout`.
  ///
  /// Format is `projects/{project}/locations/{location}/jobs/{job_name}`.
  ///
  /// Output only.
  core.String? job;

  /// The Cloud Run Revision id associated with a `Rollout`.
  ///
  /// Output only.
  core.String? revision;

  /// The name of the Cloud Run Service that is associated with a `Rollout`.
  ///
  /// Format is `projects/{project}/locations/{location}/services/{service}`.
  ///
  /// Output only.
  core.String? service;

  /// The Cloud Run Service urls that are associated with a `Rollout`.
  ///
  /// Output only.
  core.List<core.String>? serviceUrls;

  CloudRunMetadata({
    this.job,
    this.revision,
    this.service,
    this.serviceUrls,
  });

  CloudRunMetadata.fromJson(core.Map json_)
      : this(
          job: json_.containsKey('job') ? json_['job'] as core.String : null,
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.String
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
          serviceUrls: json_.containsKey('serviceUrls')
              ? (json_['serviceUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!,
        if (revision != null) 'revision': revision!,
        if (service != null) 'service': service!,
        if (serviceUrls != null) 'serviceUrls': serviceUrls!,
      };
}

/// CloudRunRenderMetadata contains Cloud Run information associated with a
/// `Release` render.
class CloudRunRenderMetadata {
  /// The name of the Cloud Run Service in the rendered manifest.
  ///
  /// Format is `projects/{project}/locations/{location}/services/{service}`.
  ///
  /// Output only.
  core.String? service;

  CloudRunRenderMetadata({
    this.service,
  });

  CloudRunRenderMetadata.fromJson(core.Map json_)
      : this(
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (service != null) 'service': service!,
      };
}

/// Service-wide configuration.
class Config {
  /// Default Skaffold version that is assigned when a Release is created
  /// without specifying a Skaffold version.
  core.String? defaultSkaffoldVersion;

  /// Name of the configuration.
  core.String? name;

  /// All supported versions of Skaffold.
  core.List<SkaffoldVersion>? supportedVersions;

  Config({
    this.defaultSkaffoldVersion,
    this.name,
    this.supportedVersions,
  });

  Config.fromJson(core.Map json_)
      : this(
          defaultSkaffoldVersion: json_.containsKey('defaultSkaffoldVersion')
              ? json_['defaultSkaffoldVersion'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          supportedVersions: json_.containsKey('supportedVersions')
              ? (json_['supportedVersions'] as core.List)
                  .map((value) => SkaffoldVersion.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultSkaffoldVersion != null)
          'defaultSkaffoldVersion': defaultSkaffoldVersion!,
        if (name != null) 'name': name!,
        if (supportedVersions != null) 'supportedVersions': supportedVersions!,
      };
}

/// A createChildRollout Job.
typedef CreateChildRolloutJob = $Empty;

/// CreateChildRolloutJobRun contains information specific to a
/// createChildRollout `JobRun`.
class CreateChildRolloutJobRun {
  /// Name of the `ChildRollout`.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  ///
  /// Output only.
  core.String? rollout;

  /// The ID of the childRollout Phase initiated by this JobRun.
  ///
  /// Output only.
  core.String? rolloutPhaseId;

  CreateChildRolloutJobRun({
    this.rollout,
    this.rolloutPhaseId,
  });

  CreateChildRolloutJobRun.fromJson(core.Map json_)
      : this(
          rollout: json_.containsKey('rollout')
              ? json_['rollout'] as core.String
              : null,
          rolloutPhaseId: json_.containsKey('rolloutPhaseId')
              ? json_['rolloutPhaseId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rollout != null) 'rollout': rollout!,
        if (rolloutPhaseId != null) 'rolloutPhaseId': rolloutPhaseId!,
      };
}

/// CustomCanaryDeployment represents the custom canary deployment
/// configuration.
class CustomCanaryDeployment {
  /// Configuration for each phase in the canary deployment in the order
  /// executed.
  ///
  /// Required.
  core.List<PhaseConfig>? phaseConfigs;

  CustomCanaryDeployment({
    this.phaseConfigs,
  });

  CustomCanaryDeployment.fromJson(core.Map json_)
      : this(
          phaseConfigs: json_.containsKey('phaseConfigs')
              ? (json_['phaseConfigs'] as core.List)
                  .map((value) => PhaseConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phaseConfigs != null) 'phaseConfigs': phaseConfigs!,
      };
}

/// CustomMetadata contains information from a user-defined operation.
class CustomMetadata {
  /// Key-value pairs provided by the user-defined operation.
  ///
  /// Output only.
  core.Map<core.String, core.String>? values;

  CustomMetadata({
    this.values,
  });

  CustomMetadata.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Information specifying a Custom Target.
class CustomTarget {
  /// The name of the CustomTargetType.
  ///
  /// Format must be
  /// `projects/{project}/locations/{location}/customTargetTypes/{custom_target_type}`.
  ///
  /// Required.
  core.String? customTargetType;

  CustomTarget({
    this.customTargetType,
  });

  CustomTarget.fromJson(core.Map json_)
      : this(
          customTargetType: json_.containsKey('customTargetType')
              ? json_['customTargetType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customTargetType != null) 'customTargetType': customTargetType!,
      };
}

/// CustomTargetDeployMetadata contains information from a Custom Target deploy
/// operation.
class CustomTargetDeployMetadata {
  /// Skip message provided in the results of a custom deploy operation.
  ///
  /// Output only.
  core.String? skipMessage;

  CustomTargetDeployMetadata({
    this.skipMessage,
  });

  CustomTargetDeployMetadata.fromJson(core.Map json_)
      : this(
          skipMessage: json_.containsKey('skipMessage')
              ? json_['skipMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (skipMessage != null) 'skipMessage': skipMessage!,
      };
}

/// CustomTargetSkaffoldActions represents the `CustomTargetType` configuration
/// using Skaffold custom actions.
class CustomTargetSkaffoldActions {
  /// The Skaffold custom action responsible for deploy operations.
  ///
  /// Required.
  core.String? deployAction;

  /// List of Skaffold modules Cloud Deploy will include in the Skaffold Config
  /// as required before performing diagnose.
  ///
  /// Optional.
  core.List<SkaffoldModules>? includeSkaffoldModules;

  /// The Skaffold custom action responsible for render operations.
  ///
  /// If not provided then Cloud Deploy will perform the render operations via
  /// `skaffold render`.
  ///
  /// Optional.
  core.String? renderAction;

  CustomTargetSkaffoldActions({
    this.deployAction,
    this.includeSkaffoldModules,
    this.renderAction,
  });

  CustomTargetSkaffoldActions.fromJson(core.Map json_)
      : this(
          deployAction: json_.containsKey('deployAction')
              ? json_['deployAction'] as core.String
              : null,
          includeSkaffoldModules: json_.containsKey('includeSkaffoldModules')
              ? (json_['includeSkaffoldModules'] as core.List)
                  .map((value) => SkaffoldModules.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          renderAction: json_.containsKey('renderAction')
              ? json_['renderAction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployAction != null) 'deployAction': deployAction!,
        if (includeSkaffoldModules != null)
          'includeSkaffoldModules': includeSkaffoldModules!,
        if (renderAction != null) 'renderAction': renderAction!,
      };
}

/// A `CustomTargetType` resource in the Cloud Deploy API.
///
/// A `CustomTargetType` defines a type of custom target that can be referenced
/// in a `Target` in order to facilitate deploying to other systems besides the
/// supported runtimes.
class CustomTargetType {
  /// User annotations.
  ///
  /// These attributes can only be set and used by the user, and not by Cloud
  /// Deploy. See https://google.aip.dev/128#annotations for more details such
  /// as format and size limitations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Time at which the `CustomTargetType` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Configures render and deploy for the `CustomTargetType` using Skaffold
  /// custom actions.
  CustomTargetSkaffoldActions? customActions;

  /// Resource id of the `CustomTargetType`.
  ///
  /// Output only.
  core.String? customTargetTypeId;

  /// Description of the `CustomTargetType`.
  ///
  /// Max length is 255 characters.
  ///
  /// Optional.
  core.String? description;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// Labels are attributes that can be set and used by both the user and by
  /// Cloud Deploy.
  ///
  /// Labels must meet the following constraints: * Keys and values can contain
  /// only lowercase letters, numeric characters, underscores, and dashes. * All
  /// characters must use UTF-8 encoding, and international characters are
  /// allowed. * Keys must start with a lowercase letter or international
  /// character. * Each resource is limited to a maximum of 64 labels. Both keys
  /// and values are additionally constrained to be \<= 128 bytes.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Name of the `CustomTargetType`.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/customTargetTypes/a-z{0,62}`.
  ///
  /// Optional.
  core.String? name;

  /// Unique identifier of the `CustomTargetType`.
  ///
  /// Output only.
  core.String? uid;

  /// Most recent time at which the `CustomTargetType` was updated.
  ///
  /// Output only.
  core.String? updateTime;

  CustomTargetType({
    this.annotations,
    this.createTime,
    this.customActions,
    this.customTargetTypeId,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.uid,
    this.updateTime,
  });

  CustomTargetType.fromJson(core.Map json_)
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
          customActions: json_.containsKey('customActions')
              ? CustomTargetSkaffoldActions.fromJson(
                  json_['customActions'] as core.Map<core.String, core.dynamic>)
              : null,
          customTargetTypeId: json_.containsKey('customTargetTypeId')
              ? json_['customTargetTypeId'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
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
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (createTime != null) 'createTime': createTime!,
        if (customActions != null) 'customActions': customActions!,
        if (customTargetTypeId != null)
          'customTargetTypeId': customTargetTypeId!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
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

/// Execution using the default Cloud Build pool.
class DefaultPool {
  /// Cloud Storage location where execution outputs should be stored.
  ///
  /// This can either be a bucket ("gs://my-bucket") or a path within a bucket
  /// ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the
  /// same region will be used.
  ///
  /// Optional.
  core.String? artifactStorage;

  /// Google service account to use for execution.
  ///
  /// If unspecified, the project execution service account
  /// (-compute@developer.gserviceaccount.com) will be used.
  ///
  /// Optional.
  core.String? serviceAccount;

  DefaultPool({
    this.artifactStorage,
    this.serviceAccount,
  });

  DefaultPool.fromJson(core.Map json_)
      : this(
          artifactStorage: json_.containsKey('artifactStorage')
              ? json_['artifactStorage'] as core.String
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactStorage != null) 'artifactStorage': artifactStorage!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
      };
}

/// A `DeliveryPipeline` resource in the Cloud Deploy API.
///
/// A `DeliveryPipeline` defines a pipeline through which a Skaffold
/// configuration can progress.
class DeliveryPipeline {
  /// User annotations.
  ///
  /// These attributes can only be set and used by the user, and not by Cloud
  /// Deploy.
  core.Map<core.String, core.String>? annotations;

  /// Information around the state of the Delivery Pipeline.
  ///
  /// Output only.
  PipelineCondition? condition;

  /// Time at which the pipeline was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the `DeliveryPipeline`.
  ///
  /// Max length is 255 characters.
  core.String? description;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  core.String? etag;

  /// Labels are attributes that can be set and used by both the user and by
  /// Cloud Deploy.
  ///
  /// Labels must meet the following constraints: * Keys and values can contain
  /// only lowercase letters, numeric characters, underscores, and dashes. * All
  /// characters must use UTF-8 encoding, and international characters are
  /// allowed. * Keys must start with a lowercase letter or international
  /// character. * Each resource is limited to a maximum of 64 labels. Both keys
  /// and values are additionally constrained to be \<= 128 bytes.
  core.Map<core.String, core.String>? labels;

  /// Name of the `DeliveryPipeline`.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/a-z{0,62}`.
  ///
  /// Optional.
  core.String? name;

  /// SerialPipeline defines a sequential set of stages for a
  /// `DeliveryPipeline`.
  SerialPipeline? serialPipeline;

  /// When suspended, no new releases or rollouts can be created, but
  /// in-progress ones will complete.
  core.bool? suspended;

  /// Unique identifier of the `DeliveryPipeline`.
  ///
  /// Output only.
  core.String? uid;

  /// Most recent time at which the pipeline was updated.
  ///
  /// Output only.
  core.String? updateTime;

  DeliveryPipeline({
    this.annotations,
    this.condition,
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.serialPipeline,
    this.suspended,
    this.uid,
    this.updateTime,
  });

  DeliveryPipeline.fromJson(core.Map json_)
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
          condition: json_.containsKey('condition')
              ? PipelineCondition.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
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
          serialPipeline: json_.containsKey('serialPipeline')
              ? SerialPipeline.fromJson(json_['serialPipeline']
                  as core.Map<core.String, core.dynamic>)
              : null,
          suspended: json_.containsKey('suspended')
              ? json_['suspended'] as core.bool
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (condition != null) 'condition': condition!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (serialPipeline != null) 'serialPipeline': serialPipeline!,
        if (suspended != null) 'suspended': suspended!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The artifacts produced by a deploy operation.
class DeployArtifact {
  /// URI of a directory containing the artifacts.
  ///
  /// All paths are relative to this location.
  ///
  /// Output only.
  core.String? artifactUri;

  /// File paths of the manifests applied during the deploy operation relative
  /// to the URI.
  ///
  /// Output only.
  core.List<core.String>? manifestPaths;

  DeployArtifact({
    this.artifactUri,
    this.manifestPaths,
  });

  DeployArtifact.fromJson(core.Map json_)
      : this(
          artifactUri: json_.containsKey('artifactUri')
              ? json_['artifactUri'] as core.String
              : null,
          manifestPaths: json_.containsKey('manifestPaths')
              ? (json_['manifestPaths'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactUri != null) 'artifactUri': artifactUri!,
        if (manifestPaths != null) 'manifestPaths': manifestPaths!,
      };
}

/// A deploy Job.
typedef DeployJob = $Empty;

/// DeployJobRun contains information specific to a deploy `JobRun`.
class DeployJobRun {
  /// The artifact of a deploy job run, if available.
  ///
  /// Output only.
  DeployArtifact? artifact;

  /// The resource name of the Cloud Build `Build` object that is used to
  /// deploy.
  ///
  /// Format is `projects/{project}/locations/{location}/builds/{build}`.
  ///
  /// Output only.
  core.String? build;

  /// The reason the deploy failed.
  ///
  /// This will always be unspecified while the deploy is in progress or if it
  /// succeeded.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FAILURE_CAUSE_UNSPECIFIED" : No reason for failure is specified.
  /// - "CLOUD_BUILD_UNAVAILABLE" : Cloud Build is not available, either because
  /// it is not enabled or because Cloud Deploy has insufficient permissions.
  /// See
  /// [Required permission](https://cloud.google.com/deploy/docs/cloud-deploy-service-account#required_permissions).
  /// - "EXECUTION_FAILED" : The deploy operation did not complete successfully;
  /// check Cloud Build logs.
  /// - "DEADLINE_EXCEEDED" : The deploy job run did not complete within the
  /// alloted time.
  /// - "MISSING_RESOURCES_FOR_CANARY" : There were missing resources in the
  /// runtime environment required for a canary deployment. Check the Cloud
  /// Build logs for more information.
  /// - "CLOUD_BUILD_REQUEST_FAILED" : Cloud Build failed to fulfill Cloud
  /// Deploy's request. See failure_message for additional details.
  /// - "DEPLOY_FEATURE_NOT_SUPPORTED" : The deploy operation had a feature
  /// configured that is not supported.
  core.String? failureCause;

  /// Additional information about the deploy failure, if available.
  ///
  /// Output only.
  core.String? failureMessage;

  /// Metadata containing information about the deploy job run.
  ///
  /// Output only.
  DeployJobRunMetadata? metadata;

  DeployJobRun({
    this.artifact,
    this.build,
    this.failureCause,
    this.failureMessage,
    this.metadata,
  });

  DeployJobRun.fromJson(core.Map json_)
      : this(
          artifact: json_.containsKey('artifact')
              ? DeployArtifact.fromJson(
                  json_['artifact'] as core.Map<core.String, core.dynamic>)
              : null,
          build:
              json_.containsKey('build') ? json_['build'] as core.String : null,
          failureCause: json_.containsKey('failureCause')
              ? json_['failureCause'] as core.String
              : null,
          failureMessage: json_.containsKey('failureMessage')
              ? json_['failureMessage'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? DeployJobRunMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifact != null) 'artifact': artifact!,
        if (build != null) 'build': build!,
        if (failureCause != null) 'failureCause': failureCause!,
        if (failureMessage != null) 'failureMessage': failureMessage!,
        if (metadata != null) 'metadata': metadata!,
      };
}

/// DeployJobRunMetadata surfaces information associated with a `DeployJobRun`
/// to the user.
class DeployJobRunMetadata {
  /// The name of the Cloud Run Service that is associated with a
  /// `DeployJobRun`.
  ///
  /// Output only.
  CloudRunMetadata? cloudRun;

  /// Custom metadata provided by user-defined deploy operation.
  ///
  /// Output only.
  CustomMetadata? custom;

  /// Custom Target metadata associated with a `DeployJobRun`.
  ///
  /// Output only.
  CustomTargetDeployMetadata? customTarget;

  DeployJobRunMetadata({
    this.cloudRun,
    this.custom,
    this.customTarget,
  });

  DeployJobRunMetadata.fromJson(core.Map json_)
      : this(
          cloudRun: json_.containsKey('cloudRun')
              ? CloudRunMetadata.fromJson(
                  json_['cloudRun'] as core.Map<core.String, core.dynamic>)
              : null,
          custom: json_.containsKey('custom')
              ? CustomMetadata.fromJson(
                  json_['custom'] as core.Map<core.String, core.dynamic>)
              : null,
          customTarget: json_.containsKey('customTarget')
              ? CustomTargetDeployMetadata.fromJson(
                  json_['customTarget'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudRun != null) 'cloudRun': cloudRun!,
        if (custom != null) 'custom': custom!,
        if (customTarget != null) 'customTarget': customTarget!,
      };
}

/// DeployParameters contains deploy parameters information.
class DeployParameters {
  /// Deploy parameters are applied to targets with match labels.
  ///
  /// If unspecified, deploy parameters are applied to all targets (including
  /// child targets of a multi-target).
  ///
  /// Optional.
  core.Map<core.String, core.String>? matchTargetLabels;

  /// Values are deploy parameters in key-value pairs.
  ///
  /// Required.
  core.Map<core.String, core.String>? values;

  DeployParameters({
    this.matchTargetLabels,
    this.values,
  });

  DeployParameters.fromJson(core.Map json_)
      : this(
          matchTargetLabels: json_.containsKey('matchTargetLabels')
              ? (json_['matchTargetLabels']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matchTargetLabels != null) 'matchTargetLabels': matchTargetLabels!,
        if (values != null) 'values': values!,
      };
}

/// Deployment job composition.
class DeploymentJobs {
  /// The deploy Job.
  ///
  /// This is the deploy job in the phase.
  ///
  /// Output only.
  Job? deployJob;

  /// The postdeploy Job, which is the last job on the phase.
  ///
  /// Output only.
  Job? postdeployJob;

  /// The predeploy Job, which is the first job on the phase.
  ///
  /// Output only.
  Job? predeployJob;

  /// The verify Job.
  ///
  /// Runs after a deploy if the deploy succeeds.
  ///
  /// Output only.
  Job? verifyJob;

  DeploymentJobs({
    this.deployJob,
    this.postdeployJob,
    this.predeployJob,
    this.verifyJob,
  });

  DeploymentJobs.fromJson(core.Map json_)
      : this(
          deployJob: json_.containsKey('deployJob')
              ? Job.fromJson(
                  json_['deployJob'] as core.Map<core.String, core.dynamic>)
              : null,
          postdeployJob: json_.containsKey('postdeployJob')
              ? Job.fromJson(
                  json_['postdeployJob'] as core.Map<core.String, core.dynamic>)
              : null,
          predeployJob: json_.containsKey('predeployJob')
              ? Job.fromJson(
                  json_['predeployJob'] as core.Map<core.String, core.dynamic>)
              : null,
          verifyJob: json_.containsKey('verifyJob')
              ? Job.fromJson(
                  json_['verifyJob'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployJob != null) 'deployJob': deployJob!,
        if (postdeployJob != null) 'postdeployJob': postdeployJob!,
        if (predeployJob != null) 'predeployJob': predeployJob!,
        if (verifyJob != null) 'verifyJob': verifyJob!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Configuration of the environment to use when calling Skaffold.
class ExecutionConfig {
  /// Cloud Storage location in which to store execution outputs.
  ///
  /// This can either be a bucket ("gs://my-bucket") or a path within a bucket
  /// ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the
  /// same region will be used.
  ///
  /// Optional.
  core.String? artifactStorage;

  /// Use default Cloud Build pool.
  ///
  /// Optional.
  DefaultPool? defaultPool;

  /// Execution timeout for a Cloud Build Execution.
  ///
  /// This must be between 10m and 24h in seconds format. If unspecified, a
  /// default timeout of 1h is used.
  ///
  /// Optional.
  core.String? executionTimeout;

  /// Use private Cloud Build pool.
  ///
  /// Optional.
  PrivatePool? privatePool;

  /// Google service account to use for execution.
  ///
  /// If unspecified, the project execution service account
  /// (-compute@developer.gserviceaccount.com) is used.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// Usages when this configuration should be applied.
  ///
  /// Required.
  core.List<core.String>? usages;

  /// The resource name of the `WorkerPool`, with the format
  /// `projects/{project}/locations/{location}/workerPools/{worker_pool}`.
  ///
  /// If this optional field is unspecified, the default Cloud Build pool will
  /// be used.
  ///
  /// Optional.
  core.String? workerPool;

  ExecutionConfig({
    this.artifactStorage,
    this.defaultPool,
    this.executionTimeout,
    this.privatePool,
    this.serviceAccount,
    this.usages,
    this.workerPool,
  });

  ExecutionConfig.fromJson(core.Map json_)
      : this(
          artifactStorage: json_.containsKey('artifactStorage')
              ? json_['artifactStorage'] as core.String
              : null,
          defaultPool: json_.containsKey('defaultPool')
              ? DefaultPool.fromJson(
                  json_['defaultPool'] as core.Map<core.String, core.dynamic>)
              : null,
          executionTimeout: json_.containsKey('executionTimeout')
              ? json_['executionTimeout'] as core.String
              : null,
          privatePool: json_.containsKey('privatePool')
              ? PrivatePool.fromJson(
                  json_['privatePool'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          usages: json_.containsKey('usages')
              ? (json_['usages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          workerPool: json_.containsKey('workerPool')
              ? json_['workerPool'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactStorage != null) 'artifactStorage': artifactStorage!,
        if (defaultPool != null) 'defaultPool': defaultPool!,
        if (executionTimeout != null) 'executionTimeout': executionTimeout!,
        if (privatePool != null) 'privatePool': privatePool!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (usages != null) 'usages': usages!,
        if (workerPool != null) 'workerPool': workerPool!,
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

/// Information about the Kubernetes Gateway API service mesh configuration.
class GatewayServiceMesh {
  /// Name of the Kubernetes Deployment whose traffic is managed by the
  /// specified HTTPRoute and Service.
  ///
  /// Required.
  core.String? deployment;

  /// Name of the Gateway API HTTPRoute.
  ///
  /// Required.
  core.String? httpRoute;

  /// The time to wait for route updates to propagate.
  ///
  /// The maximum configurable time is 3 hours, in seconds format. If
  /// unspecified, there is no wait time.
  ///
  /// Optional.
  core.String? routeUpdateWaitTime;

  /// Name of the Kubernetes Service.
  ///
  /// Required.
  core.String? service;

  /// The amount of time to migrate traffic back from the canary Service to the
  /// original Service during the stable phase deployment.
  ///
  /// If specified, must be between 15s and 3600s. If unspecified, there is no
  /// cutback time.
  ///
  /// Optional.
  core.String? stableCutbackDuration;

  GatewayServiceMesh({
    this.deployment,
    this.httpRoute,
    this.routeUpdateWaitTime,
    this.service,
    this.stableCutbackDuration,
  });

  GatewayServiceMesh.fromJson(core.Map json_)
      : this(
          deployment: json_.containsKey('deployment')
              ? json_['deployment'] as core.String
              : null,
          httpRoute: json_.containsKey('httpRoute')
              ? json_['httpRoute'] as core.String
              : null,
          routeUpdateWaitTime: json_.containsKey('routeUpdateWaitTime')
              ? json_['routeUpdateWaitTime'] as core.String
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
          stableCutbackDuration: json_.containsKey('stableCutbackDuration')
              ? json_['stableCutbackDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployment != null) 'deployment': deployment!,
        if (httpRoute != null) 'httpRoute': httpRoute!,
        if (routeUpdateWaitTime != null)
          'routeUpdateWaitTime': routeUpdateWaitTime!,
        if (service != null) 'service': service!,
        if (stableCutbackDuration != null)
          'stableCutbackDuration': stableCutbackDuration!,
      };
}

/// Information specifying a GKE Cluster.
class GkeCluster {
  /// Information specifying a GKE Cluster.
  ///
  /// Format is
  /// `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`.
  core.String? cluster;

  /// If true, `cluster` is accessed using the private IP address of the control
  /// plane endpoint.
  ///
  /// Otherwise, the default IP address of the control plane endpoint is used.
  /// The default IP address is the private IP address for clusters with private
  /// control-plane endpoints and the public IP address otherwise. Only specify
  /// this option when `cluster` is a
  /// [private GKE cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept).
  ///
  /// Optional.
  core.bool? internalIp;

  GkeCluster({
    this.cluster,
    this.internalIp,
  });

  GkeCluster.fromJson(core.Map json_)
      : this(
          cluster: json_.containsKey('cluster')
              ? json_['cluster'] as core.String
              : null,
          internalIp: json_.containsKey('internalIp')
              ? json_['internalIp'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cluster != null) 'cluster': cluster!,
        if (internalIp != null) 'internalIp': internalIp!,
      };
}

/// The request object used by `IgnoreJob`.
class IgnoreJobRequest {
  /// The job ID for the Job to ignore.
  ///
  /// Required.
  core.String? jobId;

  /// The phase ID the Job to ignore belongs to.
  ///
  /// Required.
  core.String? phaseId;

  IgnoreJobRequest({
    this.jobId,
    this.phaseId,
  });

  IgnoreJobRequest.fromJson(core.Map json_)
      : this(
          jobId:
              json_.containsKey('jobId') ? json_['jobId'] as core.String : null,
          phaseId: json_.containsKey('phaseId')
              ? json_['phaseId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobId != null) 'jobId': jobId!,
        if (phaseId != null) 'phaseId': phaseId!,
      };
}

/// The response object from `IgnoreJob`.
typedef IgnoreJobResponse = $Empty;

/// Job represents an operation for a `Rollout`.
class Job {
  /// An advanceChildRollout Job.
  ///
  /// Output only.
  AdvanceChildRolloutJob? advanceChildRolloutJob;

  /// A createChildRollout Job.
  ///
  /// Output only.
  CreateChildRolloutJob? createChildRolloutJob;

  /// A deploy Job.
  ///
  /// Output only.
  DeployJob? deployJob;

  /// The ID of the Job.
  ///
  /// Output only.
  core.String? id;

  /// The name of the `JobRun` responsible for the most recent invocation of
  /// this Job.
  ///
  /// Output only.
  core.String? jobRun;

  /// A postdeploy Job.
  ///
  /// Output only.
  PostdeployJob? postdeployJob;

  /// A predeploy Job.
  ///
  /// Output only.
  PredeployJob? predeployJob;

  /// Additional information on why the Job was skipped, if available.
  ///
  /// Output only.
  core.String? skipMessage;

  /// The current state of the Job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The Job has an unspecified state.
  /// - "PENDING" : The Job is waiting for an earlier Phase(s) or Job(s) to
  /// complete.
  /// - "DISABLED" : The Job is disabled.
  /// - "IN_PROGRESS" : The Job is in progress.
  /// - "SUCCEEDED" : The Job succeeded.
  /// - "FAILED" : The Job failed.
  /// - "ABORTED" : The Job was aborted.
  /// - "SKIPPED" : The Job was skipped.
  /// - "IGNORED" : The Job was ignored.
  core.String? state;

  /// A verify Job.
  ///
  /// Output only.
  VerifyJob? verifyJob;

  Job({
    this.advanceChildRolloutJob,
    this.createChildRolloutJob,
    this.deployJob,
    this.id,
    this.jobRun,
    this.postdeployJob,
    this.predeployJob,
    this.skipMessage,
    this.state,
    this.verifyJob,
  });

  Job.fromJson(core.Map json_)
      : this(
          advanceChildRolloutJob: json_.containsKey('advanceChildRolloutJob')
              ? AdvanceChildRolloutJob.fromJson(json_['advanceChildRolloutJob']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createChildRolloutJob: json_.containsKey('createChildRolloutJob')
              ? CreateChildRolloutJob.fromJson(json_['createChildRolloutJob']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deployJob: json_.containsKey('deployJob')
              ? DeployJob.fromJson(
                  json_['deployJob'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          jobRun: json_.containsKey('jobRun')
              ? json_['jobRun'] as core.String
              : null,
          postdeployJob: json_.containsKey('postdeployJob')
              ? PostdeployJob.fromJson(
                  json_['postdeployJob'] as core.Map<core.String, core.dynamic>)
              : null,
          predeployJob: json_.containsKey('predeployJob')
              ? PredeployJob.fromJson(
                  json_['predeployJob'] as core.Map<core.String, core.dynamic>)
              : null,
          skipMessage: json_.containsKey('skipMessage')
              ? json_['skipMessage'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          verifyJob: json_.containsKey('verifyJob')
              ? VerifyJob.fromJson(
                  json_['verifyJob'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advanceChildRolloutJob != null)
          'advanceChildRolloutJob': advanceChildRolloutJob!,
        if (createChildRolloutJob != null)
          'createChildRolloutJob': createChildRolloutJob!,
        if (deployJob != null) 'deployJob': deployJob!,
        if (id != null) 'id': id!,
        if (jobRun != null) 'jobRun': jobRun!,
        if (postdeployJob != null) 'postdeployJob': postdeployJob!,
        if (predeployJob != null) 'predeployJob': predeployJob!,
        if (skipMessage != null) 'skipMessage': skipMessage!,
        if (state != null) 'state': state!,
        if (verifyJob != null) 'verifyJob': verifyJob!,
      };
}

/// A `JobRun` resource in the Cloud Deploy API.
///
/// A `JobRun` contains information of a single `Rollout` job evaluation.
class JobRun {
  /// Information specific to an advanceChildRollout `JobRun`
  ///
  /// Output only.
  AdvanceChildRolloutJobRun? advanceChildRolloutJobRun;

  /// Information specific to a createChildRollout `JobRun`.
  ///
  /// Output only.
  CreateChildRolloutJobRun? createChildRolloutJobRun;

  /// Time at which the `JobRun` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Information specific to a deploy `JobRun`.
  ///
  /// Output only.
  DeployJobRun? deployJobRun;

  /// Time at which the `JobRun` ended.
  ///
  /// Output only.
  core.String? endTime;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Output only.
  core.String? etag;

  /// ID of the `Rollout` job this `JobRun` corresponds to.
  ///
  /// Output only.
  core.String? jobId;

  /// Name of the `JobRun`.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{releases}/rollouts/{rollouts}/jobRuns/{uuid}`.
  ///
  /// Optional.
  core.String? name;

  /// ID of the `Rollout` phase this `JobRun` belongs in.
  ///
  /// Output only.
  core.String? phaseId;

  /// Information specific to a postdeploy `JobRun`.
  ///
  /// Output only.
  PostdeployJobRun? postdeployJobRun;

  /// Information specific to a predeploy `JobRun`.
  ///
  /// Output only.
  PredeployJobRun? predeployJobRun;

  /// Time at which the `JobRun` was started.
  ///
  /// Output only.
  core.String? startTime;

  /// The current state of the `JobRun`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The `JobRun` has an unspecified state.
  /// - "IN_PROGRESS" : The `JobRun` is in progress.
  /// - "SUCCEEDED" : The `JobRun` has succeeded.
  /// - "FAILED" : The `JobRun` has failed.
  /// - "TERMINATING" : The `JobRun` is terminating.
  /// - "TERMINATED" : The `JobRun` was terminated.
  core.String? state;

  /// Unique identifier of the `JobRun`.
  ///
  /// Output only.
  core.String? uid;

  /// Information specific to a verify `JobRun`.
  ///
  /// Output only.
  VerifyJobRun? verifyJobRun;

  JobRun({
    this.advanceChildRolloutJobRun,
    this.createChildRolloutJobRun,
    this.createTime,
    this.deployJobRun,
    this.endTime,
    this.etag,
    this.jobId,
    this.name,
    this.phaseId,
    this.postdeployJobRun,
    this.predeployJobRun,
    this.startTime,
    this.state,
    this.uid,
    this.verifyJobRun,
  });

  JobRun.fromJson(core.Map json_)
      : this(
          advanceChildRolloutJobRun:
              json_.containsKey('advanceChildRolloutJobRun')
                  ? AdvanceChildRolloutJobRun.fromJson(
                      json_['advanceChildRolloutJobRun']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          createChildRolloutJobRun:
              json_.containsKey('createChildRolloutJobRun')
                  ? CreateChildRolloutJobRun.fromJson(
                      json_['createChildRolloutJobRun']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deployJobRun: json_.containsKey('deployJobRun')
              ? DeployJobRun.fromJson(
                  json_['deployJobRun'] as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          jobId:
              json_.containsKey('jobId') ? json_['jobId'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          phaseId: json_.containsKey('phaseId')
              ? json_['phaseId'] as core.String
              : null,
          postdeployJobRun: json_.containsKey('postdeployJobRun')
              ? PostdeployJobRun.fromJson(json_['postdeployJobRun']
                  as core.Map<core.String, core.dynamic>)
              : null,
          predeployJobRun: json_.containsKey('predeployJobRun')
              ? PredeployJobRun.fromJson(json_['predeployJobRun']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          verifyJobRun: json_.containsKey('verifyJobRun')
              ? VerifyJobRun.fromJson(
                  json_['verifyJobRun'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advanceChildRolloutJobRun != null)
          'advanceChildRolloutJobRun': advanceChildRolloutJobRun!,
        if (createChildRolloutJobRun != null)
          'createChildRolloutJobRun': createChildRolloutJobRun!,
        if (createTime != null) 'createTime': createTime!,
        if (deployJobRun != null) 'deployJobRun': deployJobRun!,
        if (endTime != null) 'endTime': endTime!,
        if (etag != null) 'etag': etag!,
        if (jobId != null) 'jobId': jobId!,
        if (name != null) 'name': name!,
        if (phaseId != null) 'phaseId': phaseId!,
        if (postdeployJobRun != null) 'postdeployJobRun': postdeployJobRun!,
        if (predeployJobRun != null) 'predeployJobRun': predeployJobRun!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (verifyJobRun != null) 'verifyJobRun': verifyJobRun!,
      };
}

/// KubernetesConfig contains the Kubernetes runtime configuration.
class KubernetesConfig {
  /// Kubernetes Gateway API service mesh configuration.
  GatewayServiceMesh? gatewayServiceMesh;

  /// Kubernetes Service networking configuration.
  ServiceNetworking? serviceNetworking;

  KubernetesConfig({
    this.gatewayServiceMesh,
    this.serviceNetworking,
  });

  KubernetesConfig.fromJson(core.Map json_)
      : this(
          gatewayServiceMesh: json_.containsKey('gatewayServiceMesh')
              ? GatewayServiceMesh.fromJson(json_['gatewayServiceMesh']
                  as core.Map<core.String, core.dynamic>)
              : null,
          serviceNetworking: json_.containsKey('serviceNetworking')
              ? ServiceNetworking.fromJson(json_['serviceNetworking']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gatewayServiceMesh != null)
          'gatewayServiceMesh': gatewayServiceMesh!,
        if (serviceNetworking != null) 'serviceNetworking': serviceNetworking!,
      };
}

/// The response object from `ListAutomationRuns`.
class ListAutomationRunsResponse {
  /// The `AutomationRuns` objects.
  core.List<AutomationRun>? automationRuns;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAutomationRunsResponse({
    this.automationRuns,
    this.nextPageToken,
    this.unreachable,
  });

  ListAutomationRunsResponse.fromJson(core.Map json_)
      : this(
          automationRuns: json_.containsKey('automationRuns')
              ? (json_['automationRuns'] as core.List)
                  .map((value) => AutomationRun.fromJson(
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
        if (automationRuns != null) 'automationRuns': automationRuns!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response object from `ListAutomations`.
class ListAutomationsResponse {
  /// The `Automation` objects.
  core.List<Automation>? automations;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListAutomationsResponse({
    this.automations,
    this.nextPageToken,
    this.unreachable,
  });

  ListAutomationsResponse.fromJson(core.Map json_)
      : this(
          automations: json_.containsKey('automations')
              ? (json_['automations'] as core.List)
                  .map((value) => Automation.fromJson(
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
        if (automations != null) 'automations': automations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response object from `ListCustomTargetTypes.`
class ListCustomTargetTypesResponse {
  /// The `CustomTargetType` objects.
  core.List<CustomTargetType>? customTargetTypes;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListCustomTargetTypesResponse({
    this.customTargetTypes,
    this.nextPageToken,
    this.unreachable,
  });

  ListCustomTargetTypesResponse.fromJson(core.Map json_)
      : this(
          customTargetTypes: json_.containsKey('customTargetTypes')
              ? (json_['customTargetTypes'] as core.List)
                  .map((value) => CustomTargetType.fromJson(
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
        if (customTargetTypes != null) 'customTargetTypes': customTargetTypes!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response object from `ListDeliveryPipelines`.
class ListDeliveryPipelinesResponse {
  /// The `DeliveryPipeline` objects.
  core.List<DeliveryPipeline>? deliveryPipelines;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListDeliveryPipelinesResponse({
    this.deliveryPipelines,
    this.nextPageToken,
    this.unreachable,
  });

  ListDeliveryPipelinesResponse.fromJson(core.Map json_)
      : this(
          deliveryPipelines: json_.containsKey('deliveryPipelines')
              ? (json_['deliveryPipelines'] as core.List)
                  .map((value) => DeliveryPipeline.fromJson(
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
        if (deliveryPipelines != null) 'deliveryPipelines': deliveryPipelines!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// ListJobRunsResponse is the response object returned by `ListJobRuns`.
class ListJobRunsResponse {
  /// The `JobRun` objects.
  core.List<JobRun>? jobRuns;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached
  core.List<core.String>? unreachable;

  ListJobRunsResponse({
    this.jobRuns,
    this.nextPageToken,
    this.unreachable,
  });

  ListJobRunsResponse.fromJson(core.Map json_)
      : this(
          jobRuns: json_.containsKey('jobRuns')
              ? (json_['jobRuns'] as core.List)
                  .map((value) => JobRun.fromJson(
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
        if (jobRuns != null) 'jobRuns': jobRuns!,
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

/// The response object from `ListReleases`.
class ListReleasesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The `Release` objects.
  core.List<Release>? releases;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListReleasesResponse({
    this.nextPageToken,
    this.releases,
    this.unreachable,
  });

  ListReleasesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          releases: json_.containsKey('releases')
              ? (json_['releases'] as core.List)
                  .map((value) => Release.fromJson(
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
        if (releases != null) 'releases': releases!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// ListRolloutsResponse is the response object reutrned by `ListRollouts`.
class ListRolloutsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The `Rollout` objects.
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          rollouts: json_.containsKey('rollouts')
              ? (json_['rollouts'] as core.List)
                  .map((value) => Rollout.fromJson(
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
        if (rollouts != null) 'rollouts': rollouts!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response object from `ListTargets`.
class ListTargetsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The `Target` objects.
  core.List<Target>? targets;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListTargetsResponse({
    this.nextPageToken,
    this.targets,
    this.unreachable,
  });

  ListTargetsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          targets: json_.containsKey('targets')
              ? (json_['targets'] as core.List)
                  .map((value) => Target.fromJson(
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
        if (targets != null) 'targets': targets!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Metadata includes information associated with a `Rollout`.
class Metadata {
  /// AutomationRolloutMetadata contains the information about the interactions
  /// between Automation service and this rollout.
  ///
  /// Output only.
  AutomationRolloutMetadata? automation;

  /// The name of the Cloud Run Service that is associated with a `Rollout`.
  ///
  /// Output only.
  CloudRunMetadata? cloudRun;

  /// Custom metadata provided by user-defined `Rollout` operations.
  ///
  /// Output only.
  CustomMetadata? custom;

  Metadata({
    this.automation,
    this.cloudRun,
    this.custom,
  });

  Metadata.fromJson(core.Map json_)
      : this(
          automation: json_.containsKey('automation')
              ? AutomationRolloutMetadata.fromJson(
                  json_['automation'] as core.Map<core.String, core.dynamic>)
              : null,
          cloudRun: json_.containsKey('cloudRun')
              ? CloudRunMetadata.fromJson(
                  json_['cloudRun'] as core.Map<core.String, core.dynamic>)
              : null,
          custom: json_.containsKey('custom')
              ? CustomMetadata.fromJson(
                  json_['custom'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (automation != null) 'automation': automation!,
        if (cloudRun != null) 'cloudRun': cloudRun!,
        if (custom != null) 'custom': custom!,
      };
}

/// Information specifying a multiTarget.
class MultiTarget {
  /// The target_ids of this multiTarget.
  ///
  /// Required.
  core.List<core.String>? targetIds;

  MultiTarget({
    this.targetIds,
  });

  MultiTarget.fromJson(core.Map json_)
      : this(
          targetIds: json_.containsKey('targetIds')
              ? (json_['targetIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetIds != null) 'targetIds': targetIds!,
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

/// Phase represents a collection of jobs that are logically grouped together
/// for a `Rollout`.
class Phase {
  /// ChildRollout job composition.
  ///
  /// Output only.
  ChildRolloutJobs? childRolloutJobs;

  /// Deployment job composition.
  ///
  /// Output only.
  DeploymentJobs? deploymentJobs;

  /// The ID of the Phase.
  ///
  /// Output only.
  core.String? id;

  /// Additional information on why the Phase was skipped, if available.
  ///
  /// Output only.
  core.String? skipMessage;

  /// Current state of the Phase.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The Phase has an unspecified state.
  /// - "PENDING" : The Phase is waiting for an earlier Phase(s) to complete.
  /// - "IN_PROGRESS" : The Phase is in progress.
  /// - "SUCCEEDED" : The Phase has succeeded.
  /// - "FAILED" : The Phase has failed.
  /// - "ABORTED" : The Phase was aborted.
  /// - "SKIPPED" : The Phase was skipped.
  core.String? state;

  Phase({
    this.childRolloutJobs,
    this.deploymentJobs,
    this.id,
    this.skipMessage,
    this.state,
  });

  Phase.fromJson(core.Map json_)
      : this(
          childRolloutJobs: json_.containsKey('childRolloutJobs')
              ? ChildRolloutJobs.fromJson(json_['childRolloutJobs']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deploymentJobs: json_.containsKey('deploymentJobs')
              ? DeploymentJobs.fromJson(json_['deploymentJobs']
                  as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          skipMessage: json_.containsKey('skipMessage')
              ? json_['skipMessage'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childRolloutJobs != null) 'childRolloutJobs': childRolloutJobs!,
        if (deploymentJobs != null) 'deploymentJobs': deploymentJobs!,
        if (id != null) 'id': id!,
        if (skipMessage != null) 'skipMessage': skipMessage!,
        if (state != null) 'state': state!,
      };
}

/// Contains the paths to the artifacts, relative to the URI, for a phase.
class PhaseArtifact {
  /// File path of the directory of rendered job manifests relative to the URI.
  ///
  /// This is only set if it is applicable.
  ///
  /// Output only.
  core.String? jobManifestsPath;

  /// File path of the rendered manifest relative to the URI.
  ///
  /// Output only.
  core.String? manifestPath;

  /// File path of the resolved Skaffold configuration relative to the URI.
  ///
  /// Output only.
  core.String? skaffoldConfigPath;

  PhaseArtifact({
    this.jobManifestsPath,
    this.manifestPath,
    this.skaffoldConfigPath,
  });

  PhaseArtifact.fromJson(core.Map json_)
      : this(
          jobManifestsPath: json_.containsKey('jobManifestsPath')
              ? json_['jobManifestsPath'] as core.String
              : null,
          manifestPath: json_.containsKey('manifestPath')
              ? json_['manifestPath'] as core.String
              : null,
          skaffoldConfigPath: json_.containsKey('skaffoldConfigPath')
              ? json_['skaffoldConfigPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobManifestsPath != null) 'jobManifestsPath': jobManifestsPath!,
        if (manifestPath != null) 'manifestPath': manifestPath!,
        if (skaffoldConfigPath != null)
          'skaffoldConfigPath': skaffoldConfigPath!,
      };
}

/// PhaseConfig represents the configuration for a phase in the custom canary
/// deployment.
class PhaseConfig {
  /// Percentage deployment for the phase.
  ///
  /// Required.
  core.int? percentage;

  /// The ID to assign to the `Rollout` phase.
  ///
  /// This value must consist of lower-case letters, numbers, and hyphens, start
  /// with a letter and end with a letter or a number, and have a max length of
  /// 63 characters. In other words, it must match the following regex:
  /// `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  ///
  /// Required.
  core.String? phaseId;

  /// Configuration for the postdeploy job of this phase.
  ///
  /// If this is not configured, there will be no postdeploy job for this phase.
  ///
  /// Optional.
  Postdeploy? postdeploy;

  /// Configuration for the predeploy job of this phase.
  ///
  /// If this is not configured, there will be no predeploy job for this phase.
  ///
  /// Optional.
  Predeploy? predeploy;

  /// Skaffold profiles to use when rendering the manifest for this phase.
  ///
  /// These are in addition to the profiles list specified in the
  /// `DeliveryPipeline` stage.
  core.List<core.String>? profiles;

  /// Whether to run verify tests after the deployment.
  core.bool? verify;

  PhaseConfig({
    this.percentage,
    this.phaseId,
    this.postdeploy,
    this.predeploy,
    this.profiles,
    this.verify,
  });

  PhaseConfig.fromJson(core.Map json_)
      : this(
          percentage: json_.containsKey('percentage')
              ? json_['percentage'] as core.int
              : null,
          phaseId: json_.containsKey('phaseId')
              ? json_['phaseId'] as core.String
              : null,
          postdeploy: json_.containsKey('postdeploy')
              ? Postdeploy.fromJson(
                  json_['postdeploy'] as core.Map<core.String, core.dynamic>)
              : null,
          predeploy: json_.containsKey('predeploy')
              ? Predeploy.fromJson(
                  json_['predeploy'] as core.Map<core.String, core.dynamic>)
              : null,
          profiles: json_.containsKey('profiles')
              ? (json_['profiles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          verify:
              json_.containsKey('verify') ? json_['verify'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (percentage != null) 'percentage': percentage!,
        if (phaseId != null) 'phaseId': phaseId!,
        if (postdeploy != null) 'postdeploy': postdeploy!,
        if (predeploy != null) 'predeploy': predeploy!,
        if (profiles != null) 'profiles': profiles!,
        if (verify != null) 'verify': verify!,
      };
}

/// PipelineCondition contains all conditions relevant to a Delivery Pipeline.
class PipelineCondition {
  /// Details around the Pipeline's overall status.
  PipelineReadyCondition? pipelineReadyCondition;

  /// Details around targets enumerated in the pipeline.
  TargetsPresentCondition? targetsPresentCondition;

  /// Details on the whether the targets enumerated in the pipeline are of the
  /// same type.
  TargetsTypeCondition? targetsTypeCondition;

  PipelineCondition({
    this.pipelineReadyCondition,
    this.targetsPresentCondition,
    this.targetsTypeCondition,
  });

  PipelineCondition.fromJson(core.Map json_)
      : this(
          pipelineReadyCondition: json_.containsKey('pipelineReadyCondition')
              ? PipelineReadyCondition.fromJson(json_['pipelineReadyCondition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          targetsPresentCondition: json_.containsKey('targetsPresentCondition')
              ? TargetsPresentCondition.fromJson(
                  json_['targetsPresentCondition']
                      as core.Map<core.String, core.dynamic>)
              : null,
          targetsTypeCondition: json_.containsKey('targetsTypeCondition')
              ? TargetsTypeCondition.fromJson(json_['targetsTypeCondition']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pipelineReadyCondition != null)
          'pipelineReadyCondition': pipelineReadyCondition!,
        if (targetsPresentCondition != null)
          'targetsPresentCondition': targetsPresentCondition!,
        if (targetsTypeCondition != null)
          'targetsTypeCondition': targetsTypeCondition!,
      };
}

/// PipelineReadyCondition contains information around the status of the
/// Pipeline.
class PipelineReadyCondition {
  /// True if the Pipeline is in a valid state.
  ///
  /// Otherwise at least one condition in `PipelineCondition` is in an invalid
  /// state. Iterate over those conditions and see which condition(s) has status
  /// = false to find out what is wrong with the Pipeline.
  core.bool? status;

  /// Last time the condition was updated.
  core.String? updateTime;

  PipelineReadyCondition({
    this.status,
    this.updateTime,
  });

  PipelineReadyCondition.fromJson(core.Map json_)
      : this(
          status:
              json_.containsKey('status') ? json_['status'] as core.bool : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
        if (updateTime != null) 'updateTime': updateTime!,
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

/// Postdeploy contains the postdeploy job configuration information.
class Postdeploy {
  /// A sequence of Skaffold custom actions to invoke during execution of the
  /// postdeploy job.
  ///
  /// Optional.
  core.List<core.String>? actions;

  Postdeploy({
    this.actions,
  });

  Postdeploy.fromJson(core.Map json_)
      : this(
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
      };
}

/// A postdeploy Job.
class PostdeployJob {
  /// The custom actions that the postdeploy Job executes.
  ///
  /// Output only.
  core.List<core.String>? actions;

  PostdeployJob({
    this.actions,
  });

  PostdeployJob.fromJson(core.Map json_)
      : this(
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
      };
}

/// PostdeployJobRun contains information specific to a postdeploy `JobRun`.
class PostdeployJobRun {
  /// The resource name of the Cloud Build `Build` object that is used to
  /// execute the custom actions associated with the postdeploy Job.
  ///
  /// Format is `projects/{project}/locations/{location}/builds/{build}`.
  ///
  /// Output only.
  core.String? build;

  /// The reason the postdeploy failed.
  ///
  /// This will always be unspecified while the postdeploy is in progress or if
  /// it succeeded.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FAILURE_CAUSE_UNSPECIFIED" : No reason for failure is specified.
  /// - "CLOUD_BUILD_UNAVAILABLE" : Cloud Build is not available, either because
  /// it is not enabled or because Cloud Deploy has insufficient permissions.
  /// See
  /// [required permission](https://cloud.google.com/deploy/docs/cloud-deploy-service-account#required_permissions).
  /// - "EXECUTION_FAILED" : The postdeploy operation did not complete
  /// successfully; check Cloud Build logs.
  /// - "DEADLINE_EXCEEDED" : The postdeploy job run did not complete within the
  /// alloted time.
  /// - "CLOUD_BUILD_REQUEST_FAILED" : Cloud Build failed to fulfill Cloud
  /// Deploy's request. See failure_message for additional details.
  core.String? failureCause;

  /// Additional information about the postdeploy failure, if available.
  ///
  /// Output only.
  core.String? failureMessage;

  PostdeployJobRun({
    this.build,
    this.failureCause,
    this.failureMessage,
  });

  PostdeployJobRun.fromJson(core.Map json_)
      : this(
          build:
              json_.containsKey('build') ? json_['build'] as core.String : null,
          failureCause: json_.containsKey('failureCause')
              ? json_['failureCause'] as core.String
              : null,
          failureMessage: json_.containsKey('failureMessage')
              ? json_['failureMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (build != null) 'build': build!,
        if (failureCause != null) 'failureCause': failureCause!,
        if (failureMessage != null) 'failureMessage': failureMessage!,
      };
}

/// Predeploy contains the predeploy job configuration information.
class Predeploy {
  /// A sequence of Skaffold custom actions to invoke during execution of the
  /// predeploy job.
  ///
  /// Optional.
  core.List<core.String>? actions;

  Predeploy({
    this.actions,
  });

  Predeploy.fromJson(core.Map json_)
      : this(
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
      };
}

/// A predeploy Job.
class PredeployJob {
  /// The custom actions that the predeploy Job executes.
  ///
  /// Output only.
  core.List<core.String>? actions;

  PredeployJob({
    this.actions,
  });

  PredeployJob.fromJson(core.Map json_)
      : this(
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
      };
}

/// PredeployJobRun contains information specific to a predeploy `JobRun`.
class PredeployJobRun {
  /// The resource name of the Cloud Build `Build` object that is used to
  /// execute the custom actions associated with the predeploy Job.
  ///
  /// Format is `projects/{project}/locations/{location}/builds/{build}`.
  ///
  /// Output only.
  core.String? build;

  /// The reason the predeploy failed.
  ///
  /// This will always be unspecified while the predeploy is in progress or if
  /// it succeeded.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FAILURE_CAUSE_UNSPECIFIED" : No reason for failure is specified.
  /// - "CLOUD_BUILD_UNAVAILABLE" : Cloud Build is not available, either because
  /// it is not enabled or because Cloud Deploy has insufficient permissions.
  /// See
  /// [required permission](https://cloud.google.com/deploy/docs/cloud-deploy-service-account#required_permissions).
  /// - "EXECUTION_FAILED" : The predeploy operation did not complete
  /// successfully; check Cloud Build logs.
  /// - "DEADLINE_EXCEEDED" : The predeploy job run did not complete within the
  /// alloted time.
  /// - "CLOUD_BUILD_REQUEST_FAILED" : Cloud Build failed to fulfill Cloud
  /// Deploy's request. See failure_message for additional details.
  core.String? failureCause;

  /// Additional information about the predeploy failure, if available.
  ///
  /// Output only.
  core.String? failureMessage;

  PredeployJobRun({
    this.build,
    this.failureCause,
    this.failureMessage,
  });

  PredeployJobRun.fromJson(core.Map json_)
      : this(
          build:
              json_.containsKey('build') ? json_['build'] as core.String : null,
          failureCause: json_.containsKey('failureCause')
              ? json_['failureCause'] as core.String
              : null,
          failureMessage: json_.containsKey('failureMessage')
              ? json_['failureMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (build != null) 'build': build!,
        if (failureCause != null) 'failureCause': failureCause!,
        if (failureMessage != null) 'failureMessage': failureMessage!,
      };
}

/// Execution using a private Cloud Build pool.
class PrivatePool {
  /// Cloud Storage location where execution outputs should be stored.
  ///
  /// This can either be a bucket ("gs://my-bucket") or a path within a bucket
  /// ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the
  /// same region will be used.
  ///
  /// Optional.
  core.String? artifactStorage;

  /// Google service account to use for execution.
  ///
  /// If unspecified, the project execution service account
  /// (-compute@developer.gserviceaccount.com) will be used.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// Resource name of the Cloud Build worker pool to use.
  ///
  /// The format is
  /// `projects/{project}/locations/{location}/workerPools/{pool}`.
  ///
  /// Required.
  core.String? workerPool;

  PrivatePool({
    this.artifactStorage,
    this.serviceAccount,
    this.workerPool,
  });

  PrivatePool.fromJson(core.Map json_)
      : this(
          artifactStorage: json_.containsKey('artifactStorage')
              ? json_['artifactStorage'] as core.String
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          workerPool: json_.containsKey('workerPool')
              ? json_['workerPool'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactStorage != null) 'artifactStorage': artifactStorage!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (workerPool != null) 'workerPool': workerPool!,
      };
}

/// Contains the information of an automated promote-release operation.
class PromoteReleaseOperation {
  /// The starting phase of the rollout created by this operation.
  ///
  /// Output only.
  core.String? phase;

  /// The name of the rollout that initiates the `AutomationRun`.
  ///
  /// Output only.
  core.String? rollout;

  /// The ID of the target that represents the promotion stage to which the
  /// release will be promoted.
  ///
  /// The value of this field is the last segment of a target name.
  ///
  /// Output only.
  core.String? targetId;

  /// How long the operation will be paused.
  ///
  /// Output only.
  core.String? wait;

  PromoteReleaseOperation({
    this.phase,
    this.rollout,
    this.targetId,
    this.wait,
  });

  PromoteReleaseOperation.fromJson(core.Map json_)
      : this(
          phase:
              json_.containsKey('phase') ? json_['phase'] as core.String : null,
          rollout: json_.containsKey('rollout')
              ? json_['rollout'] as core.String
              : null,
          targetId: json_.containsKey('targetId')
              ? json_['targetId'] as core.String
              : null,
          wait: json_.containsKey('wait') ? json_['wait'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phase != null) 'phase': phase!,
        if (rollout != null) 'rollout': rollout!,
        if (targetId != null) 'targetId': targetId!,
        if (wait != null) 'wait': wait!,
      };
}

/// `PromoteRelease` rule will automatically promote a release from the current
/// target to a specified target.
class PromoteReleaseRule {
  /// Information around the state of the Automation rule.
  ///
  /// Output only.
  AutomationRuleCondition? condition;

  /// The starting phase of the rollout created by this operation.
  ///
  /// Default to the first phase.
  ///
  /// Optional.
  core.String? destinationPhase;

  /// The ID of the stage in the pipeline to which this `Release` is deploying.
  ///
  /// If unspecified, default it to the next stage in the promotion flow. The
  /// value of this field could be one of the following: * The last segment of a
  /// target name. It only needs the ID to determine if the target is one of the
  /// stages in the promotion sequence defined in the pipeline. * "@next", the
  /// next target in the promotion sequence.
  ///
  /// Optional.
  core.String? destinationTargetId;

  /// ID of the rule.
  ///
  /// This id must be unique in the `Automation` resource to which this rule
  /// belongs. The format is `a-z{0,62}`.
  ///
  /// Required.
  core.String? id;

  /// How long the release need to be paused until being promoted to the next
  /// target.
  ///
  /// Optional.
  core.String? wait;

  PromoteReleaseRule({
    this.condition,
    this.destinationPhase,
    this.destinationTargetId,
    this.id,
    this.wait,
  });

  PromoteReleaseRule.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? AutomationRuleCondition.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          destinationPhase: json_.containsKey('destinationPhase')
              ? json_['destinationPhase'] as core.String
              : null,
          destinationTargetId: json_.containsKey('destinationTargetId')
              ? json_['destinationTargetId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          wait: json_.containsKey('wait') ? json_['wait'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (destinationPhase != null) 'destinationPhase': destinationPhase!,
        if (destinationTargetId != null)
          'destinationTargetId': destinationTargetId!,
        if (id != null) 'id': id!,
        if (wait != null) 'wait': wait!,
      };
}

/// A `Release` resource in the Cloud Deploy API.
///
/// A `Release` defines a specific Skaffold configuration instance that can be
/// deployed.
class Release {
  /// Indicates whether this is an abandoned release.
  ///
  /// Output only.
  core.bool? abandoned;

  /// User annotations.
  ///
  /// These attributes can only be set and used by the user, and not by Cloud
  /// Deploy. See https://google.aip.dev/128#annotations for more details such
  /// as format and size limitations.
  core.Map<core.String, core.String>? annotations;

  /// List of artifacts to pass through to Skaffold command.
  core.List<BuildArtifact>? buildArtifacts;

  /// Information around the state of the Release.
  ///
  /// Output only.
  ReleaseCondition? condition;

  /// Time at which the `Release` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Snapshot of the custom target types referenced by the targets taken at
  /// release creation time.
  ///
  /// Output only.
  core.List<CustomTargetType>? customTargetTypeSnapshots;

  /// Snapshot of the parent pipeline taken at release creation time.
  ///
  /// Output only.
  DeliveryPipeline? deliveryPipelineSnapshot;

  /// The deploy parameters to use for all targets in this release.
  ///
  /// Optional.
  core.Map<core.String, core.String>? deployParameters;

  /// Description of the `Release`.
  ///
  /// Max length is 255 characters.
  core.String? description;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  core.String? etag;

  /// Labels are attributes that can be set and used by both the user and by
  /// Cloud Deploy.
  ///
  /// Labels must meet the following constraints: * Keys and values can contain
  /// only lowercase letters, numeric characters, underscores, and dashes. * All
  /// characters must use UTF-8 encoding, and international characters are
  /// allowed. * Keys must start with a lowercase letter or international
  /// character. * Each resource is limited to a maximum of 64 labels. Both keys
  /// and values are additionally constrained to be \<= 128 bytes.
  core.Map<core.String, core.String>? labels;

  /// Name of the `Release`.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/a-z{0,62}`.
  ///
  /// Optional.
  core.String? name;

  /// Time at which the render completed.
  ///
  /// Output only.
  core.String? renderEndTime;

  /// Time at which the render began.
  ///
  /// Output only.
  core.String? renderStartTime;

  /// Current state of the render operation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "RENDER_STATE_UNSPECIFIED" : The render state is unspecified.
  /// - "SUCCEEDED" : All rendering operations have completed successfully.
  /// - "FAILED" : All rendering operations have completed, and one or more have
  /// failed.
  /// - "IN_PROGRESS" : Rendering has started and is not complete.
  core.String? renderState;

  /// Filepath of the Skaffold config inside of the config URI.
  core.String? skaffoldConfigPath;

  /// Cloud Storage URI of tar.gz archive containing Skaffold configuration.
  core.String? skaffoldConfigUri;

  /// The Skaffold version to use when operating on this release, such as
  /// "1.20.0".
  ///
  /// Not all versions are valid; Cloud Deploy supports a specific set of
  /// versions. If unset, the most recent supported Skaffold version will be
  /// used.
  core.String? skaffoldVersion;

  /// Map from target ID to the target artifacts created during the render
  /// operation.
  ///
  /// Output only.
  core.Map<core.String, TargetArtifact>? targetArtifacts;

  /// Map from target ID to details of the render operation for that target.
  ///
  /// Output only.
  core.Map<core.String, TargetRender>? targetRenders;

  /// Snapshot of the targets taken at release creation time.
  ///
  /// Output only.
  core.List<Target>? targetSnapshots;

  /// Unique identifier of the `Release`.
  ///
  /// Output only.
  core.String? uid;

  Release({
    this.abandoned,
    this.annotations,
    this.buildArtifacts,
    this.condition,
    this.createTime,
    this.customTargetTypeSnapshots,
    this.deliveryPipelineSnapshot,
    this.deployParameters,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.renderEndTime,
    this.renderStartTime,
    this.renderState,
    this.skaffoldConfigPath,
    this.skaffoldConfigUri,
    this.skaffoldVersion,
    this.targetArtifacts,
    this.targetRenders,
    this.targetSnapshots,
    this.uid,
  });

  Release.fromJson(core.Map json_)
      : this(
          abandoned: json_.containsKey('abandoned')
              ? json_['abandoned'] as core.bool
              : null,
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          buildArtifacts: json_.containsKey('buildArtifacts')
              ? (json_['buildArtifacts'] as core.List)
                  .map((value) => BuildArtifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          condition: json_.containsKey('condition')
              ? ReleaseCondition.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          customTargetTypeSnapshots:
              json_.containsKey('customTargetTypeSnapshots')
                  ? (json_['customTargetTypeSnapshots'] as core.List)
                      .map((value) => CustomTargetType.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          deliveryPipelineSnapshot:
              json_.containsKey('deliveryPipelineSnapshot')
                  ? DeliveryPipeline.fromJson(json_['deliveryPipelineSnapshot']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          deployParameters: json_.containsKey('deployParameters')
              ? (json_['deployParameters']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
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
          renderEndTime: json_.containsKey('renderEndTime')
              ? json_['renderEndTime'] as core.String
              : null,
          renderStartTime: json_.containsKey('renderStartTime')
              ? json_['renderStartTime'] as core.String
              : null,
          renderState: json_.containsKey('renderState')
              ? json_['renderState'] as core.String
              : null,
          skaffoldConfigPath: json_.containsKey('skaffoldConfigPath')
              ? json_['skaffoldConfigPath'] as core.String
              : null,
          skaffoldConfigUri: json_.containsKey('skaffoldConfigUri')
              ? json_['skaffoldConfigUri'] as core.String
              : null,
          skaffoldVersion: json_.containsKey('skaffoldVersion')
              ? json_['skaffoldVersion'] as core.String
              : null,
          targetArtifacts: json_.containsKey('targetArtifacts')
              ? (json_['targetArtifacts']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    TargetArtifact.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          targetRenders: json_.containsKey('targetRenders')
              ? (json_['targetRenders'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    TargetRender.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          targetSnapshots: json_.containsKey('targetSnapshots')
              ? (json_['targetSnapshots'] as core.List)
                  .map((value) => Target.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (abandoned != null) 'abandoned': abandoned!,
        if (annotations != null) 'annotations': annotations!,
        if (buildArtifacts != null) 'buildArtifacts': buildArtifacts!,
        if (condition != null) 'condition': condition!,
        if (createTime != null) 'createTime': createTime!,
        if (customTargetTypeSnapshots != null)
          'customTargetTypeSnapshots': customTargetTypeSnapshots!,
        if (deliveryPipelineSnapshot != null)
          'deliveryPipelineSnapshot': deliveryPipelineSnapshot!,
        if (deployParameters != null) 'deployParameters': deployParameters!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (renderEndTime != null) 'renderEndTime': renderEndTime!,
        if (renderStartTime != null) 'renderStartTime': renderStartTime!,
        if (renderState != null) 'renderState': renderState!,
        if (skaffoldConfigPath != null)
          'skaffoldConfigPath': skaffoldConfigPath!,
        if (skaffoldConfigUri != null) 'skaffoldConfigUri': skaffoldConfigUri!,
        if (skaffoldVersion != null) 'skaffoldVersion': skaffoldVersion!,
        if (targetArtifacts != null) 'targetArtifacts': targetArtifacts!,
        if (targetRenders != null) 'targetRenders': targetRenders!,
        if (targetSnapshots != null) 'targetSnapshots': targetSnapshots!,
        if (uid != null) 'uid': uid!,
      };
}

/// ReleaseCondition contains all conditions relevant to a Release.
class ReleaseCondition {
  /// Details around the Releases's overall status.
  ReleaseReadyCondition? releaseReadyCondition;

  /// Details around the support state of the release's Skaffold version.
  SkaffoldSupportedCondition? skaffoldSupportedCondition;

  ReleaseCondition({
    this.releaseReadyCondition,
    this.skaffoldSupportedCondition,
  });

  ReleaseCondition.fromJson(core.Map json_)
      : this(
          releaseReadyCondition: json_.containsKey('releaseReadyCondition')
              ? ReleaseReadyCondition.fromJson(json_['releaseReadyCondition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          skaffoldSupportedCondition:
              json_.containsKey('skaffoldSupportedCondition')
                  ? SkaffoldSupportedCondition.fromJson(
                      json_['skaffoldSupportedCondition']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (releaseReadyCondition != null)
          'releaseReadyCondition': releaseReadyCondition!,
        if (skaffoldSupportedCondition != null)
          'skaffoldSupportedCondition': skaffoldSupportedCondition!,
      };
}

/// ReleaseReadyCondition contains information around the status of the Release.
///
/// If a release is not ready, you cannot create a rollout with the release.
class ReleaseReadyCondition {
  /// True if the Release is in a valid state.
  ///
  /// Otherwise at least one condition in `ReleaseCondition` is in an invalid
  /// state. Iterate over those conditions and see which condition(s) has status
  /// = false to find out what is wrong with the Release.
  core.bool? status;

  ReleaseReadyCondition({
    this.status,
  });

  ReleaseReadyCondition.fromJson(core.Map json_)
      : this(
          status:
              json_.containsKey('status') ? json_['status'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
      };
}

/// RenderMetadata includes information associated with a `Release` render.
class RenderMetadata {
  /// Metadata associated with rendering for Cloud Run.
  ///
  /// Output only.
  CloudRunRenderMetadata? cloudRun;

  /// Custom metadata provided by user-defined render operation.
  ///
  /// Output only.
  CustomMetadata? custom;

  RenderMetadata({
    this.cloudRun,
    this.custom,
  });

  RenderMetadata.fromJson(core.Map json_)
      : this(
          cloudRun: json_.containsKey('cloudRun')
              ? CloudRunRenderMetadata.fromJson(
                  json_['cloudRun'] as core.Map<core.String, core.dynamic>)
              : null,
          custom: json_.containsKey('custom')
              ? CustomMetadata.fromJson(
                  json_['custom'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudRun != null) 'cloudRun': cloudRun!,
        if (custom != null) 'custom': custom!,
      };
}

/// Configuration of the repair action.
class RepairMode {
  /// Retries a failed job.
  ///
  /// Optional.
  Retry? retry;

  /// Rolls back a `Rollout`.
  ///
  /// Optional.
  Rollback? rollback;

  RepairMode({
    this.retry,
    this.rollback,
  });

  RepairMode.fromJson(core.Map json_)
      : this(
          retry: json_.containsKey('retry')
              ? Retry.fromJson(
                  json_['retry'] as core.Map<core.String, core.dynamic>)
              : null,
          rollback: json_.containsKey('rollback')
              ? Rollback.fromJson(
                  json_['rollback'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (retry != null) 'retry': retry!,
        if (rollback != null) 'rollback': rollback!,
      };
}

/// RepairPhase tracks the repair attempts that have been made for each
/// `RepairMode` specified in the `Automation` resource.
class RepairPhase {
  /// Records of the retry attempts for retry repair mode.
  ///
  /// Output only.
  RetryPhase? retry;

  /// Rollback attempt for rollback repair mode .
  ///
  /// Output only.
  RollbackAttempt? rollback;

  RepairPhase({
    this.retry,
    this.rollback,
  });

  RepairPhase.fromJson(core.Map json_)
      : this(
          retry: json_.containsKey('retry')
              ? RetryPhase.fromJson(
                  json_['retry'] as core.Map<core.String, core.dynamic>)
              : null,
          rollback: json_.containsKey('rollback')
              ? RollbackAttempt.fromJson(
                  json_['rollback'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (retry != null) 'retry': retry!,
        if (rollback != null) 'rollback': rollback!,
      };
}

/// Contains the information for an automated `repair rollout` operation.
class RepairRolloutOperation {
  /// The index of the current repair action in the repair sequence.
  ///
  /// Output only.
  core.String? currentRepairModeIndex;

  /// The job ID for the Job to repair.
  ///
  /// Output only.
  core.String? jobId;

  /// The phase ID of the phase that includes the job being repaired.
  ///
  /// Output only.
  core.String? phaseId;

  /// Records of the repair attempts.
  ///
  /// Each repair phase may have multiple retry attempts or single rollback
  /// attempt.
  ///
  /// Output only.
  core.List<RepairPhase>? repairPhases;

  /// The name of the rollout that initiates the `AutomationRun`.
  ///
  /// Output only.
  core.String? rollout;

  RepairRolloutOperation({
    this.currentRepairModeIndex,
    this.jobId,
    this.phaseId,
    this.repairPhases,
    this.rollout,
  });

  RepairRolloutOperation.fromJson(core.Map json_)
      : this(
          currentRepairModeIndex: json_.containsKey('currentRepairModeIndex')
              ? json_['currentRepairModeIndex'] as core.String
              : null,
          jobId:
              json_.containsKey('jobId') ? json_['jobId'] as core.String : null,
          phaseId: json_.containsKey('phaseId')
              ? json_['phaseId'] as core.String
              : null,
          repairPhases: json_.containsKey('repairPhases')
              ? (json_['repairPhases'] as core.List)
                  .map((value) => RepairPhase.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rollout: json_.containsKey('rollout')
              ? json_['rollout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentRepairModeIndex != null)
          'currentRepairModeIndex': currentRepairModeIndex!,
        if (jobId != null) 'jobId': jobId!,
        if (phaseId != null) 'phaseId': phaseId!,
        if (repairPhases != null) 'repairPhases': repairPhases!,
        if (rollout != null) 'rollout': rollout!,
      };
}

/// The `RepairRolloutRule` automation rule will automatically repair a failed
/// `Rollout`.
class RepairRolloutRule {
  /// Information around the state of the 'Automation' rule.
  ///
  /// Output only.
  AutomationRuleCondition? condition;

  /// ID of the rule.
  ///
  /// This id must be unique in the `Automation` resource to which this rule
  /// belongs. The format is `a-z{0,62}`.
  ///
  /// Required.
  core.String? id;

  /// Jobs to repair.
  ///
  /// Proceeds only after job name matched any one in the list, or for all jobs
  /// if unspecified or empty. The phase that includes the job must match the
  /// phase ID specified in `source_phase`. This value must consist of
  /// lower-case letters, numbers, and hyphens, start with a letter and end with
  /// a letter or a number, and have a max length of 63 characters. In other
  /// words, it must match the following regex:
  /// `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  ///
  /// Optional.
  core.List<core.String>? jobs;

  /// Defines the types of automatic repair actions for failed jobs.
  ///
  /// Required.
  core.List<RepairMode>? repairModes;

  /// Phases within which jobs are subject to automatic repair actions on
  /// failure.
  ///
  /// Proceeds only after phase name matched any one in the list, or for all
  /// phases if unspecified. This value must consist of lower-case letters,
  /// numbers, and hyphens, start with a letter and end with a letter or a
  /// number, and have a max length of 63 characters. In other words, it must
  /// match the following regex: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
  ///
  /// Optional.
  core.List<core.String>? sourcePhases;

  RepairRolloutRule({
    this.condition,
    this.id,
    this.jobs,
    this.repairModes,
    this.sourcePhases,
  });

  RepairRolloutRule.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? AutomationRuleCondition.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          repairModes: json_.containsKey('repairModes')
              ? (json_['repairModes'] as core.List)
                  .map((value) => RepairMode.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sourcePhases: json_.containsKey('sourcePhases')
              ? (json_['sourcePhases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (id != null) 'id': id!,
        if (jobs != null) 'jobs': jobs!,
        if (repairModes != null) 'repairModes': repairModes!,
        if (sourcePhases != null) 'sourcePhases': sourcePhases!,
      };
}

/// Retries the failed job.
class Retry {
  /// Total number of retries.
  ///
  /// Retry is skipped if set to 0; The minimum value is 1, and the maximum
  /// value is 10.
  ///
  /// Required.
  core.String? attempts;

  /// The pattern of how wait time will be increased.
  ///
  /// Default is linear. Backoff mode will be ignored if `wait` is 0.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BACKOFF_MODE_UNSPECIFIED" : No WaitMode is specified.
  /// - "BACKOFF_MODE_LINEAR" : Increases the wait time linearly.
  /// - "BACKOFF_MODE_EXPONENTIAL" : Increases the wait time exponentially.
  core.String? backoffMode;

  /// How long to wait for the first retry.
  ///
  /// Default is 0, and the maximum value is 14d.
  ///
  /// Optional.
  core.String? wait;

  Retry({
    this.attempts,
    this.backoffMode,
    this.wait,
  });

  Retry.fromJson(core.Map json_)
      : this(
          attempts: json_.containsKey('attempts')
              ? json_['attempts'] as core.String
              : null,
          backoffMode: json_.containsKey('backoffMode')
              ? json_['backoffMode'] as core.String
              : null,
          wait: json_.containsKey('wait') ? json_['wait'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attempts != null) 'attempts': attempts!,
        if (backoffMode != null) 'backoffMode': backoffMode!,
        if (wait != null) 'wait': wait!,
      };
}

/// RetryAttempt represents an action of retrying the failed Cloud Deploy job.
class RetryAttempt {
  /// The index of this retry attempt.
  ///
  /// Output only.
  core.String? attempt;

  /// Valid state of this retry action.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REPAIR_STATE_UNSPECIFIED" : The `repair` has an unspecified state.
  /// - "REPAIR_STATE_SUCCEEDED" : The `repair` action has succeeded.
  /// - "REPAIR_STATE_CANCELLED" : The `repair` action was cancelled.
  /// - "REPAIR_STATE_FAILED" : The `repair` action has failed.
  /// - "REPAIR_STATE_IN_PROGRESS" : The `repair` action is in progress.
  /// - "REPAIR_STATE_PENDING" : The `repair` action is pending.
  /// - "REPAIR_STATE_SKIPPED" : The `repair` action was skipped.
  /// - "REPAIR_STATE_ABORTED" : The `repair` action was aborted.
  core.String? state;

  /// Description of the state of the Retry.
  ///
  /// Output only.
  core.String? stateDesc;

  /// How long the operation will be paused.
  ///
  /// Output only.
  core.String? wait;

  RetryAttempt({
    this.attempt,
    this.state,
    this.stateDesc,
    this.wait,
  });

  RetryAttempt.fromJson(core.Map json_)
      : this(
          attempt: json_.containsKey('attempt')
              ? json_['attempt'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateDesc: json_.containsKey('stateDesc')
              ? json_['stateDesc'] as core.String
              : null,
          wait: json_.containsKey('wait') ? json_['wait'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attempt != null) 'attempt': attempt!,
        if (state != null) 'state': state!,
        if (stateDesc != null) 'stateDesc': stateDesc!,
        if (wait != null) 'wait': wait!,
      };
}

/// RetryJobRequest is the request object used by `RetryJob`.
class RetryJobRequest {
  /// The job ID for the Job to retry.
  ///
  /// Required.
  core.String? jobId;

  /// The phase ID the Job to retry belongs to.
  ///
  /// Required.
  core.String? phaseId;

  RetryJobRequest({
    this.jobId,
    this.phaseId,
  });

  RetryJobRequest.fromJson(core.Map json_)
      : this(
          jobId:
              json_.containsKey('jobId') ? json_['jobId'] as core.String : null,
          phaseId: json_.containsKey('phaseId')
              ? json_['phaseId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobId != null) 'jobId': jobId!,
        if (phaseId != null) 'phaseId': phaseId!,
      };
}

/// The response object from 'RetryJob'.
typedef RetryJobResponse = $Empty;

/// RetryPhase contains the retry attempts and the metadata for initiating a new
/// attempt.
class RetryPhase {
  /// Detail of a retry action.
  ///
  /// Output only.
  core.List<RetryAttempt>? attempts;

  /// The pattern of how the wait time of the retry attempt is calculated.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BACKOFF_MODE_UNSPECIFIED" : No WaitMode is specified.
  /// - "BACKOFF_MODE_LINEAR" : Increases the wait time linearly.
  /// - "BACKOFF_MODE_EXPONENTIAL" : Increases the wait time exponentially.
  core.String? backoffMode;

  /// The job ID for the Job to retry.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? jobId;

  /// The phase ID of the phase that includes the job being retried.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? phaseId;

  /// The number of attempts that have been made.
  ///
  /// Output only.
  core.String? totalAttempts;

  RetryPhase({
    this.attempts,
    this.backoffMode,
    this.jobId,
    this.phaseId,
    this.totalAttempts,
  });

  RetryPhase.fromJson(core.Map json_)
      : this(
          attempts: json_.containsKey('attempts')
              ? (json_['attempts'] as core.List)
                  .map((value) => RetryAttempt.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          backoffMode: json_.containsKey('backoffMode')
              ? json_['backoffMode'] as core.String
              : null,
          jobId:
              json_.containsKey('jobId') ? json_['jobId'] as core.String : null,
          phaseId: json_.containsKey('phaseId')
              ? json_['phaseId'] as core.String
              : null,
          totalAttempts: json_.containsKey('totalAttempts')
              ? json_['totalAttempts'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attempts != null) 'attempts': attempts!,
        if (backoffMode != null) 'backoffMode': backoffMode!,
        if (jobId != null) 'jobId': jobId!,
        if (phaseId != null) 'phaseId': phaseId!,
        if (totalAttempts != null) 'totalAttempts': totalAttempts!,
      };
}

/// Rolls back a `Rollout`.
class Rollback {
  /// The starting phase ID for the `Rollout`.
  ///
  /// If unspecified, the `Rollout` will start in the stable phase.
  ///
  /// Optional.
  core.String? destinationPhase;

  Rollback({
    this.destinationPhase,
  });

  Rollback.fromJson(core.Map json_)
      : this(
          destinationPhase: json_.containsKey('destinationPhase')
              ? json_['destinationPhase'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationPhase != null) 'destinationPhase': destinationPhase!,
      };
}

/// RollbackAttempt represents an action of rolling back a Cloud Deploy
/// 'Target'.
class RollbackAttempt {
  /// The phase to which the rollout will be rolled back to.
  ///
  /// Output only.
  core.String? destinationPhase;

  /// ID of the rollback `Rollout` to create.
  ///
  /// Output only.
  core.String? rolloutId;

  /// Valid state of this rollback action.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REPAIR_STATE_UNSPECIFIED" : The `repair` has an unspecified state.
  /// - "REPAIR_STATE_SUCCEEDED" : The `repair` action has succeeded.
  /// - "REPAIR_STATE_CANCELLED" : The `repair` action was cancelled.
  /// - "REPAIR_STATE_FAILED" : The `repair` action has failed.
  /// - "REPAIR_STATE_IN_PROGRESS" : The `repair` action is in progress.
  /// - "REPAIR_STATE_PENDING" : The `repair` action is pending.
  /// - "REPAIR_STATE_SKIPPED" : The `repair` action was skipped.
  /// - "REPAIR_STATE_ABORTED" : The `repair` action was aborted.
  core.String? state;

  /// Description of the state of the Rollback.
  ///
  /// Output only.
  core.String? stateDesc;

  RollbackAttempt({
    this.destinationPhase,
    this.rolloutId,
    this.state,
    this.stateDesc,
  });

  RollbackAttempt.fromJson(core.Map json_)
      : this(
          destinationPhase: json_.containsKey('destinationPhase')
              ? json_['destinationPhase'] as core.String
              : null,
          rolloutId: json_.containsKey('rolloutId')
              ? json_['rolloutId'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateDesc: json_.containsKey('stateDesc')
              ? json_['stateDesc'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationPhase != null) 'destinationPhase': destinationPhase!,
        if (rolloutId != null) 'rolloutId': rolloutId!,
        if (state != null) 'state': state!,
        if (stateDesc != null) 'stateDesc': stateDesc!,
      };
}

/// Configs for the Rollback rollout.
class RollbackTargetConfig {
  /// The rollback `Rollout` to create.
  ///
  /// Optional.
  Rollout? rollout;

  /// The starting phase ID for the `Rollout`.
  ///
  /// If unspecified, the `Rollout` will start in the stable phase.
  ///
  /// Optional.
  core.String? startingPhaseId;

  RollbackTargetConfig({
    this.rollout,
    this.startingPhaseId,
  });

  RollbackTargetConfig.fromJson(core.Map json_)
      : this(
          rollout: json_.containsKey('rollout')
              ? Rollout.fromJson(
                  json_['rollout'] as core.Map<core.String, core.dynamic>)
              : null,
          startingPhaseId: json_.containsKey('startingPhaseId')
              ? json_['startingPhaseId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rollout != null) 'rollout': rollout!,
        if (startingPhaseId != null) 'startingPhaseId': startingPhaseId!,
      };
}

/// The request object for `RollbackTarget`.
class RollbackTargetRequest {
  /// ID of the `Release` to roll back to.
  ///
  /// If this isn't specified, the previous successful `Rollout` to the
  /// specified target will be used to determine the `Release`.
  ///
  /// Optional.
  core.String? releaseId;

  /// Configs for the rollback `Rollout`.
  ///
  /// Optional.
  RollbackTargetConfig? rollbackConfig;

  /// ID of the rollback `Rollout` to create.
  ///
  /// Required.
  core.String? rolloutId;

  /// If provided, this must be the latest `Rollout` that is on the `Target`.
  ///
  /// Optional.
  core.String? rolloutToRollBack;

  /// ID of the `Target` that is being rolled back.
  ///
  /// Required.
  core.String? targetId;

  /// If set to true, the request is validated and the user is provided with a
  /// `RollbackTargetResponse`.
  ///
  /// Optional.
  core.bool? validateOnly;

  RollbackTargetRequest({
    this.releaseId,
    this.rollbackConfig,
    this.rolloutId,
    this.rolloutToRollBack,
    this.targetId,
    this.validateOnly,
  });

  RollbackTargetRequest.fromJson(core.Map json_)
      : this(
          releaseId: json_.containsKey('releaseId')
              ? json_['releaseId'] as core.String
              : null,
          rollbackConfig: json_.containsKey('rollbackConfig')
              ? RollbackTargetConfig.fromJson(json_['rollbackConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rolloutId: json_.containsKey('rolloutId')
              ? json_['rolloutId'] as core.String
              : null,
          rolloutToRollBack: json_.containsKey('rolloutToRollBack')
              ? json_['rolloutToRollBack'] as core.String
              : null,
          targetId: json_.containsKey('targetId')
              ? json_['targetId'] as core.String
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (releaseId != null) 'releaseId': releaseId!,
        if (rollbackConfig != null) 'rollbackConfig': rollbackConfig!,
        if (rolloutId != null) 'rolloutId': rolloutId!,
        if (rolloutToRollBack != null) 'rolloutToRollBack': rolloutToRollBack!,
        if (targetId != null) 'targetId': targetId!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// The response object from `RollbackTarget`.
class RollbackTargetResponse {
  /// The config of the rollback `Rollout` created or will be created.
  RollbackTargetConfig? rollbackConfig;

  RollbackTargetResponse({
    this.rollbackConfig,
  });

  RollbackTargetResponse.fromJson(core.Map json_)
      : this(
          rollbackConfig: json_.containsKey('rollbackConfig')
              ? RollbackTargetConfig.fromJson(json_['rollbackConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rollbackConfig != null) 'rollbackConfig': rollbackConfig!,
      };
}

/// A `Rollout` resource in the Cloud Deploy API.
///
/// A `Rollout` contains information around a specific deployment to a `Target`.
class Rollout {
  /// User annotations.
  ///
  /// These attributes can only be set and used by the user, and not by Cloud
  /// Deploy. See https://google.aip.dev/128#annotations for more details such
  /// as format and size limitations.
  core.Map<core.String, core.String>? annotations;

  /// Approval state of the `Rollout`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "APPROVAL_STATE_UNSPECIFIED" : The `Rollout` has an unspecified approval
  /// state.
  /// - "NEEDS_APPROVAL" : The `Rollout` requires approval.
  /// - "DOES_NOT_NEED_APPROVAL" : The `Rollout` does not require approval.
  /// - "APPROVED" : The `Rollout` has been approved.
  /// - "REJECTED" : The `Rollout` has been rejected.
  core.String? approvalState;

  /// Time at which the `Rollout` was approved.
  ///
  /// Output only.
  core.String? approveTime;

  /// Name of the `ControllerRollout`.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  ///
  /// Output only.
  core.String? controllerRollout;

  /// Time at which the `Rollout` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Time at which the `Rollout` finished deploying.
  ///
  /// Output only.
  core.String? deployEndTime;

  /// The reason this rollout failed.
  ///
  /// This will always be unspecified while the rollout is in progress.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FAILURE_CAUSE_UNSPECIFIED" : No reason for failure is specified.
  /// - "CLOUD_BUILD_UNAVAILABLE" : Cloud Build is not available, either because
  /// it is not enabled or because Cloud Deploy has insufficient permissions.
  /// See
  /// [required permission](https://cloud.google.com/deploy/docs/cloud-deploy-service-account#required_permissions).
  /// - "EXECUTION_FAILED" : The deploy operation did not complete successfully;
  /// check Cloud Build logs.
  /// - "DEADLINE_EXCEEDED" : Deployment did not complete within the alloted
  /// time.
  /// - "RELEASE_FAILED" : Release is in a failed state.
  /// - "RELEASE_ABANDONED" : Release is abandoned.
  /// - "VERIFICATION_CONFIG_NOT_FOUND" : No Skaffold verify configuration was
  /// found.
  /// - "CLOUD_BUILD_REQUEST_FAILED" : Cloud Build failed to fulfill Cloud
  /// Deploy's request. See failure_message for additional details.
  /// - "OPERATION_FEATURE_NOT_SUPPORTED" : A Rollout operation had a feature
  /// configured that is not supported.
  core.String? deployFailureCause;

  /// Time at which the `Rollout` started deploying.
  ///
  /// Output only.
  core.String? deployStartTime;

  /// The resource name of the Cloud Build `Build` object that is used to deploy
  /// the Rollout.
  ///
  /// Format is `projects/{project}/locations/{location}/builds/{build}`.
  ///
  /// Output only.
  core.String? deployingBuild;

  /// Description of the `Rollout` for user purposes.
  ///
  /// Max length is 255 characters.
  core.String? description;

  /// Time at which the `Rollout` was enqueued.
  ///
  /// Output only.
  core.String? enqueueTime;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  core.String? etag;

  /// Additional information about the rollout failure, if available.
  ///
  /// Output only.
  core.String? failureReason;

  /// Labels are attributes that can be set and used by both the user and by
  /// Cloud Deploy.
  ///
  /// Labels must meet the following constraints: * Keys and values can contain
  /// only lowercase letters, numeric characters, underscores, and dashes. * All
  /// characters must use UTF-8 encoding, and international characters are
  /// allowed. * Keys must start with a lowercase letter or international
  /// character. * Each resource is limited to a maximum of 64 labels. Both keys
  /// and values are additionally constrained to be \<= 128 bytes.
  core.Map<core.String, core.String>? labels;

  /// Metadata contains information about the rollout.
  ///
  /// Output only.
  Metadata? metadata;

  /// Name of the `Rollout`.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/releases/{release}/rollouts/a-z{0,62}`.
  ///
  /// Optional.
  core.String? name;

  /// The phases that represent the workflows of this `Rollout`.
  ///
  /// Output only.
  core.List<Phase>? phases;

  /// Name of the `Rollout` that is rolled back by this `Rollout`.
  ///
  /// Empty if this `Rollout` wasn't created as a rollback.
  ///
  /// Output only.
  core.String? rollbackOfRollout;

  /// Names of `Rollouts` that rolled back this `Rollout`.
  ///
  /// Output only.
  core.List<core.String>? rolledBackByRollouts;

  /// Current state of the `Rollout`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The `Rollout` has an unspecified state.
  /// - "SUCCEEDED" : The `Rollout` has completed successfully.
  /// - "FAILED" : The `Rollout` has failed.
  /// - "IN_PROGRESS" : The `Rollout` is being deployed.
  /// - "PENDING_APPROVAL" : The `Rollout` needs approval.
  /// - "APPROVAL_REJECTED" : An approver rejected the `Rollout`.
  /// - "PENDING" : The `Rollout` is waiting for an earlier Rollout(s) to
  /// complete on this `Target`.
  /// - "PENDING_RELEASE" : The `Rollout` is waiting for the `Release` to be
  /// fully rendered.
  /// - "CANCELLING" : The `Rollout` is in the process of being cancelled.
  /// - "CANCELLED" : The `Rollout` has been cancelled.
  /// - "HALTED" : The `Rollout` is halted.
  core.String? state;

  /// The ID of Target to which this `Rollout` is deploying.
  ///
  /// Required.
  core.String? targetId;

  /// Unique identifier of the `Rollout`.
  ///
  /// Output only.
  core.String? uid;

  Rollout({
    this.annotations,
    this.approvalState,
    this.approveTime,
    this.controllerRollout,
    this.createTime,
    this.deployEndTime,
    this.deployFailureCause,
    this.deployStartTime,
    this.deployingBuild,
    this.description,
    this.enqueueTime,
    this.etag,
    this.failureReason,
    this.labels,
    this.metadata,
    this.name,
    this.phases,
    this.rollbackOfRollout,
    this.rolledBackByRollouts,
    this.state,
    this.targetId,
    this.uid,
  });

  Rollout.fromJson(core.Map json_)
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
          approvalState: json_.containsKey('approvalState')
              ? json_['approvalState'] as core.String
              : null,
          approveTime: json_.containsKey('approveTime')
              ? json_['approveTime'] as core.String
              : null,
          controllerRollout: json_.containsKey('controllerRollout')
              ? json_['controllerRollout'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deployEndTime: json_.containsKey('deployEndTime')
              ? json_['deployEndTime'] as core.String
              : null,
          deployFailureCause: json_.containsKey('deployFailureCause')
              ? json_['deployFailureCause'] as core.String
              : null,
          deployStartTime: json_.containsKey('deployStartTime')
              ? json_['deployStartTime'] as core.String
              : null,
          deployingBuild: json_.containsKey('deployingBuild')
              ? json_['deployingBuild'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          enqueueTime: json_.containsKey('enqueueTime')
              ? json_['enqueueTime'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          failureReason: json_.containsKey('failureReason')
              ? json_['failureReason'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          metadata: json_.containsKey('metadata')
              ? Metadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          phases: json_.containsKey('phases')
              ? (json_['phases'] as core.List)
                  .map((value) => Phase.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rollbackOfRollout: json_.containsKey('rollbackOfRollout')
              ? json_['rollbackOfRollout'] as core.String
              : null,
          rolledBackByRollouts: json_.containsKey('rolledBackByRollouts')
              ? (json_['rolledBackByRollouts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          targetId: json_.containsKey('targetId')
              ? json_['targetId'] as core.String
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (approvalState != null) 'approvalState': approvalState!,
        if (approveTime != null) 'approveTime': approveTime!,
        if (controllerRollout != null) 'controllerRollout': controllerRollout!,
        if (createTime != null) 'createTime': createTime!,
        if (deployEndTime != null) 'deployEndTime': deployEndTime!,
        if (deployFailureCause != null)
          'deployFailureCause': deployFailureCause!,
        if (deployStartTime != null) 'deployStartTime': deployStartTime!,
        if (deployingBuild != null) 'deployingBuild': deployingBuild!,
        if (description != null) 'description': description!,
        if (enqueueTime != null) 'enqueueTime': enqueueTime!,
        if (etag != null) 'etag': etag!,
        if (failureReason != null) 'failureReason': failureReason!,
        if (labels != null) 'labels': labels!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (phases != null) 'phases': phases!,
        if (rollbackOfRollout != null) 'rollbackOfRollout': rollbackOfRollout!,
        if (rolledBackByRollouts != null)
          'rolledBackByRollouts': rolledBackByRollouts!,
        if (state != null) 'state': state!,
        if (targetId != null) 'targetId': targetId!,
        if (uid != null) 'uid': uid!,
      };
}

/// RuntimeConfig contains the runtime specific configurations for a deployment
/// strategy.
class RuntimeConfig {
  /// Cloud Run runtime configuration.
  CloudRunConfig? cloudRun;

  /// Kubernetes runtime configuration.
  KubernetesConfig? kubernetes;

  RuntimeConfig({
    this.cloudRun,
    this.kubernetes,
  });

  RuntimeConfig.fromJson(core.Map json_)
      : this(
          cloudRun: json_.containsKey('cloudRun')
              ? CloudRunConfig.fromJson(
                  json_['cloudRun'] as core.Map<core.String, core.dynamic>)
              : null,
          kubernetes: json_.containsKey('kubernetes')
              ? KubernetesConfig.fromJson(
                  json_['kubernetes'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudRun != null) 'cloudRun': cloudRun!,
        if (kubernetes != null) 'kubernetes': kubernetes!,
      };
}

/// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
class SerialPipeline {
  /// Each stage specifies configuration for a `Target`.
  ///
  /// The ordering of this list defines the promotion flow.
  core.List<Stage>? stages;

  SerialPipeline({
    this.stages,
  });

  SerialPipeline.fromJson(core.Map json_)
      : this(
          stages: json_.containsKey('stages')
              ? (json_['stages'] as core.List)
                  .map((value) => Stage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stages != null) 'stages': stages!,
      };
}

/// Information about the Kubernetes Service networking configuration.
class ServiceNetworking {
  /// Name of the Kubernetes Deployment whose traffic is managed by the
  /// specified Service.
  ///
  /// Required.
  core.String? deployment;

  /// Whether to disable Pod overprovisioning.
  ///
  /// If Pod overprovisioning is disabled then Cloud Deploy will limit the
  /// number of total Pods used for the deployment strategy to the number of
  /// Pods the Deployment has on the cluster.
  ///
  /// Optional.
  core.bool? disablePodOverprovisioning;

  /// Name of the Kubernetes Service.
  ///
  /// Required.
  core.String? service;

  ServiceNetworking({
    this.deployment,
    this.disablePodOverprovisioning,
    this.service,
  });

  ServiceNetworking.fromJson(core.Map json_)
      : this(
          deployment: json_.containsKey('deployment')
              ? json_['deployment'] as core.String
              : null,
          disablePodOverprovisioning:
              json_.containsKey('disablePodOverprovisioning')
                  ? json_['disablePodOverprovisioning'] as core.bool
                  : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployment != null) 'deployment': deployment!,
        if (disablePodOverprovisioning != null)
          'disablePodOverprovisioning': disablePodOverprovisioning!,
        if (service != null) 'service': service!,
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

/// Cloud Storage bucket containing Skaffold Config modules.
class SkaffoldGCSSource {
  /// Relative path from the source to the Skaffold file.
  ///
  /// Optional.
  core.String? path;

  /// Cloud Storage source paths to copy recursively.
  ///
  /// For example, providing "gs://my-bucket/dir/configs / * " will result in
  /// Skaffold copying all files within the "dir/configs" directory in the
  /// bucket "my-bucket".
  ///
  /// Required.
  core.String? source;

  SkaffoldGCSSource({
    this.path,
    this.source,
  });

  SkaffoldGCSSource.fromJson(core.Map json_)
      : this(
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
        if (source != null) 'source': source!,
      };
}

/// Git repository containing Skaffold Config modules.
class SkaffoldGitSource {
  /// Relative path from the repository root to the Skaffold file.
  ///
  /// Optional.
  core.String? path;

  /// Git ref the package should be cloned from.
  ///
  /// Optional.
  core.String? ref;

  /// Git repository the package should be cloned from.
  ///
  /// Required.
  core.String? repo;

  SkaffoldGitSource({
    this.path,
    this.ref,
    this.repo,
  });

  SkaffoldGitSource.fromJson(core.Map json_)
      : this(
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          ref: json_.containsKey('ref') ? json_['ref'] as core.String : null,
          repo: json_.containsKey('repo') ? json_['repo'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
        if (ref != null) 'ref': ref!,
        if (repo != null) 'repo': repo!,
      };
}

/// Skaffold Config modules and their remote source.
class SkaffoldModules {
  /// The Skaffold Config modules to use from the specified source.
  ///
  /// Optional.
  core.List<core.String>? configs;

  /// Remote git repository containing the Skaffold Config modules.
  SkaffoldGitSource? git;

  /// Cloud Storage bucket containing the Skaffold Config modules.
  SkaffoldGCSSource? googleCloudStorage;

  SkaffoldModules({
    this.configs,
    this.git,
    this.googleCloudStorage,
  });

  SkaffoldModules.fromJson(core.Map json_)
      : this(
          configs: json_.containsKey('configs')
              ? (json_['configs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          git: json_.containsKey('git')
              ? SkaffoldGitSource.fromJson(
                  json_['git'] as core.Map<core.String, core.dynamic>)
              : null,
          googleCloudStorage: json_.containsKey('googleCloudStorage')
              ? SkaffoldGCSSource.fromJson(json_['googleCloudStorage']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configs != null) 'configs': configs!,
        if (git != null) 'git': git!,
        if (googleCloudStorage != null)
          'googleCloudStorage': googleCloudStorage!,
      };
}

/// SkaffoldSupportedCondition contains information about when support for the
/// release's version of Skaffold ends.
class SkaffoldSupportedCondition {
  /// The time at which this release's version of Skaffold will enter
  /// maintenance mode.
  core.String? maintenanceModeTime;

  /// The Skaffold support state for this release's version of Skaffold.
  /// Possible string values are:
  /// - "SKAFFOLD_SUPPORT_STATE_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "SKAFFOLD_SUPPORT_STATE_SUPPORTED" : This Skaffold version is currently
  /// supported.
  /// - "SKAFFOLD_SUPPORT_STATE_MAINTENANCE_MODE" : This Skaffold version is in
  /// maintenance mode.
  /// - "SKAFFOLD_SUPPORT_STATE_UNSUPPORTED" : This Skaffold version is no
  /// longer supported.
  core.String? skaffoldSupportState;

  /// True if the version of Skaffold used by this release is supported.
  core.bool? status;

  /// The time at which this release's version of Skaffold will no longer be
  /// supported.
  core.String? supportExpirationTime;

  SkaffoldSupportedCondition({
    this.maintenanceModeTime,
    this.skaffoldSupportState,
    this.status,
    this.supportExpirationTime,
  });

  SkaffoldSupportedCondition.fromJson(core.Map json_)
      : this(
          maintenanceModeTime: json_.containsKey('maintenanceModeTime')
              ? json_['maintenanceModeTime'] as core.String
              : null,
          skaffoldSupportState: json_.containsKey('skaffoldSupportState')
              ? json_['skaffoldSupportState'] as core.String
              : null,
          status:
              json_.containsKey('status') ? json_['status'] as core.bool : null,
          supportExpirationTime: json_.containsKey('supportExpirationTime')
              ? json_['supportExpirationTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maintenanceModeTime != null)
          'maintenanceModeTime': maintenanceModeTime!,
        if (skaffoldSupportState != null)
          'skaffoldSupportState': skaffoldSupportState!,
        if (status != null) 'status': status!,
        if (supportExpirationTime != null)
          'supportExpirationTime': supportExpirationTime!,
      };
}

/// Details of a supported Skaffold version.
class SkaffoldVersion {
  /// The time at which this version of Skaffold will enter maintenance mode.
  core.String? maintenanceModeTime;

  /// Date when this version is expected to no longer be supported.
  Date? supportEndDate;

  /// The time at which this version of Skaffold will no longer be supported.
  core.String? supportExpirationTime;

  /// Release version number.
  ///
  /// For example, "1.20.3".
  core.String? version;

  SkaffoldVersion({
    this.maintenanceModeTime,
    this.supportEndDate,
    this.supportExpirationTime,
    this.version,
  });

  SkaffoldVersion.fromJson(core.Map json_)
      : this(
          maintenanceModeTime: json_.containsKey('maintenanceModeTime')
              ? json_['maintenanceModeTime'] as core.String
              : null,
          supportEndDate: json_.containsKey('supportEndDate')
              ? Date.fromJson(json_['supportEndDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          supportExpirationTime: json_.containsKey('supportExpirationTime')
              ? json_['supportExpirationTime'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maintenanceModeTime != null)
          'maintenanceModeTime': maintenanceModeTime!,
        if (supportEndDate != null) 'supportEndDate': supportEndDate!,
        if (supportExpirationTime != null)
          'supportExpirationTime': supportExpirationTime!,
        if (version != null) 'version': version!,
      };
}

/// Stage specifies a location to which to deploy.
class Stage {
  /// The deploy parameters to use for the target in this stage.
  ///
  /// Optional.
  core.List<DeployParameters>? deployParameters;

  /// Skaffold profiles to use when rendering the manifest for this stage's
  /// `Target`.
  core.List<core.String>? profiles;

  /// The strategy to use for a `Rollout` to this stage.
  ///
  /// Optional.
  Strategy? strategy;

  /// The target_id to which this stage points.
  ///
  /// This field refers exclusively to the last segment of a target name. For
  /// example, this field would just be `my-target` (rather than
  /// `projects/project/locations/location/targets/my-target`). The location of
  /// the `Target` is inferred to be the same as the location of the
  /// `DeliveryPipeline` that contains this `Stage`.
  core.String? targetId;

  Stage({
    this.deployParameters,
    this.profiles,
    this.strategy,
    this.targetId,
  });

  Stage.fromJson(core.Map json_)
      : this(
          deployParameters: json_.containsKey('deployParameters')
              ? (json_['deployParameters'] as core.List)
                  .map((value) => DeployParameters.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          profiles: json_.containsKey('profiles')
              ? (json_['profiles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          strategy: json_.containsKey('strategy')
              ? Strategy.fromJson(
                  json_['strategy'] as core.Map<core.String, core.dynamic>)
              : null,
          targetId: json_.containsKey('targetId')
              ? json_['targetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployParameters != null) 'deployParameters': deployParameters!,
        if (profiles != null) 'profiles': profiles!,
        if (strategy != null) 'strategy': strategy!,
        if (targetId != null) 'targetId': targetId!,
      };
}

/// Standard represents the standard deployment strategy.
class Standard {
  /// Configuration for the postdeploy job.
  ///
  /// If this is not configured, postdeploy job will not be present.
  ///
  /// Optional.
  Postdeploy? postdeploy;

  /// Configuration for the predeploy job.
  ///
  /// If this is not configured, predeploy job will not be present.
  ///
  /// Optional.
  Predeploy? predeploy;

  /// Whether to verify a deployment.
  core.bool? verify;

  Standard({
    this.postdeploy,
    this.predeploy,
    this.verify,
  });

  Standard.fromJson(core.Map json_)
      : this(
          postdeploy: json_.containsKey('postdeploy')
              ? Postdeploy.fromJson(
                  json_['postdeploy'] as core.Map<core.String, core.dynamic>)
              : null,
          predeploy: json_.containsKey('predeploy')
              ? Predeploy.fromJson(
                  json_['predeploy'] as core.Map<core.String, core.dynamic>)
              : null,
          verify:
              json_.containsKey('verify') ? json_['verify'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (postdeploy != null) 'postdeploy': postdeploy!,
        if (predeploy != null) 'predeploy': predeploy!,
        if (verify != null) 'verify': verify!,
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

/// Strategy contains deployment strategy information.
class Strategy {
  /// Canary deployment strategy provides progressive percentage based
  /// deployments to a Target.
  Canary? canary;

  /// Standard deployment strategy executes a single deploy and allows verifying
  /// the deployment.
  Standard? standard;

  Strategy({
    this.canary,
    this.standard,
  });

  Strategy.fromJson(core.Map json_)
      : this(
          canary: json_.containsKey('canary')
              ? Canary.fromJson(
                  json_['canary'] as core.Map<core.String, core.dynamic>)
              : null,
          standard: json_.containsKey('standard')
              ? Standard.fromJson(
                  json_['standard'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canary != null) 'canary': canary!,
        if (standard != null) 'standard': standard!,
      };
}

/// A `Target` resource in the Cloud Deploy API.
///
/// A `Target` defines a location to which a Skaffold configuration can be
/// deployed.
class Target {
  /// User annotations.
  ///
  /// These attributes can only be set and used by the user, and not by Cloud
  /// Deploy. See https://google.aip.dev/128#annotations for more details such
  /// as format and size limitations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Information specifying an Anthos Cluster.
  ///
  /// Optional.
  AnthosCluster? anthosCluster;

  /// Time at which the `Target` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Information specifying a Custom Target.
  ///
  /// Optional.
  CustomTarget? customTarget;

  /// The deploy parameters to use for this target.
  ///
  /// Optional.
  core.Map<core.String, core.String>? deployParameters;

  /// Description of the `Target`.
  ///
  /// Max length is 255 characters.
  ///
  /// Optional.
  core.String? description;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// Optional.
  core.String? etag;

  /// Configurations for all execution that relates to this `Target`.
  ///
  /// Each `ExecutionEnvironmentUsage` value may only be used in a single
  /// configuration; using the same value multiple times is an error. When one
  /// or more configurations are specified, they must include the `RENDER` and
  /// `DEPLOY` `ExecutionEnvironmentUsage` values. When no configurations are
  /// specified, execution will use the default specified in `DefaultPool`.
  core.List<ExecutionConfig>? executionConfigs;

  /// Information specifying a GKE Cluster.
  ///
  /// Optional.
  GkeCluster? gke;

  /// Labels are attributes that can be set and used by both the user and by
  /// Cloud Deploy.
  ///
  /// Labels must meet the following constraints: * Keys and values can contain
  /// only lowercase letters, numeric characters, underscores, and dashes. * All
  /// characters must use UTF-8 encoding, and international characters are
  /// allowed. * Keys must start with a lowercase letter or international
  /// character. * Each resource is limited to a maximum of 64 labels. Both keys
  /// and values are additionally constrained to be \<= 128 bytes.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Information specifying a multiTarget.
  ///
  /// Optional.
  MultiTarget? multiTarget;

  /// Name of the `Target`.
  ///
  /// Format is `projects/{project}/locations/{location}/targets/a-z{0,62}`.
  ///
  /// Optional.
  core.String? name;

  /// Whether or not the `Target` requires approval.
  ///
  /// Optional.
  core.bool? requireApproval;

  /// Information specifying a Cloud Run deployment target.
  ///
  /// Optional.
  CloudRunLocation? run;

  /// Resource id of the `Target`.
  ///
  /// Output only.
  core.String? targetId;

  /// Unique identifier of the `Target`.
  ///
  /// Output only.
  core.String? uid;

  /// Most recent time at which the `Target` was updated.
  ///
  /// Output only.
  core.String? updateTime;

  Target({
    this.annotations,
    this.anthosCluster,
    this.createTime,
    this.customTarget,
    this.deployParameters,
    this.description,
    this.etag,
    this.executionConfigs,
    this.gke,
    this.labels,
    this.multiTarget,
    this.name,
    this.requireApproval,
    this.run,
    this.targetId,
    this.uid,
    this.updateTime,
  });

  Target.fromJson(core.Map json_)
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
          anthosCluster: json_.containsKey('anthosCluster')
              ? AnthosCluster.fromJson(
                  json_['anthosCluster'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          customTarget: json_.containsKey('customTarget')
              ? CustomTarget.fromJson(
                  json_['customTarget'] as core.Map<core.String, core.dynamic>)
              : null,
          deployParameters: json_.containsKey('deployParameters')
              ? (json_['deployParameters']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          executionConfigs: json_.containsKey('executionConfigs')
              ? (json_['executionConfigs'] as core.List)
                  .map((value) => ExecutionConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          gke: json_.containsKey('gke')
              ? GkeCluster.fromJson(
                  json_['gke'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          multiTarget: json_.containsKey('multiTarget')
              ? MultiTarget.fromJson(
                  json_['multiTarget'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          requireApproval: json_.containsKey('requireApproval')
              ? json_['requireApproval'] as core.bool
              : null,
          run: json_.containsKey('run')
              ? CloudRunLocation.fromJson(
                  json_['run'] as core.Map<core.String, core.dynamic>)
              : null,
          targetId: json_.containsKey('targetId')
              ? json_['targetId'] as core.String
              : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annotations != null) 'annotations': annotations!,
        if (anthosCluster != null) 'anthosCluster': anthosCluster!,
        if (createTime != null) 'createTime': createTime!,
        if (customTarget != null) 'customTarget': customTarget!,
        if (deployParameters != null) 'deployParameters': deployParameters!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (executionConfigs != null) 'executionConfigs': executionConfigs!,
        if (gke != null) 'gke': gke!,
        if (labels != null) 'labels': labels!,
        if (multiTarget != null) 'multiTarget': multiTarget!,
        if (name != null) 'name': name!,
        if (requireApproval != null) 'requireApproval': requireApproval!,
        if (run != null) 'run': run!,
        if (targetId != null) 'targetId': targetId!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The artifacts produced by a target render operation.
class TargetArtifact {
  /// URI of a directory containing the artifacts.
  ///
  /// This contains deployment configuration used by Skaffold during a rollout,
  /// and all paths are relative to this location.
  ///
  /// Output only.
  core.String? artifactUri;

  /// File path of the rendered manifest relative to the URI.
  ///
  /// Output only.
  core.String? manifestPath;

  /// Map from the phase ID to the phase artifacts for the `Target`.
  ///
  /// Output only.
  core.Map<core.String, PhaseArtifact>? phaseArtifacts;

  /// File path of the resolved Skaffold configuration relative to the URI.
  ///
  /// Output only.
  core.String? skaffoldConfigPath;

  TargetArtifact({
    this.artifactUri,
    this.manifestPath,
    this.phaseArtifacts,
    this.skaffoldConfigPath,
  });

  TargetArtifact.fromJson(core.Map json_)
      : this(
          artifactUri: json_.containsKey('artifactUri')
              ? json_['artifactUri'] as core.String
              : null,
          manifestPath: json_.containsKey('manifestPath')
              ? json_['manifestPath'] as core.String
              : null,
          phaseArtifacts: json_.containsKey('phaseArtifacts')
              ? (json_['phaseArtifacts'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    PhaseArtifact.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          skaffoldConfigPath: json_.containsKey('skaffoldConfigPath')
              ? json_['skaffoldConfigPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactUri != null) 'artifactUri': artifactUri!,
        if (manifestPath != null) 'manifestPath': manifestPath!,
        if (phaseArtifacts != null) 'phaseArtifacts': phaseArtifacts!,
        if (skaffoldConfigPath != null)
          'skaffoldConfigPath': skaffoldConfigPath!,
      };
}

/// Contains criteria for selecting Targets.
class TargetAttribute {
  /// ID of the `Target`.
  ///
  /// The value of this field could be one of the following: * The last segment
  /// of a target name. It only needs the ID to determine which target is being
  /// referred to * "*", all targets in a location.
  core.String? id;

  /// Target labels.
  core.Map<core.String, core.String>? labels;

  TargetAttribute({
    this.id,
    this.labels,
  });

  TargetAttribute.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (labels != null) 'labels': labels!,
      };
}

/// Details of rendering for a single target.
class TargetRender {
  /// Reason this render failed.
  ///
  /// This will always be unspecified while the render in progress.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FAILURE_CAUSE_UNSPECIFIED" : No reason for failure is specified.
  /// - "CLOUD_BUILD_UNAVAILABLE" : Cloud Build is not available, either because
  /// it is not enabled or because Cloud Deploy has insufficient permissions.
  /// See
  /// [required permission](https://cloud.google.com/deploy/docs/cloud-deploy-service-account#required_permissions).
  /// - "EXECUTION_FAILED" : The render operation did not complete successfully;
  /// check Cloud Build logs.
  /// - "CLOUD_BUILD_REQUEST_FAILED" : Cloud Build failed to fulfill Cloud
  /// Deploy's request. See failure_message for additional details.
  /// - "VERIFICATION_CONFIG_NOT_FOUND" : The render operation did not complete
  /// successfully because the verification stanza required for verify was not
  /// found on the Skaffold configuration.
  /// - "CUSTOM_ACTION_NOT_FOUND" : The render operation did not complete
  /// successfully because the custom action required for predeploy or
  /// postdeploy was not found in the Skaffold configuration. See
  /// failure_message for additional details.
  /// - "DEPLOYMENT_STRATEGY_NOT_SUPPORTED" : Release failed during rendering
  /// because the release configuration is not supported with the specified
  /// deployment strategy.
  /// - "RENDER_FEATURE_NOT_SUPPORTED" : The render operation had a feature
  /// configured that is not supported.
  core.String? failureCause;

  /// Additional information about the render failure, if available.
  ///
  /// Output only.
  core.String? failureMessage;

  /// Metadata related to the `Release` render for this Target.
  ///
  /// Output only.
  RenderMetadata? metadata;

  /// The resource name of the Cloud Build `Build` object that is used to render
  /// the manifest for this target.
  ///
  /// Format is `projects/{project}/locations/{location}/builds/{build}`.
  ///
  /// Output only.
  core.String? renderingBuild;

  /// Current state of the render operation for this Target.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TARGET_RENDER_STATE_UNSPECIFIED" : The render operation state is
  /// unspecified.
  /// - "SUCCEEDED" : The render operation has completed successfully.
  /// - "FAILED" : The render operation has failed.
  /// - "IN_PROGRESS" : The render operation is in progress.
  core.String? renderingState;

  TargetRender({
    this.failureCause,
    this.failureMessage,
    this.metadata,
    this.renderingBuild,
    this.renderingState,
  });

  TargetRender.fromJson(core.Map json_)
      : this(
          failureCause: json_.containsKey('failureCause')
              ? json_['failureCause'] as core.String
              : null,
          failureMessage: json_.containsKey('failureMessage')
              ? json_['failureMessage'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? RenderMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          renderingBuild: json_.containsKey('renderingBuild')
              ? json_['renderingBuild'] as core.String
              : null,
          renderingState: json_.containsKey('renderingState')
              ? json_['renderingState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failureCause != null) 'failureCause': failureCause!,
        if (failureMessage != null) 'failureMessage': failureMessage!,
        if (metadata != null) 'metadata': metadata!,
        if (renderingBuild != null) 'renderingBuild': renderingBuild!,
        if (renderingState != null) 'renderingState': renderingState!,
      };
}

/// `TargetsPresentCondition` contains information on any Targets referenced in
/// the Delivery Pipeline that do not actually exist.
class TargetsPresentCondition {
  /// The list of Target names that do not exist.
  ///
  /// For example,
  /// `projects/{project_id}/locations/{location_name}/targets/{target_name}`.
  core.List<core.String>? missingTargets;

  /// True if there aren't any missing Targets.
  core.bool? status;

  /// Last time the condition was updated.
  core.String? updateTime;

  TargetsPresentCondition({
    this.missingTargets,
    this.status,
    this.updateTime,
  });

  TargetsPresentCondition.fromJson(core.Map json_)
      : this(
          missingTargets: json_.containsKey('missingTargets')
              ? (json_['missingTargets'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          status:
              json_.containsKey('status') ? json_['status'] as core.bool : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (missingTargets != null) 'missingTargets': missingTargets!,
        if (status != null) 'status': status!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// TargetsTypeCondition contains information on whether the Targets defined in
/// the Delivery Pipeline are of the same type.
class TargetsTypeCondition {
  /// Human readable error message.
  core.String? errorDetails;

  /// True if the targets are all a comparable type.
  ///
  /// For example this is true if all targets are GKE clusters. This is false if
  /// some targets are Cloud Run targets and others are GKE clusters.
  core.bool? status;

  TargetsTypeCondition({
    this.errorDetails,
    this.status,
  });

  TargetsTypeCondition.fromJson(core.Map json_)
      : this(
          errorDetails: json_.containsKey('errorDetails')
              ? json_['errorDetails'] as core.String
              : null,
          status:
              json_.containsKey('status') ? json_['status'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorDetails != null) 'errorDetails': errorDetails!,
        if (status != null) 'status': status!,
      };
}

/// The request object used by `TerminateJobRun`.
typedef TerminateJobRunRequest = $Empty;

/// The response object from `TerminateJobRun`.
typedef TerminateJobRunResponse = $Empty;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// A verify Job.
typedef VerifyJob = $Empty;

/// VerifyJobRun contains information specific to a verify `JobRun`.
class VerifyJobRun {
  /// URI of a directory containing the verify artifacts.
  ///
  /// This contains the Skaffold event log.
  ///
  /// Output only.
  core.String? artifactUri;

  /// The resource name of the Cloud Build `Build` object that is used to
  /// verify.
  ///
  /// Format is `projects/{project}/locations/{location}/builds/{build}`.
  ///
  /// Output only.
  core.String? build;

  /// File path of the Skaffold event log relative to the artifact URI.
  ///
  /// Output only.
  core.String? eventLogPath;

  /// The reason the verify failed.
  ///
  /// This will always be unspecified while the verify is in progress or if it
  /// succeeded.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FAILURE_CAUSE_UNSPECIFIED" : No reason for failure is specified.
  /// - "CLOUD_BUILD_UNAVAILABLE" : Cloud Build is not available, either because
  /// it is not enabled or because Cloud Deploy has insufficient permissions.
  /// See
  /// [required permission](https://cloud.google.com/deploy/docs/cloud-deploy-service-account#required_permissions).
  /// - "EXECUTION_FAILED" : The verify operation did not complete successfully;
  /// check Cloud Build logs.
  /// - "DEADLINE_EXCEEDED" : The verify job run did not complete within the
  /// alloted time.
  /// - "VERIFICATION_CONFIG_NOT_FOUND" : No Skaffold verify configuration was
  /// found.
  /// - "CLOUD_BUILD_REQUEST_FAILED" : Cloud Build failed to fulfill Cloud
  /// Deploy's request. See failure_message for additional details.
  core.String? failureCause;

  /// Additional information about the verify failure, if available.
  ///
  /// Output only.
  core.String? failureMessage;

  VerifyJobRun({
    this.artifactUri,
    this.build,
    this.eventLogPath,
    this.failureCause,
    this.failureMessage,
  });

  VerifyJobRun.fromJson(core.Map json_)
      : this(
          artifactUri: json_.containsKey('artifactUri')
              ? json_['artifactUri'] as core.String
              : null,
          build:
              json_.containsKey('build') ? json_['build'] as core.String : null,
          eventLogPath: json_.containsKey('eventLogPath')
              ? json_['eventLogPath'] as core.String
              : null,
          failureCause: json_.containsKey('failureCause')
              ? json_['failureCause'] as core.String
              : null,
          failureMessage: json_.containsKey('failureMessage')
              ? json_['failureMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactUri != null) 'artifactUri': artifactUri!,
        if (build != null) 'build': build!,
        if (eventLogPath != null) 'eventLogPath': eventLogPath!,
        if (failureCause != null) 'failureCause': failureCause!,
        if (failureMessage != null) 'failureMessage': failureMessage!,
      };
}
