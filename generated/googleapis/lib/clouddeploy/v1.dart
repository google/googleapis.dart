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

/// Google Cloud Deploy API - v1
///
/// For more information, see <https://cloud.google.com/deploy/>
///
/// Create an instance of [CloudDeployApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsDeliveryPipelinesResource]
///       - [ProjectsLocationsDeliveryPipelinesReleasesResource]
///         - [ProjectsLocationsDeliveryPipelinesReleasesRolloutsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsTargetsResource]
library clouddeploy.v1;

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

class ProjectsLocationsDeliveryPipelinesResource {
  final commons.ApiRequester _requester;

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
  /// projects/{project_id}/locations/{location_name}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [deliveryPipelineId] - Required. ID of the `DeliveryPipeline`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
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
  /// projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}.
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
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
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
  /// projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}.
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
  /// Format must be projects/{project_id}/locations/{location_name}.
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
  /// projects/{project}/ locations/{location}/deliveryPipelines/a-z{0,62}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, updating a `DeliveryPipeline`
  /// that does not exist will result in the creation of a new
  /// `DeliveryPipeline`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
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
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
  /// projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/
  /// releases/{release}.
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
  /// projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+$`.
  ///
  /// [releaseId] - Required. ID of the `Release`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
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
  /// projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/releases/{release_name}.
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

  ProjectsLocationsDeliveryPipelinesReleasesRolloutsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Approves a Rollout.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Rollout. Format is
  /// projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline}/
  /// releases/{release}/rollouts/{rollout}.
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

  /// Creates a new Rollout in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent collection in which the `Rollout` should
  /// be created. Format should be
  /// projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/releases/{release_name}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/deliveryPipelines/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
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
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (rolloutId != null) 'rolloutId': [rolloutId],
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
  /// projects/{project_id}/locations/{location_name}/deliveryPipelines/{pipeline_name}/releases/{release_name}/rollouts/{rollout_name}.
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
  /// created. Format should be projects/{project_id}/locations/{location_name}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
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
  /// projects/{project_id}/locations/{location_name}/targets/{target_name}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/targets/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, then deleting an already
  /// deleted or non-existing DeliveryPipeline will succeed.
  ///
  /// [etag] - Optional. This checksum is computed by the server based on the
  /// value of other fields, and may be sent on update and delete requests to
  /// ensure the client has an up-to-date value before proceeding.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes after the first request. For
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
  /// projects/{project_id}/locations/{location_name}/targets/{target_name}.
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
  /// Format must be projects/{project_id}/locations/{location_name}.
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
  /// projects/{project}/locations/{location}/targets/a-z{0,62}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/targets/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If set to true, updating a `Target` that does
  /// not exist will result in the creation of a new `Target`.
  ///
  /// [requestId] - Optional. A request ID to identify requests. Specify a
  /// unique request ID so that if you must retry your request, the server will
  /// know to ignore the request if it has already been completed. The server
  /// will guarantee that for at least 60 minutes since the first request. For
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
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
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

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Service-wide configuration.
class Config {
  /// Default Skaffold version that is assigned when a Release is created
  /// without specifying a Skaffold version.
  ///
  /// Output only.
  core.String? defaultSkaffoldVersion;

  /// Name of the configuration.
  core.String? name;

  /// All supported versions of Skaffold.
  ///
  /// Output only.
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

/// A `DeliveryPipeline` resource in the Google Cloud Deploy API.
///
/// A `DeliveryPipeline` defines a pipeline through which a Skaffold
/// configuration can progress.
class DeliveryPipeline {
  /// User annotations.
  ///
  /// These attributes can only be set and used by the user, and not by Google
  /// Cloud Deploy. See https://google.aip.dev/128#annotations for more details
  /// such as format and size limitations.
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
  /// Google Cloud Deploy.
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
  /// Format is projects/{project}/
  /// locations/{location}/deliveryPipelines/a-z{0,62}.
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
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
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
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
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

/// Information specifying a GKE Cluster.
class GkeCluster {
  /// Information specifying a GKE Cluster.
  ///
  /// Format is
  /// \`projects/{project_id}/locations/{location_id}/clusters/{cluster_id}.
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

/// A resource that represents Google Cloud Platform location.
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

/// PipelineCondition contains all conditions relevant to a Delivery Pipeline.
class PipelineCondition {
  /// Details around the Pipeline's overall status.
  PipelineReadyCondition? pipelineReadyCondition;

  /// Detalis around targets enumerated in the pipeline.
  TargetsPresentCondition? targetsPresentCondition;

