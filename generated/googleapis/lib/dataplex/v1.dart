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

/// Cloud Dataplex API - v1
///
/// Dataplex API is used to manage the lifecycle of data lakes.
///
/// For more information, see <https://cloud.google.com/dataplex/docs>
///
/// Create an instance of [CloudDataplexApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsLakesResource]
///       - [ProjectsLocationsLakesActionsResource]
///       - [ProjectsLocationsLakesContentResource]
///       - [ProjectsLocationsLakesContentitemsResource]
///       - [ProjectsLocationsLakesEnvironmentsResource]
///         - [ProjectsLocationsLakesEnvironmentsSessionsResource]
///       - [ProjectsLocationsLakesTasksResource]
///         - [ProjectsLocationsLakesTasksJobsResource]
///       - [ProjectsLocationsLakesZonesResource]
///         - [ProjectsLocationsLakesZonesActionsResource]
///         - [ProjectsLocationsLakesZonesAssetsResource]
///           - [ProjectsLocationsLakesZonesAssetsActionsResource]
///         - [ProjectsLocationsLakesZonesEntitiesResource]
///           - [ProjectsLocationsLakesZonesEntitiesPartitionsResource]
///     - [ProjectsLocationsOperationsResource]
library dataplex.v1;

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

/// Dataplex API is used to manage the lifecycle of data lakes.
class CloudDataplexApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudDataplexApi(http.Client client,
      {core.String rootUrl = 'https://dataplex.googleapis.com/',
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

  ProjectsLocationsLakesResource get lakes =>
      ProjectsLocationsLakesResource(_requester);
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
  /// Completes with a [GoogleCloudLocationLocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationLocation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudLocationLocation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// documented in more detail in AIP-160 (https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the next_page_token field in the
  /// response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudLocationListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationListLocationsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesActionsResource get actions =>
      ProjectsLocationsLakesActionsResource(_requester);
  ProjectsLocationsLakesContentResource get content =>
      ProjectsLocationsLakesContentResource(_requester);
  ProjectsLocationsLakesContentitemsResource get contentitems =>
      ProjectsLocationsLakesContentitemsResource(_requester);
  ProjectsLocationsLakesEnvironmentsResource get environments =>
      ProjectsLocationsLakesEnvironmentsResource(_requester);
  ProjectsLocationsLakesTasksResource get tasks =>
      ProjectsLocationsLakesTasksResource(_requester);
  ProjectsLocationsLakesZonesResource get zones =>
      ProjectsLocationsLakesZonesResource(_requester);

  ProjectsLocationsLakesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a lake resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the lake location, of the form:
  /// projects/{project_number}/locations/{location_id} where location_id refers
  /// to a GCP region.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [lakeId] - Required. Lake identifier. This ID will be used to generate
  /// names such as database and dataset names when publishing metadata to Hive
  /// Metastore and BigQuery. * Must contain only lowercase letters, numbers and
  /// hyphens. * Must start with a letter. * Must end with a number or a letter.
  /// * Must be between 1-63 characters. * Must be unique within the customer
  /// project / location.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudDataplexV1Lake request,
    core.String parent, {
    core.String? lakeId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (lakeId != null) 'lakeId': [lakeId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/lakes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a lake resource.
  ///
  /// All zones within the lake must be deleted before the lake can be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the lake:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a lake resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the lake:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Lake].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Lake> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Lake.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy.Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists lake resources in a project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the lake location, of the form:
  /// projects/{project_number}/locations/{location_id} where location_id refers
  /// to a GCP region.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter request.
  ///
  /// [orderBy] - Optional. Order by fields for the result.
  ///
  /// [pageSize] - Optional. Maximum number of Lakes to return. The service may
  /// return fewer than this value. If unspecified, at most 10 lakes will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous ListLakes
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to ListLakes must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListLakesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListLakesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/lakes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListLakesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a lake resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The relative resource name of the lake, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudDataplexV1Lake request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesActionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesActionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists action resources in a lake.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent lake:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of actions to return. The service
  /// may return fewer than this value. If unspecified, at most 10 actions will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// ListLakeActions call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to ListLakeActions must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListActionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListActionsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/actions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListActionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesContentResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesContentResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/content/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy.Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/content/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/content/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesContentitemsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesContentitemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a content.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent lake:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Content].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Content> create(
    GoogleCloudDataplexV1Content request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/contentitems';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Content.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a content.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the content:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/contentitems/.*$`.
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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get a content resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the content:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/contentitems/.*$`.
  ///
  /// [view] - Optional. Specify content view to make a partial request.
  /// Possible string values are:
  /// - "CONTENT_VIEW_UNSPECIFIED" : Content view not specified. Defaults to
  /// BASIC. The API will default to the BASIC view.
  /// - "BASIC" : Will not return the data_text field.
  /// - "FULL" : Returns the complete proto.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Content].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Content> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Content.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List content.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent lake:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter request. Filters are case-sensitive. The
  /// following formats are supported:labels.key1 = "value1" labels:key1 type =
  /// "NOTEBOOK" type = "SQL_SCRIPT"These restrictions can be coinjoined with
  /// AND, OR and NOT conjunctions.
  ///
  /// [pageSize] - Optional. Maximum number of content to return. The service
  /// may return fewer than this value. If unspecified, at most 10 content will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous ListContent
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to ListContent must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListContentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListContentResponse> list(
    core.String parent, {
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/contentitems';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListContentResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update a content.
  ///
  /// Only supports full resource update.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The relative resource name of the content, of the
  /// form:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/contentitems/.*$`.
  ///
  /// [updateMask] - Required. Mask of fields to update.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Content].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Content> patch(
    GoogleCloudDataplexV1Content request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Content.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesEnvironmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesEnvironmentsSessionsResource get sessions =>
      ProjectsLocationsLakesEnvironmentsSessionsResource(_requester);

  ProjectsLocationsLakesEnvironmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an environment resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent lake:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [environmentId] - Required. Environment identifier. * Must contain only
  /// lowercase letters, numbers and hyphens. * Must start with a letter. * Must
  /// be between 1-63 characters. * Must end with a number or a letter. * Must
  /// be unique within the lake.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudDataplexV1Environment request,
    core.String parent, {
    core.String? environmentId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (environmentId != null) 'environmentId': [environmentId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/environments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete the environment resource.
  ///
  /// All the child resources must have been deleted before environment deletion
  /// can be initiated.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the environment:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environments/{environment_id}\`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get environment resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the environment:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environments/{environment_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Environment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Environment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy.Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists environments under the given lake.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent lake:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter request.
  ///
  /// [orderBy] - Optional. Order by fields for the result.
  ///
  /// [pageSize] - Optional. Maximum number of environments to return. The
  /// service may return fewer than this value. If unspecified, at most 10
  /// environments will be returned. The maximum value is 1000; values above
  /// 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// ListEnvironments call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to ListEnvironments must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListEnvironmentsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/environments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListEnvironmentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update the environment resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The relative resource name of the environment, of
  /// the form:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudDataplexV1Environment request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesEnvironmentsSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesEnvironmentsSessionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists session resources in an environment.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent environment:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of sessions to return. The service
  /// may return fewer than this value. If unspecified, at most 10 sessions will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous ListSessions
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to ListSessions must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListSessionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListSessionsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/sessions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListSessionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesTasksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesTasksJobsResource get jobs =>
      ProjectsLocationsLakesTasksJobsResource(_requester);

  ProjectsLocationsLakesTasksResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a task resource within a lake.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent lake:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [taskId] - Required. Task identifier.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudDataplexV1Task request,
    core.String parent, {
    core.String? taskId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (taskId != null) 'taskId': [taskId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/tasks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete the task resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the task:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// /task/{task_id}\`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/tasks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get task resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the task:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// /tasks/{tasks_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/tasks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Task> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Task.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/tasks/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy.Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists tasks under the given lake.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent lake:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter request.
  ///
  /// [orderBy] - Optional. Order by fields for the result.
  ///
  /// [pageSize] - Optional. Maximum number of tasks to return. The service may
  /// return fewer than this value. If unspecified, at most 10 tasks will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous ListZones
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to ListZones must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListTasksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListTasksResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/tasks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListTasksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update the task resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The relative resource name of the task, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/
  /// tasks/{task_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/tasks/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudDataplexV1Task request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/tasks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/tasks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesTasksJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesTasksJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Cancel jobs running for the task resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the job:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// /task/{task_id}/job/{job_id}\`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/tasks/\[^/\]+/jobs/\[^/\]+$`.
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
    GoogleCloudDataplexV1CancelJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get job resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the job:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// /tasks/{task_id}/jobs/{job_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/tasks/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Job> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Job.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Jobs under the given task.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent environment:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/tasks/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of jobs to return. The service may
  /// return fewer than this value. If unspecified, at most 10 jobs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous ListJobs call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to ListJobs must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListJobsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesZonesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesZonesActionsResource get actions =>
      ProjectsLocationsLakesZonesActionsResource(_requester);
  ProjectsLocationsLakesZonesAssetsResource get assets =>
      ProjectsLocationsLakesZonesAssetsResource(_requester);
  ProjectsLocationsLakesZonesEntitiesResource get entities =>
      ProjectsLocationsLakesZonesEntitiesResource(_requester);

  ProjectsLocationsLakesZonesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a zone resource within a lake.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent lake:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [zoneId] - Required. Zone identifier. This ID will be used to generate
  /// names such as database and dataset names when publishing metadata to Hive
  /// Metastore and BigQuery. * Must contain only lowercase letters, numbers and
  /// hyphens. * Must start with a letter. * Must end with a number or a letter.
  /// * Must be between 1-63 characters. * Must be unique across all lakes from
  /// all locations in a project. * Must not be one of the reserved IDs (i.e.
  /// "default", "global-temp")
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudDataplexV1Zone request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? zoneId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if (zoneId != null) 'zoneId': [zoneId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/zones';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a zone resource.
  ///
  /// All assets within a zone must be deleted before the zone can be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the zone:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// /zones/{zone_id}\`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a zone resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the zone:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// /zones/{zone_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Zone].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Zone> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Zone.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy.Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists zone resources in a lake.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent lake:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter request.
  ///
  /// [orderBy] - Optional. Order by fields for the result.
  ///
  /// [pageSize] - Optional. Maximum number of zones to return. The service may
  /// return fewer than this value. If unspecified, at most 10 zones will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous ListZones
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to ListZones must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListZonesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListZonesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/zones';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListZonesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a zone resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The relative resource name of the zone, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudDataplexV1Zone request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesZonesActionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesZonesActionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists action resources in a zone.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent zone:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of actions to return. The service
  /// may return fewer than this value. If unspecified, at most 10 actions will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// ListZoneActions call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to ListZoneActions must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListActionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListActionsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/actions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListActionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesZonesAssetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesZonesAssetsActionsResource get actions =>
      ProjectsLocationsLakesZonesAssetsActionsResource(_requester);

  ProjectsLocationsLakesZonesAssetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an asset resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent zone:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// /zones/{zone_id}\`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [assetId] - Required. Asset identifier. This ID will be used to generate
  /// names such as table names when publishing metadata to Hive Metastore and
  /// BigQuery. * Must contain only lowercase letters, numbers and hyphens. *
  /// Must start with a letter. * Must end with a number or a letter. * Must be
  /// between 1-63 characters. * Must be unique within the zone.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudDataplexV1Asset request,
    core.String parent, {
    core.String? assetId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (assetId != null) 'assetId': [assetId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/assets';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an asset resource.
  ///
  /// The referenced storage resource is detached (default) or deleted based on
  /// the associated Lifecycle policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the asset:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// /zones/{zone_id}/assets/{asset_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/assets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves an asset resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the asset:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// /zones/{zone_id}/assets/{asset_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/assets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Asset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Asset> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Asset.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/assets/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy.Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected.Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset.The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists asset resources in a zone.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent zone:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}
  /// /zones/{zone_id}\`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter request.
  ///
  /// [orderBy] - Optional. Order by fields for the result.
  ///
  /// [pageSize] - Optional. Maximum number of asset to return. The service may
  /// return fewer than this value. If unspecified, at most 10 assets will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous ListAssets
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to ListAssets must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListAssetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListAssetsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/assets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListAssetsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an asset resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The relative resource name of the asset, of the
  /// form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/assets/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleCloudDataplexV1Asset request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and
  /// PERMISSION_DENIED errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/assets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1Policy> setIamPolicy(
    GoogleIamV1SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1Policy.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.Note: This operation is designed to be
  /// used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See the operation documentation for the appropriate value for
  /// this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/assets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleIamV1TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleIamV1TestIamPermissionsResponse> testIamPermissions(
    GoogleIamV1TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleIamV1TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesZonesAssetsActionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesZonesAssetsActionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists action resources in an asset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent asset:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/assets/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of actions to return. The service
  /// may return fewer than this value. If unspecified, at most 10 actions will
  /// be returned. The maximum value is 1000; values above 1000 will be coerced
  /// to 1000.
  ///
  /// [pageToken] - Optional. Page token received from a previous
  /// ListAssetActions call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to ListAssetActions must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListActionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListActionsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/actions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListActionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesZonesEntitiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesZonesEntitiesPartitionsResource get partitions =>
      ProjectsLocationsLakesZonesEntitiesPartitionsResource(_requester);

  ProjectsLocationsLakesZonesEntitiesResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a metadata entity.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent zone:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Entity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Entity> create(
    GoogleCloudDataplexV1Entity request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/entities';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Entity.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a metadata entity.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the entity:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/entities/\[^/\]+$`.
  ///
  /// [etag] - Required. The etag associated with the partition if it was
  /// previously retrieved.
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
    core.String? etag,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get a metadata entity.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the entity:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/entities/\[^/\]+$`.
  ///
  /// [view] - Optional. Used to select the subset of entity information to
  /// return. Defaults to BASIC.
  /// Possible string values are:
  /// - "ENTITY_VIEW_UNSPECIFIED" : The API will default to the BASIC view.
  /// - "BASIC" : Minimal view that does not include the schema.
  /// - "SCHEMA" : Include basic information and schema.
  /// - "FULL" : Include everything. Currently, this is the same as the SCHEMA
  /// view.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Entity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Entity> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Entity.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List metadata entities in a zone.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent zone:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+$`.
  ///
  /// [filter] - Optional. The following filter parameters can be added to the
  /// URL to limit the entities returned by the API: Entity ID:
  /// ?filter="id=entityID" Asset ID: ?filter="asset=assetID" Data path
  /// ?filter="data_path=gs://my-bucket" Is HIVE compatible:
  /// ?filter=”hive_compatible=true” Is BigQuery compatible:
  /// ?filter=”bigquery_compatible=true”
  ///
  /// [pageSize] - Optional. Maximum number of entities to return. The service
  /// may return fewer than this value. If unspecified, 100 entities will be
  /// returned by default. The maximum value is 500; larger values will will be
  /// truncated to 500.
  ///
  /// [pageToken] - Optional. Page token received from a previous ListEntities
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to ListEntities must match the call that
  /// provided the page token.
  ///
  /// [view] - Required. Specify the entity view to make a partial list request.
  /// Possible string values are:
  /// - "ENTITY_VIEW_UNSPECIFIED" : The default unset value. The API will
  /// default to the FULL view.
  /// - "TABLES" : Only list table entities.
  /// - "FILESETS" : Only list fileset entities.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListEntitiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListEntitiesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/entities';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListEntitiesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update a metadata entity.
  ///
  /// Only supports full resource update.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the entity, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/entities/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Entity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Entity> update(
    GoogleCloudDataplexV1Entity request,
    core.String name, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Entity.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsLakesZonesEntitiesPartitionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsLakesZonesEntitiesPartitionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Create a metadata partition.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent zone:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/entities/\[^/\]+$`.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Partition].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Partition> create(
    GoogleCloudDataplexV1Partition request,
    core.String parent, {
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/partitions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Partition.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Delete a metadata partition.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the partition. format:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}/partitions/{partition_value_path}.
  /// The {partition_value_path} segment consists of an ordered sequence of
  /// partition values separated by "/". All values must be provided.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/entities/\[^/\]+/partitions/.*$`.
  ///
  /// [etag] - Optional. The etag associated with the partition if it was
  /// previously retrieved.
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
    core.String? etag,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get a metadata partition of an entity.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the partition:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}/partitions/{partition_value_path}.
  /// The {partition_value_path} segment consists of an ordered sequence of
  /// partition values separated by "/". All values must be provided.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/entities/\[^/\]+/partitions/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1Partition].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1Partition> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1Partition.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List metadata partitions of an entity.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent entity:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{entity_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/lakes/\[^/\]+/zones/\[^/\]+/entities/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter the partitions returned to the caller using a
  /// key vslue pair expression. The filter expression supports: logical
  /// operators: AND, OR comparison operators: \<, \>, \>=, \<= ,=, != LIKE
  /// operators: The right hand of a LIKE operator supports “.” and “*” for
  /// wildcard searches, for example "value1 LIKE ".*oo.*" parenthetical
  /// grouping: ( )Sample filter expression: \`?filter="key1 \< value1 OR key2
  /// \> value2"Notes: Keys to the left of operators are case insensitive.
  /// Partition results are sorted first by creation time, then by lexicographic
  /// order. Up to 20 key value filter pairs are allowed, but due to performance
  /// considerations, only the first 10 will be used as a filter.
  ///
  /// [pageSize] - Optional. Maximum number of partitions to return. The service
  /// may return fewer than this value. If unspecified, 100 partitions will be
  /// returned by default. The maximum page size is 500; larger values will will
  /// be truncated to 500.
  ///
  /// [pageToken] - Optional. Page token received from a previous ListPartitions
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to ListPartitions must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDataplexV1ListPartitionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDataplexV1ListPartitionsResponse> list(
    core.String parent, {
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/partitions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDataplexV1ListPartitionsResponse.fromJson(
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
  /// google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation, the
  /// operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// Code.CANCELLED.
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
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

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
  /// support this method, it returns google.rpc.Code.UNIMPLEMENTED.
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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE:
  /// the name binding allows API services to override the binding to use
  /// different resource name schemes, such as users / * /operations. To
  /// override the binding, API services can add a binding such as
  /// "/v1/{name=users / * }/operations" to their service configuration. For
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
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for Empty is empty JSON
/// object {}.
typedef Empty = $Empty;

/// Action represents an issue requiring administrator action for resolution.
class GoogleCloudDataplexV1Action {
  /// The relative resource name of the asset, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.
  ///
  /// Output only.
  core.String? asset;

  /// The category of issue associated with the action.
  /// Possible string values are:
  /// - "CATEGORY_UNSPECIFIED" : Unspecified category.
  /// - "RESOURCE_MANAGEMENT" : Resource management related issues.
  /// - "SECURITY_POLICY" : Security policy related issues.
  /// - "DATA_DISCOVERY" : Data and discovery related issues.
  core.String? category;

  /// The list of data locations associated with this action.
  ///
  /// Cloud Storage locations are represented as URI paths(E.g.
  /// gs://bucket/table1/year=2020/month=Jan/). BigQuery locations refer to
  /// resource names(E.g.
  /// bigquery.googleapis.com/projects/project-id/datasets/dataset-id).
  core.List<core.String>? dataLocations;

  /// The time that the issue was detected.
  core.String? detectTime;

  /// Details for issues related to applying security policy.
  GoogleCloudDataplexV1ActionFailedSecurityPolicyApply?
      failedSecurityPolicyApply;

  /// Details for issues related to incompatible schemas detected within data.
  GoogleCloudDataplexV1ActionIncompatibleDataSchema? incompatibleDataSchema;

  /// Details for issues related to invalid or unsupported data formats.
  GoogleCloudDataplexV1ActionInvalidDataFormat? invalidDataFormat;

  /// Details for issues related to invalid data arrangement.
  GoogleCloudDataplexV1ActionInvalidDataOrganization? invalidDataOrganization;

  /// Details for issues related to invalid or unsupported data partition
  /// structure.
  GoogleCloudDataplexV1ActionInvalidDataPartition? invalidDataPartition;

  /// Detailed description of the issue requiring action.
  core.String? issue;

  /// The relative resource name of the lake, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  ///
  /// Output only.
  core.String? lake;

  /// Details for issues related to absence of data within managed resources.
  GoogleCloudDataplexV1ActionMissingData? missingData;

  /// Details for issues related to absence of a managed resource.
  GoogleCloudDataplexV1ActionMissingResource? missingResource;

  /// The relative resource name of the action, of the form:
  /// projects/{project}/locations/{location}/lakes/{lake}/actions/{action}
  /// projects/{project}/locations/{location}/lakes/{lake}/zones/{zone}/actions/{action}
  /// projects/{project}/locations/{location}/lakes/{lake}/zones/{zone}/assets/{asset}/actions/{action}.
  ///
  /// Output only.
  core.String? name;

  /// Details for issues related to lack of permissions to access data
  /// resources.
  GoogleCloudDataplexV1ActionUnauthorizedResource? unauthorizedResource;

  /// The relative resource name of the zone, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
  ///
  /// Output only.
  core.String? zone;

  GoogleCloudDataplexV1Action({
    this.asset,
    this.category,
    this.dataLocations,
    this.detectTime,
    this.failedSecurityPolicyApply,
    this.incompatibleDataSchema,
    this.invalidDataFormat,
    this.invalidDataOrganization,
    this.invalidDataPartition,
    this.issue,
    this.lake,
    this.missingData,
    this.missingResource,
    this.name,
    this.unauthorizedResource,
    this.zone,
  });

  GoogleCloudDataplexV1Action.fromJson(core.Map _json)
      : this(
          asset:
              _json.containsKey('asset') ? _json['asset'] as core.String : null,
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          dataLocations: _json.containsKey('dataLocations')
              ? (_json['dataLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          detectTime: _json.containsKey('detectTime')
              ? _json['detectTime'] as core.String
              : null,
          failedSecurityPolicyApply: _json
                  .containsKey('failedSecurityPolicyApply')
              ? GoogleCloudDataplexV1ActionFailedSecurityPolicyApply.fromJson(
                  _json['failedSecurityPolicyApply']
                      as core.Map<core.String, core.dynamic>)
              : null,
          incompatibleDataSchema: _json.containsKey('incompatibleDataSchema')
              ? GoogleCloudDataplexV1ActionIncompatibleDataSchema.fromJson(
                  _json['incompatibleDataSchema']
                      as core.Map<core.String, core.dynamic>)
              : null,
          invalidDataFormat: _json.containsKey('invalidDataFormat')
              ? GoogleCloudDataplexV1ActionInvalidDataFormat.fromJson(
                  _json['invalidDataFormat']
                      as core.Map<core.String, core.dynamic>)
              : null,
          invalidDataOrganization: _json.containsKey('invalidDataOrganization')
              ? GoogleCloudDataplexV1ActionInvalidDataOrganization.fromJson(
                  _json['invalidDataOrganization']
                      as core.Map<core.String, core.dynamic>)
              : null,
          invalidDataPartition: _json.containsKey('invalidDataPartition')
              ? GoogleCloudDataplexV1ActionInvalidDataPartition.fromJson(
                  _json['invalidDataPartition']
                      as core.Map<core.String, core.dynamic>)
              : null,
          issue:
              _json.containsKey('issue') ? _json['issue'] as core.String : null,
          lake: _json.containsKey('lake') ? _json['lake'] as core.String : null,
          missingData: _json.containsKey('missingData')
              ? GoogleCloudDataplexV1ActionMissingData.fromJson(
                  _json['missingData'] as core.Map<core.String, core.dynamic>)
              : null,
          missingResource: _json.containsKey('missingResource')
              ? GoogleCloudDataplexV1ActionMissingResource.fromJson(
                  _json['missingResource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          unauthorizedResource: _json.containsKey('unauthorizedResource')
              ? GoogleCloudDataplexV1ActionUnauthorizedResource.fromJson(
                  _json['unauthorizedResource']
                      as core.Map<core.String, core.dynamic>)
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asset != null) 'asset': asset!,
        if (category != null) 'category': category!,
        if (dataLocations != null) 'dataLocations': dataLocations!,
        if (detectTime != null) 'detectTime': detectTime!,
        if (failedSecurityPolicyApply != null)
          'failedSecurityPolicyApply': failedSecurityPolicyApply!,
        if (incompatibleDataSchema != null)
          'incompatibleDataSchema': incompatibleDataSchema!,
        if (invalidDataFormat != null) 'invalidDataFormat': invalidDataFormat!,
        if (invalidDataOrganization != null)
          'invalidDataOrganization': invalidDataOrganization!,
        if (invalidDataPartition != null)
          'invalidDataPartition': invalidDataPartition!,
        if (issue != null) 'issue': issue!,
        if (lake != null) 'lake': lake!,
        if (missingData != null) 'missingData': missingData!,
        if (missingResource != null) 'missingResource': missingResource!,
        if (name != null) 'name': name!,
        if (unauthorizedResource != null)
          'unauthorizedResource': unauthorizedResource!,
        if (zone != null) 'zone': zone!,
      };
}

/// Failed to apply security policy to the managed resource(s) under a lake,
/// zone or an asset.
///
/// For a lake or zone resource, one or more underlying assets has a failure
/// applying security policy to the associated managed resource.
class GoogleCloudDataplexV1ActionFailedSecurityPolicyApply {
  /// Resource name of one of the assets with failing security policy
  /// application.
  ///
  /// Populated for a lake or zone resource only.
  core.String? asset;

  GoogleCloudDataplexV1ActionFailedSecurityPolicyApply({
    this.asset,
  });

  GoogleCloudDataplexV1ActionFailedSecurityPolicyApply.fromJson(core.Map _json)
      : this(
          asset:
              _json.containsKey('asset') ? _json['asset'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asset != null) 'asset': asset!,
      };
}

/// Action details for incompatible schemas detected by discovery.
class GoogleCloudDataplexV1ActionIncompatibleDataSchema {
  /// The existing and expected schema of the table.
  ///
  /// The schema is provided as a JSON formatted structure listing columns and
  /// data types.
  core.String? existingSchema;

  /// The new and incompatible schema within the table.
  ///
  /// The schema is provided as a JSON formatted structured listing columns and
  /// data types.
  core.String? newSchema;

  /// The list of data locations sampled and used for format/schema inference.
  core.List<core.String>? sampledDataLocations;

  /// Whether the action relates to a schema that is incompatible or modified.
  /// Possible string values are:
  /// - "SCHEMA_CHANGE_UNSPECIFIED" : Schema change unspecified.
  /// - "INCOMPATIBLE" : Newly discovered schema is incompatible with existing
  /// schema.
  /// - "MODIFIED" : Newly discovered schema has changed from existing schema
  /// for data in a curated zone.
  core.String? schemaChange;

  /// The name of the table containing invalid data.
  core.String? table;

  GoogleCloudDataplexV1ActionIncompatibleDataSchema({
    this.existingSchema,
    this.newSchema,
    this.sampledDataLocations,
    this.schemaChange,
    this.table,
  });

  GoogleCloudDataplexV1ActionIncompatibleDataSchema.fromJson(core.Map _json)
      : this(
          existingSchema: _json.containsKey('existingSchema')
              ? _json['existingSchema'] as core.String
              : null,
          newSchema: _json.containsKey('newSchema')
              ? _json['newSchema'] as core.String
              : null,
          sampledDataLocations: _json.containsKey('sampledDataLocations')
              ? (_json['sampledDataLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          schemaChange: _json.containsKey('schemaChange')
              ? _json['schemaChange'] as core.String
              : null,
          table:
              _json.containsKey('table') ? _json['table'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (existingSchema != null) 'existingSchema': existingSchema!,
        if (newSchema != null) 'newSchema': newSchema!,
        if (sampledDataLocations != null)
          'sampledDataLocations': sampledDataLocations!,
        if (schemaChange != null) 'schemaChange': schemaChange!,
        if (table != null) 'table': table!,
      };
}

/// Action details for invalid or unsupported data files detected by discovery.
class GoogleCloudDataplexV1ActionInvalidDataFormat {
  /// The expected data format of the entity.
  core.String? expectedFormat;

  /// The new unexpected data format within the entity.
  core.String? newFormat;

  /// The list of data locations sampled and used for format/schema inference.
  core.List<core.String>? sampledDataLocations;

  GoogleCloudDataplexV1ActionInvalidDataFormat({
    this.expectedFormat,
    this.newFormat,
    this.sampledDataLocations,
  });

  GoogleCloudDataplexV1ActionInvalidDataFormat.fromJson(core.Map _json)
      : this(
          expectedFormat: _json.containsKey('expectedFormat')
              ? _json['expectedFormat'] as core.String
              : null,
          newFormat: _json.containsKey('newFormat')
              ? _json['newFormat'] as core.String
              : null,
          sampledDataLocations: _json.containsKey('sampledDataLocations')
              ? (_json['sampledDataLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expectedFormat != null) 'expectedFormat': expectedFormat!,
        if (newFormat != null) 'newFormat': newFormat!,
        if (sampledDataLocations != null)
          'sampledDataLocations': sampledDataLocations!,
      };
}

/// Action details for invalid data arrangement.
typedef GoogleCloudDataplexV1ActionInvalidDataOrganization = $Empty;

/// Action details for invalid or unsupported partitions detected by discovery.
class GoogleCloudDataplexV1ActionInvalidDataPartition {
  /// The issue type of InvalidDataPartition.
  /// Possible string values are:
  /// - "PARTITION_STRUCTURE_UNSPECIFIED" : PartitionStructure unspecified.
  /// - "CONSISTENT_KEYS" : Consistent hive-style partition definition (both raw
  /// and curated zone).
  /// - "HIVE_STYLE_KEYS" : Hive style partition definition (curated zone only).
  core.String? expectedStructure;

  GoogleCloudDataplexV1ActionInvalidDataPartition({
    this.expectedStructure,
  });

  GoogleCloudDataplexV1ActionInvalidDataPartition.fromJson(core.Map _json)
      : this(
          expectedStructure: _json.containsKey('expectedStructure')
              ? _json['expectedStructure'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expectedStructure != null) 'expectedStructure': expectedStructure!,
      };
}

/// Action details for absence of data detected by discovery.
typedef GoogleCloudDataplexV1ActionMissingData = $Empty;

/// Action details for resource references in assets that cannot be located.
typedef GoogleCloudDataplexV1ActionMissingResource = $Empty;

/// Action details for unauthorized resource issues raised to indicate that the
/// service account associated with the lake instance is not authorized to
/// access or manage the resource associated with an asset.
typedef GoogleCloudDataplexV1ActionUnauthorizedResource = $Empty;

/// An asset represents a cloud resource that is being managed within a lake as
/// a member of a zone.
class GoogleCloudDataplexV1Asset {
  /// The time when the asset was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the asset.
  ///
  /// Optional.
  core.String? description;

  /// Specification of the discovery feature applied to data referenced by this
  /// asset.
  ///
  /// When this spec is left unset, the asset will use the spec set on the
  /// parent zone.
  ///
  /// Optional.
  GoogleCloudDataplexV1AssetDiscoverySpec? discoverySpec;

  /// Status of the discovery feature applied to data referenced by this asset.
  ///
  /// Output only.
  GoogleCloudDataplexV1AssetDiscoveryStatus? discoveryStatus;

  /// User friendly display name.
  ///
  /// Optional.
  core.String? displayName;

  /// User defined labels for the asset.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The relative resource name of the asset, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.
  ///
  /// Output only.
  core.String? name;

  /// Specification of the resource that is referenced by this asset.
  ///
  /// Required.
  GoogleCloudDataplexV1AssetResourceSpec? resourceSpec;

  /// Status of the resource referenced by this asset.
  ///
  /// Output only.
  GoogleCloudDataplexV1AssetResourceStatus? resourceStatus;

  /// Status of the security policy applied to resource referenced by this
  /// asset.
  ///
  /// Output only.
  GoogleCloudDataplexV1AssetSecurityStatus? securityStatus;

  /// Current state of the asset.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "ACTIVE" : Resource is active, i.e., ready to use.
  /// - "CREATING" : Resource is under creation.
  /// - "DELETING" : Resource is under deletion.
  /// - "ACTION_REQUIRED" : Resource is active but has unresolved actions.
  core.String? state;

  /// System generated globally unique ID for the asset.
  ///
  /// This ID will be different if the asset is deleted and re-created with the
  /// same name.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the asset was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDataplexV1Asset({
    this.createTime,
    this.description,
    this.discoverySpec,
    this.discoveryStatus,
    this.displayName,
    this.labels,
    this.name,
    this.resourceSpec,
    this.resourceStatus,
    this.securityStatus,
    this.state,
    this.uid,
    this.updateTime,
  });

  GoogleCloudDataplexV1Asset.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          discoverySpec: _json.containsKey('discoverySpec')
              ? GoogleCloudDataplexV1AssetDiscoverySpec.fromJson(
                  _json['discoverySpec'] as core.Map<core.String, core.dynamic>)
              : null,
          discoveryStatus: _json.containsKey('discoveryStatus')
              ? GoogleCloudDataplexV1AssetDiscoveryStatus.fromJson(
                  _json['discoveryStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          resourceSpec: _json.containsKey('resourceSpec')
              ? GoogleCloudDataplexV1AssetResourceSpec.fromJson(
                  _json['resourceSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          resourceStatus: _json.containsKey('resourceStatus')
              ? GoogleCloudDataplexV1AssetResourceStatus.fromJson(
                  _json['resourceStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          securityStatus: _json.containsKey('securityStatus')
              ? GoogleCloudDataplexV1AssetSecurityStatus.fromJson(
                  _json['securityStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (discoverySpec != null) 'discoverySpec': discoverySpec!,
        if (discoveryStatus != null) 'discoveryStatus': discoveryStatus!,
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (resourceSpec != null) 'resourceSpec': resourceSpec!,
        if (resourceStatus != null) 'resourceStatus': resourceStatus!,
        if (securityStatus != null) 'securityStatus': securityStatus!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Settings to manage the metadata discovery and publishing for an asset.
class GoogleCloudDataplexV1AssetDiscoverySpec {
  /// Configuration for CSV data.
  ///
  /// Optional.
  GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions? csvOptions;

  /// Whether discovery is enabled.
  ///
  /// Optional.
  core.bool? enabled;

  /// The list of patterns to apply for selecting data to exclude during
  /// discovery.
  ///
  /// For Cloud Storage bucket assets, these are interpreted as glob patterns
  /// used to match object names. For BigQuery dataset assets, these are
  /// interpreted as patterns to match table names.
  ///
  /// Optional.
  core.List<core.String>? excludePatterns;

  /// The list of patterns to apply for selecting data to include during
  /// discovery if only a subset of the data should considered.
  ///
  /// For Cloud Storage bucket assets, these are interpreted as glob patterns
  /// used to match object names. For BigQuery dataset assets, these are
  /// interpreted as patterns to match table names.
  ///
  /// Optional.
  core.List<core.String>? includePatterns;

  /// Configuration for Json data.
  ///
  /// Optional.
  GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions? jsonOptions;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery
  /// periodically.
  ///
  /// Successive discovery runs must be scheduled at least 60 minutes apart. The
  /// default value is to run discovery every 60 minutes. To explicitly set a
  /// timezone to the cron tab, apply a prefix in the cron tab:
  /// "CRON_TZ=${IANA_TIME_ZONE}" or TZ=${IANA_TIME_ZONE}". The
  /// ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database.
  /// For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York
  /// 1 * * * *".
  ///
  /// Optional.
  core.String? schedule;

  GoogleCloudDataplexV1AssetDiscoverySpec({
    this.csvOptions,
    this.enabled,
    this.excludePatterns,
    this.includePatterns,
    this.jsonOptions,
    this.schedule,
  });

  GoogleCloudDataplexV1AssetDiscoverySpec.fromJson(core.Map _json)
      : this(
          csvOptions: _json.containsKey('csvOptions')
              ? GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions.fromJson(
                  _json['csvOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          excludePatterns: _json.containsKey('excludePatterns')
              ? (_json['excludePatterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includePatterns: _json.containsKey('includePatterns')
              ? (_json['includePatterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jsonOptions: _json.containsKey('jsonOptions')
              ? GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions.fromJson(
                  _json['jsonOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          schedule: _json.containsKey('schedule')
              ? _json['schedule'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (csvOptions != null) 'csvOptions': csvOptions!,
        if (enabled != null) 'enabled': enabled!,
        if (excludePatterns != null) 'excludePatterns': excludePatterns!,
        if (includePatterns != null) 'includePatterns': includePatterns!,
        if (jsonOptions != null) 'jsonOptions': jsonOptions!,
        if (schedule != null) 'schedule': schedule!,
      };
}

/// Describe CSV and similar semi-structured data formats.
typedef GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions
    = $DiscoverySpecCsvOptions;

/// Describe JSON data format.
typedef GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions
    = $DiscoverySpecJsonOptions;

/// Status of discovery for an asset.
class GoogleCloudDataplexV1AssetDiscoveryStatus {
  /// The duration of the last discovery run.
  core.String? lastRunDuration;

  /// The start time of the last discovery run.
  core.String? lastRunTime;

  /// Additional information about the current state.
  core.String? message;

  /// The current status of the discovery feature.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is unspecified.
  /// - "SCHEDULED" : Discovery for the asset is scheduled.
  /// - "IN_PROGRESS" : Discovery for the asset is running.
  /// - "PAUSED" : Discovery for the asset is currently paused (e.g. due to a
  /// lack of available resources). It will be automatically resumed.
  /// - "DISABLED" : Discovery for the asset is disabled.
  core.String? state;

  /// Data Stats of the asset reported by discovery.
  GoogleCloudDataplexV1AssetDiscoveryStatusStats? stats;

  /// Last update time of the status.
  core.String? updateTime;

  GoogleCloudDataplexV1AssetDiscoveryStatus({
    this.lastRunDuration,
    this.lastRunTime,
    this.message,
    this.state,
    this.stats,
    this.updateTime,
  });

  GoogleCloudDataplexV1AssetDiscoveryStatus.fromJson(core.Map _json)
      : this(
          lastRunDuration: _json.containsKey('lastRunDuration')
              ? _json['lastRunDuration'] as core.String
              : null,
          lastRunTime: _json.containsKey('lastRunTime')
              ? _json['lastRunTime'] as core.String
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stats: _json.containsKey('stats')
              ? GoogleCloudDataplexV1AssetDiscoveryStatusStats.fromJson(
                  _json['stats'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastRunDuration != null) 'lastRunDuration': lastRunDuration!,
        if (lastRunTime != null) 'lastRunTime': lastRunTime!,
        if (message != null) 'message': message!,
        if (state != null) 'state': state!,
        if (stats != null) 'stats': stats!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The aggregated data statistics for the asset reported by discovery.
class GoogleCloudDataplexV1AssetDiscoveryStatusStats {
  /// The count of data items within the referenced resource.
  core.String? dataItems;

  /// The number of stored data bytes within the referenced resource.
  core.String? dataSize;

  /// The count of fileset entities within the referenced resource.
  core.String? filesets;

  /// The count of table entities within the referenced resource.
  core.String? tables;

  GoogleCloudDataplexV1AssetDiscoveryStatusStats({
    this.dataItems,
    this.dataSize,
    this.filesets,
    this.tables,
  });

  GoogleCloudDataplexV1AssetDiscoveryStatusStats.fromJson(core.Map _json)
      : this(
          dataItems: _json.containsKey('dataItems')
              ? _json['dataItems'] as core.String
              : null,
          dataSize: _json.containsKey('dataSize')
              ? _json['dataSize'] as core.String
              : null,
          filesets: _json.containsKey('filesets')
              ? _json['filesets'] as core.String
              : null,
          tables: _json.containsKey('tables')
              ? _json['tables'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataItems != null) 'dataItems': dataItems!,
        if (dataSize != null) 'dataSize': dataSize!,
        if (filesets != null) 'filesets': filesets!,
        if (tables != null) 'tables': tables!,
      };
}

/// Identifies the cloud resource that is referenced by this asset.
class GoogleCloudDataplexV1AssetResourceSpec {
  /// Relative name of the cloud resource that contains the data that is being
  /// managed within a lake.
  ///
  /// For example: projects/{project_number}/buckets/{bucket_id}
  /// projects/{project_number}/datasets/{dataset_id}
  ///
  /// Immutable.
  core.String? name;

  /// Type of resource.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Type not specified.
  /// - "STORAGE_BUCKET" : Cloud Storage bucket.
  /// - "BIGQUERY_DATASET" : BigQuery dataset.
  core.String? type;

  GoogleCloudDataplexV1AssetResourceSpec({
    this.name,
    this.type,
  });

  GoogleCloudDataplexV1AssetResourceSpec.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// Status of the resource referenced by an asset.
class GoogleCloudDataplexV1AssetResourceStatus {
  /// Additional information about the current state.
  core.String? message;

  /// The current state of the managed resource.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "READY" : Resource does not have any errors.
  /// - "ERROR" : Resource has errors.
  core.String? state;

  /// Last update time of the status.
  core.String? updateTime;

  GoogleCloudDataplexV1AssetResourceStatus({
    this.message,
    this.state,
    this.updateTime,
  });

  GoogleCloudDataplexV1AssetResourceStatus.fromJson(core.Map _json)
      : this(
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Security policy status of the asset.
///
/// Data security policy, i.e., readers, writers & owners, should be specified
/// in the lake/zone/asset IAM policy.
class GoogleCloudDataplexV1AssetSecurityStatus {
  /// Additional information about the current state.
  core.String? message;

  /// The current state of the security policy applied to the attached resource.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "READY" : Security policy has been successfully applied to the attached
  /// resource.
  /// - "APPLYING" : Security policy is in the process of being applied to the
  /// attached resource.
  /// - "ERROR" : Security policy could not be applied to the attached resource
  /// due to errors.
  core.String? state;

  /// Last update time of the status.
  core.String? updateTime;

  GoogleCloudDataplexV1AssetSecurityStatus({
    this.message,
    this.state,
    this.updateTime,
  });

  GoogleCloudDataplexV1AssetSecurityStatus.fromJson(core.Map _json)
      : this(
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Aggregated status of the underlying assets of a lake or zone.
class GoogleCloudDataplexV1AssetStatus {
  /// Number of active assets.
  core.int? activeAssets;

  /// Number of assets that are in process of updating the security policy on
  /// attached resources.
  core.int? securityPolicyApplyingAssets;

  /// Last update time of the status.
  core.String? updateTime;

  GoogleCloudDataplexV1AssetStatus({
    this.activeAssets,
    this.securityPolicyApplyingAssets,
    this.updateTime,
  });

  GoogleCloudDataplexV1AssetStatus.fromJson(core.Map _json)
      : this(
          activeAssets: _json.containsKey('activeAssets')
              ? _json['activeAssets'] as core.int
              : null,
          securityPolicyApplyingAssets:
              _json.containsKey('securityPolicyApplyingAssets')
                  ? _json['securityPolicyApplyingAssets'] as core.int
                  : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeAssets != null) 'activeAssets': activeAssets!,
        if (securityPolicyApplyingAssets != null)
          'securityPolicyApplyingAssets': securityPolicyApplyingAssets!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Cancel task jobs.
typedef GoogleCloudDataplexV1CancelJobRequest = $Empty;

/// Content represents a user-visible notebook or a sql script
class GoogleCloudDataplexV1Content {
  /// Content creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Content data in string format.
  ///
  /// Required.
  core.String? dataText;

  /// Description of the content.
  ///
  /// Optional.
  core.String? description;

  /// User defined labels for the content.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The relative resource name of the content, of the form:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}
  ///
  /// Output only.
  core.String? name;

  /// Notebook related configurations.
  GoogleCloudDataplexV1ContentNotebook? notebook;

  /// The path for the Content file, represented as directory structure.
  ///
  /// Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots
  /// and slashes.
  ///
  /// Required.
  core.String? path;

  /// Sql Script related configurations.
  GoogleCloudDataplexV1ContentSqlScript? sqlScript;

  /// System generated globally unique ID for the content.
  ///
  /// This ID will be different if the content is deleted and re-created with
  /// the same name.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the content was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDataplexV1Content({
    this.createTime,
    this.dataText,
    this.description,
    this.labels,
    this.name,
    this.notebook,
    this.path,
    this.sqlScript,
    this.uid,
    this.updateTime,
  });

  GoogleCloudDataplexV1Content.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataText: _json.containsKey('dataText')
              ? _json['dataText'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notebook: _json.containsKey('notebook')
              ? GoogleCloudDataplexV1ContentNotebook.fromJson(
                  _json['notebook'] as core.Map<core.String, core.dynamic>)
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          sqlScript: _json.containsKey('sqlScript')
              ? GoogleCloudDataplexV1ContentSqlScript.fromJson(
                  _json['sqlScript'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (dataText != null) 'dataText': dataText!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (notebook != null) 'notebook': notebook!,
        if (path != null) 'path': path!,
        if (sqlScript != null) 'sqlScript': sqlScript!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Configuration for Notebook content.
class GoogleCloudDataplexV1ContentNotebook {
  /// Kernel Type of the notebook.
  ///
  /// Required.
  /// Possible string values are:
  /// - "KERNEL_TYPE_UNSPECIFIED" : Kernel Type unspecified.
  /// - "PYTHON3" : Python 3 Kernel.
  core.String? kernelType;

  GoogleCloudDataplexV1ContentNotebook({
    this.kernelType,
  });

  GoogleCloudDataplexV1ContentNotebook.fromJson(core.Map _json)
      : this(
          kernelType: _json.containsKey('kernelType')
              ? _json['kernelType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kernelType != null) 'kernelType': kernelType!,
      };
}

/// Configuration for the Sql Script content.
class GoogleCloudDataplexV1ContentSqlScript {
  /// Query Engine to be used for the Sql Query.
  ///
  /// Required.
  /// Possible string values are:
  /// - "QUERY_ENGINE_UNSPECIFIED" : Value was unspecified.
  /// - "SPARK" : Spark SQL Query.
  core.String? engine;

  GoogleCloudDataplexV1ContentSqlScript({
    this.engine,
  });

  GoogleCloudDataplexV1ContentSqlScript.fromJson(core.Map _json)
      : this(
          engine: _json.containsKey('engine')
              ? _json['engine'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (engine != null) 'engine': engine!,
      };
}

/// Represents tables and fileset metadata contained within a zone.
class GoogleCloudDataplexV1Entity {
  /// The ID of the asset associated with the storage location containing the
  /// entity data.
  ///
  /// The entity must be with in the same zone with the asset.
  ///
  /// Required. Immutable.
  core.String? asset;

  /// The name of the associated Data Catalog entry.
  ///
  /// Output only.
  core.String? catalogEntry;

  /// Metadata stores that the entity is compatible with.
  ///
  /// Output only.
  GoogleCloudDataplexV1EntityCompatibilityStatus? compatibility;

  /// The time when the entity was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The storage path of the entity data.
  ///
  /// For Cloud Storage data, this is the fully-qualified path to the entity,
  /// such as gs://bucket/path/to/data. For BigQuery data, this is the name of
  /// the table resource, such as
  /// projects/project_id/datasets/dataset_id/tables/table_id.
  ///
  /// Required. Immutable.
  core.String? dataPath;

  /// The set of items within the data path constituting the data in the entity,
  /// represented as a glob path.
  ///
  /// Example: gs://bucket/path/to/data / * * / * .csv.
  ///
  /// Optional.
  core.String? dataPathPattern;

  /// User friendly longer description text.
  ///
  /// Must be shorter than or equal to 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Display name must be shorter than or equal to 63 characters.
  ///
  /// Optional.
  core.String? displayName;

  /// The etag for this entity.
  ///
  /// Required for update and delete requests. Must match the server's etag.
  ///
  /// Optional.
  core.String? etag;

  /// Identifies the storage format of the entity data.
  ///
  /// It does not apply to entities with data stored in BigQuery.
  ///
  /// Required.
  GoogleCloudDataplexV1StorageFormat? format;

  /// A user-provided entity ID.
  ///
  /// It is mutable, and will be used as the published table name. Specifying a
  /// new ID in an update entity request will override the existing value. The
  /// ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores.
  /// Must begin with a letter.
  ///
  /// Required.
  core.String? id;

  /// The resource name of the entity, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/entities/{id}.
  ///
  /// Output only.
  core.String? name;

  /// The description of the data structure and layout.
  ///
  /// The schema is not included in list responses. It is only included in
  /// SCHEMA and FULL entity views of a GetEntity response.
  ///
  /// Required.
  GoogleCloudDataplexV1Schema? schema;

  /// Identifies the storage system of the entity data.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "STORAGE_SYSTEM_UNSPECIFIED" : Storage system unspecified.
  /// - "CLOUD_STORAGE" : The entity data is contained within a Cloud Storage
  /// bucket.
  /// - "BIGQUERY" : The entity data is contained within a BigQuery dataset.
  core.String? system;

  /// The type of entity.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Type unspecified.
  /// - "TABLE" : Structured and semi-structured data.
  /// - "FILESET" : Unstructured data.
  core.String? type;

  /// The time when the entity was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDataplexV1Entity({
    this.asset,
    this.catalogEntry,
    this.compatibility,
    this.createTime,
    this.dataPath,
    this.dataPathPattern,
    this.description,
    this.displayName,
    this.etag,
    this.format,
    this.id,
    this.name,
    this.schema,
    this.system,
    this.type,
    this.updateTime,
  });

  GoogleCloudDataplexV1Entity.fromJson(core.Map _json)
      : this(
          asset:
              _json.containsKey('asset') ? _json['asset'] as core.String : null,
          catalogEntry: _json.containsKey('catalogEntry')
              ? _json['catalogEntry'] as core.String
              : null,
          compatibility: _json.containsKey('compatibility')
              ? GoogleCloudDataplexV1EntityCompatibilityStatus.fromJson(
                  _json['compatibility'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataPath: _json.containsKey('dataPath')
              ? _json['dataPath'] as core.String
              : null,
          dataPathPattern: _json.containsKey('dataPathPattern')
              ? _json['dataPathPattern'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          format: _json.containsKey('format')
              ? GoogleCloudDataplexV1StorageFormat.fromJson(
                  _json['format'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          schema: _json.containsKey('schema')
              ? GoogleCloudDataplexV1Schema.fromJson(
                  _json['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          system: _json.containsKey('system')
              ? _json['system'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (asset != null) 'asset': asset!,
        if (catalogEntry != null) 'catalogEntry': catalogEntry!,
        if (compatibility != null) 'compatibility': compatibility!,
        if (createTime != null) 'createTime': createTime!,
        if (dataPath != null) 'dataPath': dataPath!,
        if (dataPathPattern != null) 'dataPathPattern': dataPathPattern!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (format != null) 'format': format!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (schema != null) 'schema': schema!,
        if (system != null) 'system': system!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Provides compatibility information for various metadata stores.
class GoogleCloudDataplexV1EntityCompatibilityStatus {
  /// Whether this entity is compatible with BigQuery.
  ///
  /// Output only.
  GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility? bigquery;

  /// Whether this entity is compatible with Hive Metastore.
  ///
  /// Output only.
  GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility? hiveMetastore;

  GoogleCloudDataplexV1EntityCompatibilityStatus({
    this.bigquery,
    this.hiveMetastore,
  });

  GoogleCloudDataplexV1EntityCompatibilityStatus.fromJson(core.Map _json)
      : this(
          bigquery: _json.containsKey('bigquery')
              ? GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility
                  .fromJson(
                      _json['bigquery'] as core.Map<core.String, core.dynamic>)
              : null,
          hiveMetastore: _json.containsKey('hiveMetastore')
              ? GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility
                  .fromJson(_json['hiveMetastore']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigquery != null) 'bigquery': bigquery!,
        if (hiveMetastore != null) 'hiveMetastore': hiveMetastore!,
      };
}

/// Provides compatibility information for a specific metadata store.
class GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility {
  /// Whether the entity is compatible and can be represented in the metadata
  /// store.
  ///
  /// Output only.
  core.bool? compatible;

  /// Provides additional detail if the entity is incompatible with the metadata
  /// store.
  ///
  /// Output only.
  core.String? reason;

  GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility({
    this.compatible,
    this.reason,
  });

  GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility.fromJson(
      core.Map _json)
      : this(
          compatible: _json.containsKey('compatible')
              ? _json['compatible'] as core.bool
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compatible != null) 'compatible': compatible!,
        if (reason != null) 'reason': reason!,
      };
}

/// Environment represents a user-visible compute infrastructure for analytics
/// within a lake.
class GoogleCloudDataplexV1Environment {
  /// Environment creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the environment.
  ///
  /// Optional.
  core.String? description;

  /// User friendly display name.
  ///
  /// Optional.
  core.String? displayName;

  /// URI Endpoints to access sessions associated with the Environment.
  ///
  /// Output only.
  GoogleCloudDataplexV1EnvironmentEndpoints? endpoints;

  /// Infrastructure specification for the Environment.
  ///
  /// Required.
  GoogleCloudDataplexV1EnvironmentInfrastructureSpec? infrastructureSpec;

  /// User defined labels for the environment.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The relative resource name of the environment, of the form:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}
  ///
  /// Output only.
  core.String? name;

  /// Configuration for sessions created for this environment.
  ///
  /// Optional.
  GoogleCloudDataplexV1EnvironmentSessionSpec? sessionSpec;

  /// Status of sessions created for this environment.
  ///
  /// Output only.
  GoogleCloudDataplexV1EnvironmentSessionStatus? sessionStatus;

  /// Current state of the environment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "ACTIVE" : Resource is active, i.e., ready to use.
  /// - "CREATING" : Resource is under creation.
  /// - "DELETING" : Resource is under deletion.
  /// - "ACTION_REQUIRED" : Resource is active but has unresolved actions.
  core.String? state;

  /// System generated globally unique ID for the environment.
  ///
  /// This ID will be different if the environment is deleted and re-created
  /// with the same name.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the environment was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDataplexV1Environment({
    this.createTime,
    this.description,
    this.displayName,
    this.endpoints,
    this.infrastructureSpec,
    this.labels,
    this.name,
    this.sessionSpec,
    this.sessionStatus,
    this.state,
    this.uid,
    this.updateTime,
  });

  GoogleCloudDataplexV1Environment.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          endpoints: _json.containsKey('endpoints')
              ? GoogleCloudDataplexV1EnvironmentEndpoints.fromJson(
                  _json['endpoints'] as core.Map<core.String, core.dynamic>)
              : null,
          infrastructureSpec: _json.containsKey('infrastructureSpec')
              ? GoogleCloudDataplexV1EnvironmentInfrastructureSpec.fromJson(
                  _json['infrastructureSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sessionSpec: _json.containsKey('sessionSpec')
              ? GoogleCloudDataplexV1EnvironmentSessionSpec.fromJson(
                  _json['sessionSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          sessionStatus: _json.containsKey('sessionStatus')
              ? GoogleCloudDataplexV1EnvironmentSessionStatus.fromJson(
                  _json['sessionStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (endpoints != null) 'endpoints': endpoints!,
        if (infrastructureSpec != null)
          'infrastructureSpec': infrastructureSpec!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (sessionSpec != null) 'sessionSpec': sessionSpec!,
        if (sessionStatus != null) 'sessionStatus': sessionStatus!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

class GoogleCloudDataplexV1EnvironmentEndpoints {
  /// URI to serve notebook APIs
  ///
  /// Output only.
  core.String? notebooks;

  /// URI to serve SQL APIs
  ///
  /// Output only.
  core.String? sql;

  GoogleCloudDataplexV1EnvironmentEndpoints({
    this.notebooks,
    this.sql,
  });

  GoogleCloudDataplexV1EnvironmentEndpoints.fromJson(core.Map _json)
      : this(
          notebooks: _json.containsKey('notebooks')
              ? _json['notebooks'] as core.String
              : null,
          sql: _json.containsKey('sql') ? _json['sql'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (notebooks != null) 'notebooks': notebooks!,
        if (sql != null) 'sql': sql!,
      };
}

/// Configuration for the underlying infrastructure used to run workloads.
class GoogleCloudDataplexV1EnvironmentInfrastructureSpec {
  /// Compute resources needed for analyze interactive workloads.
  ///
  /// Optional.
  GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources? compute;

  /// Software Runtime Configuration for analyze interactive workloads.
  ///
  /// Required.
  GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime? osImage;

  GoogleCloudDataplexV1EnvironmentInfrastructureSpec({
    this.compute,
    this.osImage,
  });

  GoogleCloudDataplexV1EnvironmentInfrastructureSpec.fromJson(core.Map _json)
      : this(
          compute: _json.containsKey('compute')
              ? GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources
                  .fromJson(
                      _json['compute'] as core.Map<core.String, core.dynamic>)
              : null,
          osImage: _json.containsKey('osImage')
              ? GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime
                  .fromJson(
                      _json['osImage'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compute != null) 'compute': compute!,
        if (osImage != null) 'osImage': osImage!,
      };
}

/// Compute resources associated with the analyze interactive workloads.
class GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources {
  /// Size in GB of the disk.
  ///
  /// Default is 100 GB.
  ///
  /// Optional.
  core.int? diskSizeGb;

  /// Max configurable nodes.
  ///
  /// If max_node_count \> node_count, then auto-scaling is enabled.
  ///
  /// Optional.
  core.int? maxNodeCount;

  /// Total number of nodes in the sessions created for this environment.
  ///
  /// Optional.
  core.int? nodeCount;

  GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources({
    this.diskSizeGb,
    this.maxNodeCount,
    this.nodeCount,
  });

  GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources.fromJson(
      core.Map _json)
      : this(
          diskSizeGb: _json.containsKey('diskSizeGb')
              ? _json['diskSizeGb'] as core.int
              : null,
          maxNodeCount: _json.containsKey('maxNodeCount')
              ? _json['maxNodeCount'] as core.int
              : null,
          nodeCount: _json.containsKey('nodeCount')
              ? _json['nodeCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (maxNodeCount != null) 'maxNodeCount': maxNodeCount!,
        if (nodeCount != null) 'nodeCount': nodeCount!,
      };
}

/// Software Runtime Configuration to run Analyze.
class GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime {
  /// Dataplex Image version.
  ///
  /// Required.
  core.String? imageVersion;

  /// List of Java jars to be included in the runtime environment.
  ///
  /// Valid input includes Cloud Storage URIs to Jar binaries. For example,
  /// gs://bucket-name/my/path/to/file.jar
  ///
  /// Optional.
  core.List<core.String>? javaLibraries;

  /// Spark properties to provide configuration for use in sessions created for
  /// this environment.
  ///
  /// The properties to set on daemon config files. Property keys are specified
  /// in prefix:property format. The prefix must be "spark".
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// A list of python packages to be installed.
  ///
  /// Valid formats include Cloud Storage URI to a PIP installable library. For
  /// example, gs://bucket-name/my/path/to/lib.tar.gz
  ///
  /// Optional.
  core.List<core.String>? pythonPackages;

  GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime({
    this.imageVersion,
    this.javaLibraries,
    this.properties,
    this.pythonPackages,
  });

  GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime.fromJson(
      core.Map _json)
      : this(
          imageVersion: _json.containsKey('imageVersion')
              ? _json['imageVersion'] as core.String
              : null,
          javaLibraries: _json.containsKey('javaLibraries')
              ? (_json['javaLibraries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          pythonPackages: _json.containsKey('pythonPackages')
              ? (_json['pythonPackages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageVersion != null) 'imageVersion': imageVersion!,
        if (javaLibraries != null) 'javaLibraries': javaLibraries!,
        if (properties != null) 'properties': properties!,
        if (pythonPackages != null) 'pythonPackages': pythonPackages!,
      };
}

class GoogleCloudDataplexV1EnvironmentSessionSpec {
  /// If True, this causes sessions to be pre-created and available for faster
  /// startup to enable interactive exploration use-cases.
  ///
  /// This defaults to False to avoid additional billed charges. These can only
  /// be set to True for the environment with name set to "default", and with
  /// default configuration.
  ///
  /// Optional.
  core.bool? enableFastStartup;

  /// The idle time configuration of the session.
  ///
  /// The session will be auto-terminated at the end of this period.
  ///
  /// Optional.
  core.String? maxIdleDuration;

  GoogleCloudDataplexV1EnvironmentSessionSpec({
    this.enableFastStartup,
    this.maxIdleDuration,
  });

  GoogleCloudDataplexV1EnvironmentSessionSpec.fromJson(core.Map _json)
      : this(
          enableFastStartup: _json.containsKey('enableFastStartup')
              ? _json['enableFastStartup'] as core.bool
              : null,
          maxIdleDuration: _json.containsKey('maxIdleDuration')
              ? _json['maxIdleDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableFastStartup != null) 'enableFastStartup': enableFastStartup!,
        if (maxIdleDuration != null) 'maxIdleDuration': maxIdleDuration!,
      };
}

class GoogleCloudDataplexV1EnvironmentSessionStatus {
  /// Queries over sessions to mark whether the environment is currently active
  /// or not
  ///
  /// Output only.
  core.bool? active;

  GoogleCloudDataplexV1EnvironmentSessionStatus({
    this.active,
  });

  GoogleCloudDataplexV1EnvironmentSessionStatus.fromJson(core.Map _json)
      : this(
          active:
              _json.containsKey('active') ? _json['active'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
      };
}

/// A job represents an instance of a task.
class GoogleCloudDataplexV1Job {
  /// The time when the job ended.
  ///
  /// Output only.
  core.String? endTime;

  /// Additional information about the current state.
  ///
  /// Output only.
  core.String? message;

  /// The relative resource name of the job, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/
  /// tasks/{task_id}/jobs/{job_id}.
  ///
  /// Output only.
  core.String? name;

  /// . The number of times the job has been retried (excluding the initial
  /// attempt).
  ///
  /// Output only.
  core.int? retryCount;

  /// The underlying service running a job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SERVICE_UNSPECIFIED" : Service used to run the job is unspecified.
  /// - "DATAPROC" : Dataproc service is used to run this job.
  core.String? service;

  /// The full resource name for the job run under a particular service.
  ///
  /// Output only.
  core.String? serviceJob;

  /// The time when the job was started.
  ///
  /// Output only.
  core.String? startTime;

  /// Execution state for the job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The job state is unknown.
  /// - "RUNNING" : The job is running.
  /// - "CANCELLING" : The job is cancelling.
  /// - "CANCELLED" : The job cancellation was successful.
  /// - "SUCCEEDED" : The job completed successfully.
  /// - "FAILED" : The job is no longer running due to an error.
  /// - "ABORTED" : The job was cancelled outside of Dataplex.
  core.String? state;

  /// System generated globally unique ID for the job.
  ///
  /// Output only.
  core.String? uid;

  GoogleCloudDataplexV1Job({
    this.endTime,
    this.message,
    this.name,
    this.retryCount,
    this.service,
    this.serviceJob,
    this.startTime,
    this.state,
    this.uid,
  });

  GoogleCloudDataplexV1Job.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          retryCount: _json.containsKey('retryCount')
              ? _json['retryCount'] as core.int
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
          serviceJob: _json.containsKey('serviceJob')
              ? _json['serviceJob'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (message != null) 'message': message!,
        if (name != null) 'name': name!,
        if (retryCount != null) 'retryCount': retryCount!,
        if (service != null) 'service': service!,
        if (serviceJob != null) 'serviceJob': serviceJob!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
      };
}

/// A lake is a centralized repository for managing enterprise data across the
/// organization distributed across many cloud projects, and stored in a variety
/// of storage services such as Google Cloud Storage and BigQuery.
///
/// The resources attached to a lake are referred to as managed resources. Data
/// within these managed resources can be structured or unstructured. A lake
/// provides data admins with tools to organize, secure and manage their data at
/// scale, and provides data scientists and data engineers an integrated
/// experience to easily search, discover, analyze and transform data and
/// associated metadata.
class GoogleCloudDataplexV1Lake {
  /// Aggregated status of the underlying assets of the lake.
  ///
  /// Output only.
  GoogleCloudDataplexV1AssetStatus? assetStatus;

  /// The time when the lake was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the lake.
  ///
  /// Optional.
  core.String? description;

  /// User friendly display name.
  ///
  /// Optional.
  core.String? displayName;

  /// User-defined labels for the lake.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Settings to manage lake and Dataproc Metastore service instance
  /// association.
  ///
  /// Optional.
  GoogleCloudDataplexV1LakeMetastore? metastore;

  /// Metastore status of the lake.
  ///
  /// Output only.
  GoogleCloudDataplexV1LakeMetastoreStatus? metastoreStatus;

  /// The relative resource name of the lake, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  ///
  /// Output only.
  core.String? name;

  /// Service account associated with this lake.
  ///
  /// This service account must be authorized to access or operate on resources
  /// managed by the lake.
  ///
  /// Output only.
  core.String? serviceAccount;

  /// Current state of the lake.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "ACTIVE" : Resource is active, i.e., ready to use.
  /// - "CREATING" : Resource is under creation.
  /// - "DELETING" : Resource is under deletion.
  /// - "ACTION_REQUIRED" : Resource is active but has unresolved actions.
  core.String? state;

  /// System generated globally unique ID for the lake.
  ///
  /// This ID will be different if the lake is deleted and re-created with the
  /// same name.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the lake was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDataplexV1Lake({
    this.assetStatus,
    this.createTime,
    this.description,
    this.displayName,
    this.labels,
    this.metastore,
    this.metastoreStatus,
    this.name,
    this.serviceAccount,
    this.state,
    this.uid,
    this.updateTime,
  });

  GoogleCloudDataplexV1Lake.fromJson(core.Map _json)
      : this(
          assetStatus: _json.containsKey('assetStatus')
              ? GoogleCloudDataplexV1AssetStatus.fromJson(
                  _json['assetStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          metastore: _json.containsKey('metastore')
              ? GoogleCloudDataplexV1LakeMetastore.fromJson(
                  _json['metastore'] as core.Map<core.String, core.dynamic>)
              : null,
          metastoreStatus: _json.containsKey('metastoreStatus')
              ? GoogleCloudDataplexV1LakeMetastoreStatus.fromJson(
                  _json['metastoreStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          serviceAccount: _json.containsKey('serviceAccount')
              ? _json['serviceAccount'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetStatus != null) 'assetStatus': assetStatus!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (metastore != null) 'metastore': metastore!,
        if (metastoreStatus != null) 'metastoreStatus': metastoreStatus!,
        if (name != null) 'name': name!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (state != null) 'state': state!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Settings to manage association of Dataproc Metastore with a lake.
class GoogleCloudDataplexV1LakeMetastore {
  /// A relative reference to the Dataproc Metastore
  /// (https://cloud.google.com/dataproc-metastore/docs) service associated with
  /// the lake:
  /// projects/{project_id}/locations/{location_id}/services/{service_id}
  ///
  /// Optional.
  core.String? service;

  GoogleCloudDataplexV1LakeMetastore({
    this.service,
  });

  GoogleCloudDataplexV1LakeMetastore.fromJson(core.Map _json)
      : this(
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (service != null) 'service': service!,
      };
}

/// Status of Lake and Dataproc Metastore service instance association.
class GoogleCloudDataplexV1LakeMetastoreStatus {
  /// The URI of the endpoint used to access the Metastore service.
  core.String? endpoint;

  /// Additional information about the current status.
  core.String? message;

  /// Current state of association.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified.
  /// - "NONE" : A Metastore service instance is not associated with the lake.
  /// - "READY" : A Metastore service instance is attached to the lake.
  /// - "UPDATING" : Attach/detach is in progress.
  /// - "ERROR" : Attach/detach could not be done due to errors.
  core.String? state;

  /// Last update time of the metastore status of the lake.
  core.String? updateTime;

  GoogleCloudDataplexV1LakeMetastoreStatus({
    this.endpoint,
    this.message,
    this.state,
    this.updateTime,
  });

  GoogleCloudDataplexV1LakeMetastoreStatus.fromJson(core.Map _json)
      : this(
          endpoint: _json.containsKey('endpoint')
              ? _json['endpoint'] as core.String
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endpoint != null) 'endpoint': endpoint!,
        if (message != null) 'message': message!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// List actions response.
class GoogleCloudDataplexV1ListActionsResponse {
  /// Actions under the given parent lake/zone/asset.
  core.List<GoogleCloudDataplexV1Action>? actions;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDataplexV1ListActionsResponse({
    this.actions,
    this.nextPageToken,
  });

  GoogleCloudDataplexV1ListActionsResponse.fromJson(core.Map _json)
      : this(
          actions: _json.containsKey('actions')
              ? (_json['actions'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Action.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List assets response.
class GoogleCloudDataplexV1ListAssetsResponse {
  /// Asset under the given parent zone.
  core.List<GoogleCloudDataplexV1Asset>? assets;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDataplexV1ListAssetsResponse({
    this.assets,
    this.nextPageToken,
  });

  GoogleCloudDataplexV1ListAssetsResponse.fromJson(core.Map _json)
      : this(
          assets: _json.containsKey('assets')
              ? (_json['assets'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Asset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assets != null) 'assets': assets!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List content response.
class GoogleCloudDataplexV1ListContentResponse {
  /// Content under the given parent lake.
  core.List<GoogleCloudDataplexV1Content>? content;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDataplexV1ListContentResponse({
    this.content,
    this.nextPageToken,
  });

  GoogleCloudDataplexV1ListContentResponse.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? (_json['content'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Content.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List metadata entities response.
class GoogleCloudDataplexV1ListEntitiesResponse {
  /// Entities in the specified parent zone.
  core.List<GoogleCloudDataplexV1Entity>? entities;

  /// Token to retrieve the next page of results, or empty if there are no
  /// remaining results in the list.
  core.String? nextPageToken;

  GoogleCloudDataplexV1ListEntitiesResponse({
    this.entities,
    this.nextPageToken,
  });

  GoogleCloudDataplexV1ListEntitiesResponse.fromJson(core.Map _json)
      : this(
          entities: _json.containsKey('entities')
              ? (_json['entities'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Entity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entities != null) 'entities': entities!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List environments response.
class GoogleCloudDataplexV1ListEnvironmentsResponse {
  /// Environments under the given parent lake.
  core.List<GoogleCloudDataplexV1Environment>? environments;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDataplexV1ListEnvironmentsResponse({
    this.environments,
    this.nextPageToken,
  });

  GoogleCloudDataplexV1ListEnvironmentsResponse.fromJson(core.Map _json)
      : this(
          environments: _json.containsKey('environments')
              ? (_json['environments'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Environment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environments != null) 'environments': environments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List jobs response.
class GoogleCloudDataplexV1ListJobsResponse {
  /// Jobs under a given task.
  core.List<GoogleCloudDataplexV1Job>? jobs;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  GoogleCloudDataplexV1ListJobsResponse({
    this.jobs,
    this.nextPageToken,
  });

  GoogleCloudDataplexV1ListJobsResponse.fromJson(core.Map _json)
      : this(
          jobs: _json.containsKey('jobs')
              ? (_json['jobs'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List lakes response.
class GoogleCloudDataplexV1ListLakesResponse {
  /// Lakes under the given parent location.
  core.List<GoogleCloudDataplexV1Lake>? lakes;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachableLocations;

  GoogleCloudDataplexV1ListLakesResponse({
    this.lakes,
    this.nextPageToken,
    this.unreachableLocations,
  });

  GoogleCloudDataplexV1ListLakesResponse.fromJson(core.Map _json)
      : this(
          lakes: _json.containsKey('lakes')
              ? (_json['lakes'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Lake.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachableLocations: _json.containsKey('unreachableLocations')
              ? (_json['unreachableLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lakes != null) 'lakes': lakes!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachableLocations != null)
          'unreachableLocations': unreachableLocations!,
      };
}

/// List metadata partitions response.
class GoogleCloudDataplexV1ListPartitionsResponse {
  /// Token to retrieve the next page of results, or empty if there are no
  /// remaining results in the list.
  core.String? nextPageToken;

  /// Partitions under the specified parent entity.
  core.List<GoogleCloudDataplexV1Partition>? partitions;

  GoogleCloudDataplexV1ListPartitionsResponse({
    this.nextPageToken,
    this.partitions,
  });

  GoogleCloudDataplexV1ListPartitionsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          partitions: _json.containsKey('partitions')
              ? (_json['partitions'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Partition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (partitions != null) 'partitions': partitions!,
      };
}

/// List sessions response.
class GoogleCloudDataplexV1ListSessionsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Sessions under a given environment.
  core.List<GoogleCloudDataplexV1Session>? sessions;

  GoogleCloudDataplexV1ListSessionsResponse({
    this.nextPageToken,
    this.sessions,
  });

  GoogleCloudDataplexV1ListSessionsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          sessions: _json.containsKey('sessions')
              ? (_json['sessions'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Session.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sessions != null) 'sessions': sessions!,
      };
}

/// List tasks response.
class GoogleCloudDataplexV1ListTasksResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Tasks under the given parent lake.
  core.List<GoogleCloudDataplexV1Task>? tasks;

  /// Locations that could not be reached.
  core.List<core.String>? unreachableLocations;

  GoogleCloudDataplexV1ListTasksResponse({
    this.nextPageToken,
    this.tasks,
    this.unreachableLocations,
  });

  GoogleCloudDataplexV1ListTasksResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          tasks: _json.containsKey('tasks')
              ? (_json['tasks'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Task.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachableLocations: _json.containsKey('unreachableLocations')
              ? (_json['unreachableLocations'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tasks != null) 'tasks': tasks!,
        if (unreachableLocations != null)
          'unreachableLocations': unreachableLocations!,
      };
}

/// List zones response.
class GoogleCloudDataplexV1ListZonesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Zones under the given parent lake.
  core.List<GoogleCloudDataplexV1Zone>? zones;

  GoogleCloudDataplexV1ListZonesResponse({
    this.nextPageToken,
    this.zones,
  });

  GoogleCloudDataplexV1ListZonesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          zones: _json.containsKey('zones')
              ? (_json['zones'] as core.List)
                  .map((value) => GoogleCloudDataplexV1Zone.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (zones != null) 'zones': zones!,
      };
}

/// Represents partition metadata contained within entity instances.
class GoogleCloudDataplexV1Partition {
  /// The etag for this partition.
  ///
  /// Optional.
  core.String? etag;

  /// The location of the entity data within the partition, for example,
  /// gs://bucket/path/to/entity/key1=value1/key2=value2.
  ///
  /// Or projects//datasets//tables/
  ///
  /// Required. Immutable.
  core.String? location;

  /// The values must be HTML URL encoded two times before constructing the
  /// path.
  ///
  /// For example, if you have a value of "US:CA", encoded it two times and you
  /// get "US%253ACA". Then if you have the 2nd value is "CA#Sunnyvale", encoded
  /// two times and you get "CA%2523Sunnyvale". The partition values path is
  /// "US%253ACA/CA%2523Sunnyvale". The final URL will be
  /// "https://.../partitions/US%253ACA/CA%2523Sunnyvale". The name field in the
  /// responses will always have the encoded format.
  ///
  /// Output only.
  core.String? name;

  /// The set of values representing the partition, which correspond to the
  /// partition schema defined in the parent entity.
  ///
  /// Required. Immutable.
  core.List<core.String>? values;

  GoogleCloudDataplexV1Partition({
    this.etag,
    this.location,
    this.name,
    this.values,
  });

  GoogleCloudDataplexV1Partition.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (values != null) 'values': values!,
      };
}

/// Schema information describing the structure and layout of the data.
class GoogleCloudDataplexV1Schema {
  /// The sequence of fields describing data in table entities.
  ///
  /// Optional.
  core.List<GoogleCloudDataplexV1SchemaSchemaField>? fields;

  /// The sequence of fields describing the partition structure in entities.
  ///
  /// If this field is empty, there are no partitions within the data.
  ///
  /// Optional.
  core.List<GoogleCloudDataplexV1SchemaPartitionField>? partitionFields;

  /// The structure of paths containing partition data within the entity.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PARTITION_STYLE_UNSPECIFIED" : PartitionStyle unspecified
  /// - "HIVE_COMPATIBLE" : Partitions are hive-compatible. Examples:
  /// gs://bucket/path/to/table/dt=2019-10-31/lang=en,
  /// gs://bucket/path/to/table/dt=2019-10-31/lang=en/late.
  core.String? partitionStyle;

  /// Whether the schema is user-managed or managed by the service.
  ///
  /// - Set user_manage to false if you would like Dataplex to help you manage
  /// the schema. You will get the full service provided by Dataplex discovery,
  /// including new data discovery, schema inference and schema evolution. You
  /// can still provide input the schema of the entities, for example renaming a
  /// schema field, changing CSV or Json options if you think the discovered
  /// values are not as accurate. Dataplex will consider your input as the
  /// initial schema (as if they were produced by the previous discovery run),
  /// and will evolve schema or flag actions based on that. - Set user_manage to
  /// true if you would like to fully manage the entity schema by yourself. This
  /// is useful when you would like to manually specify the schema for a table.
  /// In this case, the schema defined by the user is guaranteed to be kept
  /// unchanged and would not be overwritten. But this also means Dataplex will
  /// not provide schema evolution management for you. Dataplex will still be
  /// able to manage partition registration (i.e., keeping the list of
  /// partitions up to date) when Dataplex discovery is turned on and
  /// user_managed is set to true.
  ///
  /// Required.
  core.bool? userManaged;

  GoogleCloudDataplexV1Schema({
    this.fields,
    this.partitionFields,
    this.partitionStyle,
    this.userManaged,
  });

  GoogleCloudDataplexV1Schema.fromJson(core.Map _json)
      : this(
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) =>
                      GoogleCloudDataplexV1SchemaSchemaField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          partitionFields: _json.containsKey('partitionFields')
              ? (_json['partitionFields'] as core.List)
                  .map((value) =>
                      GoogleCloudDataplexV1SchemaPartitionField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          partitionStyle: _json.containsKey('partitionStyle')
              ? _json['partitionStyle'] as core.String
              : null,
          userManaged: _json.containsKey('userManaged')
              ? _json['userManaged'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (partitionFields != null) 'partitionFields': partitionFields!,
        if (partitionStyle != null) 'partitionStyle': partitionStyle!,
        if (userManaged != null) 'userManaged': userManaged!,
      };
}

/// Represents a key field within the entity's partition structure.
///
/// You could have up to 20 partition fields, but only the first 10 partitions
/// have the filtering ability due to performance consideration.
class GoogleCloudDataplexV1SchemaPartitionField {
  /// Partition name is editable if only the partition style is not HIVE
  /// compatible.
  ///
  /// The maximum length allowed is 767 characters.
  ///
  /// Required.
  core.String? name;

  /// The type of field.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : SchemaType unspecified.
  /// - "BOOLEAN" : Boolean field.
  /// - "BYTE" : Single byte numeric field.
  /// - "INT16" : 16-bit numeric field.
  /// - "INT32" : 32-bit numeric field.
  /// - "INT64" : 64-bit numeric field.
  /// - "FLOAT" : Floating point numeric field.
  /// - "DOUBLE" : Double precision numeric field.
  /// - "DECIMAL" : Real value numeric field.
  /// - "STRING" : Sequence of characters field.
  /// - "BINARY" : Sequence of bytes field.
  /// - "TIMESTAMP" : Date and time field.
  /// - "DATE" : Date field.
  /// - "TIME" : Time field.
  /// - "RECORD" : Structured field. Nested fields that define the structure of
  /// the map. If all nested fields are nullable, this field represents a union.
  /// - "NULL" : Null field that does not have values.
  core.String? type;

  GoogleCloudDataplexV1SchemaPartitionField({
    this.name,
    this.type,
  });

  GoogleCloudDataplexV1SchemaPartitionField.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// Represents a column field within a table schema.
class GoogleCloudDataplexV1SchemaSchemaField {
  /// User friendly field description.
  ///
  /// Must be less than or equal to 1024 characters.
  ///
  /// Optional.
  core.String? description;

  /// Any nested field for complex types.
  ///
  /// Optional.
  core.List<GoogleCloudDataplexV1SchemaSchemaField>? fields;

  /// Additional field semantics.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Mode unspecified.
  /// - "REQUIRED" : The field has required semantics.
  /// - "NULLABLE" : The field has optional semantics, and may be null.
  /// - "REPEATED" : The field has repeated (0 or more) semantics, and is a list
  /// of values.
  core.String? mode;

  /// The name of the field.
  ///
  /// The maximum length is 767 characters. The name must begins with a letter
  /// and not contains : and ..
  ///
  /// Required.
  core.String? name;

  /// The type of field.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : SchemaType unspecified.
  /// - "BOOLEAN" : Boolean field.
  /// - "BYTE" : Single byte numeric field.
  /// - "INT16" : 16-bit numeric field.
  /// - "INT32" : 32-bit numeric field.
  /// - "INT64" : 64-bit numeric field.
  /// - "FLOAT" : Floating point numeric field.
  /// - "DOUBLE" : Double precision numeric field.
  /// - "DECIMAL" : Real value numeric field.
  /// - "STRING" : Sequence of characters field.
  /// - "BINARY" : Sequence of bytes field.
  /// - "TIMESTAMP" : Date and time field.
  /// - "DATE" : Date field.
  /// - "TIME" : Time field.
  /// - "RECORD" : Structured field. Nested fields that define the structure of
  /// the map. If all nested fields are nullable, this field represents a union.
  /// - "NULL" : Null field that does not have values.
  core.String? type;

  GoogleCloudDataplexV1SchemaSchemaField({
    this.description,
    this.fields,
    this.mode,
    this.name,
    this.type,
  });

  GoogleCloudDataplexV1SchemaSchemaField.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) =>
                      GoogleCloudDataplexV1SchemaSchemaField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mode: _json.containsKey('mode') ? _json['mode'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (fields != null) 'fields': fields!,
        if (mode != null) 'mode': mode!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// Represents an active analyze session running for a user.
class GoogleCloudDataplexV1Session {
  /// Session start time.
  ///
  /// Output only.
  core.String? createTime;

  /// The relative resource name of the content, of the form:
  /// projects/{project_id}/locations/{location_id}/lakes/{lake_id}/environment/{environment_id}/sessions/{session_id}
  ///
  /// Output only.
  core.String? name;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "ACTIVE" : Resource is active, i.e., ready to use.
  /// - "CREATING" : Resource is under creation.
  /// - "DELETING" : Resource is under deletion.
  /// - "ACTION_REQUIRED" : Resource is active but has unresolved actions.
  core.String? state;

  /// Email of user running the session.
  ///
  /// Output only.
  core.String? userId;

  GoogleCloudDataplexV1Session({
    this.createTime,
    this.name,
    this.state,
    this.userId,
  });

  GoogleCloudDataplexV1Session.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          userId: _json.containsKey('userId')
              ? _json['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (userId != null) 'userId': userId!,
      };
}

/// Describes the format of the data within its storage location.
class GoogleCloudDataplexV1StorageFormat {
  /// The compression type associated with the stored data.
  ///
  /// If unspecified, the data is uncompressed.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COMPRESSION_FORMAT_UNSPECIFIED" : CompressionFormat unspecified.
  /// Implies uncompressed data.
  /// - "GZIP" : GZip compressed set of files.
  /// - "BZIP2" : BZip2 compressed set of files.
  core.String? compressionFormat;

  /// Additional information about CSV formatted data.
  ///
  /// Optional.
  GoogleCloudDataplexV1StorageFormatCsvOptions? csv;

  /// The data format associated with the stored data, which represents content
  /// type values.
  ///
  /// The value is inferred from mime type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : Format unspecified.
  /// - "PARQUET" : Parquet-formatted structured data.
  /// - "AVRO" : Avro-formatted structured data.
  /// - "ORC" : Orc-formatted structured data.
  /// - "CSV" : Csv-formatted semi-structured data.
  /// - "JSON" : Json-formatted semi-structured data.
  /// - "IMAGE" : Image data formats (such as jpg and png).
  /// - "AUDIO" : Audio data formats (such as mp3, and wav).
  /// - "VIDEO" : Video data formats (such as mp4 and mpg).
  /// - "TEXT" : Textual data formats (such as txt and xml).
  /// - "TFRECORD" : TensorFlow record format.
  /// - "OTHER" : Data that doesn't match a specific format.
  /// - "UNKNOWN" : Data of an unknown format.
  core.String? format;

  /// Additional information about CSV formatted data.
  ///
  /// Optional.
  GoogleCloudDataplexV1StorageFormatJsonOptions? json;

  /// The mime type descriptor for the data.
  ///
  /// Must match the pattern {type}/{subtype}. Supported values: -
  /// application/x-parquet - application/x-avro - application/x-orc -
  /// application/x-tfrecord - application/json - application/{subtypes} -
  /// text/csv - text/ - image/{image subtype} - video/{video subtype} -
  /// audio/{audio subtype}
  ///
  /// Required.
  core.String? mimeType;

  GoogleCloudDataplexV1StorageFormat({
    this.compressionFormat,
    this.csv,
    this.format,
    this.json,
    this.mimeType,
  });

  GoogleCloudDataplexV1StorageFormat.fromJson(core.Map _json)
      : this(
          compressionFormat: _json.containsKey('compressionFormat')
              ? _json['compressionFormat'] as core.String
              : null,
          csv: _json.containsKey('csv')
              ? GoogleCloudDataplexV1StorageFormatCsvOptions.fromJson(
                  _json['csv'] as core.Map<core.String, core.dynamic>)
              : null,
          format: _json.containsKey('format')
              ? _json['format'] as core.String
              : null,
          json: _json.containsKey('json')
              ? GoogleCloudDataplexV1StorageFormatJsonOptions.fromJson(
                  _json['json'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compressionFormat != null) 'compressionFormat': compressionFormat!,
        if (csv != null) 'csv': csv!,
        if (format != null) 'format': format!,
        if (json != null) 'json': json!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// Describes CSV and similar semi-structured data formats.
class GoogleCloudDataplexV1StorageFormatCsvOptions {
  /// The delimiter used to separate values.
  ///
  /// Defaults to ','.
  ///
  /// Optional.
  core.String? delimiter;

  /// The character encoding of the data.
  ///
  /// Accepts "US-ASCII", "UTF-8", and "ISO-8859-1". Defaults to UTF-8 if
  /// unspecified.
  ///
  /// Optional.
  core.String? encoding;

  /// The number of rows to interpret as header rows that should be skipped when
  /// reading data rows.
  ///
  /// Defaults to 0.
  ///
  /// Optional.
  core.int? headerRows;

  /// The character used to quote column values.
  ///
  /// Accepts '"' and '''. Defaults to '"' if unspecified.
  ///
  /// Optional.
  core.String? quote;

  GoogleCloudDataplexV1StorageFormatCsvOptions({
    this.delimiter,
    this.encoding,
    this.headerRows,
    this.quote,
  });

  GoogleCloudDataplexV1StorageFormatCsvOptions.fromJson(core.Map _json)
      : this(
          delimiter: _json.containsKey('delimiter')
              ? _json['delimiter'] as core.String
              : null,
          encoding: _json.containsKey('encoding')
              ? _json['encoding'] as core.String
              : null,
          headerRows: _json.containsKey('headerRows')
              ? _json['headerRows'] as core.int
              : null,
          quote:
              _json.containsKey('quote') ? _json['quote'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delimiter != null) 'delimiter': delimiter!,
        if (encoding != null) 'encoding': encoding!,
        if (headerRows != null) 'headerRows': headerRows!,
        if (quote != null) 'quote': quote!,
      };
}

/// Describes JSON data format.
class GoogleCloudDataplexV1StorageFormatJsonOptions {
  /// The character encoding of the data.
  ///
  /// Accepts "US-ASCII", "UTF-8" and "ISO-8859-1". Defaults to UTF-8 if not
  /// specified.
  ///
  /// Optional.
  core.String? encoding;

  GoogleCloudDataplexV1StorageFormatJsonOptions({
    this.encoding,
  });

  GoogleCloudDataplexV1StorageFormatJsonOptions.fromJson(core.Map _json)
      : this(
          encoding: _json.containsKey('encoding')
              ? _json['encoding'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encoding != null) 'encoding': encoding!,
      };
}

/// A task represents a user-visible job.
class GoogleCloudDataplexV1Task {
  /// The time when the task was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the task.
  ///
  /// Optional.
  core.String? description;

  /// User friendly display name.
  ///
  /// Optional.
  core.String? displayName;

  /// Spec related to how a task is executed.
  ///
  /// Required.
  GoogleCloudDataplexV1TaskExecutionSpec? executionSpec;

  /// User-defined labels for the task.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The relative resource name of the task, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/
  /// tasks/{task_id}.
  ///
  /// Output only.
  core.String? name;

  /// Config related to running custom Spark tasks.
  GoogleCloudDataplexV1TaskSparkTaskConfig? spark;

  /// Current state of the task.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "ACTIVE" : Resource is active, i.e., ready to use.
  /// - "CREATING" : Resource is under creation.
  /// - "DELETING" : Resource is under deletion.
  /// - "ACTION_REQUIRED" : Resource is active but has unresolved actions.
  core.String? state;

  /// Spec related to how often and when a task should be triggered.
  ///
  /// Required.
  GoogleCloudDataplexV1TaskTriggerSpec? triggerSpec;

  /// System generated globally unique ID for the task.
  ///
  /// This ID will be different if the task is deleted and re-created with the
  /// same name.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the task was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDataplexV1Task({
    this.createTime,
    this.description,
    this.displayName,
    this.executionSpec,
    this.labels,
    this.name,
    this.spark,
    this.state,
    this.triggerSpec,
    this.uid,
    this.updateTime,
  });

  GoogleCloudDataplexV1Task.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          executionSpec: _json.containsKey('executionSpec')
              ? GoogleCloudDataplexV1TaskExecutionSpec.fromJson(
                  _json['executionSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          spark: _json.containsKey('spark')
              ? GoogleCloudDataplexV1TaskSparkTaskConfig.fromJson(
                  _json['spark'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          triggerSpec: _json.containsKey('triggerSpec')
              ? GoogleCloudDataplexV1TaskTriggerSpec.fromJson(
                  _json['triggerSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (executionSpec != null) 'executionSpec': executionSpec!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (spark != null) 'spark': spark!,
        if (state != null) 'state': state!,
        if (triggerSpec != null) 'triggerSpec': triggerSpec!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Execution related settings, like retry and service_account.
class GoogleCloudDataplexV1TaskExecutionSpec {
  /// The arguments to pass to the task.
  ///
  /// The args can use placeholders of the format ${placeholder} as part of
  /// key/value string. These will be interpolated before passing the args to
  /// the driver. Currently supported placeholders: - ${task_id} - ${job_time}
  /// To pass positional args, set the key as TASK_ARGS. The value should be a
  /// comma-separated string of all the positional arguments. To use a delimiter
  /// other than comma, refer to
  /// https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of
  /// other keys being present in the args, then TASK_ARGS will be passed as the
  /// last argument.
  ///
  /// Optional.
  core.Map<core.String, core.String>? args;

  /// The maximum duration after which the job execution is expired.
  ///
  /// Optional.
  core.String? maxJobExecutionLifetime;

  /// Service account to use to execute a task.
  ///
  /// If not provided, the default Compute service account for the project is
  /// used.
  ///
  /// Required.
  core.String? serviceAccount;

  GoogleCloudDataplexV1TaskExecutionSpec({
    this.args,
    this.maxJobExecutionLifetime,
    this.serviceAccount,
  });

  GoogleCloudDataplexV1TaskExecutionSpec.fromJson(core.Map _json)
      : this(
          args: _json.containsKey('args')
              ? (_json['args'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          maxJobExecutionLifetime: _json.containsKey('maxJobExecutionLifetime')
              ? _json['maxJobExecutionLifetime'] as core.String
              : null,
          serviceAccount: _json.containsKey('serviceAccount')
              ? _json['serviceAccount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (maxJobExecutionLifetime != null)
          'maxJobExecutionLifetime': maxJobExecutionLifetime!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
      };
}

/// Configuration for the underlying infrastructure used to run workloads.
class GoogleCloudDataplexV1TaskInfrastructureSpec {
  /// Compute resources needed for a Task when using Dataproc Serverless.
  GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources? batch;

  /// Container Image Runtime Configuration.
  GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime?
      containerImage;

  /// Vpc network.
  GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork? vpcNetwork;

  GoogleCloudDataplexV1TaskInfrastructureSpec({
    this.batch,
    this.containerImage,
    this.vpcNetwork,
  });

  GoogleCloudDataplexV1TaskInfrastructureSpec.fromJson(core.Map _json)
      : this(
          batch: _json.containsKey('batch')
              ? GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources
                  .fromJson(
                      _json['batch'] as core.Map<core.String, core.dynamic>)
              : null,
          containerImage: _json.containsKey('containerImage')
              ? GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime
                  .fromJson(_json['containerImage']
                      as core.Map<core.String, core.dynamic>)
              : null,
          vpcNetwork: _json.containsKey('vpcNetwork')
              ? GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork.fromJson(
                  _json['vpcNetwork'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batch != null) 'batch': batch!,
        if (containerImage != null) 'containerImage': containerImage!,
        if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
      };
}

/// Batch compute resources associated with the task.
class GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources {
  /// Total number of job executors.
  ///
  /// Optional.
  core.int? executorsCount;

  /// Max configurable executors.
  ///
  /// If max_executors_count \> executors_count, then auto-scaling is enabled.
  ///
  /// Optional.
  core.int? maxExecutorsCount;

  GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources({
    this.executorsCount,
    this.maxExecutorsCount,
  });

  GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources.fromJson(
      core.Map _json)
      : this(
          executorsCount: _json.containsKey('executorsCount')
              ? _json['executorsCount'] as core.int
              : null,
          maxExecutorsCount: _json.containsKey('maxExecutorsCount')
              ? _json['maxExecutorsCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executorsCount != null) 'executorsCount': executorsCount!,
        if (maxExecutorsCount != null) 'maxExecutorsCount': maxExecutorsCount!,
      };
}

/// Container Image Runtime Configuration used with Batch execution.
class GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime {
  /// A list of Java JARS to add to the classpath.
  ///
  /// Valid input includes Cloud Storage URIs to Jar binaries. For example,
  /// gs://bucket-name/my/path/to/file.jar
  ///
  /// Optional.
  core.List<core.String>? javaJars;

  /// Override to common configuration of open source components installed on
  /// the Dataproc cluster.
  ///
  /// The properties to set on daemon config files. Property keys are specified
  /// in prefix:property format, for example core:hadoop.tmp.dir. For more
  /// information, see Cluster properties
  /// (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// A list of python packages to be installed.
  ///
  /// Valid formats include Cloud Storage URI to a PIP installable library. For
  /// example, gs://bucket-name/my/path/to/lib.tar.gz
  ///
  /// Optional.
  core.List<core.String>? pythonPackages;

  GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime({
    this.javaJars,
    this.properties,
    this.pythonPackages,
  });

  GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime.fromJson(
      core.Map _json)
      : this(
          javaJars: _json.containsKey('javaJars')
              ? (_json['javaJars'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          pythonPackages: _json.containsKey('pythonPackages')
              ? (_json['pythonPackages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (javaJars != null) 'javaJars': javaJars!,
        if (properties != null) 'properties': properties!,
        if (pythonPackages != null) 'pythonPackages': pythonPackages!,
      };
}

/// Cloud VPC Network used to run the infrastructure.
class GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork {
  /// The Cloud VPC network in which the job is run.
  ///
  /// By default, the Cloud VPC network named Default within the project is
  /// used.
  ///
  /// Optional.
  core.String? network;

  /// List of network tags to apply to the job.
  ///
  /// Optional.
  core.List<core.String>? networkTags;

  /// The Cloud VPC sub-network in which the job is run.
  ///
  /// Optional.
  core.String? subNetwork;

  GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork({
    this.network,
    this.networkTags,
    this.subNetwork,
  });

  GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork.fromJson(core.Map _json)
      : this(
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          networkTags: _json.containsKey('networkTags')
              ? (_json['networkTags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          subNetwork: _json.containsKey('subNetwork')
              ? _json['subNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (networkTags != null) 'networkTags': networkTags!,
        if (subNetwork != null) 'subNetwork': subNetwork!,
      };
}

/// User-specified config for running a Spark task.
class GoogleCloudDataplexV1TaskSparkTaskConfig {
  /// Cloud Storage URIs of archives to be extracted into the working directory
  /// of each executor.
  ///
  /// Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  ///
  /// Optional.
  core.List<core.String>? archiveUris;

  /// Cloud Storage URIs of files to be placed in the working directory of each
  /// executor.
  ///
  /// Optional.
  core.List<core.String>? fileUris;

  /// Infrastructure specification for the execution.
  ///
  /// Optional.
  GoogleCloudDataplexV1TaskInfrastructureSpec? infrastructureSpec;

  /// The name of the driver's main class.
  ///
  /// The jar file that contains the class must be in the default CLASSPATH or
  /// specified in jar_file_uris. The execution args are passed in as a sequence
  /// of named process arguments (--key=value).
  core.String? mainClass;

  /// The Cloud Storage URI of the jar file that contains the main class.
  ///
  /// The execution args are passed in as a sequence of named process arguments
  /// (--key=value).
  core.String? mainJarFileUri;

  /// The Gcloud Storage URI of the main Python file to use as the driver.
  ///
  /// Must be a .py file. The execution args are passed in as a sequence of
  /// named process arguments (--key=value).
  core.String? pythonScriptFile;

  /// The query text.
  ///
  /// The execution args are used to declare a set of script variables (set
  /// key="value";).
  core.String? sqlScript;

  /// A reference to a query file.
  ///
  /// This can be the Cloud Storage URI of the query file or it can the path to
  /// a SqlScript Content. The execution args are used to declare a set of
  /// script variables (set key="value";).
  core.String? sqlScriptFile;

  GoogleCloudDataplexV1TaskSparkTaskConfig({
    this.archiveUris,
    this.fileUris,
    this.infrastructureSpec,
    this.mainClass,
    this.mainJarFileUri,
    this.pythonScriptFile,
    this.sqlScript,
    this.sqlScriptFile,
  });

  GoogleCloudDataplexV1TaskSparkTaskConfig.fromJson(core.Map _json)
      : this(
          archiveUris: _json.containsKey('archiveUris')
              ? (_json['archiveUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileUris: _json.containsKey('fileUris')
              ? (_json['fileUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          infrastructureSpec: _json.containsKey('infrastructureSpec')
              ? GoogleCloudDataplexV1TaskInfrastructureSpec.fromJson(
                  _json['infrastructureSpec']
                      as core.Map<core.String, core.dynamic>)
              : null,
          mainClass: _json.containsKey('mainClass')
              ? _json['mainClass'] as core.String
              : null,
          mainJarFileUri: _json.containsKey('mainJarFileUri')
              ? _json['mainJarFileUri'] as core.String
              : null,
          pythonScriptFile: _json.containsKey('pythonScriptFile')
              ? _json['pythonScriptFile'] as core.String
              : null,
          sqlScript: _json.containsKey('sqlScript')
              ? _json['sqlScript'] as core.String
              : null,
          sqlScriptFile: _json.containsKey('sqlScriptFile')
              ? _json['sqlScriptFile'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (archiveUris != null) 'archiveUris': archiveUris!,
        if (fileUris != null) 'fileUris': fileUris!,
        if (infrastructureSpec != null)
          'infrastructureSpec': infrastructureSpec!,
        if (mainClass != null) 'mainClass': mainClass!,
        if (mainJarFileUri != null) 'mainJarFileUri': mainJarFileUri!,
        if (pythonScriptFile != null) 'pythonScriptFile': pythonScriptFile!,
        if (sqlScript != null) 'sqlScript': sqlScript!,
        if (sqlScriptFile != null) 'sqlScriptFile': sqlScriptFile!,
      };
}

/// Task scheduling and trigger settings.
class GoogleCloudDataplexV1TaskTriggerSpec {
  /// Prevent the task from executing.
  ///
  /// This does not cancel already running tasks. It is intended to temporarily
  /// disable RECURRING tasks.
  ///
  /// Optional.
  core.bool? disabled;

  /// Number of retry attempts before aborting.
  ///
  /// Set to zero to never attempt to retry a failed task.
  ///
  /// Optional.
  core.int? maxRetries;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks
  /// periodically.
  ///
  /// To explicitly set a timezone to the cron tab, apply a prefix in the cron
  /// tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The
  /// ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database.
  /// For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York
  /// 1 * * * *". This field is required for RECURRING tasks.
  ///
  /// Optional.
  core.String? schedule;

  /// The first run of the task will be after this time.
  ///
  /// If not specified, the task will run shortly after being submitted if
  /// ON_DEMAND and based on the schedule if RECURRING.
  ///
  /// Optional.
  core.String? startTime;

  /// Trigger type of the user-specified Task.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified trigger type.
  /// - "ON_DEMAND" : The task runs one-time shortly after Task Creation.
  /// - "RECURRING" : The task is scheduled to run periodically.
  core.String? type;

  GoogleCloudDataplexV1TaskTriggerSpec({
    this.disabled,
    this.maxRetries,
    this.schedule,
    this.startTime,
    this.type,
  });

  GoogleCloudDataplexV1TaskTriggerSpec.fromJson(core.Map _json)
      : this(
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          maxRetries: _json.containsKey('maxRetries')
              ? _json['maxRetries'] as core.int
              : null,
          schedule: _json.containsKey('schedule')
              ? _json['schedule'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
        if (maxRetries != null) 'maxRetries': maxRetries!,
        if (schedule != null) 'schedule': schedule!,
        if (startTime != null) 'startTime': startTime!,
        if (type != null) 'type': type!,
      };
}

/// A zone represents a logical group of related assets within a lake.
///
/// A zone can be used to map to organizational structure or represent stages of
/// data readiness from raw to curated. It provides managing behavior that is
/// shared or inherited by all contained assets.
class GoogleCloudDataplexV1Zone {
  /// Aggregated status of the underlying assets of the zone.
  ///
  /// Output only.
  GoogleCloudDataplexV1AssetStatus? assetStatus;

  /// The time when the zone was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the zone.
  ///
  /// Optional.
  core.String? description;

  /// Specification of the discovery feature applied to data in this zone.
  ///
  /// Optional.
  GoogleCloudDataplexV1ZoneDiscoverySpec? discoverySpec;

  /// User friendly display name.
  ///
  /// Optional.
  core.String? displayName;

  /// User defined labels for the zone.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The relative resource name of the zone, of the form:
  /// projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
  ///
  /// Output only.
  core.String? name;

  /// Specification of the resources that are referenced by the assets within
  /// this zone.
  ///
  /// Required.
  GoogleCloudDataplexV1ZoneResourceSpec? resourceSpec;

  /// Current state of the zone.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "ACTIVE" : Resource is active, i.e., ready to use.
  /// - "CREATING" : Resource is under creation.
  /// - "DELETING" : Resource is under deletion.
  /// - "ACTION_REQUIRED" : Resource is active but has unresolved actions.
  core.String? state;

  /// The type of the zone.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Zone type not specified.
  /// - "RAW" : A zone that contains data that needs further processing before
  /// it is considered generally ready for consumption and analytics workloads.
  /// - "CURATED" : A zone that contains data that is considered to be ready for
  /// broader consumption and analytics workloads. Curated structured data
  /// stored in Cloud Storage must conform to certain file formats (parquet,
  /// avro and orc) and organized in a hive-compatible directory layout.
  core.String? type;

  /// System generated globally unique ID for the zone.
  ///
  /// This ID will be different if the zone is deleted and re-created with the
  /// same name.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the zone was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudDataplexV1Zone({
    this.assetStatus,
    this.createTime,
    this.description,
    this.discoverySpec,
    this.displayName,
    this.labels,
    this.name,
    this.resourceSpec,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
  });

  GoogleCloudDataplexV1Zone.fromJson(core.Map _json)
      : this(
          assetStatus: _json.containsKey('assetStatus')
              ? GoogleCloudDataplexV1AssetStatus.fromJson(
                  _json['assetStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          discoverySpec: _json.containsKey('discoverySpec')
              ? GoogleCloudDataplexV1ZoneDiscoverySpec.fromJson(
                  _json['discoverySpec'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          resourceSpec: _json.containsKey('resourceSpec')
              ? GoogleCloudDataplexV1ZoneResourceSpec.fromJson(
                  _json['resourceSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetStatus != null) 'assetStatus': assetStatus!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (discoverySpec != null) 'discoverySpec': discoverySpec!,
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (resourceSpec != null) 'resourceSpec': resourceSpec!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Settings to manage the metadata discovery and publishing in a zone.
class GoogleCloudDataplexV1ZoneDiscoverySpec {
  /// Configuration for CSV data.
  ///
  /// Optional.
  GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions? csvOptions;

  /// Whether discovery is enabled.
  ///
  /// Required.
  core.bool? enabled;

  /// The list of patterns to apply for selecting data to exclude during
  /// discovery.
  ///
  /// For Cloud Storage bucket assets, these are interpreted as glob patterns
  /// used to match object names. For BigQuery dataset assets, these are
  /// interpreted as patterns to match table names.
  ///
  /// Optional.
  core.List<core.String>? excludePatterns;

  /// The list of patterns to apply for selecting data to include during
  /// discovery if only a subset of the data should considered.
  ///
  /// For Cloud Storage bucket assets, these are interpreted as glob patterns
  /// used to match object names. For BigQuery dataset assets, these are
  /// interpreted as patterns to match table names.
  ///
  /// Optional.
  core.List<core.String>? includePatterns;

  /// Configuration for Json data.
  ///
  /// Optional.
  GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions? jsonOptions;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) for running discovery
  /// periodically.
  ///
  /// Successive discovery runs must be scheduled at least 60 minutes apart. The
  /// default value is to run discovery every 60 minutes. To explicitly set a
  /// timezone to the cron tab, apply a prefix in the cron tab:
  /// "CRON_TZ=${IANA_TIME_ZONE}" or TZ=${IANA_TIME_ZONE}". The
  /// ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database.
  /// For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York
  /// 1 * * * *".
  ///
  /// Optional.
  core.String? schedule;

  GoogleCloudDataplexV1ZoneDiscoverySpec({
    this.csvOptions,
    this.enabled,
    this.excludePatterns,
    this.includePatterns,
    this.jsonOptions,
    this.schedule,
  });

  GoogleCloudDataplexV1ZoneDiscoverySpec.fromJson(core.Map _json)
      : this(
          csvOptions: _json.containsKey('csvOptions')
              ? GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions.fromJson(
                  _json['csvOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          excludePatterns: _json.containsKey('excludePatterns')
              ? (_json['excludePatterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includePatterns: _json.containsKey('includePatterns')
              ? (_json['includePatterns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jsonOptions: _json.containsKey('jsonOptions')
              ? GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions.fromJson(
                  _json['jsonOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          schedule: _json.containsKey('schedule')
              ? _json['schedule'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (csvOptions != null) 'csvOptions': csvOptions!,
        if (enabled != null) 'enabled': enabled!,
        if (excludePatterns != null) 'excludePatterns': excludePatterns!,
        if (includePatterns != null) 'includePatterns': includePatterns!,
        if (jsonOptions != null) 'jsonOptions': jsonOptions!,
        if (schedule != null) 'schedule': schedule!,
      };
}

/// Describe CSV and similar semi-structured data formats.
typedef GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions
    = $DiscoverySpecCsvOptions;

/// Describe JSON data format.
typedef GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions
    = $DiscoverySpecJsonOptions;

/// Settings for resources attached as assets within a zone.
class GoogleCloudDataplexV1ZoneResourceSpec {
  /// The location type of the resources that are allowed to be attached to the
  /// assets within this zone.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "LOCATION_TYPE_UNSPECIFIED" : Unspecified location type.
  /// - "SINGLE_REGION" : Resources that are associated with a single region.
  /// - "MULTI_REGION" : Resources that are associated with a multi-region
  /// location.
  core.String? locationType;

  GoogleCloudDataplexV1ZoneResourceSpec({
    this.locationType,
  });

  GoogleCloudDataplexV1ZoneResourceSpec.fromJson(core.Map _json)
      : this(
          locationType: _json.containsKey('locationType')
              ? _json['locationType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locationType != null) 'locationType': locationType!,
      };
}

/// The response message for Locations.ListLocations.
class GoogleCloudLocationListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<GoogleCloudLocationLocation>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  GoogleCloudLocationListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  GoogleCloudLocationListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => GoogleCloudLocationLocation.fromJson(
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

/// A resource that represents Google Cloud Platform location.
typedef GoogleCloudLocationLocation = $Location01;

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs.If there are AuditConfigs for both allServices and a
/// specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted.Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts jose@example.com from DATA_READ logging, and
/// aliya@example.com from DATA_WRITE logging.
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, storage.googleapis.com, cloudsql.googleapis.com. allServices
  /// is a special value that covers all services.
  core.String? service;

  GoogleIamV1AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  GoogleIamV1AuditConfig.fromJson(core.Map _json)
      : this(
          auditLogConfigs: _json.containsKey('auditLogConfigs')
              ? (_json['auditLogConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
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
typedef GoogleIamV1AuditLogConfig = $AuditLogConfig;

/// Associates members, or principals, with a role.
class GoogleIamV1Binding {
  /// The condition that is associated with this binding.If the condition
  /// evaluates to true, then this binding applies to the current request.If the
  /// condition evaluates to false, then this binding does not apply to the
  /// current request.
  ///
  /// However, a different role binding might grant the same role to one or more
  /// of the principals in this binding.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  GoogleTypeExpr? condition;

  /// Specifies the principals requesting access for a Cloud Platform resource.
  ///
  /// members can have the following values: allUsers: A special identifier that
  /// represents anyone who is on the internet; with or without a Google
  /// account. allAuthenticatedUsers: A special identifier that represents
  /// anyone who is authenticated with a Google account or a service account.
  /// user:{emailid}: An email address that represents a specific Google
  /// account. For example, alice@example.com . serviceAccount:{emailid}: An
  /// email address that represents a service account. For example,
  /// my-other-app@appspot.gserviceaccount.com. group:{emailid}: An email
  /// address that represents a Google group. For example, admins@example.com.
  /// deleted:user:{emailid}?uid={uniqueid}: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, alice@example.com?uid=123456789012345678901. If the user is
  /// recovered, this value reverts to user:{emailid} and the recovered user
  /// retains the role in the binding.
  /// deleted:serviceAccount:{emailid}?uid={uniqueid}: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901. If the
  /// service account is undeleted, this value reverts to
  /// serviceAccount:{emailid} and the undeleted service account retains the
  /// role in the binding. deleted:group:{emailid}?uid={uniqueid}: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// admins@example.com?uid=123456789012345678901. If the group is recovered,
  /// this value reverts to group:{emailid} and the recovered group retains the
  /// role in the binding. domain:{domain}: The G Suite domain (primary) that
  /// represents all the users of that domain. For example, google.com or
  /// example.com.
  core.List<core.String>? members;

  /// Role that is assigned to the list of members, or principals.
  ///
  /// For example, roles/viewer, roles/editor, or roles/owner.
  core.String? role;

  GoogleIamV1Binding({
    this.condition,
    this.members,
    this.role,
  });

  GoogleIamV1Binding.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? GoogleTypeExpr.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.A Policy is a collection of bindings.
///
/// A binding binds one or more members, or principals, to a single role.
/// Principals can be user accounts, service accounts, Google groups, and
/// domains (such as G Suite). A role is a named list of permissions; each role
/// can be an IAM predefined role or a user-created custom role.For some types
/// of Google Cloud resources, a binding can also specify a condition, which is
/// a logical expression that allows access to a resource only if the expression
/// evaluates to true. A condition can add constraints based on attributes of
/// the request, the resource, or both. To learn which resources support
/// conditions in their IAM policies, see the IAM documentation
/// (https://cloud.google.com/iam/help/conditions/resource-policies).JSON
/// example: { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } YAML example: bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the IAM
/// documentation (https://cloud.google.com/iam/docs/).
class GoogleIamV1Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<GoogleIamV1AuditConfig>? auditConfigs;

  /// Associates a list of members, or principals, with a role.
  ///
  /// Optionally, may specify a condition that determines how and when the
  /// bindings are applied. Each of the bindings must contain at least one
  /// principal.The bindings in a Policy can refer to up to 1,500 principals; up
  /// to 250 of these principals can be Google groups. Each occurrence of a
  /// principal counts towards these limits. For example, if the bindings grant
  /// 50 different roles to user:alice@example.com, and not to any other
  /// principal, then you can add another 1,450 principals to the bindings in
  /// the Policy.
  core.List<GoogleIamV1Binding>? bindings;

  /// etag is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the etag in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An etag is returned in the response to getIamPolicy, and
  /// systems are expected to put that etag in the request to setIamPolicy to
  /// ensure that their change will be applied to the same version of the
  /// policy.Important: If you use IAM Conditions, you must include the etag
  /// field whenever you call setIamPolicy. If you omit this field, then IAM
  /// allows you to overwrite a version 3 policy with a version 1 policy, and
  /// all of the conditions in the version 3 policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.Valid values are 0, 1, and 3.
  ///
  /// Requests that specify an invalid value are rejected.Any operation that
  /// affects conditional role bindings must specify version 3. This requirement
  /// applies to the following operations: Getting a policy that includes a
  /// conditional role binding Adding a conditional role binding to a policy
  /// Changing a conditional role binding in a policy Removing any role binding,
  /// with or without a condition, from a policy that includes
  /// conditionsImportant: If you use IAM Conditions, you must include the etag
  /// field whenever you call setIamPolicy. If you omit this field, then IAM
  /// allows you to overwrite a version 3 policy with a version 1 policy, and
  /// all of the conditions in the version 3 policy are lost.If a policy does
  /// not include any conditions, operations on that policy may specify any
  /// valid version or leave the field unset.To learn which resources support
  /// conditions in their IAM policies, see the IAM documentation
  /// (https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  GoogleIamV1Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  GoogleIamV1Policy.fromJson(core.Map _json)
      : this(
          auditConfigs: _json.containsKey('auditConfigs')
              ? (_json['auditConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map((value) => GoogleIamV1Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Request message for SetIamPolicy method.
class GoogleIamV1SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the resource.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  GoogleIamV1Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used:paths: "bindings, etag"
  core.String? updateMask;

  GoogleIamV1SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  GoogleIamV1SetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          policy: _json.containsKey('policy')
              ? GoogleIamV1Policy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for TestIamPermissions method.
typedef GoogleIamV1TestIamPermissionsRequest = $TestIamPermissionsRequest01;

/// Response message for TestIamPermissions method.
typedef GoogleIamV1TestIamPermissionsResponse = $TestIamPermissionsResponse;

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is false, it means the operation is still in progress.
  ///
  /// If true, the operation is completed, and either error or response is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

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
  /// If you use the default HTTP mapping, the name should be a resource name
  /// ending with operations/{unique_id}.
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as Delete, the
  /// response is google.protobuf.Empty. If the original method is standard
  /// Get/Create/Update, the response should be the resource. For other methods,
  /// the response should have the type XxxResponse, where Xxx is the original
  /// method name. For example, if the original method name is TakeSnapshot(),
  /// the inferred response type is TakeSnapshotResponse.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
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

/// The Status type defines a logical error model that is suitable for different
/// programming environments, including REST APIs and RPC APIs.
///
/// It is used by gRPC (https://github.com/grpc). Each Status message contains
/// three pieces of data: error code, error message, and error details.You can
/// find out more about this error model and how to work with it in the API
/// Design Guide (https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec.Example (Comparison):
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
typedef GoogleTypeExpr = $Expr;