  PipelineCondition({
    this.pipelineReadyCondition,
    this.targetsPresentCondition,
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
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pipelineReadyCondition != null)
          'pipelineReadyCondition': pipelineReadyCondition!,
        if (targetsPresentCondition != null)
          'targetsPresentCondition': targetsPresentCondition!,
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
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
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

/// A `Release` resource in the Google Cloud Deploy API.
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
  /// These attributes can only be set and used by the user, and not by Google
  /// Cloud Deploy. See https://google.aip.dev/128#annotations for more details
  /// such as format and size limitations.
  core.Map<core.String, core.String>? annotations;

  /// List of artifacts to pass through to Skaffold command.
  core.List<BuildArtifact>? buildArtifacts;

  /// Time at which the `Release` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Snapshot of the parent pipeline taken at release creation time.
  ///
  /// Output only.
  DeliveryPipeline? deliveryPipelineSnapshot;

  /// Description of the `Release`.
  ///
  /// Max length is 255 characters.
  core.String? description;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  core.String? etag;

  /// Labels are attributes that can be set and used by both the user and by
  /// Google Cloud Deploy.
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
  /// Format is projects/{project}/
  /// locations/{location}/deliveryPipelines/{deliveryPipeline}/
  /// releases/a-z{0,62}.
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
  /// Not all versions are valid; Google Cloud Deploy supports a specific set of
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
    this.createTime,
    this.deliveryPipelineSnapshot,
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
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          buildArtifacts: json_.containsKey('buildArtifacts')
              ? (json_['buildArtifacts'] as core.List)
                  .map((value) => BuildArtifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deliveryPipelineSnapshot:
              json_.containsKey('deliveryPipelineSnapshot')
                  ? DeliveryPipeline.fromJson(json_['deliveryPipelineSnapshot']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
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
                  (key, item) => core.MapEntry(
                    key,
                    TargetArtifact.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          targetRenders: json_.containsKey('targetRenders')
              ? (json_['targetRenders'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    TargetRender.fromJson(
                        item as core.Map<core.String, core.dynamic>),
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
        if (createTime != null) 'createTime': createTime!,
        if (deliveryPipelineSnapshot != null)
          'deliveryPipelineSnapshot': deliveryPipelineSnapshot!,
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

/// A `Rollout` resource in the Google Cloud Deploy API.
///
/// A `Rollout` contains information around a specific deployment to a `Target`.
class Rollout {
  /// User annotations.
  ///
  /// These attributes can only be set and used by the user, and not by Google
  /// Cloud Deploy. See https://google.aip.dev/128#annotations for more details
  /// such as format and size limitations.
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

  /// Time at which the `Rollout` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Time at which the `Rollout` finished deploying.
  ///
  /// Output only.
  core.String? deployEndTime;

  /// The reason this deploy failed.
  ///
  /// This will always be unspecified while the deploy in progress.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FAILURE_CAUSE_UNSPECIFIED" : No reason for failure is specified.
  /// - "CLOUD_BUILD_UNAVAILABLE" : Cloud Build is not available, either because
  /// it is not enabled or because Cloud Deploy has insufficient permissions.
  /// See \[required
  /// permission\](/deploy/docs/cloud-deploy-service-account#required_permissions).
  /// - "EXECUTION_FAILED" : The deploy operation did not complete successfully;
  /// check Cloud Build logs.
  /// - "DEADLINE_EXCEEDED" : Deployment did not complete within the alloted
  /// time.
  /// - "RELEASE_FAILED" : Release is in a failed state.
  /// - "RELEASE_ABANDONED" : Release is abandoned.
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

  /// Reason the build failed.
  ///
  /// Empty if the build succeeded.
  ///
  /// Output only.
  core.String? failureReason;

  /// Labels are attributes that can be set and used by both the user and by
  /// Google Cloud Deploy.
  ///
  /// Labels must meet the following constraints: * Keys and values can contain
  /// only lowercase letters, numeric characters, underscores, and dashes. * All
  /// characters must use UTF-8 encoding, and international characters are
  /// allowed. * Keys must start with a lowercase letter or international
  /// character. * Each resource is limited to a maximum of 64 labels. Both keys
  /// and values are additionally constrained to be \<= 128 bytes.
  core.Map<core.String, core.String>? labels;

  /// Name of the `Rollout`.
  ///
  /// Format is projects/{project}/
  /// locations/{location}/deliveryPipelines/{deliveryPipeline}/
  /// releases/{release}/rollouts/a-z{0,62}.
  ///
  /// Optional.
  core.String? name;

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
    this.name,
    this.state,
    this.targetId,
    this.uid,
  });

  Rollout.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          approvalState: json_.containsKey('approvalState')
              ? json_['approvalState'] as core.String
              : null,
          approveTime: json_.containsKey('approveTime')
              ? json_['approveTime'] as core.String
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
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (targetId != null) 'targetId': targetId!,
        if (uid != null) 'uid': uid!,
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

/// Details of a supported Skaffold version.
class SkaffoldVersion {
  /// Date when this version is expected to no longer be supported.
  Date? supportEndDate;

  /// Release version number.
  ///
  /// For example, "1.20.3".
  core.String? version;

  SkaffoldVersion({
    this.supportEndDate,
    this.version,
  });

  SkaffoldVersion.fromJson(core.Map json_)
      : this(
          supportEndDate: json_.containsKey('supportEndDate')
              ? Date.fromJson(json_['supportEndDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (supportEndDate != null) 'supportEndDate': supportEndDate!,
        if (version != null) 'version': version!,
      };
}

/// Stage specifies a location to which to deploy.
class Stage {
  /// Skaffold profiles to use when rendering the manifest for this stage's
  /// `Target`.
  core.List<core.String>? profiles;

  /// The target_id to which this stage points.
  ///
  /// This field refers exclusively to the last segment of a target name. For
  /// example, this field would just be `my-target` (rather than
  /// `projects/project/locations/location/targets/my-target`). The location of
  /// the `Target` is inferred to be the same as the location of the
  /// `DeliveryPipeline` that contains this `Stage`.
  core.String? targetId;

  Stage({
    this.profiles,
    this.targetId,
  });

  Stage.fromJson(core.Map json_)
      : this(
          profiles: json_.containsKey('profiles')
              ? (json_['profiles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetId: json_.containsKey('targetId')
              ? json_['targetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (profiles != null) 'profiles': profiles!,
        if (targetId != null) 'targetId': targetId!,
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

/// A `Target` resource in the Google Cloud Deploy API.
///
/// A `Target` defines a location to which a Skaffold configuration can be
/// deployed.
class Target {
  /// User annotations.
  ///
  /// These attributes can only be set and used by the user, and not by Google
  /// Cloud Deploy. See https://google.aip.dev/128#annotations for more details
  /// such as format and size limitations.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Information specifying an Anthos Cluster.
  AnthosCluster? anthosCluster;

  /// Time at which the `Target` was created.
  ///
  /// Output only.
  core.String? createTime;

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
  GkeCluster? gke;

  /// Labels are attributes that can be set and used by both the user and by
  /// Google Cloud Deploy.
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

  /// Name of the `Target`.
  ///
  /// Format is projects/{project}/locations/{location}/targets/a-z{0,62}.
  ///
  /// Optional.
  core.String? name;

  /// Whether or not the `Target` requires approval.
  ///
  /// Optional.
  core.bool? requireApproval;

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
    this.description,
    this.etag,
    this.executionConfigs,
    this.gke,
    this.labels,
    this.name,
    this.requireApproval,
    this.targetId,
    this.uid,
    this.updateTime,
  });

  Target.fromJson(core.Map json_)
      : this(
          annotations: json_.containsKey('annotations')
              ? (json_['annotations'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
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
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          requireApproval: json_.containsKey('requireApproval')
              ? json_['requireApproval'] as core.bool
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
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (executionConfigs != null) 'executionConfigs': executionConfigs!,
        if (gke != null) 'gke': gke!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (requireApproval != null) 'requireApproval': requireApproval!,
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

  /// File path of the resolved Skaffold configuration relative to the URI.
  ///
  /// Output only.
  core.String? skaffoldConfigPath;

  TargetArtifact({
    this.artifactUri,
    this.manifestPath,
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
          skaffoldConfigPath: json_.containsKey('skaffoldConfigPath')
              ? json_['skaffoldConfigPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (artifactUri != null) 'artifactUri': artifactUri!,
        if (manifestPath != null) 'manifestPath': manifestPath!,
        if (skaffoldConfigPath != null)
          'skaffoldConfigPath': skaffoldConfigPath!,
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
  /// See \[required
  /// permission\](/deploy/docs/cloud-deploy-service-account#required_permissions).
  /// - "EXECUTION_FAILED" : The render operation did not complete successfully;
  /// check Cloud Build logs.
  core.String? failureCause;

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
    this.renderingBuild,
    this.renderingState,
  });

  TargetRender.fromJson(core.Map json_)
      : this(
          failureCause: json_.containsKey('failureCause')
              ? json_['failureCause'] as core.String
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
        if (renderingBuild != null) 'renderingBuild': renderingBuild!,
        if (renderingState != null) 'renderingState': renderingState!,
      };
}

/// TargetsPresentCondition contains information on any Targets defined in the
/// Delivery Pipeline that do not actually exist.
class TargetsPresentCondition {
  /// The list of Target names that are missing.
  ///
  /// For example,
  /// projects/{project_id}/locations/{location_name}/targets/{target_name}.
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

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;
